package com.quicinc.cne.andsf;

import java.util.ArrayList;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public class IsrpDetails extends AndsfNodeSet {
    ArrayList<FlowBased> flowBased = new ArrayList<>();

    IsrpDetails(Element baseNode) {
        AndsfParser.dlogd("Handling new ISRP");
        NodeList flowBasedNodes = baseNode.getElementsByTagName("ForFlowBased");
        for (int j = 0; j < flowBasedNodes.getLength(); j++) {
            this.flowBased.add(new FlowBased((Element) flowBasedNodes.item(j)));
        }
        inspectChildren(baseNode);
    }

    public void assignValues(String type, String value) {
        if (type.equals("Roaming")) {
            this.data.put("Roaming", value);
        } else if (type.equals("UpdatePolicy")) {
            this.data.put("UpdatePolicy", value);
        } else if (type.equals("PLMN")) {
            this.data.put("PLMN", value);
        }
    }
}
