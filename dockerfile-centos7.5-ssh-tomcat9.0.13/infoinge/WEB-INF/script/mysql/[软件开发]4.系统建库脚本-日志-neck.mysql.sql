/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/8/22 19:55:21                           */
/*==============================================================*/


DROP INDEX INDEX_DASTA ON DATA_STATISTICS;

DROP TABLE IF EXISTS DATA_STATISTICS;

DROP INDEX INDEX_JOURNAL_0 ON JOURNAL_0;

DROP TABLE IF EXISTS JOURNAL_0;

DROP INDEX INDEX_JOURNAL_1 ON JOURNAL_1;

DROP TABLE IF EXISTS JOURNAL_1;

DROP INDEX INDEX_JOURNAL_10 ON JOURNAL_10;

DROP TABLE IF EXISTS JOURNAL_10;

DROP INDEX INDEX_JOURNAL_11 ON JOURNAL_11;

DROP TABLE IF EXISTS JOURNAL_11;

DROP INDEX INDEX_JOURNAL_12 ON JOURNAL_12;

DROP TABLE IF EXISTS JOURNAL_12;

DROP INDEX INDEX_JOURNAL_13 ON JOURNAL_13;

DROP TABLE IF EXISTS JOURNAL_13;

DROP INDEX INDEX_JOURNAL_14 ON JOURNAL_14;

DROP TABLE IF EXISTS JOURNAL_14;

DROP INDEX INDEX_JOURNAL_15 ON JOURNAL_15;

DROP TABLE IF EXISTS JOURNAL_15;

DROP INDEX INDEX_JOURNAL_16 ON JOURNAL_16;

DROP TABLE IF EXISTS JOURNAL_16;

DROP INDEX INDEX_JOURNAL_17 ON JOURNAL_17;

DROP TABLE IF EXISTS JOURNAL_17;

DROP INDEX INDEX_JOURNAL_18 ON JOURNAL_18;

DROP TABLE IF EXISTS JOURNAL_18;

DROP INDEX INDEX_JOURNAL_19 ON JOURNAL_19;

DROP TABLE IF EXISTS JOURNAL_19;

DROP INDEX INDEX_JOURNAL_2 ON JOURNAL_2;

DROP TABLE IF EXISTS JOURNAL_2;

DROP INDEX INDEX_JOURNAL_20 ON JOURNAL_20;

DROP TABLE IF EXISTS JOURNAL_20;

DROP INDEX INDEX_JOURNAL_21 ON JOURNAL_21;

DROP TABLE IF EXISTS JOURNAL_21;

DROP INDEX INDEX_JOURNAL_22 ON JOURNAL_22;

DROP TABLE IF EXISTS JOURNAL_22;

DROP INDEX INDEX_JOURNAL_23 ON JOURNAL_23;

DROP TABLE IF EXISTS JOURNAL_23;

DROP INDEX INDEX_JOURNAL_24 ON JOURNAL_24;

DROP TABLE IF EXISTS JOURNAL_24;

DROP INDEX INDEX_JOURNAL_25 ON JOURNAL_25;

DROP TABLE IF EXISTS JOURNAL_25;

DROP INDEX INDEX_JOURNAL_26 ON JOURNAL_26;

DROP TABLE IF EXISTS JOURNAL_26;

DROP INDEX INDEX_JOURNAL_27 ON JOURNAL_27;

DROP TABLE IF EXISTS JOURNAL_27;

DROP INDEX INDEX_JOURNAL_28 ON JOURNAL_28;

DROP TABLE IF EXISTS JOURNAL_28;

DROP INDEX INDEX_JOURNAL_29 ON JOURNAL_29;

DROP TABLE IF EXISTS JOURNAL_29;

DROP INDEX INDEX_JOURNAL_3 ON JOURNAL_3;

DROP TABLE IF EXISTS JOURNAL_3;

DROP INDEX INDEX_JOURNAL_30 ON JOURNAL_30;

DROP TABLE IF EXISTS JOURNAL_30;

DROP INDEX INDEX_JOURNAL_31 ON JOURNAL_31;

DROP TABLE IF EXISTS JOURNAL_31;

DROP INDEX INDEX_JOURNAL_32 ON JOURNAL_32;

DROP TABLE IF EXISTS JOURNAL_32;

DROP INDEX INDEX_JOURNAL_33 ON JOURNAL_33;

DROP TABLE IF EXISTS JOURNAL_33;

DROP INDEX INDEX_JOURNAL_34 ON JOURNAL_34;

DROP TABLE IF EXISTS JOURNAL_34;

DROP INDEX INDEX_JOURNAL_35 ON JOURNAL_35;

DROP TABLE IF EXISTS JOURNAL_35;

DROP INDEX INDEX_JOURNAL_36 ON JOURNAL_36;

DROP TABLE IF EXISTS JOURNAL_36;

DROP INDEX INDEX_JOURNAL_37 ON JOURNAL_37;

DROP TABLE IF EXISTS JOURNAL_37;

DROP INDEX INDEX_JOURNAL_38 ON JOURNAL_38;

DROP TABLE IF EXISTS JOURNAL_38;

DROP INDEX INDEX_JOURNAL_39 ON JOURNAL_39;

DROP TABLE IF EXISTS JOURNAL_39;

DROP INDEX INDEX_JOURNAL_4 ON JOURNAL_4;

DROP TABLE IF EXISTS JOURNAL_4;

DROP INDEX INDEX_JOURNAL_40 ON JOURNAL_40;

DROP TABLE IF EXISTS JOURNAL_40;

DROP INDEX INDEX_JOURNAL_41 ON JOURNAL_41;

DROP TABLE IF EXISTS JOURNAL_41;

DROP INDEX INDEX_JOURNAL_42 ON JOURNAL_42;

DROP TABLE IF EXISTS JOURNAL_42;

DROP INDEX INDEX_JOURNAL_43 ON JOURNAL_43;

DROP TABLE IF EXISTS JOURNAL_43;

DROP INDEX INDEX_JOURNAL_44 ON JOURNAL_44;

DROP TABLE IF EXISTS JOURNAL_44;

DROP INDEX INDEX_JOURNAL_45 ON JOURNAL_45;

DROP TABLE IF EXISTS JOURNAL_45;

DROP INDEX INDEX_JOURNAL_46 ON JOURNAL_46;

DROP TABLE IF EXISTS JOURNAL_46;

DROP INDEX INDEX_JOURNAL_47 ON JOURNAL_47;

DROP TABLE IF EXISTS JOURNAL_47;

DROP INDEX INDEX_JOURNAL_48 ON JOURNAL_48;

DROP TABLE IF EXISTS JOURNAL_48;

DROP INDEX INDEX_JOURNAL_49 ON JOURNAL_49;

DROP TABLE IF EXISTS JOURNAL_49;

DROP INDEX INDEX_JOURNAL_5 ON JOURNAL_5;

DROP TABLE IF EXISTS JOURNAL_5;

DROP INDEX INDEX_JOURNAL_50 ON JOURNAL_50;

DROP TABLE IF EXISTS JOURNAL_50;

DROP INDEX INDEX_JOURNAL_51 ON JOURNAL_51;

DROP TABLE IF EXISTS JOURNAL_51;

DROP INDEX INDEX_JOURNAL_52 ON JOURNAL_52;

DROP TABLE IF EXISTS JOURNAL_52;

DROP INDEX INDEX_JOURNAL_53 ON JOURNAL_53;

DROP TABLE IF EXISTS JOURNAL_53;

DROP INDEX INDEX_JOURNAL_54 ON JOURNAL_54;

DROP TABLE IF EXISTS JOURNAL_54;

DROP INDEX INDEX_JOURNAL_55 ON JOURNAL_55;

DROP TABLE IF EXISTS JOURNAL_55;

DROP INDEX INDEX_JOURNAL_56 ON JOURNAL_56;

DROP TABLE IF EXISTS JOURNAL_56;

DROP INDEX INDEX_JOURNAL_57 ON JOURNAL_57;

DROP TABLE IF EXISTS JOURNAL_57;

DROP INDEX INDEX_JOURNAL_58 ON JOURNAL_58;

DROP TABLE IF EXISTS JOURNAL_58;

DROP INDEX INDEX_JOURNAL_59 ON JOURNAL_59;

DROP TABLE IF EXISTS JOURNAL_59;

DROP INDEX INDEX_JOURNAL_6 ON JOURNAL_6;

DROP TABLE IF EXISTS JOURNAL_6;

DROP INDEX INDEX_JOURNAL_7 ON JOURNAL_7;

DROP TABLE IF EXISTS JOURNAL_7;

DROP INDEX INDEX_JOURNAL_8 ON JOURNAL_8;

DROP TABLE IF EXISTS JOURNAL_8;

DROP INDEX INDEX_JOURNAL_9 ON JOURNAL_9;

DROP TABLE IF EXISTS JOURNAL_9;

/*==============================================================*/
/* Table: DATA_STATISTICS                                       */
/*==============================================================*/
CREATE TABLE DATA_STATISTICS
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '引用编码',
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   JOURNAL_TYPE         INT COMMENT '1：功能，2：迁移，3：同步',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   EFFECT_NUMBER        INT,
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_DASTA                                           */
/*==============================================================*/
CREATE INDEX INDEX_DASTA ON DATA_STATISTICS
(
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_MINUTE,
   JOURNAL_TYPE,
   BUDDLE_ID,
   CATALOG_ID
);

/*==============================================================*/
/* Table: JOURNAL_0                                             */
/*==============================================================*/
CREATE TABLE JOURNAL_0
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_0                                       */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_0 ON JOURNAL_0
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_1                                             */
/*==============================================================*/
CREATE TABLE JOURNAL_1
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_1                                       */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_1 ON JOURNAL_1
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_10                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_10
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_10                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_10 ON JOURNAL_10
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_11                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_11
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_11                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_11 ON JOURNAL_11
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_12                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_12
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_12                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_12 ON JOURNAL_12
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_13                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_13
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_13                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_13 ON JOURNAL_13
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_14                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_14
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_14                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_14 ON JOURNAL_14
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_15                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_15
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_15                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_15 ON JOURNAL_15
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_16                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_16
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_16                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_16 ON JOURNAL_16
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_17                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_17
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_17                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_17 ON JOURNAL_17
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_18                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_18
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_18                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_18 ON JOURNAL_18
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_19                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_19
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_19                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_19 ON JOURNAL_19
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_2                                             */
/*==============================================================*/
CREATE TABLE JOURNAL_2
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_2                                       */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_2 ON JOURNAL_2
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_20                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_20
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_20                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_20 ON JOURNAL_20
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_21                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_21
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_21                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_21 ON JOURNAL_21
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_22                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_22
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_22                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_22 ON JOURNAL_22
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_23                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_23
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_23                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_23 ON JOURNAL_23
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_24                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_24
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_24                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_24 ON JOURNAL_24
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_25                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_25
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_25                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_25 ON JOURNAL_25
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_26                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_26
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_26                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_26 ON JOURNAL_26
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_27                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_27
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_27                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_27 ON JOURNAL_27
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_28                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_28
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_28                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_28 ON JOURNAL_28
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_29                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_29
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_29                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_29 ON JOURNAL_29
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_3                                             */
/*==============================================================*/
CREATE TABLE JOURNAL_3
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_3                                       */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_3 ON JOURNAL_3
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_30                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_30
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_30                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_30 ON JOURNAL_30
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_31                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_31
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_31                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_31 ON JOURNAL_31
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_32                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_32
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_32                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_32 ON JOURNAL_32
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_33                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_33
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   PROCESS_INDEX        INT,
   POSITION             INT COMMENT '处理顺序',
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_33                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_33 ON JOURNAL_33
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_34                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_34
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_34                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_34 ON JOURNAL_34
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_35                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_35
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_35                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_35 ON JOURNAL_35
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_36                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_36
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_36                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_36 ON JOURNAL_36
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_37                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_37
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_37                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_37 ON JOURNAL_37
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_38                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_38
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_38                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_38 ON JOURNAL_38
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_39                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_39
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_39                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_39 ON JOURNAL_39
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_4                                             */
/*==============================================================*/
CREATE TABLE JOURNAL_4
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_4                                       */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_4 ON JOURNAL_4
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_40                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_40
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_40                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_40 ON JOURNAL_40
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_41                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_41
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_41                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_41 ON JOURNAL_41
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_42                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_42
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_42                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_42 ON JOURNAL_42
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_43                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_43
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_43                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_43 ON JOURNAL_43
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_44                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_44
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_44                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_44 ON JOURNAL_44
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_45                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_45
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_45                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_45 ON JOURNAL_45
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_46                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_46
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_46                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_46 ON JOURNAL_46
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_47                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_47
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_47                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_47 ON JOURNAL_47
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_48                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_48
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_48                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_48 ON JOURNAL_48
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_49                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_49
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_49                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_49 ON JOURNAL_49
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_5                                             */
/*==============================================================*/
CREATE TABLE JOURNAL_5
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_5                                       */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_5 ON JOURNAL_5
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_50                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_50
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_50                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_50 ON JOURNAL_50
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_51                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_51
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_51                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_51 ON JOURNAL_51
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_52                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_52
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_52                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_52 ON JOURNAL_52
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_53                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_53
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_53                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_53 ON JOURNAL_53
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_54                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_54
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_54                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_54 ON JOURNAL_54
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_55                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_55
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_55                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_55 ON JOURNAL_55
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_56                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_56
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_56                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_56 ON JOURNAL_56
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_57                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_57
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_57                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_57 ON JOURNAL_57
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_58                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_58
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_58                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_58 ON JOURNAL_58
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_59                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_59
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_59                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_59 ON JOURNAL_59
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_6                                             */
/*==============================================================*/
CREATE TABLE JOURNAL_6
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_6                                       */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_6 ON JOURNAL_6
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_7                                             */
/*==============================================================*/
CREATE TABLE JOURNAL_7
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_7                                       */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_7 ON JOURNAL_7
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_8                                             */
/*==============================================================*/
CREATE TABLE JOURNAL_8
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_8                                       */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_8 ON JOURNAL_8
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

/*==============================================================*/
/* Table: JOURNAL_9                                             */
/*==============================================================*/
CREATE TABLE JOURNAL_9
(
   CODE                 VARCHAR(24) NOT NULL COMMENT '插件编码',
   RECORD_HOST          VARCHAR(128),
   RECORD_YEAR          INT,
   RECORD_MONTH         INT,
   RECORD_DAY           INT,
   RECORD_HOUR          INT,
   RECORD_MINUTE        INT,
   RECORD_SECOND        INT,
   RECORD_MILLISCOND    NUMERIC(16,0) COMMENT '处理顺序',
   REQUEST_ID           VARCHAR(128),
   REQUEST_IP           VARCHAR(128),
   ACCOUNT_NAME         VARCHAR(64),
   JOURNAL_TYPE         INT COMMENT '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   BUDDLE_ID            VARCHAR(64),
   BUDDLE_NAME          VARCHAR(128),
   CATALOG_ID           VARCHAR(64),
   CATALOG_NAME         VARCHAR(128),
   DATA_CODE            VARCHAR(128),
   DATA_NAME            VARCHAR(128),
   POSITION             INT COMMENT '处理顺序',
   PROCESS_INDEX        INT,
   OPERATE_TIMES        INT,
   OPERATE_RESULT       VARCHAR(16),
   EFFECT_NUMBER        INT,
   ERROR_ID             VARCHAR(256),
   LOCATION             VARCHAR(256),
   DESCRIPTION          VARCHAR(512),
   CONNECTION_CODE      VARCHAR(24),
   PRIMARY KEY (CODE)
);

/*==============================================================*/
/* Index: INDEX_JOURNAL_9                                       */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_9 ON JOURNAL_9
(
   RECORD_HOST,
   RECORD_YEAR,
   RECORD_MONTH,
   RECORD_DAY,
   RECORD_HOUR,
   RECORD_SECOND,
   RECORD_MILLISCOND
);

