package com.quicinc.cne;

import android.os.Message;

public class CNERequest {
    private static final int MAX_POOL_SIZE = 4;
    private static final String SUB_TYPE = "CORE:COM";
    static int sNextSerial = 0;
    private static CNERequest sPool = null;
    private static int sPoolSize = 0;
    private static Object sPoolSync = new Object();
    static Object sSerialMonitor = new Object();
    byte[] mData;
    CNERequest mNext;
    int mRequest;
    Message mResult;
    int mSerial;

    static CNERequest obtain(int request) {
        CNERequest rr = null;
        synchronized (sPoolSync) {
            if (sPool != null) {
                rr = sPool;
                sPool = rr.mNext;
                rr.mNext = null;
                sPoolSize--;
            }
        }
        if (rr == null) {
            rr = new CNERequest();
        }
        synchronized (sSerialMonitor) {
            int i = sNextSerial;
            sNextSerial = i + 1;
            rr.mSerial = i;
        }
        rr.mRequest = request;
        return rr;
    }

    /* access modifiers changed from: package-private */
    public void release() {
        synchronized (sPoolSync) {
            if (sPoolSize < 4) {
                this.mNext = sPool;
                sPool = this;
                sPoolSize++;
            }
        }
    }

    private CNERequest() {
    }

    static void resetSerial() {
        synchronized (sSerialMonitor) {
            sNextSerial = 0;
        }
    }

    /* access modifiers changed from: package-private */
    public String serialString() {
        StringBuilder sb = new StringBuilder(8);
        String sn = Integer.toString(this.mSerial);
        sb.append('[');
        int s = sn.length();
        for (int i = 0; i < 4 - s; i++) {
            sb.append('0');
        }
        sb.append(sn);
        sb.append(']');
        return sb.toString();
    }

    /* access modifiers changed from: package-private */
    public void onError(int error) {
    }
}
