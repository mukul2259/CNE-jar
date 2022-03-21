package com.quicinc.cne;

import android.util.Log;

public class CneMsg {
    protected static boolean ADDTL_MSG = false;
    private static final String MAIN_TAG = "QCNEJ";
    public static final String SUBTYPE_QCNEJ_CORE = "CORE";
    public static final String SUBTYPE_QCNEJ_CORE_COM = "CORE:COM";
    public static final String SUBTYPE_QCNEJ_CORE_COM_RCVR = "CORE:COM:RCVR";
    public static final String SUBTYPE_QCNEJ_CORE_COM_SNDR = "CORE:COM:SNDR";
    public static final String SUBTYPE_QCNEJ_NSRM_TRG = "NSRM:TRG";
    public static final String SUBTYPE_QCNEJ_POLICY_ANDSF = "PLCY:ANDSF";
    public static final String SUBTYPE_QCNEJ_POLICY_NSRM = "PLCY:NSRM";
    public static final String SUBTYPE_QCNEJ_TEST = "TEST";
    public static final String SUBTYPE_QCNEJ_WQE = "WQE";
    public static final String SUBTYPE_QCNEJ_WQE_BQE = "WQE:BQE";
    public static final String SUBTYPE_QCNEJ_WQE_ICD = "WQE:ICD";
    protected static final boolean TEST = false;

    public static void logd(String SUB_TYPE, String s) {
        if (ADDTL_MSG) {
            Log.d(MAIN_TAG, "|" + SUB_TYPE + "| " + s);
        }
    }

    public static void logv(String SUB_TYPE, String s) {
        if (ADDTL_MSG) {
            Log.v(MAIN_TAG, "|" + SUB_TYPE + "| " + s);
        }
    }

    public static void logi(String SUB_TYPE, String s) {
        if (ADDTL_MSG) {
            Log.i(MAIN_TAG, "|" + SUB_TYPE + "| " + s);
        }
    }

    public static void logw(String SUB_TYPE, String s) {
        Log.w(MAIN_TAG, "|" + SUB_TYPE + "| " + s);
    }

    public static void loge(String SUB_TYPE, String s) {
        Log.e(MAIN_TAG, "|" + SUB_TYPE + "| " + s);
    }

    public static void rlog(String SUB_TYPE, String s) {
        Log.i(MAIN_TAG, "|" + SUB_TYPE + "| " + s);
    }

    public static void logData(byte[] data, int length, String direction) {
        StringBuilder s = new StringBuilder();
        s.append("[");
        for (int i = 0; i < length; i++) {
            s.append("(").append(i).append("):").append(Integer.toString(data[i]));
            if (i < length - 1) {
                s.append(", ");
            }
        }
        s.append("]");
        logd(SUBTYPE_QCNEJ_TEST, direction + ">>> Data >>> " + s.toString());
    }
}
