/*==============================================================*/
/* DBMS name:                                                   */
/* 权限资源                                                     */
/*==============================================================*/                     
CREATE VIEW `V_PERMISSION_RESOURCE`
AS
SELECT  DISTINCT DATA.BUDDLE_ID, DATA.NAME
FROM    DATA
WHERE   DATA.IS_ACTIVE='true' AND DATA.POSITION=0 AND DATA.IS_PERMIT='true' AND DATA.OPERATION != '';

/*==============================================================*/
/* DBMS name:                                                   */
/* 权限操作                                                     */
/*==============================================================*/                     
CREATE VIEW `V_PERMISSION_OPERATION`
AS
SELECT  DISTINCT DATA.BUDDLE_ID, DATA.NAME, DATA.OPERATION 
FROM    DATA
WHERE   DATA.IS_ACTIVE='true' AND DATA.POSITION=0 AND DATA.IS_PERMIT='true' AND DATA.OPERATION != '';

/*==============================================================*/
/* DBMS name:                                                   */
/* 交换设计                                                     */
/*==============================================================*/                     
CREATE VIEW `V_EXCHANGE_DESIGN`
AS
SELECT  A.DESIGN_CODE, B.*
FROM    DESIGN_CATALOG AS A LEFT JOIN CATALOG AS B ON A.CATALOG_CODE = B.CODE;



/*==============================================================*/
/* DBMS name:                                                   */
/* 库表关联                                                     */
/*==============================================================*/                     
CREATE VIEW `V_RESOURCE_RELEVANCE`
AS
SELECT  DISTINCT  RESOURCE_RELEVANCE.IS_ACTIVE,RESOURCE_RELEVANCE.S_IDENTIFIER, RESOURCE_RELEVANCE.S_RESOURCE_NAME, 
      RESOURCE_RELEVANCE.R_IDENTIFIER, RESOURCE_RELEVANCE.R_RESOURCE_NAME
FROM    RESOURCE_RELEVANCE
WHERE   RESOURCE_RELEVANCE.IS_ACTIVE='true'; 


/*==============================================================*/
/* DBMS name:                                                   */
/* 验证清洗                                                     */
/*==============================================================*/                 
CREATE VIEW `V_VERIFY_CLEANOUT`
AS
SELECT  A.*, B.IDENTIFIER, B.REGULATION_NAME, B.CLASS
FROM    VERIFY_CLEANOUT AS A LEFT JOIN CLEANOUT_REGULATION AS B ON A.CLEANOUT_CODE = B.CODE;



/*==============================================================*/
/* DBMS name:                                                   */
/* 字段验证                                                     */
/*==============================================================*/                     
CREATE VIEW `V_FIELD_VERIFY`
AS
SELECT  A.*, B.REGULATION_NAME,B.REGULATION,B.CLASS,B.DESCRIPTION,B.IDENTIFIER VERIFY_IDENTIFIER,B.IS_ACTIVE VERIFY_IS_ACTIVE
FROM    FIELD_VERIFY AS A LEFT JOIN VERIFY_REGULATION AS B ON A.VERIFY_CODE = B.CODE;



/*==============================================================*/
/* DBMS name:                                                   */
/* 数据异常                                                     */
/*==============================================================*/                     
CREATE VIEW `V_DATA_EXCEPTION`
AS
SELECT  A.*, B.REGULATION_NAME,C.NAME CATALOG_NAME,D.NAME BUDDLE_NAME
FROM    DATA_EXCEPTION AS A 
LEFT JOIN VERIFY_REGULATION AS B ON A.VERIFY_CODE = B.CODE 
LEFT JOIN CATALOG AS C ON A.CATALOG_ID = C.IDENTIFIER 
LEFT JOIN BUDDLE AS D ON A.BUDDLE_ID = D.IDENTIFIER;



/*==============================================================*/
/* DBMS name:                                                   */
/* 字段验证清洗                                                     */
/*==============================================================*/                     
CREATE VIEW `V_FIELD_CLEANOUT`
AS
SELECT  A.*, B.IDENTIFIER CR_IDENTIFIER,B.IS_ACTIVE CR_IS_ACTIVE,B.REGULATION_NAME,B.CLASS,B.DESCRIPTION
FROM    FIELD_CLEANOUT AS A LEFT JOIN CLEANOUT_REGULATION AS B ON A.CLEANOUT_CODE = B.CODE;





























