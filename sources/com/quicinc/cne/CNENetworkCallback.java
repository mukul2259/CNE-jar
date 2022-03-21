package com.quicinc.cne;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.telephony.SubscriptionManager;
import com.quicinc.cne.CNE;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.sql.Timestamp;

public final class CNENetworkCallback extends ConnectivityManager.NetworkCallback {
    private static final String SUB_TYPE = "CORE";
    private LinkProperties currLp;
    private ConnectivityManager mCm = ((ConnectivityManager) this.mContext.getSystemService("connectivity"));
    private CNE mCne;
    private Context mContext;
    private NetworkRequest mNetRequest;
    private int mNetType;
    private int mSlotIdx;
    private int mSubId;
    private CNE.CneRatInfo ratInfo;

    public CNENetworkCallback(CNE cne, Context context, int subid, int slotidx) {
        this.mCne = cne;
        this.mContext = context;
        this.mSubId = subid;
        this.mSlotIdx = slotidx;
        CNE cne2 = this.mCne;
        cne2.getClass();
        this.ratInfo = new CNE.CneRatInfo();
        if (this.ratInfo == null) {
            CneMsg.loge("CORE", "Unable to allocate memory for CneRatInfo");
        }
    }

    public void onAvailable(Network network) {
        NetworkCapabilities nc = this.mCm.getNetworkCapabilities(network);
        CneMsg.rlog("CORE", "onAvailable: " + network + " net handle: " + network.getNetworkHandle() + " mSubId: " + this.mSubId);
        if (this.mSlotIdx == 0) {
            this.ratInfo.setSlotIdx(this.mSlotIdx);
        } else if (nc != null) {
            CneMsg.rlog("CORE", "network specifier: " + nc.getNetworkSpecifier());
            String specifier = nc.getNetworkSpecifier();
            if (specifier == null || specifier.isEmpty()) {
                this.ratInfo.setSlotIdx(SubscriptionManager.getSlotId(SubscriptionManager.getDefaultDataSubscriptionId()) + 1);
            } else {
                this.ratInfo.setSlotIdx(SubscriptionManager.getSlotId(Integer.parseInt(specifier)) + 1);
            }
        } else {
            this.ratInfo.setSlotIdx(SubscriptionManager.getSlotId(SubscriptionManager.getDefaultDataSubscriptionId()) + 1);
        }
        this.currLp = this.mCm.getLinkProperties(network);
        if (this.ratInfo != null) {
            this.ratInfo.setNetHandle(network.getNetworkHandle());
            this.ratInfo.setNetworkState(1);
            this.ratInfo.setErrorCause(0);
            if (this.currLp != null) {
                updateRatInfo(this.currLp);
            }
        }
    }

    public void onLost(Network network) {
        NetworkCapabilities nc = this.mCm.getNetworkCapabilities(network);
        CneMsg.rlog("CORE", "onLost: " + network + " mSubId: " + this.mSubId);
        if (this.mSlotIdx == 0) {
            this.ratInfo.setSlotIdx(this.mSlotIdx);
        } else if (nc != null) {
            CneMsg.rlog("CORE", "network specifier: " + nc.getNetworkSpecifier());
            String specifier = nc.getNetworkSpecifier();
            if (specifier == null || specifier.isEmpty()) {
                this.ratInfo.setSlotIdx(SubscriptionManager.getSlotId(SubscriptionManager.getDefaultDataSubscriptionId()) + 1);
            } else {
                this.ratInfo.setSlotIdx(SubscriptionManager.getSlotId(Integer.parseInt(specifier)) + 1);
            }
        } else {
            this.ratInfo.setSlotIdx(SubscriptionManager.getSlotId(SubscriptionManager.getDefaultDataSubscriptionId()) + 1);
        }
        this.currLp = this.mCm.getLinkProperties(network);
        if (this.ratInfo != null) {
            this.ratInfo.setNetHandle(network.getNetworkHandle());
            this.ratInfo.setNetworkState(4);
            this.ratInfo.setErrorCause(0);
            updateRatInfo(this.currLp);
        }
    }

    public void onLinkPropertiesChanged(Network network, LinkProperties newLp) {
        NetworkCapabilities nc = this.mCm.getNetworkCapabilities(network);
        CneMsg.rlog("CORE", "onLinkPropertiesChanged: " + network + " mSubId: " + this.mSubId);
        if (this.mSlotIdx == 0) {
            this.ratInfo.setSlotIdx(this.mSlotIdx);
        } else if (nc != null) {
            CneMsg.rlog("CORE", "network specifier: " + nc.getNetworkSpecifier());
            String specifier = nc.getNetworkSpecifier();
            if (specifier == null || specifier.isEmpty()) {
                this.ratInfo.setSlotIdx(SubscriptionManager.getSlotId(SubscriptionManager.getDefaultDataSubscriptionId()) + 1);
            } else {
                this.ratInfo.setSlotIdx(SubscriptionManager.getSlotId(Integer.parseInt(specifier)) + 1);
            }
        } else {
            this.ratInfo.setSlotIdx(SubscriptionManager.getSlotId(SubscriptionManager.getDefaultDataSubscriptionId()) + 1);
        }
        this.currLp = newLp;
        if (this.currLp != null) {
            updateRatInfo(this.currLp);
        }
    }

    public int getNetworkCapability(int netType) {
        switch (netType) {
            case 0:
                return 12;
            case 2:
                return 0;
            case 3:
                return 1;
            case 4:
                return 4;
            case 5:
                return 8;
            case 6:
                return 10;
            case 7:
                CneMsg.logd("CORE", "WWAN_EMERGENCY not supported yet");
                return -1;
            default:
                CneMsg.logw("CORE", "Unknown network capability: " + netType);
                return -1;
        }
    }

    public void createNetworkRequest(int netType) {
        this.mNetType = netType;
        int capability = getNetworkCapability(netType);
        if (capability != -1) {
            CneMsg.rlog("CORE", "Bring up network: " + this.mNetType);
            this.mNetRequest = new NetworkRequest.Builder().addCapability(capability).addTransportType(0).build();
            this.mCm.requestNetwork(this.mNetRequest, this);
        }
    }

    public void createNetworkRequest(int netType, int subId) {
        this.mNetType = netType;
        int capability = getNetworkCapability(netType);
        if (capability != -1) {
            CneMsg.rlog("CORE", "Bring up network: " + this.mNetType + "subId = " + subId);
            this.mNetRequest = new NetworkRequest.Builder().addCapability(capability).addTransportType(0).setNetworkSpecifier(Integer.toString(subId)).build();
            this.mCm.requestNetwork(this.mNetRequest, this);
        }
    }

    public void destroyNetworkRequest() {
        CneMsg.rlog("CORE", "Tear down network: " + this.mNetType);
        this.mCm.unregisterNetworkCallback(this);
    }

    private void updateRatInfo(LinkProperties lp) {
        this.ratInfo.setTimeStamp(new Timestamp(System.currentTimeMillis()).toString());
        if (lp != null) {
            this.ratInfo.setIPv4Iface(lp.getInterfaceName());
            for (LinkAddress linkAddress : lp.getLinkAddresses()) {
                InetAddress addr = linkAddress.getAddress();
                if (addr == null || !(addr instanceof Inet4Address)) {
                    if (addr != null && (addr instanceof Inet6Address) && !addr.isLinkLocalAddress() && !addr.isLoopbackAddress() && this.ratInfo != null) {
                        this.ratInfo.setIPv6Address(addr.getHostAddress());
                    }
                } else if (!addr.isLinkLocalAddress() && !addr.isLoopbackAddress() && this.ratInfo != null) {
                    this.ratInfo.setIPv4Address(addr.getHostAddress());
                }
            }
        }
        this.mCne.sendRatInfo(this.ratInfo, this.mNetType);
    }

    public CNE.CneRatInfo getRatInfo() {
        return this.ratInfo;
    }
}
