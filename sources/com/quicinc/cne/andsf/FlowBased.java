package com.quicinc.cne.andsf;

import java.util.ArrayList;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class FlowBased extends AndsfNodeSet {
    ArrayList<IpFlow> ipFlows = new ArrayList<>();
    ArrayList<RoutingCriteria> routingCriterion = new ArrayList<>();
    ArrayList<RoutingRule> routingRules = new ArrayList<>();

    FlowBased(Element baseNode) {
        AndsfParser.dlogd("Handling new FlowBased node");
        NodeList flowNodes = baseNode.getElementsByTagName("IPFlow");
        for (int i = 0; i < flowNodes.getLength(); i++) {
            this.ipFlows.add(new IpFlow(flowNodes.item(i)));
        }
        NodeList criteraNodes = baseNode.getElementsByTagName("RoutingCriteria");
        for (int i2 = 0; i2 < criteraNodes.getLength(); i2++) {
            this.routingCriterion.add(new RoutingCriteria(criteraNodes.item(i2)));
        }
        NodeList rulesNodes = baseNode.getElementsByTagName("RoutingRule");
        for (int i3 = 0; i3 < rulesNodes.getLength(); i3++) {
            this.routingRules.add(new RoutingRule(rulesNodes.item(i3)));
        }
        inspectChildren(baseNode);
    }

    public void assignValues(String type, String value) {
        if (type.equals("RulePriority")) {
            this.data.put("RulePriority", value);
        }
    }

    class RoutingRule extends AndsfNodeSet {
        RoutingRule(Node node) {
            AndsfParser.dlogd("Handling new Routing Rule");
            inspectChildren(node);
        }

        public void assignValues(String type, String value) {
            if (type.equals("AccessTechnology")) {
                this.data.put("AccessTechnology", value);
            } else if (type.equals("AccessId")) {
                this.data.put("AccessId", value);
            } else if (type.equals("SecondaryAccessId")) {
                this.data.put("SecondaryAccessId", value);
            } else if (type.equals("AccessNetworkPriority")) {
                this.data.put("AccessNetworkPriority", value);
            }
        }
    }

    class RoutingCriteria extends AndsfNodeSet {
        public ArrayList<TimeOfDay> mTimeOfDay = new ArrayList<>();

        RoutingCriteria(Node node) {
            AndsfParser.dlogd("Handling new RoutingCriteria");
            NodeList timesOfDay = ((Element) node).getElementsByTagName("TimeOfDay");
            for (int i = 0; i < timesOfDay.getLength(); i++) {
                this.mTimeOfDay.add(new TimeOfDay(timesOfDay.item(i)));
            }
        }

        class TimeOfDay extends AndsfNodeSet {
            public TimeOfDay(Node node) {
                AndsfParser.dlogd("Handling new TimeOfDay");
                inspectChildren(node);
            }

            public void assignValues(String type, String value) {
                if (type.equals("TimeStart")) {
                    this.data.put("TimeStart", value);
                } else if (type.equals("TimeStop")) {
                    this.data.put("TimeStop", value);
                } else if (type.equals("DateStart")) {
                    this.data.put("DateStart", value);
                } else if (type.equals("DateStop")) {
                    this.data.put("DateStop", value);
                }
            }
        }

        public void assignValues(String type, String value) {
        }
    }

    public class IpFlow extends AndsfNodeSet {
        IpFlow(Node node) {
            AndsfParser.dlogd("Handling new IpFlow");
            inspectChildren(node);
        }

        /* access modifiers changed from: package-private */
        public void convertIp(String type, String value) {
            String[] addr = value.split("\\.");
            if (addr.length > 1) {
                try {
                    long val = (Long.parseLong(addr[0]) << 24) | (Long.parseLong(addr[1]) << 16) | (Long.parseLong(addr[2]) << 8) | Long.parseLong(addr[3]);
                    this.data.put(type, Long.valueOf(val));
                    AndsfParser.dlogd("Committed " + val + " for IP address " + value);
                } catch (Exception e) {
                    AndsfParser.dlogd("Committed " + value + " for IP address");
                    this.data.put(type, value);
                }
            } else {
                AndsfParser.dlogd("Committed " + value + " for IP address");
                this.data.put(type, value);
            }
        }

        public void convertPort(String type, String value) {
            int ival = Integer.parseInt(value);
            this.data.put(type, Integer.valueOf(ival));
            AndsfParser.dlogd("Committed " + ival + " for port " + value);
        }

        public void assignValues(String type, String value) {
            if (type.equals("AddressType")) {
                this.data.put("AddressType", value);
            } else if (type.equals("StartSourceIPAddress")) {
                convertIp(type, value);
            } else if (type.equals("EndSourceIPAddress")) {
                convertIp(type, value);
            } else if (type.equals("StartDestIPAddress")) {
                convertIp(type, value);
            } else if (type.equals("EndDestIPAddress")) {
                convertIp(type, value);
            } else if (type.equals("ProtocolType")) {
                this.data.put("ProtocolType", value);
            } else if (type.equals("StartSourcePortNumber")) {
                convertPort(type, value);
            } else if (type.equals("EndSourcePortNumber")) {
                convertPort(type, value);
            } else if (type.equals("StartDestPortNumber")) {
                convertPort(type, value);
            } else if (type.equals("EndDestPortNumber")) {
                convertPort(type, value);
            } else if (type.equals("AppName")) {
                this.data.put("AppName", value);
            } else if (type.equals("SecondaryAccessId")) {
                this.data.put("SecondaryAccessId", value);
            } else if (type.equals("Direction")) {
                this.data.put("Direction", value);
            } else if (type.equals("QoS")) {
                this.data.put("QoS", value);
            } else {
                AndsfParser.loge("Unrecognized node = " + type);
            }
        }
    }
}
