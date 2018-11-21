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
