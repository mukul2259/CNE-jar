package com.quicinc.cne.andsf;

import android.content.ContentValues;
import android.content.Context;
import com.quicinc.cne.CNE;
import com.quicinc.cne.CneMsg;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class AndsfParser {
    private static final boolean DBG = true;
    static final String SUB_TYPE = "PLCY:ANDSF";
    private static final String TAG_ANDSF = "Andsf";
    private static final String TAG_ROOT = "AndsfPolicy";
    private static final String TAG_VERSION = "Version";
    AndsfData andsfData = null;
    Element andsfNode = null;
    Context mContext;
    DbConnection mDb;

    public static class Version {
        private static final int MAJOR = 5;
        private static final int MINOR = 0;

        public static String getString() {
            return Integer.toString(5) + "." + Integer.toString(0);
        }

        public static int getInt() {
            return 500;
        }

        public static boolean matchVersion(String version) {
            try {
                String[] array = version.split("\\.");
                int major = Integer.parseInt(array[0]);
                int minor = Integer.parseInt(array[1]);
                if (major == 5 && minor == 0) {
                    return true;
                }
                return false;
            } catch (NumberFormatException e) {
                CneMsg.loge("PLCY:ANDSF", "NumberFormatException");
                e.printStackTrace();
                return false;
            }
        }
    }

    public class AndsfData {
        public ContentValues data = new ContentValues();
        Extension extension;
        ArrayList<IsrpDetails> isrps = new ArrayList<>();
        long time;
        String version;

        public AndsfData() {
        }
    }

    public AndsfParser(Context context) {
        this.mContext = context;
    }

    public int updateAndsf(String filename) {
        CneMsg.logd("PLCY:ANDSF", "Starting ANDSF parser, version: " + Version.getString());
        this.andsfData = new AndsfData();
        int retVal = parseFile(filename);
        if (retVal == 1000) {
            CneMsg.logd("PLCY:ANDSF", "Finished parsing ANDSF file");
            if (!CNE.andsfCneFileLoc.equals(filename)) {
                updateDefaultConfigFile(filename);
            }
        }
        return retVal;
    }

    private void updateDefaultConfigFile(String filePath) {
        try {
            DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
            dbf.setValidating(false);
            Document doc = dbf.newDocumentBuilder().parse(new File(CNE.andsfCneFbFileLoc));
            Element root = doc.getDocumentElement();
            if (this.andsfNode != null) {
                while (root.getFirstChild() != null) {
                    root.removeChild(root.getFirstChild());
                }
                root.appendChild(doc.importNode(this.andsfNode, true));
                TransformerFactory.newInstance().newTransformer().transform(new DOMSource(doc), new StreamResult(CNE.andsfCneFileLoc));
                CneMsg.logd("PLCY:ANDSF", "Restore " + filePath + " to " + CNE.andsfCneFileLoc);
                return;
            }
            CneMsg.loge("PLCY:ANDSF", "andsfNode is null. Not restoring default file");
        } catch (ParserConfigurationException e) {
            CneMsg.loge("PLCY:ANDSF", "ParserConfigurationException...");
            e.printStackTrace();
        } catch (SAXException e2) {
            CneMsg.loge("PLCY:ANDSF", "SAXException...");
            e2.printStackTrace();
        } catch (TransformerConfigurationException e3) {
            CneMsg.loge("PLCY:ANDSF", "TransformerConfigurationException...");
            e3.printStackTrace();
        } catch (TransformerException e4) {
            CneMsg.loge("PLCY:ANDSF", "TransformerException...");
            e4.printStackTrace();
        } catch (Exception e5) {
            CneMsg.loge("PLCY:ANDSF", "updateDefaultConfigFile failed");
            e5.printStackTrace();
        }
    }

    private int validatePolicyTree(Document doc) {
        Element root = doc.getDocumentElement();
        if (root == null || !TAG_ROOT.equals(root.getTagName())) {
            CneMsg.loge("PLCY:ANDSF", "root node must be <AndsfPolicy>");
            return -3;
        }
        Element andsf = (Element) root.getElementsByTagName(TAG_ANDSF).item(0);
        if (andsf == null) {
            CneMsg.loge("PLCY:ANDSF", "ANDSF node must be <Andsf> as a child of <AndsfPolicy>");
            return -3;
        } else if (andsf.getElementsByTagName(TAG_VERSION).getLength() == 1) {
            return 1000;
        } else {
            CneMsg.loge("PLCY:ANDSF", "There must be only one version node <Version> as a child of ANDSF node");
            return -3;
        }
    }

    private int parseFile(String filename) {
        try {
            Document doc = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new File(filename));
            if (doc == null) {
                CneMsg.loge("PLCY:ANDSF", "Malformed ANDSF xml file");
                return -3;
            }
            int ret = validatePolicyTree(doc);
            if (1000 != ret) {
                return ret;
            }
            NodeList andsfNodes = doc.getElementsByTagName(TAG_ANDSF);
            if (andsfNodes.getLength() >= 1) {
                for (int i = 0; i < andsfNodes.getLength(); i++) {
                    this.andsfNode = (Element) andsfNodes.item(i);
                    NodeList versionNode = this.andsfNode.getElementsByTagName(TAG_VERSION);
                    if (versionNode.getLength() == 1) {
                        String version = versionNode.item(0).getFirstChild().getNodeValue();
                        if (Version.matchVersion(version)) {
                            CneMsg.logd("PLCY:ANDSF", "parsing Andsf node " + i + ", version " + Version.getString());
                            return parseAndsfConfig(this.andsfNode);
                        }
                        CneMsg.logd("PLCY:ANDSF", "Version " + version + " from Andsf node " + i + " does not match software version " + Version.getString());
                    } else {
                        CneMsg.loge("PLCY:ANDSF", "No/Many version tag from Andsf node " + i);
                    }
                }
                CneMsg.loge("PLCY:ANDSF", "No version match from any Andsf node. Configuration not parsed.");
                return -8;
            }
            CneMsg.loge("PLCY:ANDSF", "No Andsf tag");
            return -3;
        } catch (Exception e) {
            CneMsg.loge("PLCY:ANDSF", "ANDSF Parser failed");
            e.printStackTrace();
            return -3;
        }
    }

    private int parseAndsfConfig(Element elem) {
        this.andsfData.version = Version.getString();
        CneMsg.logd("PLCY:ANDSF", "version= " + this.andsfData.version);
        this.andsfData.time = new Date().getTime();
        CneMsg.logd("PLCY:ANDSF", "time= " + this.andsfData.time);
        this.andsfData.data.put(TAG_VERSION, this.andsfData.version);
        this.andsfData.data.put("Timestamp", Long.valueOf(this.andsfData.time));
        NodeList isrpNodes = elem.getElementsByTagName("ISRP");
        if (isrpNodes.getLength() < 1) {
            CneMsg.loge("PLCY:ANDSF", "No IRSP nodes in ANDSF file");
        } else {
            for (int i = 0; i < isrpNodes.getLength(); i++) {
                this.andsfData.isrps.add(new IsrpDetails((Element) isrpNodes.item(i)));
            }
        }
        NodeList extensionNodes = elem.getElementsByTagName("Ext");
        if (extensionNodes == null || extensionNodes.getLength() < 1) {
            CneMsg.loge("PLCY:ANDSF", "No Ext node in ANDSF file");
            return -3;
        }
        this.andsfData.extension = new Extension();
        if (this.andsfData.extension == null) {
            CneMsg.loge("PLCY:ANDSF", "Failed to create Extension");
            return -3;
        } else if (this.andsfData.extension.handleExtension((Element) extensionNodes.item(0)) == -3) {
            CneMsg.loge("PLCY:ANDSF", "Invalid args when parsing xml file Extension nodes.");
            return -3;
        } else {
            CneMsg.loge("PLCY:ANDSF", "Not commiting to DB...deprecated");
            return 1000;
        }
    }

    private int updateAndsfDb() {
        try {
            this.mDb = new DbConnection(this.mContext);
            this.mDb.commitAndsf(this.mDb.getWritableDatabase(), this.andsfData);
            this.mDb.close();
            this.mDb.copyDatabase(CNE.dataPath);
            return 1000;
        } catch (Exception e) {
            CneMsg.logd("PLCY:ANDSF", "Update ANDSF db failed: " + e);
            return -1;
        }
    }

    public static void dlogd(String s) {
        CneMsg.logd("PLCY:ANDSF", s);
    }

    public static void loge(String s) {
        CneMsg.loge("PLCY:ANDSF", s);
    }
}
