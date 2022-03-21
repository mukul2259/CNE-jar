package com.quicinc.cne.andsf;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.quicinc.cne.CneMsg;
import com.quicinc.cne.andsf.AndsfParser;
import com.quicinc.cne.andsf.Extension;
import com.quicinc.cne.andsf.FlowBased;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;

public class DbConnection extends SQLiteOpenHelper {
    private static final String DATABASE_NAME = "andsf.db";
    private static AndsfDatabaseStructure andsfStruct;
    private static String dbAbsolutePath;

    public DbConnection(Context context) {
        super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 1);
        context.deleteDatabase(DATABASE_NAME);
        andsfStruct = new AndsfDatabaseStructure();
        dbAbsolutePath = context.getDatabasePath(DATABASE_NAME).getAbsolutePath();
    }

    public void onCreate(SQLiteDatabase db) {
        if (!createTables(db)) {
            dropAllTables(db);
            if (!createTables(db)) {
                CneMsg.loge(CneMsg.SUBTYPE_QCNEJ_POLICY_ANDSF, "Error creating tables, ANDSF parser failed");
            }
        }
    }

    private boolean createTables(SQLiteDatabase db) {
        try {
            for (Table t : new ArrayList<>(andsfStruct.tables.values())) {
                db.execSQL(t.getCreateString());
            }
            AndsfParser.dlogd("Created tables");
            return true;
        } catch (Exception e) {
            CneMsg.loge(CneMsg.SUBTYPE_QCNEJ_POLICY_ANDSF, "Creating tables" + e);
            return false;
        }
    }

    private void dropAllTables(SQLiteDatabase db) {
        CneMsg.logd(CneMsg.SUBTYPE_QCNEJ_POLICY_ANDSF, "Dropping tables");
        for (String s : new ArrayList<>(andsfStruct.tables.keySet())) {
            try {
                db.execSQL("DROP TABLE " + s);
            } catch (Exception e) {
                CneMsg.loge(CneMsg.SUBTYPE_QCNEJ_POLICY_ANDSF, "Didn't drop table " + s + e);
            }
        }
    }

    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        onCreate(db);
    }

    public int commitUpdate(SQLiteDatabase db, String tableName, ContentValues values) {
        long id = db.insert(tableName, (String) null, values);
        if (id == -1) {
            CneMsg.logd(CneMsg.SUBTYPE_QCNEJ_POLICY_ANDSF, "Commit " + tableName + "Failed");
        }
        return (int) id;
    }

    private void commitTod(SQLiteDatabase db, ArrayList<FlowBased.RoutingCriteria.TimeOfDay> tods, int rc_id) {
        AndsfParser.dlogd("Committing TODs to db");
        for (FlowBased.RoutingCriteria.TimeOfDay tod : tods) {
            tod.data.put("rc_id", Integer.valueOf(rc_id));
            commitUpdate(db, "time_of_day", tod.data);
        }
    }

    public void commitFlow(SQLiteDatabase db, FlowBased flowBased, int isrp_id) {
        AndsfParser.dlogd("Committing FlowBased to db");
        flowBased.data.put("isrp_id", Integer.valueOf(isrp_id));
        int flowId = commitUpdate(db, "flowbased", flowBased.data);
        for (FlowBased.IpFlow ipF : flowBased.ipFlows) {
            ipF.data.put("flow_id", Integer.valueOf(flowId));
            commitUpdate(db, "ip_flows", ipF.data);
        }
        commitRC(db, flowBased.routingCriterion, flowId);
        commitRR(db, flowBased.routingRules, flowId);
    }

    private void commitRR(SQLiteDatabase db, ArrayList<FlowBased.RoutingRule> rRules, int flowId) {
        AndsfParser.dlogd("Committing RoutingRule to db");
        for (FlowBased.RoutingRule rr : rRules) {
            rr.data.put("flow_id", Integer.valueOf(flowId));
            commitUpdate(db, "routing_rule", rr.data);
        }
    }

    private void commitRC(SQLiteDatabase db, ArrayList<FlowBased.RoutingCriteria> routingCriteria, int flowId) {
        AndsfParser.dlogd("Committing RoutingCriteria to db");
        for (FlowBased.RoutingCriteria rc : routingCriteria) {
            rc.data.put("flow_id", Integer.valueOf(flowId));
            commitTod(db, rc.mTimeOfDay, commitUpdate(db, "routing_criteria", rc.data));
        }
    }

    private void commitExt(SQLiteDatabase db, Extension ext) {
        AndsfParser.dlogd("Committing WQE extension to db");
        for (ContentValues cv : ext.bqeApIds) {
            commitUpdate(db, "bqe_apids", cv);
        }
        for (ContentValues appname : ext.authApps) {
            commitUpdate(db, "auth_apps", appname);
        }
        for (Extension.BqeThreshold bt : ext.bqeThresholds) {
            commitUpdate(db, "bqe_thresholds", bt.data);
        }
        for (ContentValues icdApId : ext.icdApIdSet) {
            commitUpdate(db, "icd_apids", icdApId);
        }
        for (ContentValues icdConfig : ext.icdConfigSet) {
            commitUpdate(db, "icd_config_set", icdConfig);
        }
        commitUpdate(db, "wqe", ext.data);
        AndsfParser.dlogd("Committing CQE extension to db");
        for (Extension.CqeThreshold ct : ext.cqeThresholds) {
            commitUpdate(db, "cqe_thresholds", ct.data);
        }
        AndsfParser.dlogd("Committing TQE extension to db");
        for (Extension.TqeThreshold tt : ext.tqeThresholds) {
            commitUpdate(db, "tqe_thresholds", tt.data);
        }
    }

    public void commitAndsf(SQLiteDatabase db, AndsfParser.AndsfData andsfData) {
        AndsfParser.dlogd("Committing ANDSF to db");
        for (IsrpDetails isrpDetails : andsfData.isrps) {
            int isrp_id = commitUpdate(db, "isrp", isrpDetails.data);
            for (FlowBased ibt : isrpDetails.flowBased) {
                commitFlow(db, ibt, isrp_id);
            }
        }
        if (andsfData.extension != null) {
            commitExt(db, andsfData.extension);
        }
        if (andsfData.data != null) {
            commitUpdate(db, "andsf_data", andsfData.data);
        }
        CneMsg.logd(CneMsg.SUBTYPE_QCNEJ_POLICY_ANDSF, "commited ANDSF");
    }

    public class Table {
        ArrayList<Column> columns = new ArrayList<>();
        public String name;

        public Table(String _name) {
            this.name = _name;
        }

        public void addColumn(String type_, String name_) {
            this.columns.add(new Column(type_, name_));
        }

        public class Column {
            String name;
            String type;

            public Column(String type_, String name_) {
                this.type = type_;
                this.name = name_;
            }
        }

        public String getCreateString() {
            int size = this.columns.size();
            if (size <= 0) {
                return "";
            }
            StringBuilder sb = new StringBuilder();
            sb.append("CREATE TABLE ").append(this.name).append(" (");
            sb.append(this.columns.get(0).name);
            sb.append(" ");
            sb.append(this.columns.get(0).type);
            for (int i = 1; i < size; i++) {
                sb.append(", ");
                sb.append(this.columns.get(i).name);
                sb.append(" ");
                sb.append(this.columns.get(i).type);
            }
            sb.append(")");
            return sb.toString();
        }
    }

    public class AndsfDatabaseStructure {
        Table IsrpProperties;
        String cBool = "BOOL";
        String cInt = "INTEGER";
        String cKey = "INTEGER PRIMARY KEY AUTOINCREMENT";
        String cText = "TEXT";
        String cUInt = "UNSIGNED INTEGER";
        public ArrayList<String> tableNames;
        public HashMap<String, Table> tables;

        public AndsfDatabaseStructure() {
            AndsfParser.dlogd("Creating Database structure");
            this.tables = new HashMap<>();
            this.tableNames = new ArrayList<>();
            Table andsfData = new Table("andsf_data");
            andsfData.addColumn(this.cInt, "Version");
            andsfData.addColumn(this.cInt, "Timestamp");
            this.tables.put(andsfData.name, andsfData);
            this.tableNames.add(andsfData.name);
            Table isrpProps = new Table("isrp");
            isrpProps.addColumn(this.cKey, "isrp_id");
            isrpProps.addColumn(this.cText, "Roaming");
            isrpProps.addColumn(this.cText, "PLMN");
            isrpProps.addColumn(this.cText, "UpdatePolicy");
            this.tables.put(isrpProps.name, isrpProps);
            this.tableNames.add(isrpProps.name);
            Table flowbasedProps = new Table("flowbased");
            flowbasedProps.addColumn(this.cKey, "flow_id");
            flowbasedProps.addColumn(this.cInt, "isrp_id");
            flowbasedProps.addColumn(this.cText, "RulePriority");
            this.tables.put(flowbasedProps.name, flowbasedProps);
            this.tableNames.add(flowbasedProps.name);
            Table ipFlows = new Table("ip_flows");
            ipFlows.addColumn(this.cKey, "ip_flows_id");
            ipFlows.addColumn(this.cInt, "flow_id");
            ipFlows.addColumn(this.cText, "AddressType");
            ipFlows.addColumn(this.cUInt, "StartSourceIPAddress");
            ipFlows.addColumn(this.cUInt, "EndSourceIPAddress");
            ipFlows.addColumn(this.cUInt, "StartDestIPAddress");
            ipFlows.addColumn(this.cUInt, "EndDestIPAddress");
            ipFlows.addColumn(this.cInt, "ProtocolType");
            ipFlows.addColumn(this.cInt, "StartSourcePortNumber");
            ipFlows.addColumn(this.cInt, "EndSourcePortNumber");
            ipFlows.addColumn(this.cInt, "StartDestPortNumber");
            ipFlows.addColumn(this.cInt, "EndDestPortNumber");
            ipFlows.addColumn(this.cText, "AppName");
            ipFlows.addColumn(this.cInt, "SecondaryAccessId");
            ipFlows.addColumn(this.cText, "Direction");
            ipFlows.addColumn(this.cText, "QoS");
            this.tables.put(ipFlows.name, ipFlows);
            this.tableNames.add(ipFlows.name);
            Table routingCriteria = new Table("routing_criteria");
            routingCriteria.addColumn(this.cKey, "rc_id");
            routingCriteria.addColumn(this.cInt, "flow_id");
            this.tables.put(routingCriteria.name, routingCriteria);
            this.tableNames.add(routingCriteria.name);
            Table timeOfDay = new Table("time_of_day");
            timeOfDay.addColumn(this.cKey, "tod_id");
            timeOfDay.addColumn(this.cInt, "rc_id");
            timeOfDay.addColumn(this.cInt, "TimeStart");
            timeOfDay.addColumn(this.cInt, "TimeStop");
            timeOfDay.addColumn(this.cInt, "DateStart");
            timeOfDay.addColumn(this.cInt, "DateStop");
            this.tables.put(timeOfDay.name, timeOfDay);
            this.tableNames.add(timeOfDay.name);
            Table routingRule = new Table("routing_rule");
            routingRule.addColumn(this.cKey, "rr_id");
            routingRule.addColumn(this.cInt, "flow_id");
            routingRule.addColumn(this.cInt, "AccessTechnology");
            routingRule.addColumn(this.cText, "AccessId");
            routingRule.addColumn(this.cText, "SecondaryAccessId");
            routingRule.addColumn(this.cText, "AccessNetworkPriority");
            this.tables.put(routingRule.name, routingRule);
            this.tableNames.add(routingRule.name);
            Table table = new Table("wqe");
            table.addColumn(this.cBool, "BQE_Disabled");
            table.addColumn(this.cBool, "ICD_Disabled");
            table.addColumn(this.cBool, "MaxAuthTime");
            table.addColumn(this.cBool, "IcdBanRetest");
            this.tables.put(table.name, table);
            this.tableNames.add(table.name);
            Table bqeApIds = new Table("bqe_apids");
            bqeApIds.addColumn(this.cText, "Id");
            bqeApIds.addColumn(this.cText, "apId");
            this.tables.put(bqeApIds.name, bqeApIds);
            this.tableNames.add(bqeApIds.name);
            Table bqeThresholds = new Table("bqe_thresholds");
            bqeThresholds.addColumn(this.cText, "Id");
            bqeThresholds.addColumn(this.cText, "SubRAT_Type");
            bqeThresholds.addColumn(this.cText, "Threshold");
            bqeThresholds.addColumn(this.cText, "Threshold_Units");
            this.tables.put(bqeThresholds.name, bqeThresholds);
            this.tableNames.add(bqeThresholds.name);
            Table cqeThresholds = new Table("cqe_thresholds");
            cqeThresholds.addColumn(this.cText, "Type");
            cqeThresholds.addColumn(this.cText, "Value");
            cqeThresholds.addColumn(this.cText, "Units");
            cqeThresholds.addColumn(this.cText, "id");
            cqeThresholds.addColumn(this.cText, "apid");
            this.tables.put(cqeThresholds.name, cqeThresholds);
            this.tableNames.add(cqeThresholds.name);
            Table table2 = new Table("tqe_thresholds");
            table2.addColumn(this.cText, "Type");
            table2.addColumn(this.cText, "Value");
            table2.addColumn(this.cText, "Units");
            table2.addColumn(this.cText, "id");
            table2.addColumn(this.cText, "apid");
            this.tables.put(table2.name, table2);
            this.tableNames.add(table2.name);
            Table authApps = new Table("auth_apps");
            authApps.addColumn(this.cText, "Appname");
            this.tables.put(authApps.name, authApps);
            this.tableNames.add(authApps.name);
            Table icdConfigSet = new Table("icd_config_set");
            icdConfigSet.addColumn(this.cText, "config_type");
            this.tables.put(icdConfigSet.name, icdConfigSet);
            this.tableNames.add(icdConfigSet.name);
            Table icdApIds = new Table("icd_apids");
            icdApIds.addColumn(this.cText, "apId");
            this.tables.put(icdApIds.name, icdApIds);
            this.tableNames.add(icdApIds.name);
        }
    }

    public void copyDatabase(String dbPath) throws Exception {
        String dbPath2 = dbPath + DATABASE_NAME;
        try {
            File f = new File(dbPath2);
            f.createNewFile();
            f.setReadable(true, false);
            f.setWritable(true, false);
        } catch (IOException e) {
            CneMsg.loge(CneMsg.SUBTYPE_QCNEJ_POLICY_ANDSF, "Creating file failure" + e);
        }
        try {
            InputStream in = new FileInputStream(dbAbsolutePath);
            OutputStream out = new FileOutputStream(dbPath2);
            byte[] buff = new byte[1024];
            while (true) {
                int len = in.read(buff);
                if (len > 0) {
                    out.write(buff, 0, len);
                } else {
                    out.flush();
                    out.close();
                    in.close();
                    AndsfParser.dlogd("Copied db to " + dbPath2 + " from " + dbAbsolutePath);
                    return;
                }
            }
        } catch (FileNotFoundException e2) {
            CneMsg.loge(CneMsg.SUBTYPE_QCNEJ_POLICY_ANDSF, "File not found" + e2);
            throw e2;
        } catch (IOException e3) {
            CneMsg.loge(CneMsg.SUBTYPE_QCNEJ_POLICY_ANDSF, "Copy file failure" + e3);
            throw e3;
        }
    }
}
