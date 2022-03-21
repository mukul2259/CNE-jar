package com.quicinc.cne.andsf;

import android.content.ContentValues;
import android.os.SystemProperties;
import java.util.ArrayList;
import java.util.HashMap;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class Extension extends AndsfNodeSet {
    static final String DEFAULT_RAT_WLAN_CHIPSET_OEM = "WCN";
    static final int MAX_NUMBER_APIDS = 128;
    static final int MAX_NUMBER_BQE_THRESHOLDS = 2;
    static final int MAX_NUMBER_ICD_CONFIG_SET = 1;
    ArrayList<ContentValues> authApps = new ArrayList<>();
    ArrayList<ContentValues> bqeApIds = new ArrayList<>();
    ArrayList<BqeThreshold> bqeThresholds = new ArrayList<>();
    HashMap<String, Boolean> cqeThresholdTags;
    ArrayList<CqeThreshold> cqeThresholds = new ArrayList<>();
    ArrayList<ContentValues> icdApIdSet = new ArrayList<>();
    ArrayList<ContentValues> icdConfigSet = new ArrayList<>();
    String productId = null;
    ArrayList<TqeThreshold> tqeThresholds = new ArrayList<>();
    HashMap<String, String> wlanChipsetMap = new HashMap<>();

    Extension() {
        String productName = SystemProperties.get("ro.board.platform", (String) null);
        this.wlanChipsetMap.put("apq8084", AndsfConstant.romeId);
        this.wlanChipsetMap.put("msm8994", AndsfConstant.romeId);
        this.wlanChipsetMap.put("msm8992", AndsfConstant.romeId);
        this.wlanChipsetMap.put("msm8996", AndsfConstant.romeId);
        this.wlanChipsetMap.put("msmcobalt", AndsfConstant.romeId);
        if (SystemProperties.get("persist.cne.rat.wlan.chip.oem", (String) null) != null) {
            this.productId = AndsfConstant.prontoId;
        } else if (productName != null) {
            this.productId = this.wlanChipsetMap.get(productName);
        }
        if (this.productId != AndsfConstant.romeId) {
            this.productId = AndsfConstant.prontoId;
            this.cqeThresholdTags = new HashMap<>(16, 1.0f);
            return;
        }
        this.cqeThresholdTags = new HashMap<>(17, 1.0f);
    }

    public int handleExtension(Element baseNode) {
        if (handleBQEExtension(baseNode) == 1000 && handleCQEExtension(baseNode) == 1000 && handleTQEExtension(baseNode) == 1000 && handleICDExtension(baseNode) == 1000) {
            AndsfParser.dlogd("Extension: successfully handle Extension node.");
            return 1000;
        }
        AndsfParser.loge("Extension: error in handle Extension node.");
        return -3;
    }

    private int handleBQEExtension(Element baseNode) {
        AndsfParser.dlogd("BQEExtension: Handling InterfacManager ");
        NodeList wqe = baseNode.getElementsByTagName("InterfaceManager");
        Node bqeDisabled = baseNode.getElementsByTagName("BQE_Disabled").item(0);
        Node icdDisabled = baseNode.getElementsByTagName("ICD_Disabled").item(0);
        AndsfParser.dlogd("BQEExtension: checking BQE_Disabled ICD_Disabled tags");
        if (bqeDisabled == null || icdDisabled == null) {
            AndsfParser.loge("BQEExtension: No BQE_Disabled or ICD_Disabled tag found.");
            return -3;
        }
        String valBqe = bqeDisabled.getChildNodes().item(0).getNodeValue();
        String valIcd = icdDisabled.getChildNodes().item(0).getNodeValue();
        if (valBqe == null || valIcd == null) {
            AndsfParser.loge("BQEExtension: missing BQE_Disabled or ICD_Disabled value");
            return -3;
        }
        AndsfParser.dlogd("BQEExtension: BQE_Disabled " + valBqe + " ICD_Disabled " + valIcd);
        if ((valBqe.equals("true") || valBqe.equals("false")) && (valIcd.equals("true") || valIcd.equals("false"))) {
            inspectChildren(wqe.item(0));
            AndsfParser.dlogd("BQEExtension: Handling Authentication");
            inspectChildren(baseNode.getElementsByTagName("Authentication").item(0));
            AndsfParser.dlogd("BQEExtension: Handling BQE_Thresholds");
            NodeList thresholds = baseNode.getElementsByTagName("BQE_Thresholds");
            boolean isDefaultSet = false;
            if (thresholds == null) {
                AndsfParser.loge("BQEExtension: missing BQE_Thresholds tag");
                return -3;
            }
            if (thresholds.getLength() > 2) {
                AndsfParser.dlogd("BQEExtension: Num bqe threshold: " + thresholds.getLength() + " exceeds max, using only first " + 2);
            }
            for (int i = 0; i < Math.min(thresholds.getLength(), 2); i++) {
                Node id = ((Element) thresholds.item(i)).getAttributes().getNamedItem("Id");
                if (id != null) {
                    String idVal = id.getNodeValue();
                    NodeList apIds = ((Element) thresholds.item(i)).getElementsByTagName("apIds");
                    if (apIds.getLength() > 0) {
                        String type = ((Element) apIds.item(0)).getAttributes().getNamedItem("Type").getNodeValue();
                        if (type == null || !type.equals("SSID")) {
                            AndsfParser.dlogd("BQEExtension: Attribute Type in apIds is null or not SSID ignoring this Node");
                        } else {
                            NodeList apIdNodeList = ((Element) apIds.item(0)).getElementsByTagName("apId");
                            if (apIdNodeList.getLength() > 128) {
                                AndsfParser.dlogd("BQEExtension: Num apIds: " + apIdNodeList.getLength() + " exceeds max, using only first " + 128);
                            }
                            for (int j = 0; j < Math.min(apIdNodeList.getLength(), 128); j++) {
                                String apIdValue = apIdNodeList.item(j).getChildNodes().item(0).getNodeValue();
                                if (apIdValue == null || apIdValue.length() == 0) {
                                    AndsfParser.dlogd("BQEExtension: ignoring this node apIdVal is null or empty");
                                } else {
                                    ContentValues data = new ContentValues();
                                    data.put("Id", idVal);
                                    data.put("apId", apIdValue);
                                    this.bqeApIds.add(data);
                                }
                            }
                        }
                    } else if (!isDefaultSet) {
                        ContentValues data2 = new ContentValues();
                        data2.put("Id", idVal);
                        this.bqeApIds.add(data2);
                        isDefaultSet = true;
                    } else {
                        AndsfParser.dlogd("BQEExtension: Multiple default nodes not allowed ignoring this Node");
                    }
                    NodeList subRats = ((Element) thresholds.item(i)).getElementsByTagName("RadioTechnology");
                    if (subRats == null) {
                        AndsfParser.loge("BQEExtension: missing RadioTechnology tags.");
                        return -3;
                    }
                    AndsfParser.dlogd("BQEExtension: RadioTechnology getLength =" + subRats.getLength());
                    if (subRats.getLength() != 12) {
                        AndsfParser.loge("BQE Extension: Total number of radio technology mismatches.");
                        return -3;
                    }
                    for (int k = 0; k < subRats.getLength(); k++) {
                        BqeThreshold bt = new BqeThreshold();
                        this.bqeThresholds.add(bt);
                        if (bt.parameterValidation(subRats.item(k)) == -3) {
                            AndsfParser.loge("BQEExtension: BQE parameter validation failed.");
                            return -3;
                        }
                        bt.addToDatabase(subRats.item(k), idVal);
                    }
                    continue;
                } else {
                    AndsfParser.dlogd("BQEExtension: Attribute Id in BQE_Thresholds not defined ignoring this Node");
                }
            }
            NodeList authAppNodeList = ((Element) baseNode.getElementsByTagName("AuthApps").item(0)).getElementsByTagName("Appname");
            for (int i2 = 0; i2 < authAppNodeList.getLength(); i2++) {
                ContentValues data3 = new ContentValues();
                data3.put("Appname", authAppNodeList.item(i2).getFirstChild().getNodeValue());
                this.authApps.add(data3);
            }
            return 1000;
        }
        AndsfParser.loge("BQEExtension: BQE_Disabled or ICD_Disabled value is not true or false");
        return -3;
    }

    class BqeThreshold {
        public ContentValues data = new ContentValues();
        private ArrayList<String> radioTech = new ArrayList<>();

        BqeThreshold() {
            this.radioTech.add("CDMA2000");
            this.radioTech.add("EVDO_0");
            this.radioTech.add("EVDO_A");
            this.radioTech.add("EVDO_B");
            this.radioTech.add("EDGE");
            this.radioTech.add("UMTS");
            this.radioTech.add("HSPA");
            this.radioTech.add("HSDPA");
            this.radioTech.add("GPRS");
            this.radioTech.add("LTE");
            this.radioTech.add("EHRPD");
            this.radioTech.add("HSPAP");
        }

        /* access modifiers changed from: private */
        public int parameterValidation(Node node) {
            AndsfParser.dlogd("validating BQE Thresholds");
            String typeName = ((Element) node).getAttributes().getNamedItem("Type").getNodeValue();
            if (typeName == null || !this.radioTech.contains(typeName)) {
                AndsfParser.loge("invalid radio technology name.");
                return -3;
            }
            boolean findThreshold = false;
            NodeList details = node.getChildNodes();
            for (int i = 0; i < details.getLength(); i++) {
                Node node2 = details.item(i);
                if (node2.getNodeName().equals("Threshold")) {
                    findThreshold = true;
                    Node unit = ((Element) node2).getAttributes().getNamedItem("units");
                    if (unit == null) {
                        AndsfParser.loge("BQE parameter: Missing unit tag.");
                        return -3;
                    } else if (unit.getNodeValue() == null || !unit.getNodeValue().equals("bps")) {
                        AndsfParser.loge("BQE parameter: missing units value or not bps.");
                        return -3;
                    } else {
                        String valueStr = node2.getChildNodes().item(0).getNodeValue();
                        if (typeName.equals("CDMA2000") || typeName.equals("EVDO_0") || typeName.equals("EVDO_A") || typeName.equals("EVDO_B")) {
                            try {
                                int value = Integer.parseInt(valueStr);
                                if (value < 0 || value > 10000000) {
                                    AndsfParser.loge("CDMA/EVDO value out of range");
                                    return -3;
                                }
                            } catch (NumberFormatException e) {
                                AndsfParser.loge("BQE parameter: CDMA/EVDO Number Format Exception");
                                return -3;
                            }
                        } else if (typeName.equals("EDGE")) {
                            try {
                                int value2 = Integer.parseInt(valueStr);
                                if (value2 < 0 || value2 > 10000000) {
                                    AndsfParser.loge("EDGE value out of range");
                                    return -3;
                                }
                            } catch (NumberFormatException e2) {
                                AndsfParser.loge("BQE parameter: EDGE Number Format Exception");
                                return -3;
                            }
                        } else if (typeName.equals("UMTS")) {
                            try {
                                int value3 = Integer.parseInt(valueStr);
                                if (value3 < 0 || value3 > 50000000) {
                                    AndsfParser.loge("UMTS value out of range");
                                    return -3;
                                }
                            } catch (NumberFormatException e3) {
                                AndsfParser.loge("BQE parameter: UMTS Number Format Exception");
                                return -3;
                            }
                        } else if (typeName.equals("HSPA")) {
                            try {
                                int value4 = Integer.parseInt(valueStr);
                                if (value4 < 0 || value4 > 50000000) {
                                    AndsfParser.loge("HSPA value out of range");
                                    return -3;
                                }
                            } catch (NumberFormatException e4) {
                                AndsfParser.loge("BQE parameter: HSPA Number Format Exception");
                                return -3;
                            }
                        } else if (typeName.equals("HSDPA")) {
                            try {
                                int value5 = Integer.parseInt(valueStr);
                                if (value5 < 0 || value5 > 50000000) {
                                    AndsfParser.loge("HSDPA value out of range");
                                    return -3;
                                }
                            } catch (NumberFormatException e5) {
                                AndsfParser.loge("BQE parameter: HSDPA Number Format Exception");
                                return -3;
                            }
                        } else if (typeName.equals("GPRS")) {
                            try {
                                int value6 = Integer.parseInt(valueStr);
                                if (value6 < 0 || value6 > 171000) {
                                    AndsfParser.loge("GPRS value out of range");
                                    return -3;
                                }
                            } catch (NumberFormatException e6) {
                                AndsfParser.loge("BQE parameter: GPRS Number Format Exception");
                                return -3;
                            }
                        } else if (typeName.equals("LTE")) {
                            try {
                                int value7 = Integer.parseInt(valueStr);
                                if (value7 < 0 || value7 > 100000000) {
                                    AndsfParser.loge("LTE value out of range");
                                    return -3;
                                }
                            } catch (NumberFormatException e7) {
                                AndsfParser.loge("BQE parameter: LTE Number Format Exception");
                                return -3;
                            }
                        } else if (typeName.equals("EHRPD")) {
                            try {
                                int value8 = Integer.parseInt(valueStr);
                                if (value8 < 0 || value8 > 3100000) {
                                    AndsfParser.loge("EHRPD value out of range");
                                    return -3;
                                }
                            } catch (NumberFormatException e8) {
                                AndsfParser.loge("BQE parameter: EHRPD Number Format Exception");
                                return -3;
                            }
                        } else if (typeName.equals("HSPAP")) {
                            try {
                                int value9 = Integer.parseInt(valueStr);
                                if (value9 < 0 || value9 > 168000000) {
                                    AndsfParser.loge("HSPAP value out of range");
                                    return -3;
                                }
                            } catch (NumberFormatException e9) {
                                AndsfParser.loge("BQE parameter: HSPAP Number Format Exception");
                                return -3;
                            }
                        } else {
                            AndsfParser.loge("BQE parameter: unsupported bqe radiotechnology.");
                            return -3;
                        }
                    }
                }
            }
            if (findThreshold) {
                return 1000;
            }
            AndsfParser.loge("BQE parameters: missing Threshold tag under RadioTechnology.");
            return -3;
        }

        /* access modifiers changed from: private */
        public void addToDatabase(Node node, String id) {
            AndsfParser.dlogd("putting BQE paramters into database");
            this.data.put("Id", id);
            this.data.put("SubRAT_Type", ((Element) node).getAttributes().getNamedItem("Type").getNodeValue());
            NodeList details = node.getChildNodes();
            for (int i = 0; i < details.getLength(); i++) {
                Node node2 = details.item(i);
                if (node2.getNodeName().equals("Threshold")) {
                    this.data.put("Threshold", node2.getChildNodes().item(0).getNodeValue());
                    this.data.put("Threshold_Units", ((Element) node2).getAttributes().getNamedItem("units").getNodeValue());
                }
            }
        }
    }

    private int handleICDExtension(Element baseNode) {
        AndsfParser.dlogd("Handling ICD");
        boolean isIcdDefaultSet = false;
        String configTypeVal = null;
        NodeList icd = baseNode.getElementsByTagName("ICD");
        if (icd == null) {
            AndsfParser.loge("missing icd tag. using default.");
            return -3;
        } else if (icd.getLength() > 1) {
            AndsfParser.loge("Num icd tags: " + icd.getLength() + " exceeds max ICD tags allowed");
            return -3;
        } else {
            int i = 0;
            while (i < Math.min(icd.getLength(), 1)) {
                if (icd.item(i) == null) {
                    AndsfParser.loge("missing items under icd tag.");
                    return -3;
                }
                Node configType = ((Element) icd.item(i)).getAttributes().getNamedItem("config-type");
                if (configType != null) {
                    configTypeVal = configType.getNodeValue();
                    if (configTypeVal.equals("disabled") || configTypeVal.equals("enabled")) {
                        NodeList icdApIds = ((Element) icd.item(i)).getElementsByTagName("apIds");
                        if (icdApIds.getLength() > 0) {
                            String icdApiType = ((Element) icdApIds.item(0)).getAttributes().getNamedItem("Type").getNodeValue();
                            if (icdApiType == null || !icdApiType.equals("SSID")) {
                                AndsfParser.dlogd("Attribute Type in ICD apIds is null or not SSID, reverting to default");
                                return -3;
                            }
                            NodeList icdApIdNodeList = ((Element) icdApIds.item(0)).getElementsByTagName("apId");
                            if (icdApIdNodeList.getLength() > 128) {
                                AndsfParser.dlogd("Num apIds: " + icdApIdNodeList.getLength() + " exceeds max, using only first " + 128);
                            }
                            for (int j = 0; j < Math.min(icdApIdNodeList.getLength(), 128); j++) {
                                String icdApIdValue = icdApIdNodeList.item(j).getChildNodes().item(0).getNodeValue();
                                if (icdApIdValue == null || icdApIdValue.length() == 0) {
                                    AndsfParser.dlogd("ignoring this node apIdVal is null or empty");
                                } else {
                                    ContentValues data = new ContentValues();
                                    data.put("apId", icdApIdValue);
                                    this.icdApIdSet.add(data);
                                }
                            }
                        } else if (!isIcdDefaultSet) {
                            ContentValues data2 = new ContentValues();
                            data2.put("apId", (String) null);
                            this.icdApIdSet.add(data2);
                            isIcdDefaultSet = true;
                        } else {
                            AndsfParser.dlogd("Multiple default nodes not allowed  ignoring this Node");
                        }
                        i++;
                    } else {
                        AndsfParser.loge("Value for attribute config-type in ICD is not correct, setting to default");
                        return -3;
                    }
                } else {
                    AndsfParser.loge("Attribute config-type in ICD not defined, setting to default");
                    return -3;
                }
            }
            ContentValues config_set = new ContentValues();
            config_set.put("config_type", configTypeVal);
            this.icdConfigSet.add(config_set);
            return 1000;
        }
    }

    private int handleCQEExtension(Element baseNode) {
        int totalTags;
        AndsfParser.dlogd("CQEExtension: Handling CQE extension");
        NodeList cqeTag = baseNode.getElementsByTagName("CQE");
        if (cqeTag == null) {
            AndsfParser.loge("CQEExtension: missing CQE tag");
            return -3;
        }
        AndsfParser.dlogd("CQEExtension: CQE tag entries " + cqeTag.getLength());
        int index = 0;
        while (index < cqeTag.getLength()) {
            if (cqeTag.item(index) != null) {
                NamedNodeMap attrs = ((Element) cqeTag.item(index)).getAttributes();
                if (attrs != null) {
                    Node prodId = attrs.getNamedItem("prodId");
                    if (prodId != null && this.productId.equals(prodId.getNodeValue())) {
                        break;
                    }
                } else {
                    AndsfParser.dlogd("CQEExtension: no attributes found for current CQE tag");
                }
            } else {
                AndsfParser.loge("CQEExtension: missing items under current CQE tag.");
            }
            index++;
        }
        if (index == cqeTag.getLength()) {
            AndsfParser.loge("CQEExtension: No matching CQE tag found");
            return -3;
        }
        NodeList thresholds = ((Element) cqeTag.item(index)).getElementsByTagName("CQE_Thresholds");
        if (thresholds == null) {
            AndsfParser.loge("CQEExtension: missing CQE_Thresholds tag, using default.");
            return -3;
        }
        AndsfParser.dlogd("CQEExtension: thresholds length " + thresholds.getLength());
        if (thresholds.getLength() > 2) {
            AndsfParser.dlogd("CQEExtension: Number of CQE_Thresholds elements " + thresholds.getLength() + " is greater than 2");
            return -3;
        }
        for (int i = 0; i < thresholds.getLength(); i++) {
            this.cqeThresholdTags.clear();
            AndsfParser.dlogd("CQEExtension: Processing threshold item " + i);
            if (thresholds.item(i) == null) {
                AndsfParser.loge("CQEExtension: missing items under CQE_Thresholds tag.");
                return -3;
            }
            Node id = ((Element) thresholds.item(i)).getAttributes().getNamedItem("Id");
            if (Integer.parseInt(id.getNodeValue()) > 128) {
                AndsfParser.dlogd("CQEExtension:  Id value " + Integer.parseInt(id.getNodeValue()) + " is greater than 128");
            } else {
                NodeList apids = ((Element) thresholds.item(i)).getElementsByTagName("apIds");
                if (apids == null) {
                    AndsfParser.loge("CQEExtension: missing tag apIds under CQE_Thresholds");
                    return -3;
                }
                if (apids.getLength() == 0) {
                    AndsfParser.dlogd("CQEExtension: Handling cqe thresholds for default apid");
                    if (handleCqeThresholds(thresholds.item(i), id, (Node) null) == -3) {
                        return -3;
                    }
                } else {
                    String type = ((Element) apids.item(0)).getAttributes().getNamedItem("Type").getNodeValue();
                    if (type.equalsIgnoreCase("SSID")) {
                        NodeList apid = ((Element) apids.item(0)).getElementsByTagName("apId");
                        if (apid.getLength() > 128) {
                            AndsfParser.dlogd("CQEExtension: Apid length " + apid.getLength() + " exceeds max, handling first " + 128);
                        }
                        for (int j = 0; j < Math.min(apid.getLength(), 128); j++) {
                            this.cqeThresholdTags.clear();
                            AndsfParser.dlogd("CQEExtension: Handling cqe thresholds for apid " + apid.item(j).getFirstChild().getNodeValue());
                            if (handleCqeThresholds(thresholds.item(i), id, apid.item(j).getFirstChild()) == -3) {
                                return -3;
                            }
                        }
                    } else {
                        AndsfParser.dlogd("CQEExtension: Apid type " + type + " is not supported");
                    }
                }
                if (AndsfConstant.romeId.equals(this.productId)) {
                    totalTags = 17;
                } else {
                    totalTags = 16;
                }
                if (this.cqeThresholdTags.size() != totalTags) {
                    AndsfParser.loge("Missing at least one CQE parameter tag. count: " + this.cqeThresholdTags.size());
                    return -3;
                }
            }
        }
        return 1000;
    }

    private int handleCqeThresholds(Node thresholdNode, Node idNode, Node apidNode) {
        AndsfParser.dlogd("handleCqeThresholds: thresholdNode " + thresholdNode.getNodeName() + " Id " + idNode.getNodeValue());
        NodeList details = thresholdNode.getChildNodes();
        AndsfParser.dlogd("CQE Thresholds details length " + details.getLength());
        if (this.productId.equals(AndsfConstant.prontoId)) {
            for (int i = 0; i < details.getLength(); i++) {
                Node thresholdTypeNode = details.item(i);
                if (thresholdTypeNode.getNodeName().equals("RSSIAddThreshold") || thresholdTypeNode.getNodeName().equals("RSSIDropThreshold") || thresholdTypeNode.getNodeName().equals("RSSIModelThreshold") || thresholdTypeNode.getNodeName().equals("RSSIAveragingInterval") || thresholdTypeNode.getNodeName().equals("RSSIMacTimerThreshold") || thresholdTypeNode.getNodeName().equals("CQETimer") || thresholdTypeNode.getNodeName().equals("MACHysteresisTimer") || thresholdTypeNode.getNodeName().equals("MACStatsAveragingAlpha") || thresholdTypeNode.getNodeName().equals("FrameCntThreshold") || thresholdTypeNode.getNodeName().equals("ColdStartThreshold") || thresholdTypeNode.getNodeName().equals("MACMibThreshold2a") || thresholdTypeNode.getNodeName().equals("MACMibThreshold2b") || thresholdTypeNode.getNodeName().equals("RetryMetricWeight2a") || thresholdTypeNode.getNodeName().equals("RetryMetricWeight2b") || thresholdTypeNode.getNodeName().equals("MultiRetryMetricWeight2a") || thresholdTypeNode.getNodeName().equals("MultiRetryMetricWeight2b")) {
                    AndsfParser.dlogd("Adding new CqeThreshold item " + thresholdTypeNode.getNodeName());
                    CqeThreshold ct = new CqeThreshold(this, thresholdTypeNode, idNode, apidNode);
                    this.cqeThresholds.add(ct);
                    if (ct.prontoParameterValidation() == -3) {
                        AndsfParser.loge("CQE parameter validation failed.");
                        return -3;
                    }
                    ct.addToDatabase();
                }
            }
            return 1000;
        } else if (this.productId.equals(AndsfConstant.romeId)) {
            for (int i2 = 0; i2 < details.getLength(); i2++) {
                Node thresholdTypeNode2 = details.item(i2);
                if (thresholdTypeNode2.getNodeName().equals("RSSIAddThreshold") || thresholdTypeNode2.getNodeName().equals("RSSIDropThreshold") || thresholdTypeNode2.getNodeName().equals("RSSIAveragingInterval") || thresholdTypeNode2.getNodeName().equals("RSSIMacTimerThreshold") || thresholdTypeNode2.getNodeName().equals("CQETimer") || thresholdTypeNode2.getNodeName().equals("MACHysteresisTimer") || thresholdTypeNode2.getNodeName().equals("MACStatsAveragingAlpha") || thresholdTypeNode2.getNodeName().equals("RMP_THR") || thresholdTypeNode2.getNodeName().equals("RMP_CNT_THR") || thresholdTypeNode2.getNodeName().equals("RX_MCS_THR") || thresholdTypeNode2.getNodeName().equals("RX_BW_THR") || thresholdTypeNode2.getNodeName().equals("TMD_THR") || thresholdTypeNode2.getNodeName().equals("TMD_CNT_THR") || thresholdTypeNode2.getNodeName().equals("TMR_THR") || thresholdTypeNode2.getNodeName().equals("TMR_CNT_THR") || thresholdTypeNode2.getNodeName().equals("TX_MCS_THR") || thresholdTypeNode2.getNodeName().equals("TX_BW_THR")) {
                    AndsfParser.dlogd("Adding new CqeThreshold item " + thresholdTypeNode2.getNodeName());
                    CqeThreshold ct2 = new CqeThreshold(this, thresholdTypeNode2, idNode, apidNode);
                    this.cqeThresholds.add(ct2);
                    if (ct2.romeParameterValidation() == -3) {
                        AndsfParser.loge("CQE parameter validation failed.");
                        return -3;
                    }
                    ct2.addToDatabase();
                }
            }
            return 1000;
        } else {
            AndsfParser.loge("Unknown productId");
            return -3;
        }
    }

    class CqeThreshold {
        private String apid;
        public ContentValues data = new ContentValues();

        /* renamed from: id */
        private String f4id;
        private String nodeName;
        final /* synthetic */ Extension this$0;
        private String unit;
        private String valueStr;

        CqeThreshold(Extension this$02, Node thresholdTypeNode, Node idNode, Node apidNode) {
            String str = null;
            this.this$0 = this$02;
            this.nodeName = thresholdTypeNode.getNodeName();
            this.valueStr = thresholdTypeNode.getFirstChild().getNodeValue();
            AndsfParser.dlogd("CqeThreshold: Putting attributes...");
            Node threshUnits = ((Element) thresholdTypeNode).getAttributes().getNamedItem("units");
            this.unit = threshUnits == null ? null : threshUnits.getNodeValue();
            this.f4id = idNode.getNodeValue();
            this.apid = apidNode != null ? apidNode.getNodeValue() : str;
        }

        /* access modifiers changed from: private */
        public int prontoParameterValidation() {
            AndsfParser.dlogd("validating CQE Threshold for Pronto");
            if (this.nodeName.equals("RSSIAddThreshold")) {
                if (this.this$0.cqeThresholdTags.containsKey("RSSIAddThreshold")) {
                    AndsfParser.loge("Adding DUPLICATE RSSIAddThreshold.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("RSSIAddThreshold", true);
                try {
                    int addValue = Integer.parseInt(this.valueStr);
                    if (addValue >= -99 && addValue <= -10) {
                        return 1000;
                    }
                    AndsfParser.loge("RSSIAddThreshold value out of range");
                    return -3;
                } catch (NumberFormatException e) {
                    AndsfParser.loge("CQE parameter: RSSIAddThreshold Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("RSSIDropThreshold")) {
                if (this.this$0.cqeThresholdTags.containsKey("RSSIDropThreshold")) {
                    AndsfParser.loge("Adding DUPLICATE RSSIDropThreshold.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("RSSIDropThreshold", true);
                try {
                    int dropValue = Integer.parseInt(this.valueStr);
                    if (dropValue >= -99 && dropValue <= -10) {
                        return 1000;
                    }
                    AndsfParser.loge("RSSIDropThreshold value out of range");
                    return -3;
                } catch (NumberFormatException e2) {
                    AndsfParser.loge("CQE parameter: RSSIDropThreshold Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("RSSIModelThreshold")) {
                if (this.this$0.cqeThresholdTags.containsKey("RSSIModelThreshold")) {
                    AndsfParser.loge("Adding DUPLICATE RSSIModelThreshold.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("RSSIModelThreshold", true);
                try {
                    int value = Integer.parseInt(this.valueStr);
                    if (value >= -99 && value <= -10) {
                        return 1000;
                    }
                    AndsfParser.loge("RSSIModelThreshold value out of range");
                    return -3;
                } catch (NumberFormatException e3) {
                    AndsfParser.loge("CQE parameter: RSSIModelThreshold Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("RSSIAveragingInterval")) {
                if (this.this$0.cqeThresholdTags.containsKey("RSSIAveragingInterval")) {
                    AndsfParser.loge("Adding DUPLICATE RSSIAveragingInterval.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("RSSIAveragingInterval", true);
                try {
                    int value2 = Integer.parseInt(this.valueStr);
                    if (value2 >= 1 && value2 <= 3600) {
                        return 1000;
                    }
                    AndsfParser.loge("RSSIAveragingInterval value out of range");
                    return -3;
                } catch (NumberFormatException e4) {
                    AndsfParser.loge("CQE parameter: RSSIAveragingInterval Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("RSSIMacTimerThreshold")) {
                if (this.this$0.cqeThresholdTags.containsKey("RSSIMacTimerThreshold")) {
                    AndsfParser.loge("Adding DUPLICATE RSSIMacTimerThreshold.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("RSSIMacTimerThreshold", true);
                try {
                    int value3 = Integer.parseInt(this.valueStr);
                    if (value3 >= -99 && value3 <= -10 && value3 >= -99 && value3 <= -10) {
                        return 1000;
                    }
                    AndsfParser.loge("RSSIMacTimerThreshold value out of range");
                    return -3;
                } catch (NumberFormatException e5) {
                    AndsfParser.loge("CQE parameter: RSSIMacTimerThreshold Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("CQETimer")) {
                if (this.this$0.cqeThresholdTags.containsKey("CQETimer")) {
                    AndsfParser.loge("Adding DUPLICATE CQETimer.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("CQETimer", true);
                try {
                    int value4 = Integer.parseInt(this.valueStr);
                    if (value4 >= 0 && value4 <= 3600) {
                        return 1000;
                    }
                    AndsfParser.loge("CQETimer value out of range");
                    return -3;
                } catch (NumberFormatException e6) {
                    AndsfParser.loge("CQE parameter: CQETimer Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("MACHysteresisTimer")) {
                if (this.this$0.cqeThresholdTags.containsKey("MACHysteresisTimer")) {
                    AndsfParser.loge("Adding DUPLICATE MACHysteresisTimer.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("MACHysteresisTimer", true);
                try {
                    int value5 = Integer.parseInt(this.valueStr);
                    if (value5 >= 10 && value5 <= 3600) {
                        return 1000;
                    }
                    AndsfParser.loge("MACHysteresisTimer value out of range");
                    return -3;
                } catch (NumberFormatException e7) {
                    AndsfParser.loge("CQE parameter: MACHysteresisTimer Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("MACStatsAveragingAlpha")) {
                if (this.this$0.cqeThresholdTags.containsKey("MACStatsAveragingAlpha")) {
                    AndsfParser.loge("Adding DUPLICATE MACStatsAveragingAlpha.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("MACStatsAveragingAlpha", true);
                try {
                    float floatValue = Float.parseFloat(this.valueStr);
                    if (floatValue >= 0.0f && floatValue <= 1.0f) {
                        return 1000;
                    }
                    AndsfParser.loge("MACStatsAveragingAlpha value out of range");
                    return -3;
                } catch (NumberFormatException e8) {
                    AndsfParser.loge("CQE parameter: MACStatsAveragingAlpha Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("FrameCntThreshold")) {
                if (this.this$0.cqeThresholdTags.containsKey("FrameCntThreshold")) {
                    AndsfParser.loge("Adding DUPLICATE FrameCntThreshold.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("FrameCntThreshold", true);
                try {
                    int value6 = Integer.parseInt(this.valueStr);
                    if (value6 >= 0 && value6 <= 1000) {
                        return 1000;
                    }
                    AndsfParser.loge("FrameCntThreshold value out of range");
                    return -3;
                } catch (NumberFormatException e9) {
                    AndsfParser.loge("CQE parameter: FrameCntThreshold Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("MACMibThreshold2a")) {
                if (this.this$0.cqeThresholdTags.containsKey("MACMibThreshold2a")) {
                    AndsfParser.loge("Adding DUPLICATE MACMibThreshold2a.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("MACMibThreshold2a", true);
                try {
                    float floatValue2 = Float.parseFloat(this.valueStr);
                    if (floatValue2 >= 0.0f && floatValue2 <= 100.0f) {
                        return 1000;
                    }
                    AndsfParser.loge("MACMibThreshold value out of range");
                    return -3;
                } catch (NumberFormatException e10) {
                    AndsfParser.loge("CQE parameter: MACMibThreshold Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("MACMibThreshold2b")) {
                if (this.this$0.cqeThresholdTags.containsKey("MACMibThreshold2b")) {
                    AndsfParser.loge("Adding DUPLICATE MACMibThreshold2b.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("MACMibThreshold2b", true);
                try {
                    float floatValue3 = Float.parseFloat(this.valueStr);
                    if (floatValue3 >= 0.0f && floatValue3 <= 100.0f) {
                        return 1000;
                    }
                    AndsfParser.loge("MACMibThreshold value out of range");
                    return -3;
                } catch (NumberFormatException e11) {
                    AndsfParser.loge("CQE parameter: MACMibThreshold Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("ColdStartThreshold")) {
                if (this.this$0.cqeThresholdTags.containsKey("ColdStartThreshold")) {
                    AndsfParser.loge("Adding DUPLICATE MACMibThreshold2b.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("ColdStartThreshold", true);
                try {
                    int value7 = Integer.parseInt(this.valueStr);
                    if (value7 >= 0 && value7 <= 1000) {
                        return 1000;
                    }
                    AndsfParser.loge("ColdStartThreshold value out of range");
                    return -3;
                } catch (NumberFormatException e12) {
                    AndsfParser.loge("CQE parameter: ColdStartThreshold Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("RetryMetricWeight2a")) {
                if (this.this$0.cqeThresholdTags.containsKey("RetryMetricWeight2a")) {
                    AndsfParser.loge("Adding DUPLICATE RetryMetricWeight2a.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("RetryMetricWeight2a", true);
                try {
                    float floatValue4 = Float.parseFloat(this.valueStr);
                    if (floatValue4 >= -1.0f && floatValue4 <= 1.0f) {
                        return 1000;
                    }
                    AndsfParser.loge("RetryMetricWeight value out of range");
                    return -3;
                } catch (NumberFormatException e13) {
                    AndsfParser.loge("CQE parameter: RetryMetricWeight Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("RetryMetricWeight2b")) {
                if (this.this$0.cqeThresholdTags.containsKey("RetryMetricWeight2b")) {
                    AndsfParser.loge("Adding DUPLICATE RetryMetricWeight2b.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("RetryMetricWeight2b", true);
                try {
                    float floatValue5 = Float.parseFloat(this.valueStr);
                    if (floatValue5 >= -1.0f && floatValue5 <= 1.0f) {
                        return 1000;
                    }
                    AndsfParser.loge("RetryMetricWeight value out of range");
                    return -3;
                } catch (NumberFormatException e14) {
                    AndsfParser.loge("CQE parameter: RetryMetricWeight Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("MultiRetryMetricWeight2a")) {
                if (this.this$0.cqeThresholdTags.containsKey("MultiRetryMetricWeight2a")) {
                    AndsfParser.loge("Adding DUPLICATE MultiRetryMetricWeight2a.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("MultiRetryMetricWeight2a", true);
                try {
                    float floatValue6 = Float.parseFloat(this.valueStr);
                    if (floatValue6 >= -1.0f && floatValue6 <= 1.0f) {
                        return 1000;
                    }
                    AndsfParser.loge("MultiRetryMetricWeight value out of range");
                    return -3;
                } catch (NumberFormatException e15) {
                    AndsfParser.loge("CQE parameter: MultiRetryMetricWeight Number Format Exception");
                    return -3;
                }
            } else if (!this.nodeName.equals("MultiRetryMetricWeight2b")) {
                AndsfParser.loge("Unsupported CQE parameter.");
                return -3;
            } else if (this.this$0.cqeThresholdTags.containsKey("MultiRetryMetricWeight2b")) {
                AndsfParser.loge("Adding DUPLICATE MultiRetryMetricWeight2b.");
                return -3;
            } else {
                this.this$0.cqeThresholdTags.put("MultiRetryMetricWeight2b", true);
                try {
                    float floatValue7 = Float.parseFloat(this.valueStr);
                    if (floatValue7 >= -1.0f && floatValue7 <= 1.0f) {
                        return 1000;
                    }
                    AndsfParser.loge("MultiRetryMetricWeight value out of range");
                    return -3;
                } catch (NumberFormatException e16) {
                    AndsfParser.loge("CQE parameter: MultiRetryMetricWeight Number Format Exception");
                    return -3;
                }
            }
        }

        /* access modifiers changed from: private */
        public int romeParameterValidation() {
            AndsfParser.dlogd("validating CQE Threshold for Rome");
            if (this.nodeName.equals("RSSIAddThreshold")) {
                if (this.this$0.cqeThresholdTags.containsKey("RSSIAddThreshold")) {
                    AndsfParser.loge("Adding DUPLICATE RSSIAddThreshold.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("RSSIAddThreshold", true);
                try {
                    int addValue = Integer.parseInt(this.valueStr);
                    if (addValue >= -99 && addValue <= -10) {
                        return 1000;
                    }
                    AndsfParser.loge("RSSIAddThreshold value out of range");
                    return -3;
                } catch (NumberFormatException e) {
                    AndsfParser.loge("CQE parameter: RSSIAddThreshold Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("RSSIDropThreshold")) {
                if (this.this$0.cqeThresholdTags.containsKey("RSSIDropThreshold")) {
                    AndsfParser.loge("Adding DUPLICATE RSSIDropThreshold.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("RSSIDropThreshold", true);
                try {
                    int dropValue = Integer.parseInt(this.valueStr);
                    if (dropValue >= -99 && dropValue <= -10) {
                        return 1000;
                    }
                    AndsfParser.loge("RSSIDropThreshold value out of range");
                    return -3;
                } catch (NumberFormatException e2) {
                    AndsfParser.loge("CQE parameter: RSSIDropThreshold Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("RSSIAveragingInterval")) {
                if (this.this$0.cqeThresholdTags.containsKey("RSSIAveragingInterval")) {
                    AndsfParser.loge("Adding DUPLICATE RSSIAveragingInterval.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("RSSIAveragingInterval", true);
                try {
                    int value = Integer.parseInt(this.valueStr);
                    if (value >= 1 && value <= 3600) {
                        return 1000;
                    }
                    AndsfParser.loge("RSSIAveragingInterval value out of range");
                    return -3;
                } catch (NumberFormatException e3) {
                    AndsfParser.loge("CQE parameter: RSSIAveragingInterval Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("RSSIMacTimerThreshold")) {
                if (this.this$0.cqeThresholdTags.containsKey("RSSIMacTimerThreshold")) {
                    AndsfParser.loge("Adding DUPLICATE RSSIMacTimerThreshold.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("RSSIMacTimerThreshold", true);
                try {
                    int value2 = Integer.parseInt(this.valueStr);
                    if (value2 >= -99 && value2 <= -10 && value2 >= -99 && value2 <= -10) {
                        return 1000;
                    }
                    AndsfParser.loge("RSSIMacTimerThreshold value out of range");
                    return -3;
                } catch (NumberFormatException e4) {
                    AndsfParser.loge("CQE parameter: RSSIMacTimerThreshold Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("CQETimer")) {
                if (this.this$0.cqeThresholdTags.containsKey("CQETimer")) {
                    AndsfParser.loge("Adding DUPLICATE CQETimer.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("CQETimer", true);
                try {
                    int value3 = Integer.parseInt(this.valueStr);
                    if (value3 >= 0 && value3 <= 3600) {
                        return 1000;
                    }
                    AndsfParser.loge("CQETimer value out of range");
                    return -3;
                } catch (NumberFormatException e5) {
                    AndsfParser.loge("CQE parameter: CQETimer Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("MACHysteresisTimer")) {
                if (this.this$0.cqeThresholdTags.containsKey("MACHysteresisTimer")) {
                    AndsfParser.loge("Adding DUPLICATE MACHysteresisTimer.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("MACHysteresisTimer", true);
                try {
                    int value4 = Integer.parseInt(this.valueStr);
                    if (value4 >= 10 && value4 <= 3600) {
                        return 1000;
                    }
                    AndsfParser.loge("MACHysteresisTimer value out of range");
                    return -3;
                } catch (NumberFormatException e6) {
                    AndsfParser.loge("CQE parameter: MACHysteresisTimer Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("MACStatsAveragingAlpha")) {
                if (this.this$0.cqeThresholdTags.containsKey("MACStatsAveragingAlpha")) {
                    AndsfParser.loge("Adding DUPLICATE MACStatsAveragingAlpha.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("MACStatsAveragingAlpha", true);
                try {
                    float floatValue = Float.parseFloat(this.valueStr);
                    if (floatValue >= 0.0f && floatValue <= 1.0f) {
                        return 1000;
                    }
                    AndsfParser.loge("MACStatsAveragingAlpha value out of range");
                    return -3;
                } catch (NumberFormatException e7) {
                    AndsfParser.loge("CQE parameter: MACStatsAveragingAlpha Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("RMP_THR")) {
                if (this.this$0.cqeThresholdTags.containsKey("RMP_THR")) {
                    AndsfParser.loge("Adding DUPLICATE RMP_THR.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("RMP_THR", true);
                try {
                    float floatValue2 = Float.parseFloat(this.valueStr);
                    if (floatValue2 >= 0.0f && floatValue2 <= 1.0f) {
                        return 1000;
                    }
                    AndsfParser.loge("RMP_THR value out of range");
                    return -3;
                } catch (NumberFormatException e8) {
                    AndsfParser.loge("CQE parameter: RMP_THR Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("RMP_CNT_THR")) {
                if (this.this$0.cqeThresholdTags.containsKey("RMP_CNT_THR")) {
                    AndsfParser.loge("Adding DUPLICATE RMP_CNT_THR.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("RMP_CNT_THR", true);
                try {
                    int value5 = Integer.parseInt(this.valueStr);
                    if (value5 >= 0 && value5 <= 65000) {
                        return 1000;
                    }
                    AndsfParser.loge("RMP_CNT_THR value out of range");
                    return -3;
                } catch (NumberFormatException e9) {
                    AndsfParser.loge("CQE parameter: RMP_CNT_THR Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("RX_MCS_THR")) {
                if (this.this$0.cqeThresholdTags.containsKey("RX_MCS_THR")) {
                    AndsfParser.loge("Adding DUPLICATE RX_MCS_THR.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("RX_MCS_THR", true);
                try {
                    int value6 = Integer.parseInt(this.valueStr);
                    AndsfParser.dlogd("RX_MCS_THR: " + value6);
                    if (value6 < 0 || value6 > 10) {
                        return -3;
                    }
                    return 1000;
                } catch (NumberFormatException e10) {
                    AndsfParser.loge("CQE parameter: RX_MCS_THR Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("RX_BW_THR")) {
                if (this.this$0.cqeThresholdTags.containsKey("RX_BW_THR")) {
                    AndsfParser.loge("Adding DUPLICATE RX_BW_THR.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("RX_BW_THR", true);
                try {
                    int value7 = Integer.parseInt(this.valueStr);
                    if (value7 >= 0 && value7 <= 3) {
                        return 1000;
                    }
                    AndsfParser.loge("RX_BW_THR value out of range");
                    return -3;
                } catch (NumberFormatException e11) {
                    AndsfParser.loge("CQE parameter: RX_BW_THR Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("TMD_THR")) {
                if (this.this$0.cqeThresholdTags.containsKey("TMD_THR")) {
                    AndsfParser.loge("Adding DUPLICATE TMD_THR.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("TMD_THR", true);
                try {
                    float floatValue3 = Float.parseFloat(this.valueStr);
                    if (floatValue3 >= 0.0f && floatValue3 <= 1.0f) {
                        return 1000;
                    }
                    AndsfParser.loge("TMD_THR value out of range");
                    return -3;
                } catch (NumberFormatException e12) {
                    AndsfParser.loge("CQE parameter: TMD_THR Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("TMD_CNT_THR")) {
                if (this.this$0.cqeThresholdTags.containsKey("TMD_CNT_THR")) {
                    AndsfParser.loge("Adding DUPLICATE TMD_CNT_THR.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("TMD_CNT_THR", true);
                try {
                    int value8 = Integer.parseInt(this.valueStr);
                    if (value8 >= 0 && value8 <= 65000) {
                        return 1000;
                    }
                    AndsfParser.loge("RetryMetricWeight value out of range");
                    return -3;
                } catch (NumberFormatException e13) {
                    AndsfParser.loge("CQE parameter: TMD_CNT_THR Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("TMR_THR")) {
                if (this.this$0.cqeThresholdTags.containsKey("TMR_THR")) {
                    AndsfParser.loge("Adding DUPLICATE TMR_THR.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("TMR_THR", true);
                try {
                    float floatValue4 = Float.parseFloat(this.valueStr);
                    if (floatValue4 >= 0.0f && floatValue4 <= 1.0f) {
                        return 1000;
                    }
                    AndsfParser.loge("TMR_THR value out of range");
                    return -3;
                } catch (NumberFormatException e14) {
                    AndsfParser.loge("CQE parameter: TMR_THR Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("TMR_CNT_THR")) {
                if (this.this$0.cqeThresholdTags.containsKey("TMR_CNT_THR")) {
                    AndsfParser.loge("Adding DUPLICATE TMR_CNT_THR.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("TMR_CNT_THR", true);
                try {
                    int value9 = Integer.parseInt(this.valueStr);
                    if (value9 >= 0 && value9 <= 65000) {
                        return 1000;
                    }
                    AndsfParser.loge("TMR_CNT_THR value out of range");
                    return -3;
                } catch (NumberFormatException e15) {
                    AndsfParser.loge("CQE parameter: TMR_CNT_THR Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("TX_MCS_THR")) {
                if (this.this$0.cqeThresholdTags.containsKey("TX_MCS_THR")) {
                    AndsfParser.loge("Adding DUPLICATE TX_MCS_THR.");
                    return -3;
                }
                this.this$0.cqeThresholdTags.put("TX_MCS_THR", true);
                try {
                    int value10 = Integer.parseInt(this.valueStr);
                    if (value10 >= 0 && value10 <= 10) {
                        return 1000;
                    }
                    AndsfParser.loge("TX_MCS_THR value out of range");
                    return -3;
                } catch (NumberFormatException e16) {
                    AndsfParser.loge("CQE parameter: TX_MCS_THR Number Format Exception");
                    return -3;
                }
            } else if (!this.nodeName.equals("TX_BW_THR")) {
                AndsfParser.loge("Unsupported CQE parameter.");
                return -3;
            } else if (this.this$0.cqeThresholdTags.containsKey("TX_BW_THR")) {
                AndsfParser.loge("Adding DUPLICATE TX_BW_THR.");
                return -3;
            } else {
                this.this$0.cqeThresholdTags.put("TX_BW_THR", true);
                try {
                    int value11 = Integer.parseInt(this.valueStr);
                    if (value11 >= 0 && value11 <= 3) {
                        return 1000;
                    }
                    AndsfParser.loge("TX_BW_THR value out of range");
                    return -3;
                } catch (NumberFormatException e17) {
                    AndsfParser.loge("CQE parameter: TX_BW_THR Number Format Exception");
                    return -3;
                }
            }
        }

        /* access modifiers changed from: private */
        public void addToDatabase() {
            AndsfParser.dlogd("CqeThreshold: adding CQE Thresholds to database.");
            this.data.put("Type", this.nodeName);
            this.data.put("Value", this.valueStr);
            this.data.put("Units", this.unit);
            this.data.put("id", this.f4id);
            this.data.put("apid", this.apid);
            AndsfParser.dlogd("CqeThreshold: finished");
        }
    }

    private int handleTQEExtension(Element baseNode) {
        AndsfParser.dlogd("TQEExtension: Handling TQE extension");
        NodeList thresholds = baseNode.getElementsByTagName("TQE_Thresholds");
        if (thresholds == null) {
            AndsfParser.loge("TQEExtension: missing TQE_Thresholds tag, using default.");
            return -3;
        }
        AndsfParser.dlogd("TQEExtension: thresholds length " + thresholds.getLength());
        if (thresholds.getLength() > 2) {
            AndsfParser.dlogd("TQEExtension: Number of TQE_Thresholds elements " + thresholds.getLength() + " is greater than 2");
            return -3;
        }
        for (int i = 0; i < thresholds.getLength(); i++) {
            AndsfParser.dlogd("TQEExtension: Processing threshold item " + i);
            if (thresholds.item(i) == null) {
                AndsfParser.loge("TQEExtension: missing items under TQE_Thresholds tag.");
                return -3;
            }
            Node id = ((Element) thresholds.item(i)).getAttributes().getNamedItem("Id");
            if (Integer.parseInt(id.getNodeValue()) > 128) {
                AndsfParser.dlogd("TQEExtension:  Id value " + Integer.parseInt(id.getNodeValue()) + " is greater than 128");
            } else {
                NodeList apids = ((Element) thresholds.item(i)).getElementsByTagName("apIds");
                if (apids == null) {
                    AndsfParser.loge("TQEExtension: missing tag apIds under TQE_Thresholds");
                    return -3;
                } else if (apids.getLength() == 0) {
                    AndsfParser.dlogd("TQEExtension: Handling tqe thresholds for default apid");
                    if (handleTqeThresholds(thresholds.item(i), id, (Node) null) == -3) {
                        return -3;
                    }
                } else {
                    String type = ((Element) apids.item(0)).getAttributes().getNamedItem("Type").getNodeValue();
                    if (type.equalsIgnoreCase("SSID")) {
                        NodeList apid = ((Element) apids.item(0)).getElementsByTagName("apId");
                        if (apid.getLength() > 128) {
                            AndsfParser.dlogd("TQEExtension: Apid length " + apid.getLength() + " exceeds max, handling first " + 128);
                        }
                        for (int j = 0; j < Math.min(apid.getLength(), 128); j++) {
                            AndsfParser.dlogd("TQEExtension: Handling tqe thresholds for apid " + apid.item(j).getFirstChild().getNodeValue());
                            if (handleTqeThresholds(thresholds.item(i), id, apid.item(j).getFirstChild()) == -3) {
                                return -3;
                            }
                        }
                        continue;
                    } else {
                        AndsfParser.dlogd("TQEExtension: Apid type " + type + " is not supported");
                    }
                }
            }
        }
        return 1000;
    }

    private int handleTqeThresholds(Node thresholdNode, Node idNode, Node apidNode) {
        AndsfParser.dlogd("handleTqeThresholds: thresholdNode " + thresholdNode.getNodeName() + " Id " + idNode.getNodeValue());
        NodeList details = thresholdNode.getChildNodes();
        AndsfParser.dlogd("details length " + details.getLength());
        for (int i = 0; i < details.getLength(); i++) {
            Node thresholdTypeNode = details.item(i);
            if (thresholdTypeNode.getNodeName().equals("BBD_Disabled") || thresholdTypeNode.getNodeName().equals("DBD_Disabled") || thresholdTypeNode.getNodeName().equals("DGIMThresh") || thresholdTypeNode.getNodeName().equals("DBDTputThresh") || thresholdTypeNode.getNodeName().equals("TQETimeWindow") || thresholdTypeNode.getNodeName().equals("RatioThresh")) {
                AndsfParser.dlogd("Adding new TqeThreshold item " + thresholdTypeNode.getNodeName());
                TqeThreshold ct = new TqeThreshold(this, thresholdTypeNode, idNode, apidNode);
                this.tqeThresholds.add(ct);
                if (ct.parameterValidation() == -3) {
                    AndsfParser.loge("TQE parameter validation failed.");
                    return -3;
                }
                ct.addToDatabase();
            }
        }
        return 1000;
    }

    class TqeThreshold {
        private String apid;
        public ContentValues data = new ContentValues();

        /* renamed from: id */
        private String f5id;
        private String nodeName;
        final /* synthetic */ Extension this$0;
        private String unit;
        private String valueStr;

        TqeThreshold(Extension this$02, Node thresholdTypeNode, Node idNode, Node apidNode) {
            String str = null;
            this.this$0 = this$02;
            this.nodeName = thresholdTypeNode.getNodeName();
            this.valueStr = thresholdTypeNode.getFirstChild().getNodeValue();
            AndsfParser.dlogd("TqeThreshold: Putting attributes...");
            Node threshUnits = ((Element) thresholdTypeNode).getAttributes().getNamedItem("units");
            this.unit = threshUnits == null ? null : threshUnits.getNodeValue();
            this.f5id = idNode.getNodeValue();
            this.apid = apidNode != null ? apidNode.getNodeValue() : str;
        }

        /* access modifiers changed from: private */
        public int parameterValidation() {
            AndsfParser.dlogd("validating TQE Threshold");
            if (this.nodeName.equals("DGIMThresh")) {
                try {
                    int addValue = Integer.parseInt(this.valueStr);
                    if (addValue >= 0 && addValue <= 65535) {
                        return 1000;
                    }
                    AndsfParser.loge("DGIMThresh value out of range");
                    return -3;
                } catch (NumberFormatException e) {
                    AndsfParser.loge("TQE parameter: DGIMThresh Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("DBDTputThresh")) {
                try {
                    int addValue2 = Integer.parseInt(this.valueStr);
                    if (addValue2 >= 100000 && addValue2 <= 100000000) {
                        return 1000;
                    }
                    AndsfParser.loge("DBDTputThresh value out of range");
                    return -3;
                } catch (NumberFormatException e2) {
                    AndsfParser.loge("TQE parameter: DBDTputThresh Number Format Exception");
                    return -3;
                }
            } else if (this.nodeName.equals("TQETimeWindow")) {
                try {
                    int addValue3 = Integer.parseInt(this.valueStr);
                    if (addValue3 >= 0 && addValue3 <= 65535) {
                        return 1000;
                    }
                    AndsfParser.loge("TQETimeWindow value out of range");
                    return -3;
                } catch (NumberFormatException e3) {
                    AndsfParser.loge("TQE parameter: TQETimeWindow Number Format Exception");
                    return -3;
                }
            } else if (!this.nodeName.equals("RatioThresh")) {
                return 1000;
            } else {
                try {
                    float floatValue = Float.parseFloat(this.valueStr);
                    if (floatValue > 0.0f && floatValue < 1.0f) {
                        return 1000;
                    }
                    AndsfParser.loge("RatioThresh value out of range");
                    return -3;
                } catch (NumberFormatException e4) {
                    AndsfParser.loge("TQE parameter: RatioThresh Number Format Exception");
                    return -3;
                }
            }
        }

        /* access modifiers changed from: private */
        public void addToDatabase() {
            AndsfParser.dlogd("TqeThreshold: adding TQE Thresholds to database.");
            this.data.put("Type", this.nodeName);
            this.data.put("Value", this.valueStr);
            this.data.put("Units", this.unit);
            this.data.put("id", this.f5id);
            this.data.put("apid", this.apid);
            AndsfParser.dlogd("TqeThreshold: finished");
        }
    }

    public void assignValues(String type, String value) {
        if (type.equals("BQE_Disabled")) {
            this.data.put("BQE_Disabled", value);
        } else if (type.equals("ICD_Disabled")) {
            this.data.put("ICD_Disabled", value);
        } else if (type.equals("MaxAuthTime")) {
            this.data.put("MaxAuthTime", value);
        } else if (type.equals("IcdBanRetest")) {
            this.data.put("IcdBanRetest", value);
        }
    }
}
