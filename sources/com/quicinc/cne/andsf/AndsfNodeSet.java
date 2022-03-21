package com.quicinc.cne.andsf;

import android.content.ContentValues;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public abstract class AndsfNodeSet {
    public ContentValues data = new ContentValues();

    public abstract void assignValues(String str, String str2);

    private String getChildValue(Node n) {
        return n.getChildNodes().item(0).getNodeValue();
    }

    public void inspectChildren(Node node) {
        NodeList nl = node.getChildNodes();
        for (int i = 0; i < nl.getLength(); i++) {
            if (nl.item(i).getNodeType() == 1) {
                assignValues(nl.item(i).getNodeName(), getChildValue(nl.item(i)));
            }
        }
    }
}
