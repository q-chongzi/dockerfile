/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2017/10/12 星期四 9:48:22                       */
/*==============================================================*/


DROP INDEX "INDEX_DASTA";

DROP TABLE "DATA_STATISTICS" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_0";

DROP TABLE "JOURNAL_0" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_1";

DROP TABLE "JOURNAL_1" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_10";

DROP TABLE "JOURNAL_10" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_11";

DROP TABLE "JOURNAL_11" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_12";

DROP TABLE "JOURNAL_12" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_13";

DROP TABLE "JOURNAL_13" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_14";

DROP TABLE "JOURNAL_14" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_15";

DROP TABLE "JOURNAL_15" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_16";

DROP TABLE "JOURNAL_16" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_17";

DROP TABLE "JOURNAL_17" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_18";

DROP TABLE "JOURNAL_18" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_19";

DROP TABLE "JOURNAL_19" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_2";

DROP TABLE "JOURNAL_2" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_20";

DROP TABLE "JOURNAL_20" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_21";

DROP TABLE "JOURNAL_21" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_22";

DROP TABLE "JOURNAL_22" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_23";

DROP TABLE "JOURNAL_23" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_24";

DROP TABLE "JOURNAL_24" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_25";

DROP TABLE "JOURNAL_25" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_26";

DROP TABLE "JOURNAL_26" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_27";

DROP TABLE "JOURNAL_27" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_28";

DROP TABLE "JOURNAL_28" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_29";

DROP TABLE "JOURNAL_29" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_3";

DROP TABLE "JOURNAL_3" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_30";

DROP TABLE "JOURNAL_30" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_31";

DROP TABLE "JOURNAL_31" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_32";

DROP TABLE "JOURNAL_32" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_33";

DROP TABLE "JOURNAL_33" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_34";

DROP TABLE "JOURNAL_34" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_35";

DROP TABLE "JOURNAL_35" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_36";

DROP TABLE "JOURNAL_36" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_37";

DROP TABLE "JOURNAL_37" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_38";

DROP TABLE "JOURNAL_38" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_39";

DROP TABLE "JOURNAL_39" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_4";

DROP TABLE "JOURNAL_4" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_40";

DROP TABLE "JOURNAL_40" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_41";

DROP TABLE "JOURNAL_41" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_42";

DROP TABLE "JOURNAL_42" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_43";

DROP TABLE "JOURNAL_43" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_44";

DROP TABLE "JOURNAL_44" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_45";

DROP TABLE "JOURNAL_45" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_46";

DROP TABLE "JOURNAL_46" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_47";

DROP TABLE "JOURNAL_47" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_48";

DROP TABLE "JOURNAL_48" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_49";

DROP TABLE "JOURNAL_49" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_5";

DROP TABLE "JOURNAL_5" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_50";

DROP TABLE "JOURNAL_50" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_51";

DROP TABLE "JOURNAL_51" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_52";

DROP TABLE "JOURNAL_52" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_53";

DROP TABLE "JOURNAL_53" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_54";

DROP TABLE "JOURNAL_54" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_55";

DROP TABLE "JOURNAL_55" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_56";

DROP TABLE "JOURNAL_56" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_57";

DROP TABLE "JOURNAL_57" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_58";

DROP TABLE "JOURNAL_58" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_59";

DROP TABLE "JOURNAL_59" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_6";

DROP TABLE "JOURNAL_6" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_7";

DROP TABLE "JOURNAL_7" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_8";

DROP TABLE "JOURNAL_8" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_JOURNAL_9";

DROP TABLE "JOURNAL_9" CASCADE CONSTRAINTS;

/*==============================================================*/
/* Table: "DATA_STATISTICS"                                     */
/*==============================================================*/
CREATE TABLE "DATA_STATISTICS" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "EFFECT_NUMBER"      INTEGER,
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_DATA_STATISTICS PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "DATA_STATISTICS"."CODE" IS
'引用编码';

COMMENT ON COLUMN "DATA_STATISTICS"."JOURNAL_TYPE" IS
'1：功能，2：迁移，3：同步';

/*==============================================================*/
/* Index: "INDEX_DASTA"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_DASTA" ON "DATA_STATISTICS" (
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "JOURNAL_TYPE" ASC,
   "BUDDLE_ID" ASC,
   "CATALOG_ID" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_0"                                           */
/*==============================================================*/
CREATE TABLE "JOURNAL_0" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_0 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_0"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_0"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_0"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_0"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_0"                                     */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_0" ON "JOURNAL_0" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_1"                                           */
/*==============================================================*/
CREATE TABLE "JOURNAL_1" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_1 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_1"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_1"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_1"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_1"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_1"                                     */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_1" ON "JOURNAL_1" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_10"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_10" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_10 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_10"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_10"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_10"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_10"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_10"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_10" ON "JOURNAL_10" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_11"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_11" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_11 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_11"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_11"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_11"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_11"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_11"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_11" ON "JOURNAL_11" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_12"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_12" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_12 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_12"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_12"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_12"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_12"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_12"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_12" ON "JOURNAL_12" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_13"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_13" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_13 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_13"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_13"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_13"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_13"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_13"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_13" ON "JOURNAL_13" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_14"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_14" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_14 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_14"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_14"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_14"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_14"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_14"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_14" ON "JOURNAL_14" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_15"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_15" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_15 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_15"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_15"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_15"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_15"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_15"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_15" ON "JOURNAL_15" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_16"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_16" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_16 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_16"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_16"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_16"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_16"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_16"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_16" ON "JOURNAL_16" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_17"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_17" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_17 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_17"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_17"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_17"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_17"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_17"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_17" ON "JOURNAL_17" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_18"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_18" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_18 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_18"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_18"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_18"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_18"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_18"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_18" ON "JOURNAL_18" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_19"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_19" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_19 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_19"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_19"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_19"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_19"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_19"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_19" ON "JOURNAL_19" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_2"                                           */
/*==============================================================*/
CREATE TABLE "JOURNAL_2" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_2 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_2"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_2"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_2"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_2"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_2"                                     */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_2" ON "JOURNAL_2" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_20"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_20" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_20 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_20"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_20"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_20"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_20"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_20"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_20" ON "JOURNAL_20" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_21"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_21" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_21 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_21"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_21"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_21"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_21"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_21"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_21" ON "JOURNAL_21" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_22"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_22" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_22 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_22"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_22"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_22"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_22"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_22"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_22" ON "JOURNAL_22" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_23"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_23" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_23 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_23"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_23"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_23"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_23"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_23"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_23" ON "JOURNAL_23" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_24"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_24" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_24 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_24"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_24"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_24"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_24"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_24"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_24" ON "JOURNAL_24" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_25"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_25" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_25 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_25"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_25"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_25"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_25"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_25"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_25" ON "JOURNAL_25" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_26"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_26" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_26 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_26"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_26"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_26"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_26"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_26"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_26" ON "JOURNAL_26" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_27"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_27" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_27 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_27"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_27"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_27"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_27"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_27"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_27" ON "JOURNAL_27" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_28"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_28" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_28 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_28"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_28"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_28"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_28"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_28"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_28" ON "JOURNAL_28" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_29"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_29" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_29 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_29"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_29"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_29"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_29"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_29"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_29" ON "JOURNAL_29" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_3"                                           */
/*==============================================================*/
CREATE TABLE "JOURNAL_3" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_3 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_3"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_3"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_3"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_3"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_3"                                     */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_3" ON "JOURNAL_3" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_30"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_30" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_30 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_30"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_30"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_30"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_30"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_30"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_30" ON "JOURNAL_30" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_31"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_31" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_31 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_31"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_31"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_31"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_31"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_31"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_31" ON "JOURNAL_31" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_32"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_32" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_32 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_32"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_32"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_32"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_32"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_32"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_32" ON "JOURNAL_32" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_33"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_33" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "PROCESS_INDEX"      INTEGER,
   "POSITION"           INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_33 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_33"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_33"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_33"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_33"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_33"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_33" ON "JOURNAL_33" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_34"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_34" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_34 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_34"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_34"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_34"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_34"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_34"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_34" ON "JOURNAL_34" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_35"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_35" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_35 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_35"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_35"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_35"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_35"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_35"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_35" ON "JOURNAL_35" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_36"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_36" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_36 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_36"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_36"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_36"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_36"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_36"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_36" ON "JOURNAL_36" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_37"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_37" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_37 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_37"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_37"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_37"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_37"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_37"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_37" ON "JOURNAL_37" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_38"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_38" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_38 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_38"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_38"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_38"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_38"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_38"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_38" ON "JOURNAL_38" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_39"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_39" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_39 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_39"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_39"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_39"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_39"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_39"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_39" ON "JOURNAL_39" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_4"                                           */
/*==============================================================*/
CREATE TABLE "JOURNAL_4" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_4 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_4"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_4"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_4"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_4"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_4"                                     */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_4" ON "JOURNAL_4" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_40"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_40" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_40 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_40"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_40"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_40"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_40"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_40"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_40" ON "JOURNAL_40" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_41"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_41" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_41 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_41"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_41"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_41"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_41"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_41"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_41" ON "JOURNAL_41" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_42"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_42" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_42 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_42"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_42"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_42"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_42"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_42"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_42" ON "JOURNAL_42" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_43"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_43" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_43 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_43"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_43"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_43"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_43"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_43"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_43" ON "JOURNAL_43" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_44"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_44" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_44 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_44"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_44"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_44"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_44"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_44"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_44" ON "JOURNAL_44" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_45"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_45" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_45 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_45"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_45"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_45"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_45"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_45"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_45" ON "JOURNAL_45" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_46"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_46" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_46 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_46"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_46"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_46"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_46"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_46"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_46" ON "JOURNAL_46" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_47"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_47" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_47 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_47"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_47"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_47"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_47"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_47"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_47" ON "JOURNAL_47" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_48"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_48" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_48 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_48"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_48"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_48"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_48"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_48"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_48" ON "JOURNAL_48" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_49"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_49" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_49 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_49"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_49"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_49"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_49"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_49"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_49" ON "JOURNAL_49" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_5"                                           */
/*==============================================================*/
CREATE TABLE "JOURNAL_5" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_5 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_5"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_5"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_5"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_5"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_5"                                     */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_5" ON "JOURNAL_5" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_50"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_50" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_50 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_50"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_50"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_50"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_50"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_50"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_50" ON "JOURNAL_50" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_51"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_51" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_51 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_51"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_51"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_51"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_51"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_51"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_51" ON "JOURNAL_51" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_52"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_52" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_52 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_52"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_52"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_52"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_52"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_52"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_52" ON "JOURNAL_52" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_53"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_53" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_53 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_53"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_53"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_53"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_53"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_53"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_53" ON "JOURNAL_53" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_54"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_54" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_54 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_54"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_54"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_54"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_54"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_54"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_54" ON "JOURNAL_54" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_55"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_55" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_55 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_55"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_55"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_55"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_55"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_55"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_55" ON "JOURNAL_55" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_56"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_56" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_56 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_56"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_56"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_56"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_56"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_56"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_56" ON "JOURNAL_56" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_57"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_57" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_57 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_57"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_57"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_57"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_57"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_57"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_57" ON "JOURNAL_57" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_58"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_58" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_58 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_58"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_58"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_58"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_58"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_58"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_58" ON "JOURNAL_58" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_59"                                          */
/*==============================================================*/
CREATE TABLE "JOURNAL_59" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_59 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_59"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_59"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_59"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_59"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_59"                                    */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_59" ON "JOURNAL_59" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_6"                                           */
/*==============================================================*/
CREATE TABLE "JOURNAL_6" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_6 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_6"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_6"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_6"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_6"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_6"                                     */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_6" ON "JOURNAL_6" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_7"                                           */
/*==============================================================*/
CREATE TABLE "JOURNAL_7" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_7 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_7"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_7"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_7"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_7"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_7"                                     */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_7" ON "JOURNAL_7" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_8"                                           */
/*==============================================================*/
CREATE TABLE "JOURNAL_8" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_8 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_8"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_8"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_8"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_8"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_8"                                     */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_8" ON "JOURNAL_8" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

/*==============================================================*/
/* Table: "JOURNAL_9"                                           */
/*==============================================================*/
CREATE TABLE "JOURNAL_9" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "RECORD_HOST"        VARCHAR2(128),
   "RECORD_YEAR"        INTEGER,
   "RECORD_MONTH"       INTEGER,
   "RECORD_DAY"         INTEGER,
   "RECORD_HOUR"        INTEGER,
   "RECORD_MINUTE"      INTEGER,
   "RECORD_SECOND"      INTEGER,
   "RECORD_MILLISCOND"  NUMBER(16),
   "REQUEST_ID"         VARCHAR2(128),
   "REQUEST_IP"         VARCHAR2(128),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "JOURNAL_TYPE"       INTEGER,
   "BUDDLE_ID"          VARCHAR2(64),
   "BUDDLE_NAME"        VARCHAR2(128),
   "CATALOG_ID"         VARCHAR2(64),
   "CATALOG_NAME"       VARCHAR2(128),
   "DATA_CODE"          VARCHAR2(128),
   "DATA_NAME"          VARCHAR2(128),
   "POSITION"           INTEGER,
   "PROCESS_INDEX"      INTEGER,
   "OPERATE_TIMES"      INTEGER,
   "OPERATE_RESULT"     VARCHAR2(16),
   "EFFECT_NUMBER"      INTEGER,
   "ERROR_ID"           VARCHAR2(256),
   "LOCATION"           VARCHAR2(256),
   "DESCRIPTION"        VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_JOURNAL_9 PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "JOURNAL_9"."CODE" IS
'插件编码';

COMMENT ON COLUMN "JOURNAL_9"."RECORD_MILLISCOND" IS
'处理顺序';

COMMENT ON COLUMN "JOURNAL_9"."JOURNAL_TYPE" IS
'0：登录，1：功能，2：迁移，3：同步，4：定时任务';

COMMENT ON COLUMN "JOURNAL_9"."POSITION" IS
'处理顺序';

/*==============================================================*/
/* Index: "INDEX_JOURNAL_9"                                     */
/*==============================================================*/
CREATE INDEX "INDEX_JOURNAL_9" ON "JOURNAL_9" (
   "RECORD_HOST" ASC,
   "RECORD_YEAR" ASC,
   "RECORD_MONTH" ASC,
   "RECORD_DAY" ASC,
   "RECORD_HOUR" ASC,
   "RECORD_SECOND" ASC,
   "RECORD_MILLISCOND" ASC
);

