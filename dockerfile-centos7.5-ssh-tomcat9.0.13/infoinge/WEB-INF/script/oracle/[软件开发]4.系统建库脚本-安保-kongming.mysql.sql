/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2017/8/29 星期二 9:31:02                        */
/*==============================================================*/


DROP INDEX "INDEX_BAACC";

DROP TABLE "CD_BANK_ACCOUNT" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_BAACC_H";

DROP TABLE "CD_BANK_ACCOUNT_H" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_BUDEF";

DROP TABLE "CD_BUSINESS_DEFINITION" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_BUDEF_H";

DROP TABLE "CD_BUSINESS_DEFINITION_H" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_BUFLO";

DROP TABLE "CD_BUSINESS_FLOW" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_BUFLO_H";

DROP TABLE "CD_BUSINESS_FLOW_H" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_BUPRO";

DROP TABLE "CD_BUSINESS_PROCESS" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_BUPRO_H";

DROP TABLE "CD_BUSINESS_PROCESS_H" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_CAPTCHA";

DROP TABLE "CD_CAPTCHA" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_CERTI";

DROP TABLE "CD_CERTIFICATION" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_CERTI_H";

DROP TABLE "CD_CERTIFICATION_H" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_CHDEP";

DROP TABLE "CD_CHARGE_DEPARTMENT" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_CHDEP_H";

DROP TABLE "CD_CHARGE_DEPARTMENT_H" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_CLASS";

DROP TABLE "CD_CLASSIFIED" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_CONTA";

DROP TABLE "CD_CONTACT" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_CONTA_H";

DROP TABLE "CD_CONTACT_H" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_DUTY";

DROP TABLE "CD_DUTY" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_DUTY_H";

DROP TABLE "CD_DUTY_H" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_FLPRE";

DROP TABLE "CD_FLOW_PREPOSE" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_FLPRE_H";

DROP TABLE "CD_FLOW_PREPOSE_H" CASCADE CONSTRAINTS;

DROP TABLE "CD_FLOW_PROPOSER" CASCADE CONSTRAINTS;

DROP TABLE "CD_FLOW_PROPOSER_H" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_FLTAC";

DROP TABLE "CD_FLOW_TACH" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_FLTAC_H";

DROP TABLE "CD_FLOW_TACH_H" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_LOACC";

DROP TABLE "CD_LOGON_ACCOUNT" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_LOACC_H";

DROP TABLE "CD_LOGON_ACCOUNT_H" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_LOREC";

DROP TABLE "CD_LOGON_RECORD" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_ORGAN";

DROP TABLE "CD_ORGANIZATION" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_ORGAN_H";

DROP TABLE "CD_ORGANIZATION_H" CASCADE CONSTRAINTS;

DROP TABLE "CD_ORGANIZATION_IMAGE" CASCADE CONSTRAINTS;

DROP TABLE "CD_ORGANIZATION_IMAGE_H" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_ORINF";

DROP TABLE "CD_ORGANIZATION_INFO" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_ORINF_H";

DROP TABLE "CD_ORGANIZATION_INFO_H" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_OWCLA";

DROP TABLE "CD_OWNER_CLASSIFIED" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_PECON";

DROP TABLE "CD_PERMISSION_CONTROL" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_PERSO";

DROP TABLE "CD_PERSON" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_PERSO_H";

DROP TABLE "CD_PERSON_H" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_PEINF";

DROP TABLE "CD_PERSON_INFO" CASCADE CONSTRAINTS;

DROP TABLE "CD_PERSON_SIGNATURE" CASCADE CONSTRAINTS;

DROP TABLE "CD_PERSON_SIGNATURE_H" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_PRTAS";

DROP TABLE "CD_PROCESS_TASK" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_PRTAS_H";

DROP TABLE "CD_PROCESS_TASK_H" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_STAFF";

DROP TABLE "CD_STAFFER" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_STAFF_H";

DROP TABLE "CD_STAFFER_H" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_TAPRE";

DROP TABLE "CD_TACH_PREPOSE" CASCADE CONSTRAINTS;

DROP INDEX "INDEX_TAPRE_H";

DROP TABLE "CD_TACH_PREPOSE_H" CASCADE CONSTRAINTS;

/*==============================================================*/
/* Table: "CD_BANK_ACCOUNT"                                     */
/*==============================================================*/
CREATE TABLE "CD_BANK_ACCOUNT" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "OWNER_TYPE"         VARCHAR2(16),
   "OWNER_CODE"         VARCHAR2(24),
   "BANK_NAME"          VARCHAR2(64),
   "ACCOUNT_NAME"       VARCHAR2(128),
   "ACCOUNT_NUMBER"     VARCHAR2(128),
   "COUNTRY_NAME"       VARCHAR2(64),
   "PROVINCE_NAME"      VARCHAR2(64),
   "CITY_NAME"          VARCHAR2(64),
   "COUNTY_NAME"        VARCHAR2(64),
   "POSTCODE"           VARCHAR2(16),
   "ADDRESS"            VARCHAR2(128),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_BANK_ACCOUNT PRIMARY KEY ("CODE"),
   CONSTRAINT AK_KEY_2_CD_BANK_ UNIQUE ("ACCOUNT_NUMBER")
);

COMMENT ON COLUMN "CD_BANK_ACCOUNT"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_BANK_ACCOUNT"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_BANK_ACCOUNT"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_BANK_ACCOUNT"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_BANK_ACCOUNT"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_BANK_ACCOUNT"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_BANK_ACCOUNT"."OWNER_TYPE" IS
'organization:单位,person:个人';

COMMENT ON COLUMN "CD_BANK_ACCOUNT"."ACCOUNT_NAME" IS
'address:地址,email:电子邮箱,tele:座机号码,mobil:移动电话,fax:传真';

COMMENT ON COLUMN "CD_BANK_ACCOUNT"."COUNTRY_NAME" IS
'插件名字';

COMMENT ON COLUMN "CD_BANK_ACCOUNT"."ADDRESS" IS
'address:地址,email:电子邮箱,tele:座机号码,mobil:移动电话,fax:传真';

/*==============================================================*/
/* Index: "INDEX_BAACC"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_BAACC" ON "CD_BANK_ACCOUNT" (
   "OWNER_TYPE" ASC,
   "OWNER_CODE" ASC,
   "BANK_NAME" ASC,
   "ACCOUNT_NAME" ASC,
   "ACCOUNT_NUMBER" ASC
);

/*==============================================================*/
/* Table: "CD_BANK_ACCOUNT_H"                                   */
/*==============================================================*/
CREATE TABLE "CD_BANK_ACCOUNT_H" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "OWNER_TYPE"         VARCHAR2(16),
   "OWNER_CODE"         VARCHAR2(24),
   "BANK_NAME"          VARCHAR2(64),
   "ACCOUNT_NAME"       VARCHAR2(128),
   "ACCOUNT_NUMBER"     VARCHAR2(128),
   "COUNTRY_NAME"       VARCHAR2(64),
   "PROVINCE_NAME"      VARCHAR2(64),
   "CITY_NAME"          VARCHAR2(64),
   "COUNTY_NAME"        VARCHAR2(64),
   "POSTCODE"           VARCHAR2(16),
   "ADDRESS"            VARCHAR2(128),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_BANK_ACCOUNT_H PRIMARY KEY ("CODE"),
   CONSTRAINT AK_KEY_CD_BANK_H UNIQUE ("ACCOUNT_NUMBER")
);

COMMENT ON COLUMN "CD_BANK_ACCOUNT_H"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_BANK_ACCOUNT_H"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_BANK_ACCOUNT_H"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_BANK_ACCOUNT_H"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_BANK_ACCOUNT_H"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_BANK_ACCOUNT_H"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_BANK_ACCOUNT_H"."OWNER_TYPE" IS
'organization:单位,person:个人';

COMMENT ON COLUMN "CD_BANK_ACCOUNT_H"."ACCOUNT_NAME" IS
'address:地址,email:电子邮箱,tele:座机号码,mobil:移动电话,fax:传真';

COMMENT ON COLUMN "CD_BANK_ACCOUNT_H"."COUNTRY_NAME" IS
'插件名字';

COMMENT ON COLUMN "CD_BANK_ACCOUNT_H"."ADDRESS" IS
'address:地址,email:电子邮箱,tele:座机号码,mobil:移动电话,fax:传真';

/*==============================================================*/
/* Index: "INDEX_BAACC_H"                                       */
/*==============================================================*/
CREATE INDEX "INDEX_BAACC_H" ON "CD_BANK_ACCOUNT_H" (
   "OWNER_TYPE" ASC,
   "OWNER_CODE" ASC,
   "BANK_NAME" ASC,
   "ACCOUNT_NAME" ASC,
   "ACCOUNT_NUMBER" ASC
);

/*==============================================================*/
/* Table: "CD_BUSINESS_DEFINITION"                              */
/*==============================================================*/
CREATE TABLE "CD_BUSINESS_DEFINITION" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "BUSINESS_NAME"      VARCHAR2(64),
   "CONTENT"            VARCHAR2(256),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_BUSINESS_DEFINITION PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_BUSINESS_DEFINITION"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_BUSINESS_DEFINITION"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_BUSINESS_DEFINITION"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_BUSINESS_DEFINITION"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_BUSINESS_DEFINITION"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_BUSINESS_DEFINITION"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_BUSINESS_DEFINITION"."BUSINESS_NAME" IS
'organization:单位,person:个人';

/*==============================================================*/
/* Index: "INDEX_BUDEF"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_BUDEF" ON "CD_BUSINESS_DEFINITION" (
   "BUSINESS_NAME" ASC
);

/*==============================================================*/
/* Table: "CD_BUSINESS_DEFINITION_H"                            */
/*==============================================================*/
CREATE TABLE "CD_BUSINESS_DEFINITION_H" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "BUSINESS_NAME"      VARCHAR2(64),
   "CONTENT"            VARCHAR2(256),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_BUSINESS_DEFINITION_H PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_BUSINESS_DEFINITION_H"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_BUSINESS_DEFINITION_H"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_BUSINESS_DEFINITION_H"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_BUSINESS_DEFINITION_H"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_BUSINESS_DEFINITION_H"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_BUSINESS_DEFINITION_H"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_BUSINESS_DEFINITION_H"."BUSINESS_NAME" IS
'organization:单位,person:个人';

/*==============================================================*/
/* Index: "INDEX_BUDEF_H"                                       */
/*==============================================================*/
CREATE INDEX "INDEX_BUDEF_H" ON "CD_BUSINESS_DEFINITION_H" (
   "BUSINESS_NAME" ASC
);

/*==============================================================*/
/* Table: "CD_BUSINESS_FLOW"                                    */
/*==============================================================*/
CREATE TABLE "CD_BUSINESS_FLOW" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "BUSINESS_CODE"      VARCHAR2(24),
   "FLOW_NAME"          VARCHAR2(64),
   "PROPOSER_TYPE"      VARCHAR2(16),
   "CONTENT"            VARCHAR2(256),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_BUSINESS_FLOW PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_BUSINESS_FLOW"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_BUSINESS_FLOW"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_BUSINESS_FLOW"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_BUSINESS_FLOW"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_BUSINESS_FLOW"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_BUSINESS_FLOW"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_BUSINESS_FLOW"."FLOW_NAME" IS
'organization:单位,person:个人';

COMMENT ON COLUMN "CD_BUSINESS_FLOW"."PROPOSER_TYPE" IS
'organization:组织,department:部门,duty:职务,customer:客户单位,provider:供应商单位,personal:个人';

/*==============================================================*/
/* Index: "INDEX_BUFLO"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_BUFLO" ON "CD_BUSINESS_FLOW" (
   "BUSINESS_CODE" ASC,
   "FLOW_NAME" ASC
);

/*==============================================================*/
/* Table: "CD_BUSINESS_FLOW_H"                                  */
/*==============================================================*/
CREATE TABLE "CD_BUSINESS_FLOW_H" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "BUSINESS_CODE"      VARCHAR2(24),
   "FLOW_NAME"          VARCHAR2(64),
   "PROPOSER_TYPE"      VARCHAR2(16),
   "CONTENT"            VARCHAR2(256),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_BUSINESS_FLOW_H PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_BUSINESS_FLOW_H"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_BUSINESS_FLOW_H"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_BUSINESS_FLOW_H"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_BUSINESS_FLOW_H"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_BUSINESS_FLOW_H"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_BUSINESS_FLOW_H"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_BUSINESS_FLOW_H"."FLOW_NAME" IS
'organization:单位,person:个人';

COMMENT ON COLUMN "CD_BUSINESS_FLOW_H"."PROPOSER_TYPE" IS
'organization:组织,department:部门,duty:职务,customer:客户单位,provider:供应商单位,personal:个人';

/*==============================================================*/
/* Index: "INDEX_BUFLO_H"                                       */
/*==============================================================*/
CREATE INDEX "INDEX_BUFLO_H" ON "CD_BUSINESS_FLOW_H" (
   "BUSINESS_CODE" ASC,
   "FLOW_NAME" ASC
);

/*==============================================================*/
/* Table: "CD_BUSINESS_PROCESS"                                 */
/*==============================================================*/
CREATE TABLE "CD_BUSINESS_PROCESS" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "FLOW_CODE"          VARCHAR2(24),
   "PROCESS_NAME"       VARCHAR2(64),
   "PROCESS_TIME"       TIMESTAMP,
   "PROCESSOR"          VARCHAR2(24),
   "PROCESSOR_NAME"     VARCHAR2(64),
   "CONTENT"            VARCHAR2(256),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_BUSINESS_PROCESS PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_BUSINESS_PROCESS"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_BUSINESS_PROCESS"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_BUSINESS_PROCESS"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_BUSINESS_PROCESS"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_BUSINESS_PROCESS"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_BUSINESS_PROCESS"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_BUSINESS_PROCESS"."PROCESS_NAME" IS
'organization:单位,person:个人';

/*==============================================================*/
/* Index: "INDEX_BUPRO"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_BUPRO" ON "CD_BUSINESS_PROCESS" (
   "FLOW_CODE" ASC,
   "PROCESS_TIME" ASC
);

/*==============================================================*/
/* Table: "CD_BUSINESS_PROCESS_H"                               */
/*==============================================================*/
CREATE TABLE "CD_BUSINESS_PROCESS_H" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "FLOW_CODE"          VARCHAR2(24),
   "PROCESS_NAME"       VARCHAR2(64),
   "PROCESS_TIME"       TIMESTAMP,
   "PROCESSOR"          VARCHAR2(24),
   "PROCESSOR_NAME"     VARCHAR2(64),
   "CONTENT"            VARCHAR2(256),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_BUSINESS_PROCESS_H PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_BUSINESS_PROCESS_H"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_BUSINESS_PROCESS_H"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_BUSINESS_PROCESS_H"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_BUSINESS_PROCESS_H"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_BUSINESS_PROCESS_H"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_BUSINESS_PROCESS_H"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_BUSINESS_PROCESS_H"."PROCESS_NAME" IS
'organization:单位,person:个人';

/*==============================================================*/
/* Index: "INDEX_BUPRO_H"                                       */
/*==============================================================*/
CREATE INDEX "INDEX_BUPRO_H" ON "CD_BUSINESS_PROCESS_H" (
   "FLOW_CODE" ASC,
   "PROCESS_TIME" ASC
);

/*==============================================================*/
/* Table: "CD_CAPTCHA"                                          */
/*==============================================================*/
CREATE TABLE "CD_CAPTCHA" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "VALIDATE_CODE"      VARCHAR2(128),
   "SAVE_PATH"          VARCHAR2(128),
   "EFFECTIVE_DATE"     DATE,
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_CAPTCHA PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_CAPTCHA"."CODE" IS
'插件编码';

COMMENT ON COLUMN "CD_CAPTCHA"."SAVE_PATH" IS
'描述';

COMMENT ON COLUMN "CD_CAPTCHA"."EFFECTIVE_DATE" IS
'插件名字';

/*==============================================================*/
/* Index: "INDEX_CAPTCHA"                                       */
/*==============================================================*/
CREATE INDEX "INDEX_CAPTCHA" ON "CD_CAPTCHA" (
   "EFFECTIVE_DATE" ASC
);

/*==============================================================*/
/* Table: "CD_CERTIFICATION"                                    */
/*==============================================================*/
CREATE TABLE "CD_CERTIFICATION" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "OWNER_TYPE"         VARCHAR2(16),
   "OWNER_CODE"         VARCHAR2(24),
   "TYPE"               VARCHAR2(16),
   "CONTENT"            VARCHAR2(256),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_CERTIFICATION PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_CERTIFICATION"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_CERTIFICATION"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_CERTIFICATION"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_CERTIFICATION"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_CERTIFICATION"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_CERTIFICATION"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_CERTIFICATION"."OWNER_TYPE" IS
'organization:单位,person:个人';

COMMENT ON COLUMN "CD_CERTIFICATION"."TYPE" IS
'identity:身份证,officer:军官证,passport:护照,driving:驾驶证
business:营业执照';

/*==============================================================*/
/* Index: "INDEX_CERTI"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_CERTI" ON "CD_CERTIFICATION" (
   "OWNER_TYPE" ASC,
   "OWNER_CODE" ASC,
   "TYPE" ASC,
   "CONTENT" ASC
);

/*==============================================================*/
/* Table: "CD_CERTIFICATION_H"                                  */
/*==============================================================*/
CREATE TABLE "CD_CERTIFICATION_H" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "OWNER_TYPE"         VARCHAR2(16),
   "OWNER_CODE"         VARCHAR2(24),
   "TYPE"               VARCHAR2(16),
   "CONTENT"            VARCHAR2(256),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_CERTIFICATION_H PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_CERTIFICATION_H"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_CERTIFICATION_H"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_CERTIFICATION_H"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_CERTIFICATION_H"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_CERTIFICATION_H"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_CERTIFICATION_H"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_CERTIFICATION_H"."OWNER_TYPE" IS
'organization:单位,person:个人';

COMMENT ON COLUMN "CD_CERTIFICATION_H"."TYPE" IS
'identity:身份证,officer:军官证,passport:护照,driving:驾驶证
business:营业执照';

/*==============================================================*/
/* Index: "INDEX_CERTI_H"                                       */
/*==============================================================*/
CREATE INDEX "INDEX_CERTI_H" ON "CD_CERTIFICATION_H" (
   "OWNER_TYPE" ASC,
   "OWNER_CODE" ASC,
   "TYPE" ASC,
   "CONTENT" ASC
);

/*==============================================================*/
/* Table: "CD_CHARGE_DEPARTMENT"                                */
/*==============================================================*/
CREATE TABLE "CD_CHARGE_DEPARTMENT" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "DUTY_CODE"          VARCHAR2(24),
   "PERSON_CODE"        VARCHAR2(24),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "DEPARTMENT_CODE"    VARCHAR2(24),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_CHARGE_DEPARTMENT PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_CHARGE_DEPARTMENT"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_CHARGE_DEPARTMENT"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_CHARGE_DEPARTMENT"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_CHARGE_DEPARTMENT"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_CHARGE_DEPARTMENT"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_CHARGE_DEPARTMENT"."END_DATE" IS
'结束使用日期';

/*==============================================================*/
/* Index: "INDEX_CHDEP"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_CHDEP" ON "CD_CHARGE_DEPARTMENT" (
   "PERSON_CODE" ASC
);

/*==============================================================*/
/* Table: "CD_CHARGE_DEPARTMENT_H"                              */
/*==============================================================*/
CREATE TABLE "CD_CHARGE_DEPARTMENT_H" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "DUTY_CODE"          VARCHAR2(24),
   "PERSON_CODE"        VARCHAR2(24),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "DEPARTMENT_CODE"    VARCHAR2(24),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_CHARGE_DEPARTMENT_H PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_CHARGE_DEPARTMENT_H"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_CHARGE_DEPARTMENT_H"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_CHARGE_DEPARTMENT_H"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_CHARGE_DEPARTMENT_H"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_CHARGE_DEPARTMENT_H"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_CHARGE_DEPARTMENT_H"."END_DATE" IS
'结束使用日期';

/*==============================================================*/
/* Index: "INDEX_CHDEP_H"                                       */
/*==============================================================*/
CREATE INDEX "INDEX_CHDEP_H" ON "CD_CHARGE_DEPARTMENT_H" (
   "PERSON_CODE" ASC
);

/*==============================================================*/
/* Table: "CD_CLASSIFIED"                                       */
/*==============================================================*/
CREATE TABLE "CD_CLASSIFIED" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "PARENT_CODE"        VARCHAR2(24),
   "LEVEL_NUMBER"       INTEGER,
   "CLASSIFIED_ID"      VARCHAR2(24),
   "CLASSIFIED_NAME"    VARCHAR2(64),
   "CLASS_CODE"         VARCHAR2(32),
   "CONTENT"            VARCHAR2(1024),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_CLASSIFIED PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_CLASSIFIED"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_CLASSIFIED"."CLASSIFIED_NAME" IS
'organization:组织,department:部门,customer:客户单位,provider:供应商';

/*==============================================================*/
/* Index: "INDEX_CLASS"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_CLASS" ON "CD_CLASSIFIED" (
   "PARENT_CODE" ASC,
   "CLASSIFIED_ID" ASC
);

/*==============================================================*/
/* Table: "CD_CONTACT"                                          */
/*==============================================================*/
CREATE TABLE "CD_CONTACT" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "OWNER_TYPE"         VARCHAR2(16),
   "OWNER_CODE"         VARCHAR2(256),
   "TYPE"               VARCHAR2(16),
   "COUNTRY_NAME"       VARCHAR2(64),
   "PROVINCE_NAME"      VARCHAR2(64),
   "CITY_NAME"          VARCHAR2(64),
   "COUNTY_NAME"        VARCHAR2(64),
   "POSTCODE"           VARCHAR2(16),
   "CONTENT"            VARCHAR2(256),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_CONTACT PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_CONTACT"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_CONTACT"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_CONTACT"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_CONTACT"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_CONTACT"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_CONTACT"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_CONTACT"."OWNER_TYPE" IS
'organization:单位,person:个人';

COMMENT ON COLUMN "CD_CONTACT"."TYPE" IS
'linkman:联系人,address:地址,email:电子邮箱,tele:座机号码,mobil:移动电话,fax:传真,web:网站';

/*==============================================================*/
/* Index: "INDEX_CONTA"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_CONTA" ON "CD_CONTACT" (
   "OWNER_TYPE" ASC,
   "TYPE" ASC
);

/*==============================================================*/
/* Table: "CD_CONTACT_H"                                        */
/*==============================================================*/
CREATE TABLE "CD_CONTACT_H" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "OWNER_TYPE"         VARCHAR2(16),
   "OWNER_CODE"         VARCHAR2(256),
   "TYPE"               VARCHAR2(16),
   "COUNTRY_NAME"       VARCHAR2(64),
   "PROVINCE_NAME"      VARCHAR2(64),
   "CITY_NAME"          VARCHAR2(64),
   "COUNTY_NAME"        VARCHAR2(64),
   "POSTCODE"           VARCHAR2(16),
   "CONTENT"            VARCHAR2(256),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_CONTACT_H PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_CONTACT_H"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_CONTACT_H"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_CONTACT_H"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_CONTACT_H"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_CONTACT_H"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_CONTACT_H"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_CONTACT_H"."OWNER_TYPE" IS
'organization:单位,person:个人';

COMMENT ON COLUMN "CD_CONTACT_H"."TYPE" IS
'address:地址,email:电子邮箱,tele:座机号码,mobil:移动电话,fax:传真,web:网站';

/*==============================================================*/
/* Index: "INDEX_CONTA_H"                                       */
/*==============================================================*/
CREATE INDEX "INDEX_CONTA_H" ON "CD_CONTACT_H" (
   "OWNER_TYPE" ASC,
   "TYPE" ASC
);

/*==============================================================*/
/* Table: "CD_DUTY"                                             */
/*==============================================================*/
CREATE TABLE "CD_DUTY" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "ORGANIZATION_CODE"  VARCHAR2(24),
   "DEPARTMENT_CODE"    VARCHAR2(24),
   "IS_DIRECTOR"        VARCHAR2(8),
   "SHORTENED_FORM"     VARCHAR2(32),
   "FULL_NAME"          VARCHAR2(64),
   "DIRECTOR_LEVEL"     INTEGER,
   "DUTY_ID"            VARCHAR2(64),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_DUTY PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_DUTY"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_DUTY"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_DUTY"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_DUTY"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_DUTY"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_DUTY"."END_DATE" IS
'结束使用日期';

/*==============================================================*/
/* Index: "INDEX_DUTY"                                          */
/*==============================================================*/
CREATE INDEX "INDEX_DUTY" ON "CD_DUTY" (
   "ORGANIZATION_CODE" ASC,
   "SHORTENED_FORM" ASC
);

/*==============================================================*/
/* Table: "CD_DUTY_H"                                           */
/*==============================================================*/
CREATE TABLE "CD_DUTY_H" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "ORGANIZATION_CODE"  VARCHAR2(24),
   "DEPARTMENT_CODE"    VARCHAR2(24),
   "IS_DIRECTOR"        VARCHAR2(8),
   "SHORTENED_FORM"     VARCHAR2(32),
   "FULL_NAME"          VARCHAR2(64),
   "DIRECTOR_LEVEL"     INTEGER,
   "DUTY_ID"            VARCHAR2(64),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_DUTY_H PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_DUTY_H"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_DUTY_H"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_DUTY_H"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_DUTY_H"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_DUTY_H"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_DUTY_H"."END_DATE" IS
'结束使用日期';

/*==============================================================*/
/* Index: "INDEX_DUTY_H"                                        */
/*==============================================================*/
CREATE INDEX "INDEX_DUTY_H" ON "CD_DUTY_H" (
   "ORGANIZATION_CODE" ASC,
   "SHORTENED_FORM" ASC
);

/*==============================================================*/
/* Table: "CD_FLOW_PREPOSE"                                     */
/*==============================================================*/
CREATE TABLE "CD_FLOW_PREPOSE" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "FLOW_CODE"          VARCHAR2(24),
   "PREPOSE_CODE"       VARCHAR2(24),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_FLOW_PREPOSE PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_FLOW_PREPOSE"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_FLOW_PREPOSE"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_FLOW_PREPOSE"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_FLOW_PREPOSE"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_FLOW_PREPOSE"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_FLOW_PREPOSE"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_FLOW_PREPOSE"."PREPOSE_CODE" IS
'organization:单位,person:个人';

/*==============================================================*/
/* Index: "INDEX_FLPRE"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_FLPRE" ON "CD_FLOW_PREPOSE" (
   "FLOW_CODE" ASC,
   "PREPOSE_CODE" ASC
);

/*==============================================================*/
/* Table: "CD_FLOW_PREPOSE_H"                                   */
/*==============================================================*/
CREATE TABLE "CD_FLOW_PREPOSE_H" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "FLOW_CODE"          VARCHAR2(24),
   "PREPOSE_CODE"       VARCHAR2(24),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_FLOW_PREPOSE_H PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_FLOW_PREPOSE_H"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_FLOW_PREPOSE_H"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_FLOW_PREPOSE_H"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_FLOW_PREPOSE_H"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_FLOW_PREPOSE_H"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_FLOW_PREPOSE_H"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_FLOW_PREPOSE_H"."PREPOSE_CODE" IS
'organization:单位,person:个人';

/*==============================================================*/
/* Index: "INDEX_FLPRE_H"                                       */
/*==============================================================*/
CREATE INDEX "INDEX_FLPRE_H" ON "CD_FLOW_PREPOSE_H" (
   "FLOW_CODE" ASC,
   "PREPOSE_CODE" ASC
);

/*==============================================================*/
/* Table: "CD_FLOW_PROPOSER"                                    */
/*==============================================================*/
CREATE TABLE "CD_FLOW_PROPOSER" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "FLOW_CODE"          VARCHAR2(24),
   "PROPOSER"           VARCHAR2(24),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_FLOW_PROPOSER PRIMARY KEY ("CODE")
);

COMMENT ON TABLE "CD_FLOW_PROPOSER" IS
'限制提出申请的人员范围，如果没有记录则说明不限制';

COMMENT ON COLUMN "CD_FLOW_PROPOSER"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_FLOW_PROPOSER"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_FLOW_PROPOSER"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_FLOW_PROPOSER"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_FLOW_PROPOSER"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_FLOW_PROPOSER"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_FLOW_PROPOSER"."PROPOSER" IS
'organization:单位,person:个人';

/*==============================================================*/
/* Table: "CD_FLOW_PROPOSER_H"                                  */
/*==============================================================*/
CREATE TABLE "CD_FLOW_PROPOSER_H" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "FLOW_CODE"          VARCHAR2(24),
   "PROPOSER"           VARCHAR2(24),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_FLOW_PROPOSER_H PRIMARY KEY ("CODE")
);

COMMENT ON TABLE "CD_FLOW_PROPOSER_H" IS
'限制提出申请的人员范围，如果没有记录则说明不限制';

COMMENT ON COLUMN "CD_FLOW_PROPOSER_H"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_FLOW_PROPOSER_H"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_FLOW_PROPOSER_H"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_FLOW_PROPOSER_H"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_FLOW_PROPOSER_H"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_FLOW_PROPOSER_H"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_FLOW_PROPOSER_H"."PROPOSER" IS
'organization:单位,person:个人';

/*==============================================================*/
/* Table: "CD_FLOW_TACH"                                        */
/*==============================================================*/
CREATE TABLE "CD_FLOW_TACH" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "FLOW_CODE"          VARCHAR2(24),
   "IS_START"           VARCHAR2(8),
   "TACH_NAME"          VARCHAR2(64),
   "EXECUTOR_TYPE"      VARCHAR2(16),
   "EXECUTOR"           VARCHAR2(24),
   "OPERATION"          VARCHAR2(32),
   "LAUNCH_CONDITION"   VARCHAR2(128),
   "CLOSE_CONDITION"    VARCHAR2(128),
   "IS_FINISH"          VARCHAR2(8),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_FLOW_TACH PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_FLOW_TACH"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_FLOW_TACH"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_FLOW_TACH"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_FLOW_TACH"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_FLOW_TACH"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_FLOW_TACH"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_FLOW_TACH"."IS_START" IS
'organization:单位,person:个人';

COMMENT ON COLUMN "CD_FLOW_TACH"."EXECUTOR_TYPE" IS
'organization:组织,department:部门,duty:职务,director:部门主管,parentDepartment:上级部门,parentDirector:上级主管';

COMMENT ON COLUMN "CD_FLOW_TACH"."LAUNCH_CONDITION" IS
'前流程环节{all,全部执行 | majority,超过2/3执行 | harf,超过一半执行 | xx%,超过百分比执行 | any,任何一个执行 | none,不需要执行}: 必需处理{多个流程环节以","分隔}';

COMMENT ON COLUMN "CD_FLOW_TACH"."CLOSE_CONDITION" IS
'执行者{all,全部执行 | majority,超过2/3执行 | harf,超过一半执行 | xx%,超过百分比执行 | any,任何一个执行 | none,不需要执行|}: 必需处理{多个执行者编号以","分隔}';

/*==============================================================*/
/* Index: "INDEX_FLTAC"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_FLTAC" ON "CD_FLOW_TACH" (
   "FLOW_CODE" ASC,
   "TACH_NAME" ASC
);

/*==============================================================*/
/* Table: "CD_FLOW_TACH_H"                                      */
/*==============================================================*/
CREATE TABLE "CD_FLOW_TACH_H" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "FLOW_CODE"          VARCHAR2(24),
   "IS_START"           VARCHAR2(8),
   "TACH_NAME"          VARCHAR2(64),
   "EXECUTOR_TYPE"      VARCHAR2(16),
   "EXECUTOR"           VARCHAR2(24),
   "OPERATION"          VARCHAR2(32),
   "LAUNCH_CONDITION"   VARCHAR2(128),
   "CLOSE_CONDITION"    VARCHAR2(128),
   "IS_FINISH"          VARCHAR2(8),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_FLOW_TACH_H PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_FLOW_TACH_H"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_FLOW_TACH_H"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_FLOW_TACH_H"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_FLOW_TACH_H"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_FLOW_TACH_H"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_FLOW_TACH_H"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_FLOW_TACH_H"."IS_START" IS
'organization:单位,person:个人';

COMMENT ON COLUMN "CD_FLOW_TACH_H"."EXECUTOR_TYPE" IS
'organization:组织,department:部门,duty:职务,director:部门主管,parentDepartment:上级部门,parentDirector:上级主管';

COMMENT ON COLUMN "CD_FLOW_TACH_H"."LAUNCH_CONDITION" IS
'前流程环节{all,全部执行 | majority,超过2/3执行 | harf,超过一半执行 | xx%,超过百分比执行 | any,任何一个执行 | none,不需要执行}: 必需处理{多个流程环节以","分隔}';

COMMENT ON COLUMN "CD_FLOW_TACH_H"."CLOSE_CONDITION" IS
'执行者{all,全部执行 | majority,超过2/3执行 | harf,超过一半执行 | xx%,超过百分比执行 | any,任何一个执行 | none,不需要执行|}: 必需处理{多个执行者编号以","分隔}';

/*==============================================================*/
/* Index: "INDEX_FLTAC_H"                                       */
/*==============================================================*/
CREATE INDEX "INDEX_FLTAC_H" ON "CD_FLOW_TACH_H" (
   "FLOW_CODE" ASC,
   "TACH_NAME" ASC
);

/*==============================================================*/
/* Table: "CD_LOGON_ACCOUNT"                                    */
/*==============================================================*/
CREATE TABLE "CD_LOGON_ACCOUNT" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "PERSON_CODE"        VARCHAR2(24),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "TYPE"               VARCHAR2(16),
   "ACCOUNT_PASSWORD"   VARCHAR2(256),
   "STATUS"             VARCHAR2(32),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_LOGON_ACCOUNT PRIMARY KEY ("CODE"),
   CONSTRAINT AK_KEY_2_CD_LOGON UNIQUE ("ACCOUNT_NAME")
);

COMMENT ON COLUMN "CD_LOGON_ACCOUNT"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_LOGON_ACCOUNT"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_LOGON_ACCOUNT"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_LOGON_ACCOUNT"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_LOGON_ACCOUNT"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_LOGON_ACCOUNT"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_LOGON_ACCOUNT"."ACCOUNT_NAME" IS
'address:地址,email:电子邮箱,tele:座机号码,mobil:移动电话,fax:传真';

COMMENT ON COLUMN "CD_LOGON_ACCOUNT"."TYPE" IS
'manager:管理员, normal:普通';

COMMENT ON COLUMN "CD_LOGON_ACCOUNT"."STATUS" IS
'register：注册，missing：缺少资料，official：正式，warning：警告，pause：暂停';

/*==============================================================*/
/* Index: "INDEX_LOACC"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_LOACC" ON "CD_LOGON_ACCOUNT" (
   "PERSON_CODE" ASC,
   "ACCOUNT_NAME" ASC
);

/*==============================================================*/
/* Table: "CD_LOGON_ACCOUNT_H"                                  */
/*==============================================================*/
CREATE TABLE "CD_LOGON_ACCOUNT_H" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "PERSON_CODE"        VARCHAR2(24),
   "ACCOUNT_NAME"       VARCHAR2(64),
   "TYPE"               VARCHAR2(16),
   "ACCOUNT_PASSWORD"   VARCHAR2(256),
   "STATUS"             VARCHAR2(32),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_LOGON_ACCOUNT_H PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_LOGON_ACCOUNT_H"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_LOGON_ACCOUNT_H"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_LOGON_ACCOUNT_H"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_LOGON_ACCOUNT_H"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_LOGON_ACCOUNT_H"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_LOGON_ACCOUNT_H"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_LOGON_ACCOUNT_H"."ACCOUNT_NAME" IS
'address:地址,email:电子邮箱,tele:座机号码,mobil:移动电话,fax:传真';

COMMENT ON COLUMN "CD_LOGON_ACCOUNT_H"."TYPE" IS
'manager:管理员, normal:普通';

COMMENT ON COLUMN "CD_LOGON_ACCOUNT_H"."STATUS" IS
'register：注册，missing：缺少资料，official：正式，warning：警告，pause：暂停';

/*==============================================================*/
/* Index: "INDEX_LOACC_H"                                       */
/*==============================================================*/
CREATE INDEX "INDEX_LOACC_H" ON "CD_LOGON_ACCOUNT_H" (
   "PERSON_CODE" ASC,
   "ACCOUNT_NAME" ASC
);

/*==============================================================*/
/* Table: "CD_LOGON_RECORD"                                     */
/*==============================================================*/
CREATE TABLE "CD_LOGON_RECORD" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "LOGON_TIME"         DATE,
   "ACCOUNT_NAME"       VARCHAR2(64),
   "MEMBER_NAME"        VARCHAR2(64),
   "USER_AGENT"         VARCHAR2(512),
   "LOGON_IP"           VARCHAR2(128),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_LOGON_RECORD PRIMARY KEY ("CODE")
);

/*==============================================================*/
/* Index: "INDEX_LOREC"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_LOREC" ON "CD_LOGON_RECORD" (
   "LOGON_TIME" ASC
);

/*==============================================================*/
/* Table: "CD_ORGANIZATION"                                     */
/*==============================================================*/
CREATE TABLE "CD_ORGANIZATION" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "PARENT_CODE"        VARCHAR2(24),
   "TYPE"               VARCHAR2(16),
   "NATURE"             VARCHAR2(16),
   "ORGANIZATION_CODE"  VARCHAR2(24),
   "LEVEL_NUMBER"       INTEGER,
   "COUNTRY_NAME"       VARCHAR2(64),
   "PROVINCE_NAME"      VARCHAR2(64),
   "CITY_NAME"          VARCHAR2(64),
   "COUNTY_NAME"        VARCHAR2(64),
   "POSTCODE"           VARCHAR2(16),
   "UNICODE"            VARCHAR2(64),
   "ABBREVIATION"       VARCHAR2(16),
   "SHORTENED_FORM"     VARCHAR2(32),
   "FULL_NAME"          VARCHAR2(64),
   "IS_DIRECTOR"        VARCHAR2(8),
   "DIRECTOR_LEVEL"     INTEGER,
   "ORGANIZATION_STATUS" VARCHAR2(32),
   "PRESENTER_ACCOUNT"  VARCHAR2(64),
   "JOIN_TIME"          DATE,
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_ORGANIZATION PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_ORGANIZATION"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_ORGANIZATION"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_ORGANIZATION"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_ORGANIZATION"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_ORGANIZATION"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_ORGANIZATION"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_ORGANIZATION"."TYPE" IS
'organization:组织,department:部门';

COMMENT ON COLUMN "CD_ORGANIZATION"."NATURE" IS
'organization:管理机构, enterprise:企业,merchant:商家,customer:客户单位,provider:供应商';

COMMENT ON COLUMN "CD_ORGANIZATION"."ORGANIZATION_CODE" IS
'部门隶属的组织的代码';

COMMENT ON COLUMN "CD_ORGANIZATION"."UNICODE" IS
'机构代码是唯一的，没有填的时候就用code代替';

COMMENT ON COLUMN "CD_ORGANIZATION"."ORGANIZATION_STATUS" IS
'register：注册，missing：缺少资料，official：正式，warning：警告，pause：暂停';

/*==============================================================*/
/* Index: "INDEX_ORGAN"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_ORGAN" ON "CD_ORGANIZATION" (
   "PARENT_CODE" ASC,
   "TYPE" ASC,
   "SHORTENED_FORM" ASC
);

/*==============================================================*/
/* Table: "CD_ORGANIZATION_H"                                   */
/*==============================================================*/
CREATE TABLE "CD_ORGANIZATION_H" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "PARENT_CODE"        VARCHAR2(24),
   "TYPE"               VARCHAR2(16),
   "NATURE"             VARCHAR2(16),
   "ORGANIZATION_CODE"  VARCHAR2(24),
   "LEVEL_NUMBER"       INTEGER,
   "COUNTRY_NAME"       VARCHAR2(64),
   "PROVINCE_NAME"      VARCHAR2(64),
   "CITY_NAME"          VARCHAR2(64),
   "COUNTY_NAME"        VARCHAR2(64),
   "POSTCODE"           VARCHAR2(16),
   "UNICODE"            VARCHAR2(64),
   "ABBREVIATION"       VARCHAR2(16),
   "SHORTENED_FORM"     VARCHAR2(32),
   "FULL_NAME"          VARCHAR2(64),
   "IS_DIRECTOR"        VARCHAR2(8),
   "DIRECTOR_LEVEL"     INTEGER,
   "PRESENTER_ACCOUNT"  VARCHAR2(64),
   "ORGANIZATION_STATUS" VARCHAR2(32),
   "JOIN_TIME"          DATE,
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_ORGANIZATION_H PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_ORGANIZATION_H"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_ORGANIZATION_H"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_ORGANIZATION_H"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_ORGANIZATION_H"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_ORGANIZATION_H"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_ORGANIZATION_H"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_ORGANIZATION_H"."PARENT_CODE" IS
'插件标识';

COMMENT ON COLUMN "CD_ORGANIZATION_H"."TYPE" IS
'organization:组织,department:部门,customer:客户单位,provider:供应商';

COMMENT ON COLUMN "CD_ORGANIZATION_H"."NATURE" IS
'organization:管理机构, enterprise:企业';

COMMENT ON COLUMN "CD_ORGANIZATION_H"."ORGANIZATION_CODE" IS
'部门隶属的组织的代码';

COMMENT ON COLUMN "CD_ORGANIZATION_H"."COUNTRY_NAME" IS
'插件名字';

COMMENT ON COLUMN "CD_ORGANIZATION_H"."UNICODE" IS
'机构代码是唯一的，没有填的时候就用code代替';

COMMENT ON COLUMN "CD_ORGANIZATION_H"."SHORTENED_FORM" IS
'是否升级';

COMMENT ON COLUMN "CD_ORGANIZATION_H"."FULL_NAME" IS
'是否入口插件';

COMMENT ON COLUMN "CD_ORGANIZATION_H"."ORGANIZATION_STATUS" IS
'register：注册，missing：缺少资料，official：正式，warning：警告，pause：暂停';

/*==============================================================*/
/* Index: "INDEX_ORGAN_H"                                       */
/*==============================================================*/
CREATE INDEX "INDEX_ORGAN_H" ON "CD_ORGANIZATION_H" (
   "PARENT_CODE" ASC,
   "TYPE" ASC,
   "SHORTENED_FORM" ASC
);

/*==============================================================*/
/* Table: "CD_ORGANIZATION_IMAGE"                               */
/*==============================================================*/
CREATE TABLE "CD_ORGANIZATION_IMAGE" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "ORGANIZATION_CODE"  VARCHAR2(24),
   "IMAGE_TYPE"         VARCHAR2(32),
   "IMAGE_NAME"         VARCHAR2(128),
   "IMAGE_PATH"         VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_ORGANIZATION_IMAGE PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_ORGANIZATION_IMAGE"."CODE" IS
'连接编码';

COMMENT ON COLUMN "CD_ORGANIZATION_IMAGE"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_ORGANIZATION_IMAGE"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_ORGANIZATION_IMAGE"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_ORGANIZATION_IMAGE"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_ORGANIZATION_IMAGE"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_ORGANIZATION_IMAGE"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_ORGANIZATION_IMAGE"."ORGANIZATION_CODE" IS
'部门隶属的组织的代码';

COMMENT ON COLUMN "CD_ORGANIZATION_IMAGE"."IMAGE_TYPE" IS
'logo：公司标识，certificate：证书，show：展示图片，introduction：介绍';

/*==============================================================*/
/* Table: "CD_ORGANIZATION_IMAGE_H"                             */
/*==============================================================*/
CREATE TABLE "CD_ORGANIZATION_IMAGE_H" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "ORGANIZATION_CODE"  VARCHAR2(24),
   "IMAGE_TYPE"         VARCHAR2(32),
   "IMAGE_NAME"         VARCHAR2(128),
   "IMAGE_PATH"         VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_ORGANIZATION_IMAGE_H PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_ORGANIZATION_IMAGE_H"."CODE" IS
'连接编码';

COMMENT ON COLUMN "CD_ORGANIZATION_IMAGE_H"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_ORGANIZATION_IMAGE_H"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_ORGANIZATION_IMAGE_H"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_ORGANIZATION_IMAGE_H"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_ORGANIZATION_IMAGE_H"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_ORGANIZATION_IMAGE_H"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_ORGANIZATION_IMAGE_H"."ORGANIZATION_CODE" IS
'部门隶属的组织的代码';

COMMENT ON COLUMN "CD_ORGANIZATION_IMAGE_H"."IMAGE_TYPE" IS
'certificate：证书，show：展示图片，introduction：介绍';

/*==============================================================*/
/* Table: "CD_ORGANIZATION_INFO"                                */
/*==============================================================*/
CREATE TABLE "CD_ORGANIZATION_INFO" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "ORGANIZATION_CODE"  VARCHAR2(24),
   "LEGAL_REPRESENTATIVE" VARCHAR2(64),
   "BUSINESS_LICENSE"   VARCHAR2(32),
   "INSTITUTION_CODE"   VARCHAR2(32),
   "BUSINESS_TYPE"      VARCHAR2(64),
   "BUSINESS_SUBTYPE"   VARCHAR2(64),
   "RESIDENCE"          VARCHAR2(128),
   "REGISTERED_CAPITAL" NUMBER(24,2),
   "CURRENCY"           VARCHAR2(32),
   "REGISTER_DATE"      DATE,
   "REDISTRATION_AUTHORITY" VARCHAR2(64),
   "STATE_TAXES_ID"     VARCHAR2(32),
   "LOCAL_TAXES_ID"     VARCHAR2(32),
   "SURVEY_ANNUAL"      NUMBER(6,0),
   "LIVING_SITUATION"   VARCHAR2(32),
   "BUSINESS_STATUS"    VARCHAR2(32),
   "AUDIT_STATUS"       VARCHAR2(32),
   "UPDATE_DATE"        DATE,
   "BUSINESS_SCOPE"     CLOB,
   "INTRODUCTION"       CLOB,
   "CONNECTION_CODE"    VARCHAR2(24)
);

COMMENT ON COLUMN "CD_ORGANIZATION_INFO"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_ORGANIZATION_INFO"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_ORGANIZATION_INFO"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_ORGANIZATION_INFO"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_ORGANIZATION_INFO"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_ORGANIZATION_INFO"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_ORGANIZATION_INFO"."ORGANIZATION_CODE" IS
'部门隶属的组织的代码';

COMMENT ON COLUMN "CD_ORGANIZATION_INFO"."LIVING_SITUATION" IS
'存活,消亡';

COMMENT ON COLUMN "CD_ORGANIZATION_INFO"."BUSINESS_STATUS" IS
'盈利、亏损';

COMMENT ON COLUMN "CD_ORGANIZATION_INFO"."AUDIT_STATUS" IS
'待审核、审核通过、审核不通过';

/*==============================================================*/
/* Index: "INDEX_ORINF"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_ORINF" ON "CD_ORGANIZATION_INFO" (
   "AUDIT_STATUS" ASC
);

/*==============================================================*/
/* Table: "CD_ORGANIZATION_INFO_H"                              */
/*==============================================================*/
CREATE TABLE "CD_ORGANIZATION_INFO_H" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "ORGANIZATION_CODE"  VARCHAR2(24),
   "LEGAL_REPRESENTATIVE" VARCHAR2(64),
   "BUSINESS_LICENSE"   VARCHAR2(32),
   "INSTITUTION_CODE"   VARCHAR2(32),
   "BUSINESS_TYPE"      VARCHAR2(32),
   "RESIDENCE"          VARCHAR2(128),
   "REGISTERED_CAPITAL" NUMBER(24,2),
   "CURRENCY"           VARCHAR2(32),
   "REGISTER_DATE"      DATE,
   "REDISTRATION_AUTHORITY" VARCHAR2(64),
   "STATE_TAXES_ID"     VARCHAR2(32),
   "LOCAL_TAXES_ID"     VARCHAR2(32),
   "SURVEY_ANNUAL"      NUMBER(6,0),
   "LIVING_SITUATION"   VARCHAR2(32),
   "BUSINESS_STATUS"    VARCHAR2(32),
   "AUDIT_STATUS"       VARCHAR2(32),
   "UPDATE_DATE"        DATE,
   "BUSINESS_SCOPE"     CLOB,
   "INTRODUCTION"       CLOB,
   "CONNECTION_CODE"    VARCHAR2(24)
);

COMMENT ON COLUMN "CD_ORGANIZATION_INFO_H"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_ORGANIZATION_INFO_H"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_ORGANIZATION_INFO_H"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_ORGANIZATION_INFO_H"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_ORGANIZATION_INFO_H"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_ORGANIZATION_INFO_H"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_ORGANIZATION_INFO_H"."ORGANIZATION_CODE" IS
'部门隶属的组织的代码';

COMMENT ON COLUMN "CD_ORGANIZATION_INFO_H"."LIVING_SITUATION" IS
'存活,消亡';

COMMENT ON COLUMN "CD_ORGANIZATION_INFO_H"."BUSINESS_STATUS" IS
'盈利、亏损';

COMMENT ON COLUMN "CD_ORGANIZATION_INFO_H"."AUDIT_STATUS" IS
'待审核、审核通过、审核不通过';

/*==============================================================*/
/* Index: "INDEX_ORINF_H"                                       */
/*==============================================================*/
CREATE INDEX "INDEX_ORINF_H" ON "CD_ORGANIZATION_INFO_H" (
   "AUDIT_STATUS" ASC
);

/*==============================================================*/
/* Table: "CD_OWNER_CLASSIFIED"                                 */
/*==============================================================*/
CREATE TABLE "CD_OWNER_CLASSIFIED" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "OWNER_TYPE"         VARCHAR2(16),
   "OWNER_CODE"         VARCHAR2(64),
   "CLASSIFIED_CODE"    VARCHAR2(24),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_OWNER_CLASSIFIED PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_OWNER_CLASSIFIED"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_OWNER_CLASSIFIED"."OWNER_TYPE" IS
'organization:单位（行政区划）,department:部门,duty:职务（角色）,person:个人';

/*==============================================================*/
/* Index: "INDEX_OWCLA"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_OWCLA" ON "CD_OWNER_CLASSIFIED" (
   "OWNER_TYPE" ASC,
   "OWNER_CODE" ASC,
   "CLASSIFIED_CODE" ASC
);

/*==============================================================*/
/* Table: "CD_PERMISSION_CONTROL"                               */
/*==============================================================*/
CREATE TABLE "CD_PERMISSION_CONTROL" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "OWNER_TYPE"         VARCHAR2(16),
   "OWNER_CODE"         VARCHAR2(64),
   "BUDDLE_ID"          VARCHAR2(64),
   "CATALOG_ID"         VARCHAR2(64),
   "OPERATION"          VARCHAR2(16),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_PERMISSION_CONTROL PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_PERMISSION_CONTROL"."OWNER_TYPE" IS
'organization:单位（行政区划）,department:部门,duty:职务（角色）,person:个人';

COMMENT ON COLUMN "CD_PERMISSION_CONTROL"."OPERATION" IS
'操作名字';

/*==============================================================*/
/* Index: "INDEX_PECON"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_PECON" ON "CD_PERMISSION_CONTROL" (
   "OWNER_TYPE" ASC,
   "OWNER_CODE" ASC,
   "CATALOG_ID" ASC
);

/*==============================================================*/
/* Table: "CD_PERSON"                                           */
/*==============================================================*/
CREATE TABLE "CD_PERSON" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "GENDER"             VARCHAR2(16),
   "LAST_NAME"          VARCHAR2(32),
   "FIRST_NAME"         VARCHAR2(128),
   "NICK_NAME"          VARCHAR2(128),
   "PERSON_STATUS"      VARCHAR2(32),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_PERSON PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_PERSON"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_PERSON"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_PERSON"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_PERSON"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_PERSON"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_PERSON"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_PERSON"."GENDER" IS
'-1: 保密,0:女,1:男';

COMMENT ON COLUMN "CD_PERSON"."PERSON_STATUS" IS
'register：注册，missing：缺少资料，official：正式，warning：警告，pause：暂停';

/*==============================================================*/
/* Index: "INDEX_PERSO"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_PERSO" ON "CD_PERSON" (
   "GENDER" ASC,
   "LAST_NAME" ASC,
   "FIRST_NAME" ASC
);

/*==============================================================*/
/* Table: "CD_PERSON_H"                                         */
/*==============================================================*/
CREATE TABLE "CD_PERSON_H" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "GENDER"             VARCHAR2(16),
   "LAST_NAME"          VARCHAR2(32),
   "FIRST_NAME"         VARCHAR2(128),
   "NICK_NAME"          VARCHAR2(128),
   "PERSON_STATUS"      VARCHAR2(32),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_PERSON_H PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_PERSON_H"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_PERSON_H"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_PERSON_H"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_PERSON_H"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_PERSON_H"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_PERSON_H"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_PERSON_H"."GENDER" IS
'-1: 保密,0:女,1:男';

COMMENT ON COLUMN "CD_PERSON_H"."PERSON_STATUS" IS
'register：注册，missing：缺少资料，official：正式，warning：警告，pause：暂停';

/*==============================================================*/
/* Index: "INDEX_PERSO_H"                                       */
/*==============================================================*/
CREATE INDEX "INDEX_PERSO_H" ON "CD_PERSON_H" (
   "GENDER" ASC,
   "LAST_NAME" ASC,
   "FIRST_NAME" ASC
);

/*==============================================================*/
/* Table: "CD_PERSON_INFO"                                      */
/*==============================================================*/
CREATE TABLE "CD_PERSON_INFO" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "ACCOUNT_NAME"       VARCHAR2(24),
   "LEVEL_NUMBER"       INTEGER,
   "IS_AUTO_MONITOR"    VARCHAR2(8),
   "IMAGE_PORTRAIT_SAVE_PATH" VARCHAR2(256),
   "HEAD_PORTRAIT_SAVE_PATH" VARCHAR2(256),
   "LAST_CHECK_TIME"    DATE,
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_PERSON_INFO PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_PERSON_INFO"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_PERSON_INFO"."IS_AUTO_MONITOR" IS
'当舆情专题的预警级别达到登陆者的预警级别时自动开始监测';

/*==============================================================*/
/* Index: "INDEX_PEINF"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_PEINF" ON "CD_PERSON_INFO" (
   "ACCOUNT_NAME" ASC
);

/*==============================================================*/
/* Table: "CD_PERSON_SIGNATURE"                                 */
/*==============================================================*/
CREATE TABLE "CD_PERSON_SIGNATURE" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "VERIFIER_SIGN"      VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_PERSON_SIGNATURE PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_PERSON_SIGNATURE"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_PERSON_SIGNATURE"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_PERSON_SIGNATURE"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_PERSON_SIGNATURE"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_PERSON_SIGNATURE"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_PERSON_SIGNATURE"."END_DATE" IS
'结束使用日期';

/*==============================================================*/
/* Table: "CD_PERSON_SIGNATURE_H"                               */
/*==============================================================*/
CREATE TABLE "CD_PERSON_SIGNATURE_H" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "VERIFIER_SIGN"      VARCHAR2(512),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_PERSON_SIGNATURE_H PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_PERSON_SIGNATURE_H"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_PERSON_SIGNATURE_H"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_PERSON_SIGNATURE_H"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_PERSON_SIGNATURE_H"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_PERSON_SIGNATURE_H"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_PERSON_SIGNATURE_H"."END_DATE" IS
'结束使用日期';

/*==============================================================*/
/* Table: "CD_PROCESS_TASK"                                     */
/*==============================================================*/
CREATE TABLE "CD_PROCESS_TASK" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "PROCESS_CODE"       VARCHAR2(24),
   "TACH_CODE"          VARCHAR2(24),
   "EXECUTOR"           VARCHAR2(24),
   "ISSUE_TIME"         DATE,
   "EXCEED_TIME"        DATE,
   "COMPLETE_TIME"      DATE,
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_PROCESS_TASK PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_PROCESS_TASK"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_PROCESS_TASK"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_PROCESS_TASK"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_PROCESS_TASK"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_PROCESS_TASK"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_PROCESS_TASK"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_PROCESS_TASK"."TACH_CODE" IS
'organization:单位,person:个人';

/*==============================================================*/
/* Index: "INDEX_PRTAS"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_PRTAS" ON "CD_PROCESS_TASK" (
   "PROCESS_CODE" ASC,
   "TACH_CODE" ASC,
   "ISSUE_TIME" ASC,
   "COMPLETE_TIME" ASC
);

/*==============================================================*/
/* Table: "CD_PROCESS_TASK_H"                                   */
/*==============================================================*/
CREATE TABLE "CD_PROCESS_TASK_H" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "PROCESS_CODE"       VARCHAR2(24),
   "TACH_CODE"          VARCHAR2(24),
   "EXECUTOR"           VARCHAR2(24),
   "ISSUE_TIME"         DATE,
   "EXCEED_TIME"        DATE,
   "COMPLETE_TIME"      DATE,
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_PROCESS_TASK_H PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_PROCESS_TASK_H"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_PROCESS_TASK_H"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_PROCESS_TASK_H"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_PROCESS_TASK_H"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_PROCESS_TASK_H"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_PROCESS_TASK_H"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_PROCESS_TASK_H"."TACH_CODE" IS
'organization:单位,person:个人';

/*==============================================================*/
/* Index: "INDEX_PRTAS_H"                                       */
/*==============================================================*/
CREATE INDEX "INDEX_PRTAS_H" ON "CD_PROCESS_TASK_H" (
   "PROCESS_CODE" ASC,
   "TACH_CODE" ASC,
   "ISSUE_TIME" ASC,
   "COMPLETE_TIME" ASC
);

/*==============================================================*/
/* Table: "CD_STAFFER"                                          */
/*==============================================================*/
CREATE TABLE "CD_STAFFER" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "ORGANIZATION_CODE"  VARCHAR2(24),
   "DEPARTMENT_CODE"    VARCHAR2(24),
   "DUTY_CODE"          VARCHAR2(24),
   "PERSON_CODE"        VARCHAR2(24),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_STAFFER PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_STAFFER"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_STAFFER"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_STAFFER"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_STAFFER"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_STAFFER"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_STAFFER"."END_DATE" IS
'结束使用日期';

/*==============================================================*/
/* Index: "INDEX_STAFF"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_STAFF" ON "CD_STAFFER" (
   "DUTY_CODE" ASC,
   "PERSON_CODE" ASC
);

/*==============================================================*/
/* Table: "CD_STAFFER_H"                                        */
/*==============================================================*/
CREATE TABLE "CD_STAFFER_H" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "ORGANIZATION_CODE"  VARCHAR2(24),
   "DEPARTMENT_CODE"    VARCHAR2(24),
   "DUTY_CODE"          VARCHAR2(24),
   "PERSON_CODE"        VARCHAR2(24),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_STAFFER_H PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_STAFFER_H"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_STAFFER_H"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_STAFFER_H"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_STAFFER_H"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_STAFFER_H"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_STAFFER_H"."END_DATE" IS
'结束使用日期';

/*==============================================================*/
/* Index: "INDEX_STAFF_H"                                       */
/*==============================================================*/
CREATE INDEX "INDEX_STAFF_H" ON "CD_STAFFER_H" (
   "DUTY_CODE" ASC,
   "PERSON_CODE" ASC
);

/*==============================================================*/
/* Table: "CD_TACH_PREPOSE"                                     */
/*==============================================================*/
CREATE TABLE "CD_TACH_PREPOSE" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "TACH_CODE"          VARCHAR2(24),
   "PREPOSE_CODE"       VARCHAR2(24),
   "TRANSFER_CONDITION" VARCHAR2(128),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_TACH_PREPOSE PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_TACH_PREPOSE"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_TACH_PREPOSE"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_TACH_PREPOSE"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_TACH_PREPOSE"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_TACH_PREPOSE"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_TACH_PREPOSE"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_TACH_PREPOSE"."PREPOSE_CODE" IS
'organization:单位,person:个人';

COMMENT ON COLUMN "CD_TACH_PREPOSE"."TRANSFER_CONDITION" IS
'前流程环节{某变量值=XXX}';

/*==============================================================*/
/* Index: "INDEX_TAPRE"                                         */
/*==============================================================*/
CREATE INDEX "INDEX_TAPRE" ON "CD_TACH_PREPOSE" (
   "TACH_CODE" ASC,
   "PREPOSE_CODE" ASC
);

/*==============================================================*/
/* Table: "CD_TACH_PREPOSE_H"                                   */
/*==============================================================*/
CREATE TABLE "CD_TACH_PREPOSE_H" 
(
   "CODE"               VARCHAR2(24)         NOT NULL,
   "IS_ACTIVE"          VARCHAR2(8),
   "CHANGE_FROM"        VARCHAR2(24),
   "CHANGE_INDEX"       NUMBER(8,0),
   "CHANGE_NUMBER"      NUMBER(8,0),
   "SECRET"             NUMBER(4,0),
   "SECRECY"            NUMBER(4,0),
   "BUILDER"            VARCHAR2(64),
   "OWNER"              VARCHAR2(64),
   "START_DATE"         NUMBER(15,0),
   "END_DATE"           NUMBER(15,0),
   "TACH_CODE"          VARCHAR2(24),
   "PREPOSE_CODE"       VARCHAR2(24),
   "TRANSFER_CONDITION" VARCHAR2(128),
   "CONNECTION_CODE"    VARCHAR2(24),
   CONSTRAINT PK_CD_TACH_PREPOSE_H PRIMARY KEY ("CODE")
);

COMMENT ON COLUMN "CD_TACH_PREPOSE_H"."IS_ACTIVE" IS
'是否使用';

COMMENT ON COLUMN "CD_TACH_PREPOSE_H"."CHANGE_FROM" IS
'记录来源';

COMMENT ON COLUMN "CD_TACH_PREPOSE_H"."SECRECY" IS
'密级';

COMMENT ON COLUMN "CD_TACH_PREPOSE_H"."BUILDER" IS
'创建者';

COMMENT ON COLUMN "CD_TACH_PREPOSE_H"."START_DATE" IS
'开始使用日期';

COMMENT ON COLUMN "CD_TACH_PREPOSE_H"."END_DATE" IS
'结束使用日期';

COMMENT ON COLUMN "CD_TACH_PREPOSE_H"."PREPOSE_CODE" IS
'organization:单位,person:个人';

COMMENT ON COLUMN "CD_TACH_PREPOSE_H"."TRANSFER_CONDITION" IS
'前流程环节{某变量值=XXX}';

/*==============================================================*/
/* Index: "INDEX_TAPRE_H"                                       */
/*==============================================================*/
CREATE INDEX "INDEX_TAPRE_H" ON "CD_TACH_PREPOSE_H" (
   "TACH_CODE" ASC,
   "PREPOSE_CODE" ASC
);

