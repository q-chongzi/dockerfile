/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     2017/10/11 星期三 17:54:17                      */
/*==============================================================*/


IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('BUDDLE')
            AND   NAME  = 'INDEX_BUDDLE'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX BUDDLE.INDEX_BUDDLE
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('BUDDLE')
            AND   TYPE = 'U')
   DROP TABLE BUDDLE
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('BUDDLE_H')
            AND   NAME  = 'INDEX_BUDDLE_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX BUDDLE_H.INDEX_BUDDLE_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('BUDDLE_H')
            AND   TYPE = 'U')
   DROP TABLE BUDDLE_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('BUDDLE_ISSUE')
            AND   NAME  = 'INDEX_BUD_ISSUE'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX BUDDLE_ISSUE.INDEX_BUD_ISSUE
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('BUDDLE_ISSUE')
            AND   TYPE = 'U')
   DROP TABLE BUDDLE_ISSUE
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('BUDDLE_ISSUE_H')
            AND   NAME  = 'INDEX_BUD_ISSUE_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX BUDDLE_ISSUE_H.INDEX_BUD_ISSUE_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('BUDDLE_ISSUE_H')
            AND   TYPE = 'U')
   DROP TABLE BUDDLE_ISSUE_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('CAPTCHA')
            AND   TYPE = 'U')
   DROP TABLE CAPTCHA
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('CATALOG')
            AND   NAME  = 'INDEX_CATALOG'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX CATALOG.INDEX_CATALOG
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('CATALOG')
            AND   TYPE = 'U')
   DROP TABLE CATALOG
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('CATALOG_COMMENT')
            AND   NAME  = 'INDEX_CATALOG_COMMENT'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX CATALOG_COMMENT.INDEX_CATALOG_COMMENT
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('CATALOG_COMMENT')
            AND   TYPE = 'U')
   DROP TABLE CATALOG_COMMENT
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('CATALOG_H')
            AND   NAME  = 'INDEX_CATALOG_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX CATALOG_H.INDEX_CATALOG_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('CATALOG_H')
            AND   TYPE = 'U')
   DROP TABLE CATALOG_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('CATALOG_PARAMETER')
            AND   NAME  = 'INDEX_CAPAR'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX CATALOG_PARAMETER.INDEX_CAPAR
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('CATALOG_PARAMETER')
            AND   TYPE = 'U')
   DROP TABLE CATALOG_PARAMETER
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('CATALOG_PARAMETER_H')
            AND   NAME  = 'INDEX_CAPAR_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX CATALOG_PARAMETER_H.INDEX_CAPAR_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('CATALOG_PARAMETER_H')
            AND   TYPE = 'U')
   DROP TABLE CATALOG_PARAMETER_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('CATALOG_RESPONSE')
            AND   NAME  = 'INDEX_CARES'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX CATALOG_RESPONSE.INDEX_CARES
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('CATALOG_RESPONSE')
            AND   TYPE = 'U')
   DROP TABLE CATALOG_RESPONSE
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('CATALOG_RESPONSE_H')
            AND   NAME  = 'INDEX_CARES_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX CATALOG_RESPONSE_H.INDEX_CARES_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('CATALOG_RESPONSE_H')
            AND   TYPE = 'U')
   DROP TABLE CATALOG_RESPONSE_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('CATALOG_RETURN')
            AND   NAME  = 'INDEX_CARET'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX CATALOG_RETURN.INDEX_CARET
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('CATALOG_RETURN')
            AND   TYPE = 'U')
   DROP TABLE CATALOG_RETURN
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('CATALOG_RETURN_H')
            AND   NAME  = 'INDEX_CARET_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX CATALOG_RETURN_H.INDEX_CARET_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('CATALOG_RETURN_H')
            AND   TYPE = 'U')
   DROP TABLE CATALOG_RETURN_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('CONDITION_TAG')
            AND   NAME  = 'INDEX_COTAG'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX CONDITION_TAG.INDEX_COTAG
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('CONDITION_TAG')
            AND   TYPE = 'U')
   DROP TABLE CONDITION_TAG
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('CONDITION_TAG_H')
            AND   NAME  = 'INDEX_COTAG_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX CONDITION_TAG_H.INDEX_COTAG_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('CONDITION_TAG_H')
            AND   TYPE = 'U')
   DROP TABLE CONDITION_TAG_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('DATA')
            AND   NAME  = 'INDEX_DATA'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX DATA.INDEX_DATA
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DATA')
            AND   TYPE = 'U')
   DROP TABLE DATA
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('DATA_CONDITION')
            AND   NAME  = 'INDEX_DACON'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX DATA_CONDITION.INDEX_DACON
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DATA_CONDITION')
            AND   TYPE = 'U')
   DROP TABLE DATA_CONDITION
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('DATA_CONDITION_H')
            AND   NAME  = 'INDEX_DACON_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX DATA_CONDITION_H.INDEX_DACON_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DATA_CONDITION_H')
            AND   TYPE = 'U')
   DROP TABLE DATA_CONDITION_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('DATA_EXCHANGE')
            AND   NAME  = 'INDEX_DAEXC'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX DATA_EXCHANGE.INDEX_DAEXC
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DATA_EXCHANGE')
            AND   TYPE = 'U')
   DROP TABLE DATA_EXCHANGE
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('DATA_EXPRESSION')
            AND   NAME  = 'INDEX_DAEXP'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX DATA_EXPRESSION.INDEX_DAEXP
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DATA_EXPRESSION')
            AND   TYPE = 'U')
   DROP TABLE DATA_EXPRESSION
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('DATA_EXPRESSION_H')
            AND   NAME  = 'INDEX_DAEXP_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX DATA_EXPRESSION_H.INDEX_DAEXP_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DATA_EXPRESSION_H')
            AND   TYPE = 'U')
   DROP TABLE DATA_EXPRESSION_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('DATA_GROUP')
            AND   NAME  = 'INDEX_DAGRO'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX DATA_GROUP.INDEX_DAGRO
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DATA_GROUP')
            AND   TYPE = 'U')
   DROP TABLE DATA_GROUP
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('DATA_GROUP_H')
            AND   NAME  = 'INDEX_DAGRO_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX DATA_GROUP_H.INDEX_DAGRO_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DATA_GROUP_H')
            AND   TYPE = 'U')
   DROP TABLE DATA_GROUP_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('DATA_H')
            AND   NAME  = 'INDEX_DATA_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX DATA_H.INDEX_DATA_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DATA_H')
            AND   TYPE = 'U')
   DROP TABLE DATA_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DATA_HISTORY')
            AND   TYPE = 'U')
   DROP TABLE DATA_HISTORY
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('DATA_MAPPING')
            AND   NAME  = 'INDEX_DATA_MAPPING'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX DATA_MAPPING.INDEX_DATA_MAPPING
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DATA_MAPPING')
            AND   TYPE = 'U')
   DROP TABLE DATA_MAPPING
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('DATA_MAPPING_H')
            AND   NAME  = 'INDEX_DATA_MAPPING_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX DATA_MAPPING_H.INDEX_DATA_MAPPING_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DATA_MAPPING_H')
            AND   TYPE = 'U')
   DROP TABLE DATA_MAPPING_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('DATA_ORDER')
            AND   NAME  = 'INDEX_DAORD'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX DATA_ORDER.INDEX_DAORD
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DATA_ORDER')
            AND   TYPE = 'U')
   DROP TABLE DATA_ORDER
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('DATA_ORDER_H')
            AND   NAME  = 'INDEX_DAORD_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX DATA_ORDER_H.INDEX_DAORD_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DATA_ORDER_H')
            AND   TYPE = 'U')
   DROP TABLE DATA_ORDER_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('DATA_PARAMETER')
            AND   NAME  = 'INDEX_DAPARA'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX DATA_PARAMETER.INDEX_DAPARA
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DATA_PARAMETER')
            AND   TYPE = 'U')
   DROP TABLE DATA_PARAMETER
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('DATA_PARAMETER_H')
            AND   NAME  = 'INDEX_DAPARA_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX DATA_PARAMETER_H.INDEX_DAPARA_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DATA_PARAMETER_H')
            AND   TYPE = 'U')
   DROP TABLE DATA_PARAMETER_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('DATA_STATISTICS')
            AND   NAME  = 'INDEX_DASTA'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX DATA_STATISTICS.INDEX_DASTA
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DATA_STATISTICS')
            AND   TYPE = 'U')
   DROP TABLE DATA_STATISTICS
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('DATA_VALUE')
            AND   NAME  = 'INDEX_DAVAL'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX DATA_VALUE.INDEX_DAVAL
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DATA_VALUE')
            AND   TYPE = 'U')
   DROP TABLE DATA_VALUE
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('DATA_VALUE_H')
            AND   NAME  = 'INDEX_DAVAL_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX DATA_VALUE_H.INDEX_DAVAL_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DATA_VALUE_H')
            AND   TYPE = 'U')
   DROP TABLE DATA_VALUE_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('DATA_VARIABLE')
            AND   NAME  = 'INDEX_DAVARI'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX DATA_VARIABLE.INDEX_DAVARI
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DATA_VARIABLE')
            AND   TYPE = 'U')
   DROP TABLE DATA_VARIABLE
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('DATA_VARIABLE_H')
            AND   NAME  = 'INDEX_DAVARI_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX DATA_VARIABLE_H.INDEX_DAVARI_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DATA_VARIABLE_H')
            AND   TYPE = 'U')
   DROP TABLE DATA_VARIABLE_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('DESIGN_CATALOG')
            AND   NAME  = 'INDEX_DESIGN_CATALOG'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX DESIGN_CATALOG.INDEX_DESIGN_CATALOG
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('DESIGN_CATALOG')
            AND   TYPE = 'U')
   DROP TABLE DESIGN_CATALOG
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('EXCEPTION_RESPONSE')
            AND   NAME  = 'INDEX_EXRES'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX EXCEPTION_RESPONSE.INDEX_EXRES
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('EXCEPTION_RESPONSE')
            AND   TYPE = 'U')
   DROP TABLE EXCEPTION_RESPONSE
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('EXCEPTION_RESPONSE_H')
            AND   NAME  = 'INDEX_EXRES_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX EXCEPTION_RESPONSE_H.INDEX_EXRES_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('EXCEPTION_RESPONSE_H')
            AND   TYPE = 'U')
   DROP TABLE EXCEPTION_RESPONSE_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('EXCHANGE_DESIGN')
            AND   NAME  = 'INDEX_EXDES'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX EXCHANGE_DESIGN.INDEX_EXDES
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('EXCHANGE_DESIGN')
            AND   TYPE = 'U')
   DROP TABLE EXCHANGE_DESIGN
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('EXCHANGE_DESIGN_H')
            AND   NAME  = 'INDEX_EXDES_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX EXCHANGE_DESIGN_H.INDEX_EXDES_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('EXCHANGE_DESIGN_H')
            AND   TYPE = 'U')
   DROP TABLE EXCHANGE_DESIGN_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('EXCHANGE_PROCESSOR')
            AND   NAME  = 'INDEX_EXPRO'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX EXCHANGE_PROCESSOR.INDEX_EXPRO
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('EXCHANGE_PROCESSOR')
            AND   TYPE = 'U')
   DROP TABLE EXCHANGE_PROCESSOR
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('EXPRESSION_ITEM')
            AND   NAME  = 'INDEX_EXITE'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX EXPRESSION_ITEM.INDEX_EXITE
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('EXPRESSION_ITEM')
            AND   TYPE = 'U')
   DROP TABLE EXPRESSION_ITEM
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('EXPRESSION_ITEM_H')
            AND   NAME  = 'INDEX_EXITE_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX EXPRESSION_ITEM_H.INDEX_EXITE_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('EXPRESSION_ITEM_H')
            AND   TYPE = 'U')
   DROP TABLE EXPRESSION_ITEM_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('FIELD_LABEL')
            AND   NAME  = 'INDEX_FIELD_LABEL'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX FIELD_LABEL.INDEX_FIELD_LABEL
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('FIELD_LABEL')
            AND   TYPE = 'U')
   DROP TABLE FIELD_LABEL
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('FIELD_LABEL_H')
            AND   NAME  = 'INDEX_FIELD_LABEL_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX FIELD_LABEL_H.INDEX_FIELD_LABEL_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('FIELD_LABEL_H')
            AND   TYPE = 'U')
   DROP TABLE FIELD_LABEL_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('INFOINGE_JOB')
            AND   NAME  = 'INDEX_INFOINGE_JOB'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX INFOINGE_JOB.INDEX_INFOINGE_JOB
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('INFOINGE_JOB')
            AND   TYPE = 'U')
   DROP TABLE INFOINGE_JOB
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('INFOINGE_JOB_H')
            AND   NAME  = 'INDEX_INFOINGE_JOB_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX INFOINGE_JOB_H.INDEX_INFOINGE_JOB_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('INFOINGE_JOB_H')
            AND   TYPE = 'U')
   DROP TABLE INFOINGE_JOB_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('ITEM_VALUE')
            AND   NAME  = 'INDEX_ITVAL'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX ITEM_VALUE.INDEX_ITVAL
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('ITEM_VALUE')
            AND   TYPE = 'U')
   DROP TABLE ITEM_VALUE
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('ITEM_VALUE_H')
            AND   NAME  = 'INDEX_ITVAL_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX ITEM_VALUE_H.INDEX_ITVAL_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('ITEM_VALUE_H')
            AND   TYPE = 'U')
   DROP TABLE ITEM_VALUE_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOB_CATALOG')
            AND   NAME  = 'INDEX_JOB_CATALOG'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOB_CATALOG.INDEX_JOB_CATALOG
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOB_CATALOG')
            AND   TYPE = 'U')
   DROP TABLE JOB_CATALOG
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOB_CATALOG_H')
            AND   NAME  = 'INDEX_JOB_CATALOG_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOB_CATALOG_H.INDEX_JOB_CATALOG_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOB_CATALOG_H')
            AND   TYPE = 'U')
   DROP TABLE JOB_CATALOG_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOB_JOURNAL')
            AND   NAME  = 'INDEX_JOB_JOURNAL'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOB_JOURNAL.INDEX_JOB_JOURNAL
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOB_JOURNAL')
            AND   TYPE = 'U')
   DROP TABLE JOB_JOURNAL
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('LANGUAGE')
            AND   NAME  = 'INDEX_LANGUAGE'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX LANGUAGE.INDEX_LANGUAGE
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('LANGUAGE')
            AND   TYPE = 'U')
   DROP TABLE LANGUAGE
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('LANGUAGE_H')
            AND   NAME  = 'INDEX_LANGUAGE_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX LANGUAGE_H.INDEX_LANGUAGE_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('LANGUAGE_H')
            AND   TYPE = 'U')
   DROP TABLE LANGUAGE_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('PREFIX_CODE')
            AND   NAME  = 'INDEX_PREFIX_CODE'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX PREFIX_CODE.INDEX_PREFIX_CODE
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('PREFIX_CODE')
            AND   TYPE = 'U')
   DROP TABLE PREFIX_CODE
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('PREFIX_CODE_H')
            AND   NAME  = 'INDEX_PREFIX_CODE_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX PREFIX_CODE_H.INDEX_PREFIX_CODE_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('PREFIX_CODE_H')
            AND   TYPE = 'U')
   DROP TABLE PREFIX_CODE_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('PROCESSOR')
            AND   NAME  = 'INDEX_PROCESSOR'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX PROCESSOR.INDEX_PROCESSOR
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('PROCESSOR')
            AND   TYPE = 'U')
   DROP TABLE PROCESSOR
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('PROCESSOR_H')
            AND   NAME  = 'INDEX_PROCESSOR_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX PROCESSOR_H.INDEX_PROCESSOR_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('PROCESSOR_H')
            AND   TYPE = 'U')
   DROP TABLE PROCESSOR_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('QUOTE')
            AND   NAME  = 'INDEX_QUOTE'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX QUOTE.INDEX_QUOTE
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('QUOTE')
            AND   TYPE = 'U')
   DROP TABLE QUOTE
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('QUOTE_H')
            AND   NAME  = 'INDEX_QUOTE_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX QUOTE_H.INDEX_QUOTE_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('QUOTE_H')
            AND   TYPE = 'U')
   DROP TABLE QUOTE_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('RELEASE_HOST')
            AND   NAME  = 'INDEX_RHO'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX RELEASE_HOST.INDEX_RHO
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('RELEASE_HOST')
            AND   TYPE = 'U')
   DROP TABLE RELEASE_HOST
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('RELEASE_HOST_H')
            AND   NAME  = 'INDEX_RHO_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX RELEASE_HOST_H.INDEX_RHO_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('RELEASE_HOST_H')
            AND   TYPE = 'U')
   DROP TABLE RELEASE_HOST_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('REPLACE_HOST')
            AND   NAME  = 'INDEX_REPLACE_HOST'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX REPLACE_HOST.INDEX_REPLACE_HOST
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('REPLACE_HOST')
            AND   TYPE = 'U')
   DROP TABLE REPLACE_HOST
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('RESOURCE_CONNECTION')
            AND   NAME  = 'INDEX_CONNECTOR'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX RESOURCE_CONNECTION.INDEX_CONNECTOR
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('RESOURCE_CONNECTION')
            AND   TYPE = 'U')
   DROP TABLE RESOURCE_CONNECTION
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('RESOURCE_CONNECTION_H')
            AND   NAME  = 'INDEX_CONNECTOR_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX RESOURCE_CONNECTION_H.INDEX_CONNECTOR_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('RESOURCE_CONNECTION_H')
            AND   TYPE = 'U')
   DROP TABLE RESOURCE_CONNECTION_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('RESOURCE_DECOMPOSING')
            AND   NAME  = 'INDEX_RESOURCE'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX RESOURCE_DECOMPOSING.INDEX_RESOURCE
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('RESOURCE_DECOMPOSING')
            AND   TYPE = 'U')
   DROP TABLE RESOURCE_DECOMPOSING
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('RESOURCE_DECOMPOSING_H')
            AND   NAME  = 'INDEX_RESOURCE_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX RESOURCE_DECOMPOSING_H.INDEX_RESOURCE_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('RESOURCE_DECOMPOSING_H')
            AND   TYPE = 'U')
   DROP TABLE RESOURCE_DECOMPOSING_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('RESOURCE_DEFINITION')
            AND   NAME  = 'INDEX_RESOURCE_DEFINITION'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX RESOURCE_DEFINITION.INDEX_RESOURCE_DEFINITION
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('RESOURCE_DEFINITION')
            AND   TYPE = 'U')
   DROP TABLE RESOURCE_DEFINITION
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('RESOURCE_DEFINITION_H')
            AND   NAME  = 'INDEX_RESOURCE_DEFINITION_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX RESOURCE_DEFINITION_H.INDEX_RESOURCE_DEFINITION_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('RESOURCE_DEFINITION_H')
            AND   TYPE = 'U')
   DROP TABLE RESOURCE_DEFINITION_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('RESOURCE_LABEL')
            AND   NAME  = 'INDEX_RESOURCE_LABEL'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX RESOURCE_LABEL.INDEX_RESOURCE_LABEL
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('RESOURCE_LABEL')
            AND   TYPE = 'U')
   DROP TABLE RESOURCE_LABEL
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('RESOURCE_LABEL_H')
            AND   NAME  = 'INDEX_RESOURCE_LABEL_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX RESOURCE_LABEL_H.INDEX_RESOURCE_LABEL_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('RESOURCE_LABEL_H')
            AND   TYPE = 'U')
   DROP TABLE RESOURCE_LABEL_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('RESOURCE_RELEVANCE')
            AND   NAME  = 'INDEX_RESOURCE_RELEVANCE'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX RESOURCE_RELEVANCE.INDEX_RESOURCE_RELEVANCE
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('RESOURCE_RELEVANCE')
            AND   TYPE = 'U')
   DROP TABLE RESOURCE_RELEVANCE
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('RESOURCE_RELEVANCE_H')
            AND   NAME  = 'INDEX_RESOURCE_RELEVANCE_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX RESOURCE_RELEVANCE_H.INDEX_RESOURCE_RELEVANCE_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('RESOURCE_RELEVANCE_H')
            AND   TYPE = 'U')
   DROP TABLE RESOURCE_RELEVANCE_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('RESPONSE_ITEM')
            AND   NAME  = 'INDEX_REITE'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX RESPONSE_ITEM.INDEX_REITE
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('RESPONSE_ITEM')
            AND   TYPE = 'U')
   DROP TABLE RESPONSE_ITEM
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('RESPONSE_ITEM_H')
            AND   NAME  = 'INDEX_REITE_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX RESPONSE_ITEM_H.INDEX_REITE_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('RESPONSE_ITEM_H')
            AND   TYPE = 'U')
   DROP TABLE RESPONSE_ITEM_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('STYLE')
            AND   NAME  = 'INDEX_STYLE'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX STYLE.INDEX_STYLE
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('STYLE')
            AND   TYPE = 'U')
   DROP TABLE STYLE
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('STYLE_H')
            AND   NAME  = 'INDEX_STYLE_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX STYLE_H.INDEX_STYLE_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('STYLE_H')
            AND   TYPE = 'U')
   DROP TABLE STYLE_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('SYNERGY')
            AND   TYPE = 'U')
   DROP TABLE SYNERGY
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('TAG_ITEM')
            AND   NAME  = 'INDEX_TAITE'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX TAG_ITEM.INDEX_TAITE
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('TAG_ITEM')
            AND   TYPE = 'U')
   DROP TABLE TAG_ITEM
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('TAG_ITEM_H')
            AND   NAME  = 'INDEX_TAITE_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX TAG_ITEM_H.INDEX_TAITE_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('TAG_ITEM_H')
            AND   TYPE = 'U')
   DROP TABLE TAG_ITEM_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('TOPOLOGY')
            AND   TYPE = 'U')
   DROP TABLE TOPOLOGY
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('TRUSTING_HOST')
            AND   NAME  = 'INDEX_THO'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX TRUSTING_HOST.INDEX_THO
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('TRUSTING_HOST')
            AND   TYPE = 'U')
   DROP TABLE TRUSTING_HOST
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('TRUSTING_HOST_H')
            AND   NAME  = 'INDEX_THO_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX TRUSTING_HOST_H.INDEX_THO_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('TRUSTING_HOST_H')
            AND   TYPE = 'U')
   DROP TABLE TRUSTING_HOST_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('VALUE_TAG')
            AND   NAME  = 'INDEX_VATAG'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX VALUE_TAG.INDEX_VATAG
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('VALUE_TAG')
            AND   TYPE = 'U')
   DROP TABLE VALUE_TAG
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('VALUE_TAG_H')
            AND   NAME  = 'INDEX_VATAG_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX VALUE_TAG_H.INDEX_VATAG_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('VALUE_TAG_H')
            AND   TYPE = 'U')
   DROP TABLE VALUE_TAG_H
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('VOCABULARY')
            AND   NAME  = 'INDEX_VOCABULARY'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX VOCABULARY.INDEX_VOCABULARY
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('VOCABULARY')
            AND   TYPE = 'U')
   DROP TABLE VOCABULARY
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('VOCABULARY_H')
            AND   NAME  = 'INDEX_VOCABULARY_H'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX VOCABULARY_H.INDEX_VOCABULARY_H
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('VOCABULARY_H')
            AND   TYPE = 'U')
   DROP TABLE VOCABULARY_H
go

/*==============================================================*/
/* Table: BUDDLE                                                */
/*==============================================================*/
CREATE TABLE BUDDLE (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   IDENTIFIER           VARCHAR(64)          NULL,
   NAME                 VARCHAR(128)         NULL,
   IS_PERMIT            VARCHAR(8)           NULL,
   IS_HOME              VARCHAR(8)           NULL,
   IS_UPDATING          VARCHAR(8)           NULL,
   TITLE                VARCHAR(128)         NULL,
   VALIDATOR            VARCHAR(128)         NULL,
   DESCRIPTION          VARCHAR(256)         NULL,
   IS_RUNNING           VARCHAR(8)           NULL,
   TIMING_YEAR          VARCHAR(128)         NULL,
   TIMING_MONTH         VARCHAR(32)          NULL,
   TIMING_DAY           VARCHAR(128)         NULL,
   TIMING_HOUR          VARCHAR(64)          NULL,
   TIMING_MINUTE        VARCHAR(180)         NULL,
   IS_SYNCED_DSB        VARCHAR(8)           NULL,
   SYNC_DSB_REASON      VARCHAR(16)          NULL,
   SYNC_STATUS          VARCHAR(24)          NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_BUDDLE PRIMARY KEY NONCLUSTERED (CODE),
   CONSTRAINT AK_KEY_2_BUDDLE UNIQUE (IDENTIFIER)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IDENTIFIER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'IDENTIFIER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'IDENTIFIER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件名字',
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_PERMIT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'IS_PERMIT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否判断权限',
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'IS_PERMIT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_HOME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'IS_HOME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否入口插件',
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'IS_HOME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_UPDATING')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'IS_UPDATING'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'IS_UPDATING'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DESCRIPTION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'DESCRIPTION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '描述',
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'DESCRIPTION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TIMING_YEAR')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'TIMING_YEAR'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '定时年',
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'TIMING_YEAR'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TIMING_MONTH')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'TIMING_MONTH'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '定时年',
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'TIMING_MONTH'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_SYNCED_DSB')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'IS_SYNCED_DSB'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否已同步总线',
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'IS_SYNCED_DSB'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SYNC_DSB_REASON')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'SYNC_DSB_REASON'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '同步总线原因',
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'SYNC_DSB_REASON'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SYNC_STATUS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'SYNC_STATUS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '同步状态',
   'user', @CURRENTUSER, 'table', 'BUDDLE', 'column', 'SYNC_STATUS'
go

/*==============================================================*/
/* Index: INDEX_BUDDLE                                          */
/*==============================================================*/
CREATE INDEX INDEX_BUDDLE ON BUDDLE (
IDENTIFIER ASC
)
go

/*==============================================================*/
/* Table: BUDDLE_H                                              */
/*==============================================================*/
CREATE TABLE BUDDLE_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   IDENTIFIER           VARCHAR(64)          NULL,
   NAME                 VARCHAR(128)         NULL,
   IS_PERMIT            VARCHAR(8)           NULL,
   IS_HOME              VARCHAR(8)           NULL,
   IS_UPDATING          VARCHAR(8)           NULL,
   TITLE                VARCHAR(128)         NULL,
   VALIDATOR            VARCHAR(128)         NULL,
   DESCRIPTION          VARCHAR(256)         NULL,
   IS_RUNNING           VARCHAR(8)           NULL,
   TIMING_YEAR          VARCHAR(128)         NULL,
   TIMING_MONTH         VARCHAR(32)          NULL,
   TIMING_DAY           VARCHAR(128)         NULL,
   TIMING_HOUR          VARCHAR(64)          NULL,
   TIMING_MINUTE        VARCHAR(180)         NULL,
   IS_SYNCED_DSB        VARCHAR(8)           NULL,
   SYNC_DSB_REASON      VARCHAR(16)          NULL,
   SYNC_STATUS          VARCHAR(24)          NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_BUDDLE_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IDENTIFIER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'IDENTIFIER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'IDENTIFIER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件名字',
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_PERMIT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'IS_PERMIT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否判断权限',
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'IS_PERMIT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_HOME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'IS_HOME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否入口插件',
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'IS_HOME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_UPDATING')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'IS_UPDATING'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'IS_UPDATING'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DESCRIPTION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'DESCRIPTION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '描述',
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'DESCRIPTION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TIMING_YEAR')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'TIMING_YEAR'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '定时年',
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'TIMING_YEAR'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TIMING_MONTH')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'TIMING_MONTH'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '定时年',
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'TIMING_MONTH'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_SYNCED_DSB')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'IS_SYNCED_DSB'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否已同步总线',
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'IS_SYNCED_DSB'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SYNC_DSB_REASON')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'SYNC_DSB_REASON'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '同步总线原因',
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'SYNC_DSB_REASON'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SYNC_STATUS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'SYNC_STATUS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '同步状态',
   'user', @CURRENTUSER, 'table', 'BUDDLE_H', 'column', 'SYNC_STATUS'
go

/*==============================================================*/
/* Index: INDEX_BUDDLE_H                                        */
/*==============================================================*/
CREATE INDEX INDEX_BUDDLE_H ON BUDDLE_H (
IDENTIFIER ASC
)
go

/*==============================================================*/
/* Table: BUDDLE_ISSUE                                          */
/*==============================================================*/
CREATE TABLE BUDDLE_ISSUE (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CONNECTION_ID        VARCHAR(128)         NULL,
   LAST_ISSUE           TIMESTAMP            NULL,
   IS_RUNNING           VARCHAR(8)           NULL,
   FREQUENTNESS         VARCHAR(8)           NULL,
   INTERVAL_TIME        INT                  NULL,
   JOIN_TIME            DATETIME             NULL,
   RUN_START_HOUR       VARCHAR(8)           NULL,
   RUN_START_MINUTE     VARCHAR(8)           NULL,
   RUN_FINISH_HOUR      VARCHAR(8)           NULL,
   RUN_FINISH_MINUTE    VARCHAR(8)           NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_BUDDLE_ISSUE PRIMARY KEY NONCLUSTERED (CODE),
   CONSTRAINT AK_KEY_2_BUDDLE_I UNIQUE (BUDDLE_ID)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'CONNECTION_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接标识',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'CONNECTION_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'FREQUENTNESS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'FREQUENTNESS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'year|年，month|月，day|天，hour|时，minute|分，second|秒',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'FREQUENTNESS'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'INTERVAL_TIME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'INTERVAL_TIME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否入口插件',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'INTERVAL_TIME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_START_HOUR')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'RUN_START_HOUR'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'RUN_START_HOUR'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_START_MINUTE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'RUN_START_MINUTE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'RUN_START_MINUTE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_FINISH_HOUR')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'RUN_FINISH_HOUR'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'RUN_FINISH_HOUR'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_FINISH_MINUTE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'RUN_FINISH_MINUTE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE', 'column', 'RUN_FINISH_MINUTE'
go

/*==============================================================*/
/* Index: INDEX_BUD_ISSUE                                       */
/*==============================================================*/
CREATE INDEX INDEX_BUD_ISSUE ON BUDDLE_ISSUE (
BUDDLE_ID ASC,
RUN_START_HOUR ASC,
RUN_START_MINUTE ASC
)
go

/*==============================================================*/
/* Table: BUDDLE_ISSUE_H                                        */
/*==============================================================*/
CREATE TABLE BUDDLE_ISSUE_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CONNECTION_ID        VARCHAR(128)         NULL,
   LAST_ISSUE           TIMESTAMP            NULL,
   IS_RUNNING           VARCHAR(8)           NULL,
   FREQUENTNESS         VARCHAR(8)           NULL,
   INTERVAL_TIME        INT                  NULL,
   JOIN_TIME            DATETIME             NULL,
   RUN_START_HOUR       VARCHAR(8)           NULL,
   RUN_START_MINUTE     VARCHAR(8)           NULL,
   RUN_FINISH_HOUR      VARCHAR(8)           NULL,
   RUN_FINISH_MINUTE    VARCHAR(8)           NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_BUDDLE_ISSUE_H PRIMARY KEY NONCLUSTERED (CODE),
   CONSTRAINT AK_KEY_2_BUDDLE_I_H UNIQUE (BUDDLE_ID)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'CONNECTION_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接标识',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'CONNECTION_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'FREQUENTNESS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'FREQUENTNESS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'year|年，month|月，day|天，hour|时，minute|分，second|秒',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'FREQUENTNESS'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'INTERVAL_TIME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'INTERVAL_TIME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否入口插件',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'INTERVAL_TIME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_START_HOUR')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'RUN_START_HOUR'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'RUN_START_HOUR'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_START_MINUTE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'RUN_START_MINUTE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'RUN_START_MINUTE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_FINISH_HOUR')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'RUN_FINISH_HOUR'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'RUN_FINISH_HOUR'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('BUDDLE_ISSUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_FINISH_MINUTE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'RUN_FINISH_MINUTE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'BUDDLE_ISSUE_H', 'column', 'RUN_FINISH_MINUTE'
go

/*==============================================================*/
/* Index: INDEX_BUD_ISSUE_H                                     */
/*==============================================================*/
CREATE INDEX INDEX_BUD_ISSUE_H ON BUDDLE_ISSUE_H (
BUDDLE_ID ASC,
RUN_START_HOUR ASC,
RUN_START_MINUTE ASC
)
go

/*==============================================================*/
/* Table: CAPTCHA                                               */
/*==============================================================*/
CREATE TABLE CAPTCHA (
   CODE                 VARCHAR(24)          NOT NULL,
   VALIDATE_CODE        VARCHAR(128)         NULL,
   SAVE_PATH            VARCHAR(128)         NULL,
   EFFECTIVE_DATE       DATETIME             NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_CAPTCHA PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CAPTCHA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CAPTCHA', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'CAPTCHA', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CAPTCHA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SAVE_PATH')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CAPTCHA', 'column', 'SAVE_PATH'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '描述',
   'user', @CURRENTUSER, 'table', 'CAPTCHA', 'column', 'SAVE_PATH'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CAPTCHA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'EFFECTIVE_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CAPTCHA', 'column', 'EFFECTIVE_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件名字',
   'user', @CURRENTUSER, 'table', 'CAPTCHA', 'column', 'EFFECTIVE_DATE'
go

/*==============================================================*/
/* Table: CATALOG                                               */
/*==============================================================*/
CREATE TABLE CATALOG (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   IDENTIFIER           VARCHAR(64)          NULL,
   NAME                 VARCHAR(128)         NULL,
   TYPE                 VARCHAR(16)          NULL,
   CONTENT_TYPE         VARCHAR(32)          NULL,
   IS_PERMIT            VARCHAR(8)           NULL,
   IS_HOME              VARCHAR(8)           NULL,
   IS_PAUSE             VARCHAR(8)           NULL,
   DESCRIPTION          VARCHAR(256)         NULL,
   CLASS                VARCHAR(256)         NULL,
   IS_RUNNING           VARCHAR(8)           NULL,
   FREQUENTNESS         VARCHAR(8)           NULL,
   INTERVAL_TIME        INT                  NULL,
   JOIN_TIME            DATETIME             NULL,
   RUN_START_HOUR       VARCHAR(8)           NULL,
   RUN_START_MINUTE     VARCHAR(8)           NULL,
   RUN_FINISH_HOUR      VARCHAR(8)           NULL,
   RUN_FINISH_MINUTE    VARCHAR(8)           NULL,
   TIMING_YEAR          VARCHAR(128)         NULL,
   TIMING_MONTH         VARCHAR(32)          NULL,
   TIMING_DAY           VARCHAR(128)         NULL,
   TIMING_HOUR          VARCHAR(64)          NULL,
   TIMING_MINUTE        VARCHAR(180)         NULL,
   IS_FOR_EACH          VARCHAR(8)           NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   IS_SYNCED_DSB        VARCHAR(8)           NULL,
   IS_ISSUE_DSB         VARCHAR(8)           NULL,
   IS_LOG               VARCHAR(8)           NULL,
   SYNC_DSB_REASON      VARCHAR(16)          NULL,
   SYNC_STATUS          VARCHAR(24)          NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_CATALOG PRIMARY KEY NONCLUSTERED (CODE),
   CONSTRAINT AK_KEY_2_CATALOG UNIQUE (BUDDLE_ID, IDENTIFIER)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IDENTIFIER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'IDENTIFIER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录标识',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'IDENTIFIER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录名字',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录类型：function[功能接口]、upgrade[升级方案]、transfer[迁移方案]',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONTENT_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'CONTENT_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'MIME类型',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'CONTENT_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_PERMIT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'IS_PERMIT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否判断权限',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'IS_PERMIT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_HOME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'IS_HOME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否应用入口',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'IS_HOME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_PAUSE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'IS_PAUSE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否暂停',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'IS_PAUSE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DESCRIPTION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'DESCRIPTION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '描述',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'DESCRIPTION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CLASS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'CLASS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'CLASS'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'FREQUENTNESS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'FREQUENTNESS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'year|年，month|月，day|天，hour|时，minute|分，second|秒',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'FREQUENTNESS'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'INTERVAL_TIME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'INTERVAL_TIME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否入口插件',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'INTERVAL_TIME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_START_HOUR')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'RUN_START_HOUR'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'RUN_START_HOUR'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_START_MINUTE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'RUN_START_MINUTE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'RUN_START_MINUTE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_FINISH_HOUR')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'RUN_FINISH_HOUR'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'RUN_FINISH_HOUR'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_FINISH_MINUTE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'RUN_FINISH_MINUTE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'RUN_FINISH_MINUTE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TIMING_YEAR')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'TIMING_YEAR'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '定时年',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'TIMING_YEAR'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TIMING_MONTH')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'TIMING_MONTH'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '定时年',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'TIMING_MONTH'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_SYNCED_DSB')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'IS_SYNCED_DSB'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否已同步总线',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'IS_SYNCED_DSB'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ISSUE_DSB')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'IS_ISSUE_DSB'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否发布总线',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'IS_ISSUE_DSB'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_LOG')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'IS_LOG'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否已同步总线',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'IS_LOG'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SYNC_DSB_REASON')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'SYNC_DSB_REASON'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '同步总线原因',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'SYNC_DSB_REASON'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SYNC_STATUS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'SYNC_STATUS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '同步状态',
   'user', @CURRENTUSER, 'table', 'CATALOG', 'column', 'SYNC_STATUS'
go

/*==============================================================*/
/* Index: INDEX_CATALOG                                         */
/*==============================================================*/
CREATE INDEX INDEX_CATALOG ON CATALOG (
BUDDLE_ID ASC,
IDENTIFIER ASC
)
go

/*==============================================================*/
/* Table: CATALOG_COMMENT                                       */
/*==============================================================*/
CREATE TABLE CATALOG_COMMENT (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   COMMENT_TIME         DATETIME             NULL,
   CONTENT              TEXT                 NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_CATALOG_COMMENT PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_COMMENT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_COMMENT', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据编码',
   'user', @CURRENTUSER, 'table', 'CATALOG_COMMENT', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_COMMENT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_COMMENT', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'CATALOG_COMMENT', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_COMMENT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_COMMENT', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'CATALOG_COMMENT', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_COMMENT')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_COMMENT', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'CATALOG_COMMENT', 'column', 'CATALOG_ID'
go

/*==============================================================*/
/* Index: INDEX_CATALOG_COMMENT                                 */
/*==============================================================*/
CREATE INDEX INDEX_CATALOG_COMMENT ON CATALOG_COMMENT (
COMMENT_TIME ASC
)
go

/*==============================================================*/
/* Table: CATALOG_H                                             */
/*==============================================================*/
CREATE TABLE CATALOG_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   IDENTIFIER           VARCHAR(64)          NULL,
   NAME                 VARCHAR(128)         NULL,
   TYPE                 VARCHAR(16)          NULL,
   CONTENT_TYPE         VARCHAR(32)          NULL,
   IS_PERMIT            VARCHAR(8)           NULL,
   IS_HOME              VARCHAR(8)           NULL,
   IS_PAUSE             VARCHAR(8)           NULL,
   DESCRIPTION          VARCHAR(256)         NULL,
   CLASS                VARCHAR(256)         NULL,
   IS_RUNNING           VARCHAR(8)           NULL,
   FREQUENTNESS         VARCHAR(8)           NULL,
   INTERVAL_TIME        INT                  NULL,
   JOIN_TIME            DATETIME             NULL,
   RUN_START_HOUR       VARCHAR(8)           NULL,
   RUN_START_MINUTE     VARCHAR(8)           NULL,
   RUN_FINISH_HOUR      VARCHAR(8)           NULL,
   RUN_FINISH_MINUTE    VARCHAR(8)           NULL,
   TIMING_YEAR          VARCHAR(128)         NULL,
   TIMING_MONTH         VARCHAR(32)          NULL,
   TIMING_DAY           VARCHAR(128)         NULL,
   TIMING_HOUR          VARCHAR(64)          NULL,
   TIMING_MINUTE        VARCHAR(180)         NULL,
   IS_FOR_EACH          VARCHAR(8)           NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   IS_SYNCED_DSB        VARCHAR(8)           NULL,
   IS_ISSUE_DSB         VARCHAR(8)           NULL,
   IS_LOG               VARCHAR(8)           NULL,
   SYNC_DSB_REASON      VARCHAR(16)          NULL,
   SYNC_STATUS          VARCHAR(24)          NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_CATALOG_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IDENTIFIER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'IDENTIFIER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录标识',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'IDENTIFIER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录名字',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录类型：function[功能接口]、upgrade[升级方案]、transfer[迁移方案]',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONTENT_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'CONTENT_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'MIME类型',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'CONTENT_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_PERMIT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'IS_PERMIT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否判断权限',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'IS_PERMIT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_HOME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'IS_HOME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否应用入口',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'IS_HOME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_PAUSE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'IS_PAUSE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否暂停',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'IS_PAUSE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DESCRIPTION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'DESCRIPTION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '描述',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'DESCRIPTION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CLASS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'CLASS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'CLASS'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'FREQUENTNESS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'FREQUENTNESS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'year|年，month|月，day|天，hour|时，minute|分，second|秒',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'FREQUENTNESS'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'INTERVAL_TIME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'INTERVAL_TIME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否入口插件',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'INTERVAL_TIME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_START_HOUR')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'RUN_START_HOUR'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'RUN_START_HOUR'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_START_MINUTE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'RUN_START_MINUTE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'RUN_START_MINUTE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_FINISH_HOUR')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'RUN_FINISH_HOUR'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'RUN_FINISH_HOUR'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_FINISH_MINUTE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'RUN_FINISH_MINUTE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'RUN_FINISH_MINUTE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TIMING_YEAR')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'TIMING_YEAR'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '定时年',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'TIMING_YEAR'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TIMING_MONTH')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'TIMING_MONTH'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '定时年',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'TIMING_MONTH'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_SYNCED_DSB')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'IS_SYNCED_DSB'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否已同步总线',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'IS_SYNCED_DSB'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ISSUE_DSB')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'IS_ISSUE_DSB'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否发布总线',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'IS_ISSUE_DSB'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_LOG')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'IS_LOG'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否已同步总线',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'IS_LOG'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SYNC_DSB_REASON')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'SYNC_DSB_REASON'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '同步总线原因',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'SYNC_DSB_REASON'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SYNC_STATUS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'SYNC_STATUS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '同步状态',
   'user', @CURRENTUSER, 'table', 'CATALOG_H', 'column', 'SYNC_STATUS'
go

/*==============================================================*/
/* Index: INDEX_CATALOG_H                                       */
/*==============================================================*/
CREATE INDEX INDEX_CATALOG_H ON CATALOG_H (
BUDDLE_ID ASC,
IDENTIFIER ASC
)
go

/*==============================================================*/
/* Table: CATALOG_PARAMETER                                     */
/*==============================================================*/
CREATE TABLE CATALOG_PARAMETER (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_POSITION        INT                  NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   DATA_NAME            VARCHAR(128)         NULL,
   DATA_TYPE            VARCHAR(16)          NULL,
   IS_PARAMETER         VARCHAR(8)           NULL,
   IS_MUST              VARCHAR(8)           NULL,
   PARAMETER_NAME       VARCHAR(128)         NULL,
   PARAMETER_TYPE       VARCHAR(16)          NULL,
   PARAMETER_LENGTH     INT                  NULL,
   CONNECTION_ID        VARCHAR(128)         NULL,
   RESOURCE_BUDDLE      VARCHAR(64)          NULL,
   RESOURCE_NAME        VARCHAR(128)         NULL,
   RELATED_FIELD        VARCHAR(128)         NULL,
   REQUIREMENT          TEXT                 NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_CATALOG_PARAMETER PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录标识',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_PARAMETER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'IS_PARAMETER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'IS_PARAMETER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_MUST')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'IS_MUST'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'IS_MUST'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'PARAMETER_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'PARAMETER_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '样式单中的变量定义',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'PARAMETER_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'CONNECTION_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接标识',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'CONNECTION_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RESOURCE_BUDDLE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'RESOURCE_BUDDLE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '查询语句',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'RESOURCE_BUDDLE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RESOURCE_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'RESOURCE_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '操作对象',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'RESOURCE_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'REQUIREMENT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'REQUIREMENT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '描述',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'REQUIREMENT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_CAPAR                                           */
/*==============================================================*/
CREATE INDEX INDEX_CAPAR ON CATALOG_PARAMETER (
BUDDLE_ID ASC,
CATALOG_ID ASC,
DATA_POSITION ASC,
PARAMETER_NAME ASC
)
go

/*==============================================================*/
/* Table: CATALOG_PARAMETER_H                                   */
/*==============================================================*/
CREATE TABLE CATALOG_PARAMETER_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_POSITION        INT                  NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   DATA_NAME            VARCHAR(128)         NULL,
   DATA_TYPE            VARCHAR(16)          NULL,
   IS_PARAMETER         VARCHAR(8)           NULL,
   IS_MUST              VARCHAR(8)           NULL,
   PARAMETER_NAME       VARCHAR(128)         NULL,
   PARAMETER_TYPE       VARCHAR(16)          NULL,
   PARAMETER_LENGTH     INT                  NULL,
   CONNECTION_ID        VARCHAR(128)         NULL,
   RESOURCE_BUDDLE      VARCHAR(64)          NULL,
   RESOURCE_NAME        VARCHAR(128)         NULL,
   RELATED_FIELD        VARCHAR(128)         NULL,
   REQUIREMENT          TEXT                 NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_CATALOG_PARAMETER_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录标识',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_PARAMETER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'IS_PARAMETER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'IS_PARAMETER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_MUST')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'IS_MUST'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'IS_MUST'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'PARAMETER_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'PARAMETER_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '样式单中的变量定义',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'PARAMETER_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'CONNECTION_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接标识',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'CONNECTION_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RESOURCE_BUDDLE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'RESOURCE_BUDDLE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '查询语句',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'RESOURCE_BUDDLE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RESOURCE_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'RESOURCE_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '操作对象',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'RESOURCE_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'REQUIREMENT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'REQUIREMENT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '描述',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'REQUIREMENT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'CATALOG_PARAMETER_H', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_CAPAR_H                                         */
/*==============================================================*/
CREATE INDEX INDEX_CAPAR_H ON CATALOG_PARAMETER_H (
BUDDLE_ID ASC,
CATALOG_ID ASC,
DATA_POSITION ASC,
PARAMETER_NAME ASC
)
go

/*==============================================================*/
/* Table: CATALOG_RESPONSE                                      */
/*==============================================================*/
CREATE TABLE CATALOG_RESPONSE (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   POSITION             INT                  NULL,
   TEST_EXPRESSION      VARCHAR(1024)        NULL,
   IS_FOR_EACH          VARCHAR(8)           NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   RESPONSE_FORMAT      VARCHAR(8)           NULL,
   START_SYMBOL         VARCHAR(64)          NULL,
   END_SYMBOL           VARCHAR(64)          NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_CATALOG_RESPONSE PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TEST_EXPRESSION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'TEST_EXPRESSION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '用于判断是否输出指定条件的样式文件部分',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'TEST_EXPRESSION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RESPONSE_FORMAT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'RESPONSE_FORMAT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'xml、json、text',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'RESPONSE_FORMAT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_CARES                                           */
/*==============================================================*/
CREATE INDEX INDEX_CARES ON CATALOG_RESPONSE (
BUDDLE_ID ASC,
CATALOG_ID ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: CATALOG_RESPONSE_H                                    */
/*==============================================================*/
CREATE TABLE CATALOG_RESPONSE_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   POSITION             INT                  NULL,
   TEST_EXPRESSION      VARCHAR(1024)        NULL,
   IS_FOR_EACH          VARCHAR(8)           NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   RESPONSE_FORMAT      VARCHAR(8)           NULL,
   START_SYMBOL         VARCHAR(64)          NULL,
   END_SYMBOL           VARCHAR(64)          NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_CATALOG_RESPONSE_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TEST_EXPRESSION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'TEST_EXPRESSION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '用于判断是否输出指定条件的样式文件部分',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'TEST_EXPRESSION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RESPONSE_FORMAT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'RESPONSE_FORMAT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'xml、json、text',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'RESPONSE_FORMAT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'CATALOG_RESPONSE_H', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_CARES_H                                         */
/*==============================================================*/
CREATE INDEX INDEX_CARES_H ON CATALOG_RESPONSE_H (
BUDDLE_ID ASC,
CATALOG_ID ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: CATALOG_RETURN                                        */
/*==============================================================*/
CREATE TABLE CATALOG_RETURN (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   CONTENT              TEXT                 NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_CATALOG_RETURN PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RETURN')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RETURN')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RETURN')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RETURN')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RETURN')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RETURN')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RETURN')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RETURN')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RETURN')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录标识',
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RETURN')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_CARET                                           */
/*==============================================================*/
CREATE INDEX INDEX_CARET ON CATALOG_RETURN (
BUDDLE_ID ASC,
CATALOG_ID ASC
)
go

/*==============================================================*/
/* Table: CATALOG_RETURN_H                                      */
/*==============================================================*/
CREATE TABLE CATALOG_RETURN_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   CONTENT              TEXT                 NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_CATALOG_RETURN_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RETURN_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RETURN_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RETURN_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RETURN_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RETURN_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RETURN_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RETURN_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RETURN_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RETURN_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN_H', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录标识',
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN_H', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CATALOG_RETURN_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN_H', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'CATALOG_RETURN_H', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_CARET_H                                         */
/*==============================================================*/
CREATE INDEX INDEX_CARET_H ON CATALOG_RETURN_H (
BUDDLE_ID ASC,
CATALOG_ID ASC
)
go

/*==============================================================*/
/* Table: CONDITION_TAG                                         */
/*==============================================================*/
CREATE TABLE CONDITION_TAG (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   CONDITION_CODE       VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   TAG_NAME             VARCHAR(1024)        NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_CONDITION_TAG PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CONDITION_TAG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CONDITION_TAG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CONDITION_TAG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CONDITION_TAG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CONDITION_TAG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CONDITION_TAG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CONDITION_TAG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CONDITION_TAG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CONDITION_TAG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CONDITION_TAG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_COTAG                                           */
/*==============================================================*/
CREATE INDEX INDEX_COTAG ON CONDITION_TAG (
BUDDLE_ID ASC,
CATALOG_ID ASC,
CONDITION_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: CONDITION_TAG_H                                       */
/*==============================================================*/
CREATE TABLE CONDITION_TAG_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   CONDITION_CODE       VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   TAG_NAME             VARCHAR(1024)        NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_CONDITION_TAG_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CONDITION_TAG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CONDITION_TAG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CONDITION_TAG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CONDITION_TAG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CONDITION_TAG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CONDITION_TAG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CONDITION_TAG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CONDITION_TAG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CONDITION_TAG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG_H', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG_H', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('CONDITION_TAG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG_H', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'CONDITION_TAG_H', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_COTAG_H                                         */
/*==============================================================*/
CREATE INDEX INDEX_COTAG_H ON CONDITION_TAG_H (
BUDDLE_ID ASC,
CATALOG_ID ASC,
CONDITION_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: DATA                                                  */
/*==============================================================*/
CREATE TABLE DATA (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   NAME                 VARCHAR(128)         NULL,
   TYPE                 VARCHAR(16)          NULL,
   CONNECTION_ID        VARCHAR(128)         NULL,
   RESOURCE_NAME        VARCHAR(128)         NULL,
   OPERATION            VARCHAR(16)          NULL,
   IS_PAGINATE          VARCHAR(8)           NULL,
   POSITION             INT                  NULL,
   IS_PERMIT            VARCHAR(8)           NULL,
   IS_FULL              VARCHAR(8)           NULL,
   ROW_NUMBER           NUMERIC(8,0)         NULL,
   UNIQUES              VARCHAR(128)         NULL,
   IS_DESCEND           VARCHAR(8)           NULL,
   RESOURCE_BUDDLE      VARCHAR(64)          NULL,
   DESCRIPTION          VARCHAR(256)         NULL,
   IS_FOR_EACH          VARCHAR(8)           NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   CLASSIFY             VARCHAR(32)          NULL,
   DATA_METHOD          VARCHAR(128)         NULL,
   IS_SYNCED_DSB        VARCHAR(8)           NULL,
   SYNC_DSB_REASON      VARCHAR(16)          NULL,
   SYNC_STATUS          VARCHAR(24)          NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DATA PRIMARY KEY NONCLUSTERED (CODE),
   CONSTRAINT AK_KEY_2_DATA UNIQUE (BUDDLE_ID, CATALOG_ID, RESOURCE_NAME, OPERATION, POSITION)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据编码',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据名字',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据类型：DB[数据库]，Hinge[枢纽]，WS[其他服务]，XML[XML存储]',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'CONNECTION_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接标识',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'CONNECTION_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RESOURCE_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'RESOURCE_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '操作对象',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'RESOURCE_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'OPERATION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'OPERATION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '操作名字',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'OPERATION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_PAGINATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'IS_PAGINATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否分页',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'IS_PAGINATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'POSITION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_PERMIT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'IS_PERMIT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否判断权限',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'IS_PERMIT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_FULL')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'IS_FULL'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否全取数据',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'IS_FULL'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'UNIQUES')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'UNIQUES'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '唯一描述',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'UNIQUES'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RESOURCE_BUDDLE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'RESOURCE_BUDDLE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '查询语句',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'RESOURCE_BUDDLE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DESCRIPTION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'DESCRIPTION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '描述',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'DESCRIPTION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_SYNCED_DSB')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'IS_SYNCED_DSB'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否已同步总线',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'IS_SYNCED_DSB'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SYNC_DSB_REASON')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'SYNC_DSB_REASON'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '同步总线原因',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'SYNC_DSB_REASON'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SYNC_STATUS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'SYNC_STATUS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '同步状态',
   'user', @CURRENTUSER, 'table', 'DATA', 'column', 'SYNC_STATUS'
go

/*==============================================================*/
/* Index: INDEX_DATA                                            */
/*==============================================================*/
CREATE INDEX INDEX_DATA ON DATA (
BUDDLE_ID ASC,
CATALOG_ID ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: DATA_CONDITION                                        */
/*==============================================================*/
CREATE TABLE DATA_CONDITION (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   TEST_EXPRESSION      VARCHAR(1024)        NULL,
   IS_FOR_EACH          VARCHAR(8)           NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DATA_CONDITION PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_CONDITION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_CONDITION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_CONDITION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_CONDITION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_CONDITION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_CONDITION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_CONDITION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_CONDITION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_CONDITION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_CONDITION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TEST_EXPRESSION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'TEST_EXPRESSION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '用于判断是否输出指定条件的样式文件部分',
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'TEST_EXPRESSION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_CONDITION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_DACON                                           */
/*==============================================================*/
CREATE INDEX INDEX_DACON ON DATA_CONDITION (
BUDDLE_ID ASC,
CATALOG_ID ASC,
DATA_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: DATA_CONDITION_H                                      */
/*==============================================================*/
CREATE TABLE DATA_CONDITION_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   TEST_EXPRESSION      VARCHAR(1024)        NULL,
   IS_FOR_EACH          VARCHAR(8)           NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DATA_CONDITION_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_CONDITION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_CONDITION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_CONDITION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_CONDITION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_CONDITION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_CONDITION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_CONDITION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_CONDITION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_CONDITION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION_H', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION_H', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_CONDITION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION_H', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'DATA_CONDITION_H', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_DACON_H                                         */
/*==============================================================*/
CREATE INDEX INDEX_DACON_H ON DATA_CONDITION_H (
BUDDLE_ID ASC,
CATALOG_ID ASC,
DATA_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: DATA_EXCHANGE                                         */
/*==============================================================*/
CREATE TABLE DATA_EXCHANGE (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   OPERATION            VARCHAR(16)          NULL,
   DATA_NAME            VARCHAR(128)         NULL,
   PROCESSOR_NUMBER     VARCHAR(8)           NULL,
   IS_FULL              VARCHAR(8)           NULL,
   CLEAN_EXPRESSION     VARCHAR(256)         NULL,
   MIGR_POSITION        VARCHAR(128)         NULL,
   MIGR_FIELD           VARCHAR(128)         NULL,
   MIGR_FIELD_TYPE      VARCHAR(8)           NULL,
   SYNC_POSITION        VARCHAR(128)         NULL,
   SYNC_FIELD           VARCHAR(128)         NULL,
   SYNC_FIELD_TYPE      VARCHAR(8)           NULL,
   SYNC_TIME_POSITION   VARCHAR(32)          NULL,
   SYNC_TIME_FIELD      VARCHAR(128)         NULL,
   SYNC_TIME_FIELD_TYPE VARCHAR(8)           NULL,
   FLAG_FIELD           VARCHAR(128)         NULL,
   FLAG_FIELD_TYPE      VARCHAR(8)           NULL,
   FLAG_CHANGE          VARCHAR(32)          NULL,
   FLAG_RESET           VARCHAR(32)          NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DATA_EXCHANGE PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXCHANGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '交换编码',
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXCHANGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXCHANGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXCHANGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXCHANGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATA_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'DATA_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据编码',
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'DATA_CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXCHANGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'OPERATION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'OPERATION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '操作名字',
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'OPERATION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXCHANGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATA_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'DATA_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据编码',
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'DATA_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXCHANGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_FULL')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'IS_FULL'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'IS_FULL'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXCHANGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'MIGR_POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'MIGR_POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '迁移位置',
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'MIGR_POSITION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXCHANGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'MIGR_FIELD')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'MIGR_FIELD'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '迁移字段',
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'MIGR_FIELD'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXCHANGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SYNC_POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'SYNC_POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '同步位置',
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'SYNC_POSITION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXCHANGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SYNC_FIELD')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'SYNC_FIELD'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '同步字段',
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'SYNC_FIELD'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXCHANGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SYNC_TIME_POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'SYNC_TIME_POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '同步时间位置',
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'SYNC_TIME_POSITION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXCHANGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SYNC_TIME_FIELD')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'SYNC_TIME_FIELD'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '同步时间字段',
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'SYNC_TIME_FIELD'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXCHANGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'DATA_EXCHANGE', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_DAEXC                                           */
/*==============================================================*/
CREATE INDEX INDEX_DAEXC ON DATA_EXCHANGE (
DATA_CODE ASC
)
go

/*==============================================================*/
/* Table: DATA_EXPRESSION                                       */
/*==============================================================*/
CREATE TABLE DATA_EXPRESSION (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   TEST_EXPRESSION      VARCHAR(1024)        NULL,
   IS_FOR_EACH          VARCHAR(8)           NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DATA_EXPRESSION PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXPRESSION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXPRESSION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXPRESSION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXPRESSION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXPRESSION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXPRESSION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXPRESSION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXPRESSION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXPRESSION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXPRESSION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TEST_EXPRESSION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'TEST_EXPRESSION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '用于判断是否输出指定条件的样式文件部分',
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'TEST_EXPRESSION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXPRESSION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_DAEXP                                           */
/*==============================================================*/
CREATE INDEX INDEX_DAEXP ON DATA_EXPRESSION (
BUDDLE_ID ASC,
CATALOG_ID ASC,
DATA_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: DATA_EXPRESSION_H                                     */
/*==============================================================*/
CREATE TABLE DATA_EXPRESSION_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   TEST_EXPRESSION      VARCHAR(1024)        NULL,
   IS_FOR_EACH          VARCHAR(8)           NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DATA_EXPRESSION_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXPRESSION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXPRESSION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXPRESSION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXPRESSION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXPRESSION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXPRESSION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXPRESSION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXPRESSION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXPRESSION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION_H', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION_H', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_EXPRESSION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION_H', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'DATA_EXPRESSION_H', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_DAEXP_H                                         */
/*==============================================================*/
CREATE INDEX INDEX_DAEXP_H ON DATA_EXPRESSION_H (
BUDDLE_ID ASC,
CATALOG_ID ASC,
DATA_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: DATA_GROUP                                            */
/*==============================================================*/
CREATE TABLE DATA_GROUP (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   FIELD_NAME           VARCHAR(1024)        NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DATA_GROUP PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_GROUP')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_GROUP', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'DATA_GROUP', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_GROUP')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_GROUP', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'DATA_GROUP', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_GROUP')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_GROUP', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'DATA_GROUP', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_GROUP')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_GROUP', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'DATA_GROUP', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_GROUP')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_GROUP', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'DATA_GROUP', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_GROUP')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_GROUP', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_GROUP', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_GROUP')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_GROUP', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_GROUP', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_GROUP')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_GROUP', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'DATA_GROUP', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_GROUP')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_GROUP', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'DATA_GROUP', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_GROUP')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_GROUP', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'DATA_GROUP', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_DAGRO                                           */
/*==============================================================*/
CREATE INDEX INDEX_DAGRO ON DATA_GROUP (
BUDDLE_ID ASC,
CATALOG_ID ASC,
DATA_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: DATA_GROUP_H                                          */
/*==============================================================*/
CREATE TABLE DATA_GROUP_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   FIELD_NAME           VARCHAR(1024)        NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DATA_GROUP_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_GROUP_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_GROUP_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'DATA_GROUP_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_GROUP_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_GROUP_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'DATA_GROUP_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_GROUP_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_GROUP_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'DATA_GROUP_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_GROUP_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_GROUP_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'DATA_GROUP_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_GROUP_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_GROUP_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'DATA_GROUP_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_GROUP_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_GROUP_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_GROUP_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_GROUP_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_GROUP_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_GROUP_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_GROUP_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_GROUP_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'DATA_GROUP_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_GROUP_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_GROUP_H', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'DATA_GROUP_H', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_GROUP_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_GROUP_H', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'DATA_GROUP_H', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_DAGRO_H                                         */
/*==============================================================*/
CREATE INDEX INDEX_DAGRO_H ON DATA_GROUP_H (
BUDDLE_ID ASC,
CATALOG_ID ASC,
DATA_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: DATA_H                                                */
/*==============================================================*/
CREATE TABLE DATA_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   NAME                 VARCHAR(128)         NULL,
   TYPE                 VARCHAR(16)          NULL,
   CONNECTION_ID        VARCHAR(128)         NULL,
   RESOURCE_NAME        VARCHAR(128)         NULL,
   OPERATION            VARCHAR(16)          NULL,
   IS_PAGINATE          VARCHAR(8)           NULL,
   POSITION             INT                  NULL,
   IS_PERMIT            VARCHAR(8)           NULL,
   IS_FULL              VARCHAR(8)           NULL,
   ROW_NUMBER           NUMERIC(8,0)         NULL,
   UNIQUES              VARCHAR(128)         NULL,
   IS_DESCEND           VARCHAR(8)           NULL,
   RESOURCE_BUDDLE      VARCHAR(1024)        NULL,
   DESCRIPTION          VARCHAR(256)         NULL,
   IS_FOR_EACH          VARCHAR(8)           NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   CLASSIFY             VARCHAR(32)          NULL,
   DATA_METHOD          VARCHAR(128)         NULL,
   IS_SYNCED_DSB        VARCHAR(8)           NULL,
   SYNC_DSB_REASON      VARCHAR(16)          NULL,
   SYNC_STATUS          VARCHAR(24)          NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DATA_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据编码',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据名字',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据类型：DB[数据库]，Hinge[枢纽]，WS[其他服务]，XML[XML存储]',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'CONNECTION_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接标识',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'CONNECTION_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RESOURCE_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'RESOURCE_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '操作对象',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'RESOURCE_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'OPERATION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'OPERATION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '操作名字',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'OPERATION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_PAGINATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'IS_PAGINATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否分页',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'IS_PAGINATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'POSITION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_PERMIT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'IS_PERMIT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否判断权限',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'IS_PERMIT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_FULL')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'IS_FULL'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否全取数据',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'IS_FULL'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'UNIQUES')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'UNIQUES'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '唯一描述',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'UNIQUES'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RESOURCE_BUDDLE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'RESOURCE_BUDDLE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '查询语句',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'RESOURCE_BUDDLE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DESCRIPTION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'DESCRIPTION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '描述',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'DESCRIPTION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_SYNCED_DSB')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'IS_SYNCED_DSB'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否已同步总线',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'IS_SYNCED_DSB'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SYNC_DSB_REASON')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'SYNC_DSB_REASON'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '同步总线原因',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'SYNC_DSB_REASON'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SYNC_STATUS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'SYNC_STATUS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '同步状态',
   'user', @CURRENTUSER, 'table', 'DATA_H', 'column', 'SYNC_STATUS'
go

/*==============================================================*/
/* Index: INDEX_DATA_H                                          */
/*==============================================================*/
CREATE INDEX INDEX_DATA_H ON DATA_H (
BUDDLE_ID ASC,
CATALOG_ID ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: DATA_HISTORY                                          */
/*==============================================================*/
CREATE TABLE DATA_HISTORY (
   CODE                 VARCHAR(24)          NOT NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   CONNECTION_ID        VARCHAR(24)          NULL,
   RESOURCE_NAME        VARCHAR(128)         NULL,
   OPERATION            VARCHAR(128)         NULL,
   EXCHANGE_FIELD       VARCHAR(128)         NULL,
   EXCHANGE_FIELD_VALUE VARCHAR(128)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DATA_HISTORY PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_HISTORY')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_HISTORY', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '交换编码',
   'user', @CURRENTUSER, 'table', 'DATA_HISTORY', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_HISTORY')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_HISTORY', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'DATA_HISTORY', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_HISTORY')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_HISTORY', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'DATA_HISTORY', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_HISTORY')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_HISTORY', 'column', 'CONNECTION_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据编码',
   'user', @CURRENTUSER, 'table', 'DATA_HISTORY', 'column', 'CONNECTION_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_HISTORY')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'OPERATION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_HISTORY', 'column', 'OPERATION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '操作名字',
   'user', @CURRENTUSER, 'table', 'DATA_HISTORY', 'column', 'OPERATION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_HISTORY')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'EXCHANGE_FIELD')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_HISTORY', 'column', 'EXCHANGE_FIELD'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '迁移字段',
   'user', @CURRENTUSER, 'table', 'DATA_HISTORY', 'column', 'EXCHANGE_FIELD'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_HISTORY')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'EXCHANGE_FIELD_VALUE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_HISTORY', 'column', 'EXCHANGE_FIELD_VALUE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '迁移字段',
   'user', @CURRENTUSER, 'table', 'DATA_HISTORY', 'column', 'EXCHANGE_FIELD_VALUE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_HISTORY')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_HISTORY', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'DATA_HISTORY', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Table: DATA_MAPPING                                          */
/*==============================================================*/
CREATE TABLE DATA_MAPPING (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   VALUE_CODE           VARCHAR(24)          NULL,
   S_DATA_CODE          VARCHAR(24)          NULL,
   IS_MAIN              VARCHAR(8)           NULL,
   TEST_EXPRESSION      VARCHAR(1024)        NULL,
   S_IDENTIFIER         VARCHAR(64)          NULL,
   S_RESOURCE_NAME      VARCHAR(64)          NULL,
   S_RESOURCE_DIAPLAY   VARCHAR(128)         NULL,
   S_FIELD              VARCHAR(128)         NULL,
   R_DATA_CODE          VARCHAR(24)          NULL,
   R_IDENTIFIER         VARCHAR(64)          NULL,
   R_RESOURCE_NAME      VARCHAR(64)          NULL,
   R_RESOURCE_DIAPLAY   VARCHAR(128)         NULL,
   R_FIELD              VARCHAR(128)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DATA_MAPPING PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接编码',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TEST_EXPRESSION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'TEST_EXPRESSION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '用于判断是否输出指定条件的样式文件部分',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'TEST_EXPRESSION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'S_RESOURCE_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'S_RESOURCE_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '包括所有的表和视图,最初的连接标识+":"+表名',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'S_RESOURCE_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'R_RESOURCE_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'R_RESOURCE_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '包括所有的表和视图,最初的连接标识+":"+表名',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING', 'column', 'R_RESOURCE_NAME'
go

/*==============================================================*/
/* Index: INDEX_DATA_MAPPING                                    */
/*==============================================================*/
CREATE INDEX INDEX_DATA_MAPPING ON DATA_MAPPING (
VALUE_CODE ASC,
R_DATA_CODE ASC,
R_IDENTIFIER ASC,
R_RESOURCE_NAME ASC,
R_FIELD ASC
)
go

/*==============================================================*/
/* Table: DATA_MAPPING_H                                        */
/*==============================================================*/
CREATE TABLE DATA_MAPPING_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   VALUE_CODE           VARCHAR(24)          NULL,
   S_DATA_CODE          VARCHAR(24)          NULL,
   IS_MAIN              VARCHAR(8)           NULL,
   TEST_EXPRESSION      VARCHAR(1024)        NULL,
   S_IDENTIFIER         VARCHAR(64)          NULL,
   S_RESOURCE_NAME      VARCHAR(64)          NULL,
   S_RESOURCE_DIAPLAY   VARCHAR(128)         NULL,
   S_FIELD              VARCHAR(128)         NULL,
   R_DATA_CODE          VARCHAR(24)          NULL,
   R_IDENTIFIER         VARCHAR(64)          NULL,
   R_RESOURCE_NAME      VARCHAR(64)          NULL,
   R_RESOURCE_DIAPLAY   VARCHAR(128)         NULL,
   R_FIELD              VARCHAR(128)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DATA_MAPPING_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接编码',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TEST_EXPRESSION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'TEST_EXPRESSION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '用于判断是否输出指定条件的样式文件部分',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'TEST_EXPRESSION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'S_RESOURCE_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'S_RESOURCE_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '包括所有的表和视图,最初的连接标识+":"+表名',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'S_RESOURCE_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_MAPPING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'R_RESOURCE_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'R_RESOURCE_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '包括所有的表和视图,最初的连接标识+":"+表名',
   'user', @CURRENTUSER, 'table', 'DATA_MAPPING_H', 'column', 'R_RESOURCE_NAME'
go

/*==============================================================*/
/* Index: INDEX_DATA_MAPPING_H                                  */
/*==============================================================*/
CREATE INDEX INDEX_DATA_MAPPING_H ON DATA_MAPPING_H (
VALUE_CODE ASC,
R_DATA_CODE ASC,
R_IDENTIFIER ASC,
R_RESOURCE_NAME ASC,
R_FIELD ASC
)
go

/*==============================================================*/
/* Table: DATA_ORDER                                            */
/*==============================================================*/
CREATE TABLE DATA_ORDER (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   FIELD_NAME           VARCHAR(1024)        NULL,
   IS_DESCEND           VARCHAR(8)           NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DATA_ORDER PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_ORDER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_ORDER', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'DATA_ORDER', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_ORDER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_ORDER', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'DATA_ORDER', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_ORDER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_ORDER', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'DATA_ORDER', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_ORDER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_ORDER', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'DATA_ORDER', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_ORDER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_ORDER', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'DATA_ORDER', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_ORDER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_ORDER', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_ORDER', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_ORDER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_ORDER', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_ORDER', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_ORDER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_ORDER', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'DATA_ORDER', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_ORDER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_ORDER', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'DATA_ORDER', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_ORDER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_ORDER', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'DATA_ORDER', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_DAORD                                           */
/*==============================================================*/
CREATE INDEX INDEX_DAORD ON DATA_ORDER (
DATA_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: DATA_ORDER_H                                          */
/*==============================================================*/
CREATE TABLE DATA_ORDER_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   FIELD_NAME           VARCHAR(1024)        NULL,
   IS_DESCEND           VARCHAR(8)           NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DATA_ORDER_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_ORDER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_ORDER_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'DATA_ORDER_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_ORDER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_ORDER_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'DATA_ORDER_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_ORDER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_ORDER_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'DATA_ORDER_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_ORDER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_ORDER_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'DATA_ORDER_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_ORDER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_ORDER_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'DATA_ORDER_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_ORDER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_ORDER_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_ORDER_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_ORDER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_ORDER_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_ORDER_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_ORDER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_ORDER_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'DATA_ORDER_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_ORDER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_ORDER_H', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'DATA_ORDER_H', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_ORDER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_ORDER_H', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'DATA_ORDER_H', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_DAORD_H                                         */
/*==============================================================*/
CREATE INDEX INDEX_DAORD_H ON DATA_ORDER_H (
DATA_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: DATA_PARAMETER                                        */
/*==============================================================*/
CREATE TABLE DATA_PARAMETER (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   PARAMETER_NAME       VARCHAR(128)         NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   CLASS                VARCHAR(256)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DATA_PARAMETER PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'PARAMETER_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'PARAMETER_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '样式单中的变量定义',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'PARAMETER_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CLASS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'CLASS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'CLASS'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_DAPARA                                          */
/*==============================================================*/
CREATE INDEX INDEX_DAPARA ON DATA_PARAMETER (
BUDDLE_ID ASC,
CATALOG_ID ASC,
DATA_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: DATA_PARAMETER_H                                      */
/*==============================================================*/
CREATE TABLE DATA_PARAMETER_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   PARAMETER_NAME       VARCHAR(128)         NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   CLASS                VARCHAR(256)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DATA_PARAMETER_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'PARAMETER_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'PARAMETER_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '样式单中的变量定义',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'PARAMETER_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CLASS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'CLASS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'CLASS'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_PARAMETER_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'DATA_PARAMETER_H', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_DAPARA_H                                        */
/*==============================================================*/
CREATE INDEX INDEX_DAPARA_H ON DATA_PARAMETER_H (
BUDDLE_ID ASC,
CATALOG_ID ASC,
DATA_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: DATA_STATISTICS                                       */
/*==============================================================*/
CREATE TABLE DATA_STATISTICS (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   JOURNAL_TYPE         INT                  NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   BUDDLE_NAME          VARCHAR(128)         NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   CATALOG_NAME         VARCHAR(128)         NULL,
   EFFECT_NUMBER        INT                  NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DATA_STATISTICS PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_STATISTICS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_STATISTICS', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '引用编码',
   'user', @CURRENTUSER, 'table', 'DATA_STATISTICS', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_STATISTICS')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_STATISTICS', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '1：功能，2：迁移，3：同步',
   'user', @CURRENTUSER, 'table', 'DATA_STATISTICS', 'column', 'JOURNAL_TYPE'
go

/*==============================================================*/
/* Index: INDEX_DASTA                                           */
/*==============================================================*/
CREATE INDEX INDEX_DASTA ON DATA_STATISTICS (
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
JOURNAL_TYPE ASC,
BUDDLE_ID ASC,
CATALOG_ID ASC
)
go

/*==============================================================*/
/* Table: DATA_VALUE                                            */
/*==============================================================*/
CREATE TABLE DATA_VALUE (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   TEST_EXPRESSION      VARCHAR(1024)        NULL,
   IS_FOR_EACH          VARCHAR(8)           NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DATA_VALUE PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TEST_EXPRESSION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'TEST_EXPRESSION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '用于判断是否输出指定条件的样式文件部分',
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'TEST_EXPRESSION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'DATA_VALUE', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_DAVAL                                           */
/*==============================================================*/
CREATE INDEX INDEX_DAVAL ON DATA_VALUE (
BUDDLE_ID ASC,
CATALOG_ID ASC,
DATA_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: DATA_VALUE_H                                          */
/*==============================================================*/
CREATE TABLE DATA_VALUE_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   TEST_EXPRESSION      VARCHAR(1024)        NULL,
   IS_FOR_EACH          VARCHAR(8)           NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DATA_VALUE_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VALUE_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'DATA_VALUE_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VALUE_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'DATA_VALUE_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VALUE_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'DATA_VALUE_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VALUE_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'DATA_VALUE_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VALUE_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'DATA_VALUE_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VALUE_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_VALUE_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VALUE_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_VALUE_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VALUE_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'DATA_VALUE_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VALUE_H', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'DATA_VALUE_H', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VALUE_H', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'DATA_VALUE_H', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_DAVAL_H                                         */
/*==============================================================*/
CREATE INDEX INDEX_DAVAL_H ON DATA_VALUE_H (
BUDDLE_ID ASC,
CATALOG_ID ASC,
DATA_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: DATA_VARIABLE                                         */
/*==============================================================*/
CREATE TABLE DATA_VARIABLE (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   VARIABLE_NAME        VARCHAR(128)         NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   CLASS                VARCHAR(256)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DATA_VARIABLE PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'VARIABLE_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'VARIABLE_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '样式单中的变量定义',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'VARIABLE_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CLASS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'CLASS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'CLASS'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_DAVARI                                          */
/*==============================================================*/
CREATE INDEX INDEX_DAVARI ON DATA_VARIABLE (
BUDDLE_ID ASC,
CATALOG_ID ASC,
DATA_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: DATA_VARIABLE_H                                       */
/*==============================================================*/
CREATE TABLE DATA_VARIABLE_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   VARIABLE_NAME        VARCHAR(128)         NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   CLASS                VARCHAR(256)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DATA_VARIABLE_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CLASS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'CLASS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'CLASS'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DATA_VARIABLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'DATA_VARIABLE_H', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_DAVARI_H                                        */
/*==============================================================*/
CREATE INDEX INDEX_DAVARI_H ON DATA_VARIABLE_H (
BUDDLE_ID ASC,
CATALOG_ID ASC,
DATA_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: DESIGN_CATALOG                                        */
/*==============================================================*/
CREATE TABLE DESIGN_CATALOG (
   CODE                 VARCHAR(24)          NOT NULL,
   DESIGN_CODE          VARCHAR(64)          NULL,
   CATALOG_CODE         VARCHAR(128)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_DESIGN_CATALOG PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DESIGN_CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DESIGN_CATALOG', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '引用编码',
   'user', @CURRENTUSER, 'table', 'DESIGN_CATALOG', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('DESIGN_CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DESIGN_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'DESIGN_CATALOG', 'column', 'DESIGN_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接标识',
   'user', @CURRENTUSER, 'table', 'DESIGN_CATALOG', 'column', 'DESIGN_CODE'
go

/*==============================================================*/
/* Index: INDEX_DESIGN_CATALOG                                  */
/*==============================================================*/
CREATE INDEX INDEX_DESIGN_CATALOG ON DESIGN_CATALOG (
DESIGN_CODE ASC,
CATALOG_CODE ASC
)
go

/*==============================================================*/
/* Table: EXCEPTION_RESPONSE                                    */
/*==============================================================*/
CREATE TABLE EXCEPTION_RESPONSE (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   POSITION             INT                  NULL,
   TEST_EXPRESSION      VARCHAR(1024)        NULL,
   IS_FOR_EACH          VARCHAR(8)           NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   RESPONSE_FORMAT      VARCHAR(8)           NULL,
   START_SYMBOL         VARCHAR(64)          NULL,
   END_SYMBOL           VARCHAR(64)          NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_EXCEPTION_RESPONSE PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TEST_EXPRESSION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'TEST_EXPRESSION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '用于判断是否输出指定条件的样式文件部分',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'TEST_EXPRESSION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RESPONSE_FORMAT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'RESPONSE_FORMAT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'xml、json、text',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'RESPONSE_FORMAT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_EXRES                                           */
/*==============================================================*/
CREATE INDEX INDEX_EXRES ON EXCEPTION_RESPONSE (
BUDDLE_ID ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: EXCEPTION_RESPONSE_H                                  */
/*==============================================================*/
CREATE TABLE EXCEPTION_RESPONSE_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   POSITION             INT                  NULL,
   TEST_EXPRESSION      VARCHAR(1024)        NULL,
   IS_FOR_EACH          VARCHAR(8)           NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   RESPONSE_FORMAT      VARCHAR(8)           NULL,
   START_SYMBOL         VARCHAR(64)          NULL,
   END_SYMBOL           VARCHAR(64)          NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_EXCEPTION_RESPONSE_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TEST_EXPRESSION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'TEST_EXPRESSION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '用于判断是否输出指定条件的样式文件部分',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'TEST_EXPRESSION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RESPONSE_FORMAT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'RESPONSE_FORMAT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'xml、json、text',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'RESPONSE_FORMAT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCEPTION_RESPONSE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'EXCEPTION_RESPONSE_H', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_EXRES_H                                         */
/*==============================================================*/
CREATE INDEX INDEX_EXRES_H ON EXCEPTION_RESPONSE_H (
BUDDLE_ID ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: EXCHANGE_DESIGN                                       */
/*==============================================================*/
CREATE TABLE EXCHANGE_DESIGN (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   NAME                 VARCHAR(128)         NULL,
   DESCRIPTION          VARCHAR(256)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_EXCHANGE_DESIGN PRIMARY KEY NONCLUSTERED (CODE),
   CONSTRAINT AK_KEY_2_EXCHANGE UNIQUE (BUDDLE_ID)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_DESIGN')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_DESIGN')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_DESIGN')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_DESIGN')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_DESIGN')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_DESIGN')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_DESIGN')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_DESIGN')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_DESIGN')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录名字',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_DESIGN')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DESCRIPTION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN', 'column', 'DESCRIPTION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '描述',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN', 'column', 'DESCRIPTION'
go

/*==============================================================*/
/* Index: INDEX_EXDES                                           */
/*==============================================================*/
CREATE INDEX INDEX_EXDES ON EXCHANGE_DESIGN (
BUDDLE_ID ASC,
NAME ASC
)
go

/*==============================================================*/
/* Table: EXCHANGE_DESIGN_H                                     */
/*==============================================================*/
CREATE TABLE EXCHANGE_DESIGN_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   NAME                 VARCHAR(128)         NULL,
   DESCRIPTION          VARCHAR(256)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_EXCHANGE_DESIGN_H PRIMARY KEY NONCLUSTERED (CODE),
   CONSTRAINT AK_KEY_2_EXCHANGE_H UNIQUE (BUDDLE_ID)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_DESIGN_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_DESIGN_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_DESIGN_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_DESIGN_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_DESIGN_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_DESIGN_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_DESIGN_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_DESIGN_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_DESIGN_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN_H', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录名字',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN_H', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_DESIGN_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DESCRIPTION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN_H', 'column', 'DESCRIPTION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '描述',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_DESIGN_H', 'column', 'DESCRIPTION'
go

/*==============================================================*/
/* Index: INDEX_EXDES_H                                         */
/*==============================================================*/
CREATE INDEX INDEX_EXDES_H ON EXCHANGE_DESIGN_H (
BUDDLE_ID ASC,
NAME ASC
)
go

/*==============================================================*/
/* Table: EXCHANGE_PROCESSOR                                    */
/*==============================================================*/
CREATE TABLE EXCHANGE_PROCESSOR (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   EXCHANGE_CODE        VARCHAR(24)          NULL,
   OPERATION            VARCHAR(16)          NULL,
   START_POSITION       VARCHAR(128)         NULL,
   FINISH_POSITION      VARCHAR(128)         NULL,
   CURRENT_POSITION     VARCHAR(128)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_EXCHANGE_PROCESSOR PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_PROCESSOR')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_PROCESSOR', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '交换编码',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_PROCESSOR', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_PROCESSOR')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_PROCESSOR', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_PROCESSOR', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_PROCESSOR')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'OPERATION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_PROCESSOR', 'column', 'OPERATION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '操作名字',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_PROCESSOR', 'column', 'OPERATION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_PROCESSOR')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_PROCESSOR', 'column', 'START_POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '迁移位置',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_PROCESSOR', 'column', 'START_POSITION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_PROCESSOR')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'FINISH_POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_PROCESSOR', 'column', 'FINISH_POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '迁移位置',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_PROCESSOR', 'column', 'FINISH_POSITION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_PROCESSOR')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CURRENT_POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_PROCESSOR', 'column', 'CURRENT_POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '迁移位置',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_PROCESSOR', 'column', 'CURRENT_POSITION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXCHANGE_PROCESSOR')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXCHANGE_PROCESSOR', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'EXCHANGE_PROCESSOR', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_EXPRO                                           */
/*==============================================================*/
CREATE INDEX INDEX_EXPRO ON EXCHANGE_PROCESSOR (
EXCHANGE_CODE ASC,
START_POSITION ASC
)
go

/*==============================================================*/
/* Table: EXPRESSION_ITEM                                       */
/*==============================================================*/
CREATE TABLE EXPRESSION_ITEM (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   EXPRESSION_CODE      VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   LOGICAL_SYMBOL       VARCHAR(8)           NULL,
   LEFT_BRACE_NUMBER    INT                  NULL,
   FIELD_NAME           VARCHAR(1024)        NULL,
   FIELD_TYPE           INT                  NULL,
   SQL_OPERATOR         VARCHAR(32)          NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   CLASS                VARCHAR(256)         NULL,
   RIGHT_BRACE_NUMBER   INT                  NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_EXPRESSION_ITEM PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'FIELD_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'FIELD_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '用于判断是否输出指定条件的样式文件部分',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'FIELD_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'FIELD_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'FIELD_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '字段的sql类型',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'FIELD_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CLASS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'CLASS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'CLASS'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_EXITE                                           */
/*==============================================================*/
CREATE INDEX INDEX_EXITE ON EXPRESSION_ITEM (
BUDDLE_ID ASC,
CATALOG_ID ASC,
DATA_CODE ASC,
EXPRESSION_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: EXPRESSION_ITEM_H                                     */
/*==============================================================*/
CREATE TABLE EXPRESSION_ITEM_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   EXPRESSION_CODE      VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   LOGICAL_SYMBOL       VARCHAR(8)           NULL,
   LEFT_BRACE_NUMBER    INT                  NULL,
   FIELD_NAME           VARCHAR(1024)        NULL,
   FIELD_TYPE           INT                  NULL,
   SQL_OPERATOR         VARCHAR(32)          NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   CLASS                VARCHAR(256)         NULL,
   RIGHT_BRACE_NUMBER   INT                  NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_EXPRESSION_ITEM_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'FIELD_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'FIELD_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '用于判断是否输出指定条件的样式文件部分',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'FIELD_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'FIELD_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'FIELD_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '字段的sql类型',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'FIELD_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CLASS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'CLASS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'CLASS'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('EXPRESSION_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'EXPRESSION_ITEM_H', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_EXITE_H                                         */
/*==============================================================*/
CREATE INDEX INDEX_EXITE_H ON EXPRESSION_ITEM_H (
BUDDLE_ID ASC,
CATALOG_ID ASC,
DATA_CODE ASC,
EXPRESSION_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: FIELD_LABEL                                           */
/*==============================================================*/
CREATE TABLE FIELD_LABEL (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   IDENTIFIER           VARCHAR(64)          NULL,
   RESOURCE_NAME        VARCHAR(64)          NULL,
   FIELD_NAME           VARCHAR(64)          NULL,
   FIELD_LABEL          VARCHAR(128)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_FIELD_LABEL PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('FIELD_LABEL')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接编码',
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('FIELD_LABEL')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('FIELD_LABEL')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('FIELD_LABEL')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('FIELD_LABEL')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('FIELD_LABEL')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('FIELD_LABEL')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('FIELD_LABEL')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RESOURCE_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL', 'column', 'RESOURCE_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '包括所有的表和视图,最初的连接标识+":"+表名',
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL', 'column', 'RESOURCE_NAME'
go

/*==============================================================*/
/* Index: INDEX_FIELD_LABEL                                     */
/*==============================================================*/
CREATE INDEX INDEX_FIELD_LABEL ON FIELD_LABEL (
IDENTIFIER ASC,
RESOURCE_NAME ASC
)
go

/*==============================================================*/
/* Table: FIELD_LABEL_H                                         */
/*==============================================================*/
CREATE TABLE FIELD_LABEL_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   IDENTIFIER           VARCHAR(64)          NULL,
   RESOURCE_NAME        VARCHAR(64)          NULL,
   FIELD_NAME           VARCHAR(64)          NULL,
   FIELD_LABEL          VARCHAR(128)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_FIELD_LABEL_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('FIELD_LABEL_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接编码',
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('FIELD_LABEL_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('FIELD_LABEL_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('FIELD_LABEL_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('FIELD_LABEL_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('FIELD_LABEL_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('FIELD_LABEL_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('FIELD_LABEL_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RESOURCE_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL_H', 'column', 'RESOURCE_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '包括所有的表和视图,最初的连接标识+":"+表名',
   'user', @CURRENTUSER, 'table', 'FIELD_LABEL_H', 'column', 'RESOURCE_NAME'
go

/*==============================================================*/
/* Index: INDEX_FIELD_LABEL_H                                   */
/*==============================================================*/
CREATE INDEX INDEX_FIELD_LABEL_H ON FIELD_LABEL_H (
IDENTIFIER ASC,
RESOURCE_NAME ASC
)
go

/*==============================================================*/
/* Table: INFOINGE_JOB                                          */
/*==============================================================*/
CREATE TABLE INFOINGE_JOB (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   NAME                 VARCHAR(128)         NULL,
   FREQUENTNESS         VARCHAR(8)           NULL,
   INTERVAL_TIME        INT                  NULL,
   JOIN_TIME            DATETIME             NULL,
   RUN_START_HOUR       VARCHAR(8)           NULL,
   RUN_START_MINUTE     VARCHAR(8)           NULL,
   RUN_FINISH_HOUR      VARCHAR(8)           NULL,
   RUN_FINISH_MINUTE    VARCHAR(8)           NULL,
   DESCRIPTION          VARCHAR(256)         NULL,
   IS_RUNNING           VARCHAR(8)           NULL,
   TIMING_YEAR          VARCHAR(128)         NULL,
   TIMING_MONTH         VARCHAR(32)          NULL,
   TIMING_DAY           VARCHAR(128)         NULL,
   TIMING_HOUR          VARCHAR(64)          NULL,
   TIMING_MINUTE        VARCHAR(180)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_INFOINGE_JOB PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件名字',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'FREQUENTNESS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'FREQUENTNESS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'year|年，month|月，day|天，hour|时，minute|分，second|秒',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'FREQUENTNESS'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'INTERVAL_TIME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'INTERVAL_TIME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否入口插件',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'INTERVAL_TIME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_START_HOUR')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'RUN_START_HOUR'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'RUN_START_HOUR'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_START_MINUTE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'RUN_START_MINUTE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'RUN_START_MINUTE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_FINISH_HOUR')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'RUN_FINISH_HOUR'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'RUN_FINISH_HOUR'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_FINISH_MINUTE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'RUN_FINISH_MINUTE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'RUN_FINISH_MINUTE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DESCRIPTION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'DESCRIPTION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '描述',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'DESCRIPTION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TIMING_YEAR')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'TIMING_YEAR'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '定时年',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'TIMING_YEAR'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TIMING_MONTH')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'TIMING_MONTH'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '定时年',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB', 'column', 'TIMING_MONTH'
go

/*==============================================================*/
/* Index: INDEX_INFOINGE_JOB                                    */
/*==============================================================*/
CREATE INDEX INDEX_INFOINGE_JOB ON INFOINGE_JOB (
NAME ASC
)
go

/*==============================================================*/
/* Table: INFOINGE_JOB_H                                        */
/*==============================================================*/
CREATE TABLE INFOINGE_JOB_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   NAME                 VARCHAR(128)         NULL,
   FREQUENTNESS         VARCHAR(8)           NULL,
   INTERVAL_TIME        INT                  NULL,
   JOIN_TIME            DATETIME             NULL,
   RUN_START_HOUR       VARCHAR(8)           NULL,
   RUN_START_MINUTE     VARCHAR(8)           NULL,
   RUN_FINISH_HOUR      VARCHAR(8)           NULL,
   RUN_FINISH_MINUTE    VARCHAR(8)           NULL,
   DESCRIPTION          VARCHAR(256)         NULL,
   IS_RUNNING           VARCHAR(8)           NULL,
   TIMING_YEAR          VARCHAR(128)         NULL,
   TIMING_MONTH         VARCHAR(32)          NULL,
   TIMING_DAY           VARCHAR(128)         NULL,
   TIMING_HOUR          VARCHAR(64)          NULL,
   TIMING_MINUTE        VARCHAR(180)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_INFOINGE_JOB_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件名字',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'FREQUENTNESS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'FREQUENTNESS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'year|年，month|月，day|天，hour|时，minute|分，second|秒',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'FREQUENTNESS'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'INTERVAL_TIME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'INTERVAL_TIME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否入口插件',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'INTERVAL_TIME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_START_HOUR')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'RUN_START_HOUR'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'RUN_START_HOUR'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_START_MINUTE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'RUN_START_MINUTE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'RUN_START_MINUTE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_FINISH_HOUR')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'RUN_FINISH_HOUR'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'RUN_FINISH_HOUR'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RUN_FINISH_MINUTE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'RUN_FINISH_MINUTE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否升级',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'RUN_FINISH_MINUTE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DESCRIPTION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'DESCRIPTION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '描述',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'DESCRIPTION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TIMING_YEAR')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'TIMING_YEAR'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '定时年',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'TIMING_YEAR'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('INFOINGE_JOB_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TIMING_MONTH')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'TIMING_MONTH'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '定时年',
   'user', @CURRENTUSER, 'table', 'INFOINGE_JOB_H', 'column', 'TIMING_MONTH'
go

/*==============================================================*/
/* Index: INDEX_INFOINGE_JOB_H                                  */
/*==============================================================*/
CREATE INDEX INDEX_INFOINGE_JOB_H ON INFOINGE_JOB_H (
NAME ASC
)
go

/*==============================================================*/
/* Table: ITEM_VALUE                                            */
/*==============================================================*/
CREATE TABLE ITEM_VALUE (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   ITEM_CODE            VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   ITEM_NAME            VARCHAR(128)         NULL,
   TEST_EXPRESSION      VARCHAR(1024)        NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_ITEM_VALUE PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'ITEM_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'ITEM_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件名字',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'ITEM_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TEST_EXPRESSION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'TEST_EXPRESSION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '用于判断是否输出指定条件的样式文件部分',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'TEST_EXPRESSION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_ITVAL                                           */
/*==============================================================*/
CREATE INDEX INDEX_ITVAL ON ITEM_VALUE (
BUDDLE_ID ASC,
CATALOG_ID ASC,
ITEM_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: ITEM_VALUE_H                                          */
/*==============================================================*/
CREATE TABLE ITEM_VALUE_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   ITEM_CODE            VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   ITEM_NAME            VARCHAR(128)         NULL,
   TEST_EXPRESSION      VARCHAR(1024)        NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_ITEM_VALUE_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'ITEM_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'ITEM_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件名字',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'ITEM_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TEST_EXPRESSION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'TEST_EXPRESSION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '用于判断是否输出指定条件的样式文件部分',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'TEST_EXPRESSION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('ITEM_VALUE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'ITEM_VALUE_H', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_ITVAL_H                                         */
/*==============================================================*/
CREATE INDEX INDEX_ITVAL_H ON ITEM_VALUE_H (
BUDDLE_ID ASC,
CATALOG_ID ASC,
ITEM_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: JOB_CATALOG                                           */
/*==============================================================*/
CREATE TABLE JOB_CATALOG (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   JOB_CODE             VARCHAR(64)          NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   BUDDLE_NAME          VARCHAR(128)         NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   CATALOG_NAME         VARCHAR(128)         NULL,
   CATALOG_CODE         VARCHAR(128)         NULL,
   POSITION             INT                  NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOB_CATALOG PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOB_CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '引用编码',
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOB_CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOB_CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOB_CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOB_CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOB_CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOB_CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOB_CATALOG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOB_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG', 'column', 'JOB_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接标识',
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG', 'column', 'JOB_CODE'
go

/*==============================================================*/
/* Index: INDEX_JOB_CATALOG                                     */
/*==============================================================*/
CREATE INDEX INDEX_JOB_CATALOG ON JOB_CATALOG (
JOB_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: JOB_CATALOG_H                                         */
/*==============================================================*/
CREATE TABLE JOB_CATALOG_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   JOB_CODE             VARCHAR(64)          NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   BUDDLE_NAME          VARCHAR(128)         NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   CATALOG_NAME         VARCHAR(128)         NULL,
   CATALOG_CODE         VARCHAR(128)         NULL,
   POSITION             INT                  NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOB_CATALOG_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOB_CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '引用编码',
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOB_CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOB_CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOB_CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOB_CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOB_CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOB_CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOB_CATALOG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOB_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG_H', 'column', 'JOB_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接标识',
   'user', @CURRENTUSER, 'table', 'JOB_CATALOG_H', 'column', 'JOB_CODE'
go

/*==============================================================*/
/* Index: INDEX_JOB_CATALOG_H                                   */
/*==============================================================*/
CREATE INDEX INDEX_JOB_CATALOG_H ON JOB_CATALOG_H (
JOB_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: JOB_JOURNAL                                           */
/*==============================================================*/
CREATE TABLE JOB_JOURNAL (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16,0)        NULL,
   REQUEST_ID           VARCHAR(128)         NULL,
   REQUEST_IP           VARCHAR(128)         NULL,
   ACCOUNT_NAME         VARCHAR(64)          NULL,
   JOURNAL_TYPE         INT                  NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   BUDDLE_NAME          VARCHAR(128)         NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   CATALOG_NAME         VARCHAR(128)         NULL,
   DATA_CODE            VARCHAR(128)         NULL,
   DATA_NAME            VARCHAR(128)         NULL,
   POSITION             INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOB_JOURNAL PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOB_JOURNAL')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOB_JOURNAL', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOB_JOURNAL', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOB_JOURNAL')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOB_JOURNAL', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOB_JOURNAL', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOB_JOURNAL')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOB_JOURNAL', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOB_JOURNAL', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOB_JOURNAL                                     */
/*==============================================================*/
CREATE INDEX INDEX_JOB_JOURNAL ON JOB_JOURNAL (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_MINUTE ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: LANGUAGE                                              */
/*==============================================================*/
CREATE TABLE LANGUAGE (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   NAME                 VARCHAR(16)          NULL,
   ENCODING             VARCHAR(16)          NULL,
   MAPPING              VARCHAR(16)          NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_LANGUAGE PRIMARY KEY NONCLUSTERED (CODE),
   CONSTRAINT AK_KEY_2_LANGUAGE UNIQUE (NAME)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('LANGUAGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'LANGUAGE', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '语言编码',
   'user', @CURRENTUSER, 'table', 'LANGUAGE', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('LANGUAGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'LANGUAGE', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'LANGUAGE', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('LANGUAGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'LANGUAGE', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'LANGUAGE', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('LANGUAGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'LANGUAGE', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'LANGUAGE', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('LANGUAGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'LANGUAGE', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'LANGUAGE', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('LANGUAGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'LANGUAGE', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'LANGUAGE', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('LANGUAGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'LANGUAGE', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'LANGUAGE', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('LANGUAGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'LANGUAGE', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '语言名字',
   'user', @CURRENTUSER, 'table', 'LANGUAGE', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('LANGUAGE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'ENCODING')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'LANGUAGE', 'column', 'ENCODING'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '字符集',
   'user', @CURRENTUSER, 'table', 'LANGUAGE', 'column', 'ENCODING'
go

/*==============================================================*/
/* Index: INDEX_LANGUAGE                                        */
/*==============================================================*/
CREATE INDEX INDEX_LANGUAGE ON LANGUAGE (
NAME ASC
)
go

/*==============================================================*/
/* Table: LANGUAGE_H                                            */
/*==============================================================*/
CREATE TABLE LANGUAGE_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   NAME                 VARCHAR(16)          NULL,
   ENCODING             VARCHAR(16)          NULL,
   MAPPING              VARCHAR(16)          NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_LANGUAGE_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('LANGUAGE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'LANGUAGE_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '语言编码',
   'user', @CURRENTUSER, 'table', 'LANGUAGE_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('LANGUAGE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'LANGUAGE_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'LANGUAGE_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('LANGUAGE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'LANGUAGE_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'LANGUAGE_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('LANGUAGE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'LANGUAGE_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'LANGUAGE_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('LANGUAGE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'LANGUAGE_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'LANGUAGE_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('LANGUAGE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'LANGUAGE_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'LANGUAGE_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('LANGUAGE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'LANGUAGE_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'LANGUAGE_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('LANGUAGE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'LANGUAGE_H', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '语言名字',
   'user', @CURRENTUSER, 'table', 'LANGUAGE_H', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('LANGUAGE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'ENCODING')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'LANGUAGE_H', 'column', 'ENCODING'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '字符集',
   'user', @CURRENTUSER, 'table', 'LANGUAGE_H', 'column', 'ENCODING'
go

/*==============================================================*/
/* Index: INDEX_LANGUAGE_H                                      */
/*==============================================================*/
CREATE INDEX INDEX_LANGUAGE_H ON LANGUAGE_H (
NAME ASC
)
go

/*==============================================================*/
/* Table: PREFIX_CODE                                           */
/*==============================================================*/
CREATE TABLE PREFIX_CODE (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   IDENTIFIER           VARCHAR(64)          NULL,
   HOST                 VARCHAR(128)         NULL,
   PRECODE              VARCHAR(64)          NULL,
   IS_SYNCED_DSB        VARCHAR(8)           NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_PREFIX_CODE PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接编码',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_INDEX')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'CHANGE_INDEX'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '修改序列',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'CHANGE_INDEX'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_NUMBER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'CHANGE_NUMBER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '修改次数',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'CHANGE_NUMBER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRET')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'SECRET'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '秘密',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'SECRET'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '设置秘密',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'OWNER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'OWNER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '所有者',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'OWNER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IDENTIFIER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'IDENTIFIER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接标识',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'IDENTIFIER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'HOST')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'HOST'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '服务地址',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'HOST'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'PRECODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'PRECODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '前端编码',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'PRECODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_SYNCED_DSB')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'IS_SYNCED_DSB'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否已同步总线',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'IS_SYNCED_DSB'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_PREFIX_CODE                                     */
/*==============================================================*/
CREATE INDEX INDEX_PREFIX_CODE ON PREFIX_CODE (
IDENTIFIER ASC,
HOST ASC
)
go

/*==============================================================*/
/* Table: PREFIX_CODE_H                                         */
/*==============================================================*/
CREATE TABLE PREFIX_CODE_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   IDENTIFIER           VARCHAR(64)          NULL,
   HOST                 VARCHAR(128)         NULL,
   PRECODE              VARCHAR(64)          NULL,
   IS_SYNCED_DSB        VARCHAR(8)           NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_PREFIX_CODE_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接编码',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_INDEX')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'CHANGE_INDEX'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '修改序列',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'CHANGE_INDEX'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_NUMBER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'CHANGE_NUMBER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '修改次数',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'CHANGE_NUMBER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRET')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'SECRET'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '秘密',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'SECRET'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '设置秘密',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'OWNER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'OWNER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '所有者',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'OWNER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IDENTIFIER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'IDENTIFIER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接标识',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'IDENTIFIER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'HOST')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'HOST'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '服务地址',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'HOST'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'PRECODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'PRECODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '前端编码',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'PRECODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_SYNCED_DSB')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'IS_SYNCED_DSB'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否已同步总线',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'IS_SYNCED_DSB'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PREFIX_CODE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'PREFIX_CODE_H', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_PREFIX_CODE_H                                   */
/*==============================================================*/
CREATE INDEX INDEX_PREFIX_CODE_H ON PREFIX_CODE_H (
IDENTIFIER ASC,
HOST ASC
)
go

/*==============================================================*/
/* Table: PROCESSOR                                             */
/*==============================================================*/
CREATE TABLE PROCESSOR (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   CLASS                VARCHAR(256)         NULL,
   CLASSIFY             VARCHAR(32)          NULL,
   NAME                 VARCHAR(128)         NULL,
   DESCRIPTION          VARCHAR(256)         NULL,
   TYPE                 VARCHAR(32)          NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_PROCESSOR PRIMARY KEY NONCLUSTERED (CODE),
   CONSTRAINT AK_KEY_2_PROCTRAC UNIQUE (CLASS)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '引用编码',
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CLASS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'CLASS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'CLASS'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '字段名字',
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DESCRIPTION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'DESCRIPTION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '描述',
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'DESCRIPTION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '1.Hinge：枢纽处理类，2.DB：数据库驱动，3.WS：WEB服务接口',
   'user', @CURRENTUSER, 'table', 'PROCESSOR', 'column', 'TYPE'
go

/*==============================================================*/
/* Index: INDEX_PROCESSOR                                       */
/*==============================================================*/
CREATE INDEX INDEX_PROCESSOR ON PROCESSOR (
CLASS ASC
)
go

/*==============================================================*/
/* Table: PROCESSOR_H                                           */
/*==============================================================*/
CREATE TABLE PROCESSOR_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   CLASS                VARCHAR(256)         NULL,
   CLASSIFY             VARCHAR(32)          NULL,
   NAME                 VARCHAR(128)         NULL,
   DESCRIPTION          VARCHAR(256)         NULL,
   TYPE                 VARCHAR(32)          NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_PROCESSOR_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '引用编码',
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CLASS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'CLASS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'CLASS'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '字段名字',
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DESCRIPTION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'DESCRIPTION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '描述',
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'DESCRIPTION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('PROCESSOR_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '1.Hinge：讯枢处理类，2.DB：数据库驱动，3.WS：Web服务接口类',
   'user', @CURRENTUSER, 'table', 'PROCESSOR_H', 'column', 'TYPE'
go

/*==============================================================*/
/* Index: INDEX_PROCESSOR_H                                     */
/*==============================================================*/
CREATE INDEX INDEX_PROCESSOR_H ON PROCESSOR_H (
CLASS ASC
)
go

/*==============================================================*/
/* Table: QUOTE                                                 */
/*==============================================================*/
CREATE TABLE QUOTE (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   NAME                 VARCHAR(128)         NULL,
   EXPRESSION           VARCHAR(512)         NULL,
   CLASS                VARCHAR(256)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_QUOTE PRIMARY KEY NONCLUSTERED (CODE),
   CONSTRAINT AK_KEY_2_QUOTE UNIQUE (DATA_CODE, NAME)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '引用编码',
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATA_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'DATA_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据编码',
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'DATA_CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '字段名字',
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'EXPRESSION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'EXPRESSION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '转换表达式',
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'EXPRESSION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CLASS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'CLASS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'QUOTE', 'column', 'CLASS'
go

/*==============================================================*/
/* Index: INDEX_QUOTE                                           */
/*==============================================================*/
CREATE INDEX INDEX_QUOTE ON QUOTE (
BUDDLE_ID ASC,
CATALOG_ID ASC,
DATA_CODE ASC,
NAME ASC
)
go

/*==============================================================*/
/* Table: QUOTE_H                                               */
/*==============================================================*/
CREATE TABLE QUOTE_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   NAME                 VARCHAR(128)         NULL,
   EXPRESSION           VARCHAR(512)         NULL,
   CLASS                VARCHAR(256)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_QUOTE_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '引用编码',
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DATA_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'DATA_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据编码',
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'DATA_CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '字段名字',
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'EXPRESSION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'EXPRESSION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '转换表达式',
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'EXPRESSION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('QUOTE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CLASS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'CLASS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'QUOTE_H', 'column', 'CLASS'
go

/*==============================================================*/
/* Index: INDEX_QUOTE_H                                         */
/*==============================================================*/
CREATE INDEX INDEX_QUOTE_H ON QUOTE_H (
BUDDLE_ID ASC,
CATALOG_ID ASC,
DATA_CODE ASC,
NAME ASC
)
go

/*==============================================================*/
/* Table: RELEASE_HOST                                          */
/*==============================================================*/
CREATE TABLE RELEASE_HOST (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   ADDRESS              VARCHAR(128)         NULL,
   HOST_NAME            VARCHAR(128)         NULL,
   NAME                 VARCHAR(128)         NULL,
   DESCRIPTION          VARCHAR(256)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_RELEASE_HOST PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RELEASE_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '引用编码',
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RELEASE_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RELEASE_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RELEASE_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RELEASE_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RELEASE_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RELEASE_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RELEASE_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'HOST_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST', 'column', 'HOST_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST', 'column', 'HOST_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RELEASE_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '字段名字',
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RELEASE_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DESCRIPTION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST', 'column', 'DESCRIPTION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '描述',
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST', 'column', 'DESCRIPTION'
go

/*==============================================================*/
/* Index: INDEX_RHO                                             */
/*==============================================================*/
CREATE INDEX INDEX_RHO ON RELEASE_HOST (
ADDRESS ASC
)
go

/*==============================================================*/
/* Table: RELEASE_HOST_H                                        */
/*==============================================================*/
CREATE TABLE RELEASE_HOST_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   ADDRESS              VARCHAR(128)         NULL,
   HOST_NAME            VARCHAR(128)         NULL,
   NAME                 VARCHAR(128)         NULL,
   DESCRIPTION          VARCHAR(256)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_RELEASE_HOST_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RELEASE_HOST_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '引用编码',
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RELEASE_HOST_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RELEASE_HOST_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RELEASE_HOST_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RELEASE_HOST_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RELEASE_HOST_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RELEASE_HOST_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RELEASE_HOST_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'HOST_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST_H', 'column', 'HOST_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST_H', 'column', 'HOST_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RELEASE_HOST_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST_H', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '字段名字',
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST_H', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RELEASE_HOST_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DESCRIPTION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST_H', 'column', 'DESCRIPTION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '描述',
   'user', @CURRENTUSER, 'table', 'RELEASE_HOST_H', 'column', 'DESCRIPTION'
go

/*==============================================================*/
/* Index: INDEX_RHO_H                                           */
/*==============================================================*/
CREATE INDEX INDEX_RHO_H ON RELEASE_HOST_H (
ADDRESS ASC
)
go

/*==============================================================*/
/* Table: REPLACE_HOST                                          */
/*==============================================================*/
CREATE TABLE REPLACE_HOST (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   IDENTIFIER           VARCHAR(64)          NULL,
   TABLE_NAME           VARCHAR(128)         NULL,
   FILED_NAME           VARCHAR(128)         NULL,
   OLD_IP               VARCHAR(15)          NULL,
   REPLACE_IP           VARCHAR(15)          NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_REPLACE_HOST PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('REPLACE_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'REPLACE_HOST', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '引用编码',
   'user', @CURRENTUSER, 'table', 'REPLACE_HOST', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('REPLACE_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'REPLACE_HOST', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'REPLACE_HOST', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('REPLACE_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IDENTIFIER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'REPLACE_HOST', 'column', 'IDENTIFIER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接标识',
   'user', @CURRENTUSER, 'table', 'REPLACE_HOST', 'column', 'IDENTIFIER'
go

/*==============================================================*/
/* Index: INDEX_REPLACE_HOST                                    */
/*==============================================================*/
CREATE INDEX INDEX_REPLACE_HOST ON REPLACE_HOST (
IDENTIFIER ASC,
TABLE_NAME ASC,
FILED_NAME ASC
)
go

/*==============================================================*/
/* Table: RESOURCE_CONNECTION                                   */
/*==============================================================*/
CREATE TABLE RESOURCE_CONNECTION (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   IDENTIFIER           VARCHAR(64)          NULL,
   NAME                 VARCHAR(128)         NULL,
   TYPE                 VARCHAR(32)          NULL,
   DRIVER               VARCHAR(128)         NULL,
   HOST                 VARCHAR(128)         NULL,
   PORT                 VARCHAR(8)           NULL,
   INSTANCE             VARCHAR(64)          NULL,
   PATTERN              VARCHAR(64)          NULL,
   ACCOUNT              VARCHAR(128)         NULL,
   PASSWORD             VARCHAR(128)         NULL,
   MAX_NUMBER           VARCHAR(8)           NULL,
   TIMEOUT              VARCHAR(16)          NULL,
   TEMPLATE             VARCHAR(256)         NULL,
   IS_LOCKED            VARCHAR(8)           NULL,
   IS_DSB               VARCHAR(8)           NULL,
   BUFFER_POOL_SIZE     NUMERIC(13,0)        NULL,
   DECOMPOSING_CODE     VARCHAR(24)          NULL,
   REG_STATUS           VARCHAR(32)          NULL,
   REG_REASON           VARCHAR(128)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_RESOURCE_CONNECTION PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接编码',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IDENTIFIER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'IDENTIFIER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接标识',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'IDENTIFIER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接名字',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接类型',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DRIVER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'DRIVER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '驱动器名',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'DRIVER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'HOST')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'HOST'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '服务地址',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'HOST'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'PORT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'PORT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '服务端口',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'PORT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'INSTANCE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'INSTANCE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据实例',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'INSTANCE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'PATTERN')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'PATTERN'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '方案标识',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'PATTERN'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'ACCOUNT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'ACCOUNT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '访问帐号',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'ACCOUNT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'PASSWORD')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'PASSWORD'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '访问密码',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'PASSWORD'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'MAX_NUMBER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'MAX_NUMBER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '最大连接数',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'MAX_NUMBER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TIMEOUT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'TIMEOUT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '超时设置',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'TIMEOUT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TEMPLATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'TEMPLATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接模板',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'TEMPLATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'REG_STATUS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'REG_STATUS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '存放（空值）、regist（注册）、work（工作）、refuse（拒绝）',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION', 'column', 'REG_STATUS'
go

/*==============================================================*/
/* Index: INDEX_CONNECTOR                                       */
/*==============================================================*/
CREATE INDEX INDEX_CONNECTOR ON RESOURCE_CONNECTION (
HOST ASC,
PORT ASC,
PATTERN ASC,
INSTANCE ASC
)
go

/*==============================================================*/
/* Table: RESOURCE_CONNECTION_H                                 */
/*==============================================================*/
CREATE TABLE RESOURCE_CONNECTION_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   IDENTIFIER           VARCHAR(64)          NULL,
   NAME                 VARCHAR(128)         NULL,
   TYPE                 VARCHAR(32)          NULL,
   DRIVER               VARCHAR(128)         NULL,
   HOST                 VARCHAR(128)         NULL,
   PORT                 VARCHAR(8)           NULL,
   INSTANCE             VARCHAR(64)          NULL,
   PATTERN              VARCHAR(64)          NULL,
   ACCOUNT              VARCHAR(128)         NULL,
   PASSWORD             VARCHAR(128)         NULL,
   MAX_NUMBER           VARCHAR(8)           NULL,
   TIMEOUT              VARCHAR(16)          NULL,
   TEMPLATE             VARCHAR(256)         NULL,
   IS_LOCKED            VARCHAR(8)           NULL,
   IS_DSB               VARCHAR(8)           NULL,
   BUFFER_POOL_SIZE     NUMERIC(13,0)        NULL,
   DECOMPOSING_CODE     VARCHAR(24)          NULL,
   REG_STATUS           VARCHAR(32)          NULL,
   REG_REASON           VARCHAR(128)         NULL,
   IS_SYNCED_DSB        VARCHAR(8)           NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_RESOURCE_CONNECTION_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接编码',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IDENTIFIER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'IDENTIFIER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接标识',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'IDENTIFIER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接名字',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接类型',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DRIVER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'DRIVER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '驱动器名',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'DRIVER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'HOST')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'HOST'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '服务地址',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'HOST'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'PORT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'PORT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '服务端口',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'PORT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'INSTANCE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'INSTANCE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据实例',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'INSTANCE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'PATTERN')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'PATTERN'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '方案标识',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'PATTERN'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'ACCOUNT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'ACCOUNT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '访问帐号',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'ACCOUNT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'PASSWORD')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'PASSWORD'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '访问密码',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'PASSWORD'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'MAX_NUMBER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'MAX_NUMBER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '最大连接数',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'MAX_NUMBER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TIMEOUT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'TIMEOUT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '超时设置',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'TIMEOUT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TEMPLATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'TEMPLATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接模板',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'TEMPLATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'REG_STATUS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'REG_STATUS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '存放（空值）、regist（注册）、work（工作）、refuse（拒绝）',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'REG_STATUS'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_CONNECTION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_SYNCED_DSB')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'IS_SYNCED_DSB'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否已同步总线',
   'user', @CURRENTUSER, 'table', 'RESOURCE_CONNECTION_H', 'column', 'IS_SYNCED_DSB'
go

/*==============================================================*/
/* Index: INDEX_CONNECTOR_H                                     */
/*==============================================================*/
CREATE INDEX INDEX_CONNECTOR_H ON RESOURCE_CONNECTION_H (
HOST ASC,
PORT ASC,
PATTERN ASC,
INSTANCE ASC
)
go

/*==============================================================*/
/* Table: RESOURCE_DECOMPOSING                                  */
/*==============================================================*/
CREATE TABLE RESOURCE_DECOMPOSING (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   IDENTIFIER           VARCHAR(64)          NULL,
   NAME                 VARCHAR(128)         NULL,
   TYPE                 VARCHAR(32)          NULL,
   DRIVER               VARCHAR(128)         NULL,
   HOST                 VARCHAR(128)         NULL,
   PORT                 VARCHAR(8)           NULL,
   INSTANCE             VARCHAR(64)          NULL,
   PATTERN              VARCHAR(64)          NULL,
   ACCOUNT              VARCHAR(128)         NULL,
   PASSWORD             VARCHAR(128)         NULL,
   MAX_NUMBER           VARCHAR(8)           NULL,
   TIMEOUT              VARCHAR(16)          NULL,
   TEMPLATE             VARCHAR(256)         NULL,
   IS_LOCKED            VARCHAR(8)           NULL,
   IS_DSB               VARCHAR(8)           NULL,
   BUFFER_POOL_SIZE     NUMERIC(13,0)        NULL,
   YEAR_ID              NUMERIC(8,0)         NULL,
   MONTH_ID             NUMERIC(8,0)         NULL,
   DAY_ID               NUMERIC(8,0)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_RESOURCE_DECOMPOSING PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接编码',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IDENTIFIER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'IDENTIFIER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接标识',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'IDENTIFIER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接名字',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接类型',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DRIVER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'DRIVER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '驱动器名',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'DRIVER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'HOST')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'HOST'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '服务地址',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'HOST'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'PORT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'PORT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '服务端口',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'PORT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'INSTANCE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'INSTANCE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据实例',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'INSTANCE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'PATTERN')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'PATTERN'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '方案标识',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'PATTERN'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'ACCOUNT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'ACCOUNT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '访问帐号',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'ACCOUNT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'PASSWORD')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'PASSWORD'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '访问密码',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'PASSWORD'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'MAX_NUMBER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'MAX_NUMBER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '最大连接数',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'MAX_NUMBER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TIMEOUT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'TIMEOUT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '超时设置',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'TIMEOUT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TEMPLATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'TEMPLATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接模板',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING', 'column', 'TEMPLATE'
go

/*==============================================================*/
/* Index: INDEX_RESOURCE                                        */
/*==============================================================*/
CREATE INDEX INDEX_RESOURCE ON RESOURCE_DECOMPOSING (
IDENTIFIER ASC,
YEAR_ID ASC,
MONTH_ID ASC,
DAY_ID ASC
)
go

/*==============================================================*/
/* Table: RESOURCE_DECOMPOSING_H                                */
/*==============================================================*/
CREATE TABLE RESOURCE_DECOMPOSING_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   IDENTIFIER           VARCHAR(64)          NULL,
   NAME                 VARCHAR(128)         NULL,
   TYPE                 VARCHAR(32)          NULL,
   DRIVER               VARCHAR(128)         NULL,
   HOST                 VARCHAR(128)         NULL,
   PORT                 VARCHAR(8)           NULL,
   INSTANCE             VARCHAR(64)          NULL,
   PATTERN              VARCHAR(64)          NULL,
   ACCOUNT              VARCHAR(128)         NULL,
   PASSWORD             VARCHAR(128)         NULL,
   MAX_NUMBER           VARCHAR(8)           NULL,
   TIMEOUT              VARCHAR(16)          NULL,
   TEMPLATE             VARCHAR(256)         NULL,
   IS_LOCKED            VARCHAR(8)           NULL,
   IS_DSB               VARCHAR(8)           NULL,
   BUFFER_POOL_SIZE     NUMERIC(13,0)        NULL,
   YEAR_ID              NUMERIC(8,0)         NULL,
   MONTH_ID             NUMERIC(8,0)         NULL,
   DAY_ID               NUMERIC(8,0)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_RESOURCE_DECOMPOSING_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接编码',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IDENTIFIER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'IDENTIFIER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接标识',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'IDENTIFIER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接名字',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接类型',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DRIVER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'DRIVER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '驱动器名',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'DRIVER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'HOST')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'HOST'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '服务地址',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'HOST'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'PORT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'PORT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '服务端口',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'PORT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'INSTANCE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'INSTANCE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据实例',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'INSTANCE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'PATTERN')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'PATTERN'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '方案标识',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'PATTERN'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'ACCOUNT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'ACCOUNT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '访问帐号',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'ACCOUNT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'PASSWORD')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'PASSWORD'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '访问密码',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'PASSWORD'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'MAX_NUMBER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'MAX_NUMBER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '最大连接数',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'MAX_NUMBER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TIMEOUT')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'TIMEOUT'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '超时设置',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'TIMEOUT'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DECOMPOSING_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TEMPLATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'TEMPLATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接模板',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DECOMPOSING_H', 'column', 'TEMPLATE'
go

/*==============================================================*/
/* Index: INDEX_RESOURCE_H                                      */
/*==============================================================*/
CREATE INDEX INDEX_RESOURCE_H ON RESOURCE_DECOMPOSING_H (
IDENTIFIER ASC,
YEAR_ID ASC,
MONTH_ID ASC,
DAY_ID ASC
)
go

/*==============================================================*/
/* Table: RESOURCE_DEFINITION                                   */
/*==============================================================*/
CREATE TABLE RESOURCE_DEFINITION (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   IDENTIFIER           VARCHAR(64)          NULL,
   RESOURCE_NAME        VARCHAR(64)          NULL,
   RESOURCE_DIAPLAY     VARCHAR(128)         NULL,
   INDEX_FIELD          VARCHAR(128)         NULL,
   SORT_POSITION        VARCHAR(128)         NULL,
   IS_LOAD              VARCHAR(8)           NULL,
   LOAD_MODE            VARCHAR(64)          NULL,
   REPLICA_NUMBER       NUMERIC(4,0)         NULL,
   CLASS_NAME           VARCHAR(256)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_RESOURCE_DEFINITION PRIMARY KEY NONCLUSTERED (CODE),
   CONSTRAINT AK_KEY_2_RESDEFIN UNIQUE (IDENTIFIER, RESOURCE_NAME)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DEFINITION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接编码',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DEFINITION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DEFINITION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DEFINITION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DEFINITION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DEFINITION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DEFINITION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DEFINITION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RESOURCE_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION', 'column', 'RESOURCE_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '包括所有的表和视图,最初的连接标识+":"+表名',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION', 'column', 'RESOURCE_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DEFINITION')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'LOAD_MODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION', 'column', 'LOAD_MODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'distributed:分布式，replica:单独拷贝',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION', 'column', 'LOAD_MODE'
go

/*==============================================================*/
/* Index: INDEX_RESOURCE_DEFINITION                             */
/*==============================================================*/
CREATE INDEX INDEX_RESOURCE_DEFINITION ON RESOURCE_DEFINITION (
RESOURCE_NAME ASC
)
go

/*==============================================================*/
/* Table: RESOURCE_DEFINITION_H                                 */
/*==============================================================*/
CREATE TABLE RESOURCE_DEFINITION_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   IDENTIFIER           VARCHAR(64)          NULL,
   RESOURCE_NAME        VARCHAR(64)          NULL,
   RESOURCE_DIAPLAY     VARCHAR(128)         NULL,
   INDEX_FIELD          VARCHAR(128)         NULL,
   SORT_POSITION        VARCHAR(128)         NULL,
   IS_LOAD              VARCHAR(8)           NULL,
   LOAD_MODE            VARCHAR(64)          NULL,
   REPLICA_NUMBER       NUMERIC(4,0)         NULL,
   CLASS_NAME           VARCHAR(256)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_RESOURCE_DEFINITION_H PRIMARY KEY NONCLUSTERED (CODE),
   CONSTRAINT AK_KEY_2_RDEFINITION_H UNIQUE (IDENTIFIER, RESOURCE_NAME)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DEFINITION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接编码',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DEFINITION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DEFINITION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DEFINITION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DEFINITION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DEFINITION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DEFINITION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DEFINITION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IDENTIFIER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION_H', 'column', 'IDENTIFIER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '下一次建立分表的数据库连接标识',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION_H', 'column', 'IDENTIFIER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DEFINITION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RESOURCE_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION_H', 'column', 'RESOURCE_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '包括所有的表和视图,最初的连接标识+":"+表名',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION_H', 'column', 'RESOURCE_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_DEFINITION_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'LOAD_MODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION_H', 'column', 'LOAD_MODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   'distributed:分布式，replica:单独拷贝',
   'user', @CURRENTUSER, 'table', 'RESOURCE_DEFINITION_H', 'column', 'LOAD_MODE'
go

/*==============================================================*/
/* Index: INDEX_RESOURCE_DEFINITION_H                           */
/*==============================================================*/
CREATE INDEX INDEX_RESOURCE_DEFINITION_H ON RESOURCE_DEFINITION_H (
RESOURCE_NAME ASC
)
go

/*==============================================================*/
/* Table: RESOURCE_LABEL                                        */
/*==============================================================*/
CREATE TABLE RESOURCE_LABEL (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   IDENTIFIER           VARCHAR(64)          NULL,
   RESOURCE_NAME        VARCHAR(64)          NULL,
   RESOURCE_LABEL       VARCHAR(128)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_RESOURCE_LABEL PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_LABEL')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接编码',
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_LABEL')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_LABEL')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_LABEL')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_LABEL')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_LABEL')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_LABEL')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_LABEL')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RESOURCE_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL', 'column', 'RESOURCE_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '包括所有的表和视图,最初的连接标识+":"+表名',
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL', 'column', 'RESOURCE_NAME'
go

/*==============================================================*/
/* Index: INDEX_RESOURCE_LABEL                                  */
/*==============================================================*/
CREATE INDEX INDEX_RESOURCE_LABEL ON RESOURCE_LABEL (
IDENTIFIER ASC
)
go

/*==============================================================*/
/* Table: RESOURCE_LABEL_H                                      */
/*==============================================================*/
CREATE TABLE RESOURCE_LABEL_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   IDENTIFIER           VARCHAR(64)          NULL,
   RESOURCE_NAME        VARCHAR(64)          NULL,
   RESOURCE_LABEL       VARCHAR(128)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_RESOURCE_LABEL_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_LABEL_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接编码',
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_LABEL_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_LABEL_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_LABEL_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_LABEL_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_LABEL_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_LABEL_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_LABEL_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RESOURCE_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL_H', 'column', 'RESOURCE_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '包括所有的表和视图,最初的连接标识+":"+表名',
   'user', @CURRENTUSER, 'table', 'RESOURCE_LABEL_H', 'column', 'RESOURCE_NAME'
go

/*==============================================================*/
/* Index: INDEX_RESOURCE_LABEL_H                                */
/*==============================================================*/
CREATE INDEX INDEX_RESOURCE_LABEL_H ON RESOURCE_LABEL_H (
IDENTIFIER ASC
)
go

/*==============================================================*/
/* Table: RESOURCE_RELEVANCE                                    */
/*==============================================================*/
CREATE TABLE RESOURCE_RELEVANCE (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   S_IDENTIFIER         VARCHAR(64)          NULL,
   S_RESOURCE_NAME      VARCHAR(64)          NULL,
   S_RESOURCE_DIAPLAY   VARCHAR(128)         NULL,
   S_FIELD              VARCHAR(128)         NULL,
   R_IDENTIFIER         VARCHAR(64)          NULL,
   R_RESOURCE_NAME      VARCHAR(64)          NULL,
   R_RESOURCE_DIAPLAY   VARCHAR(128)         NULL,
   R_FIELD              VARCHAR(128)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_RESOURCE_RELEVANCE PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_RELEVANCE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接编码',
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_RELEVANCE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_RELEVANCE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_RELEVANCE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_RELEVANCE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_RELEVANCE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_RELEVANCE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_RELEVANCE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'S_RESOURCE_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE', 'column', 'S_RESOURCE_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '包括所有的表和视图,最初的连接标识+":"+表名',
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE', 'column', 'S_RESOURCE_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_RELEVANCE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'R_RESOURCE_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE', 'column', 'R_RESOURCE_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '包括所有的表和视图,最初的连接标识+":"+表名',
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE', 'column', 'R_RESOURCE_NAME'
go

/*==============================================================*/
/* Index: INDEX_RESOURCE_RELEVANCE                              */
/*==============================================================*/
CREATE INDEX INDEX_RESOURCE_RELEVANCE ON RESOURCE_RELEVANCE (
S_IDENTIFIER ASC,
S_RESOURCE_NAME ASC,
S_FIELD ASC
)
go

/*==============================================================*/
/* Table: RESOURCE_RELEVANCE_H                                  */
/*==============================================================*/
CREATE TABLE RESOURCE_RELEVANCE_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   S_IDENTIFIER         VARCHAR(64)          NULL,
   S_RESOURCE_NAME      VARCHAR(64)          NULL,
   S_RESOURCE_DIAPLAY   VARCHAR(128)         NULL,
   S_FIELD              VARCHAR(128)         NULL,
   R_IDENTIFIER         VARCHAR(64)          NULL,
   R_RESOURCE_NAME      VARCHAR(64)          NULL,
   R_RESOURCE_DIAPLAY   VARCHAR(128)         NULL,
   R_FIELD              VARCHAR(128)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_RESOURCE_RELEVANCE_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_RELEVANCE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接编码',
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_RELEVANCE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_RELEVANCE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_RELEVANCE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_RELEVANCE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_RELEVANCE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_RELEVANCE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_RELEVANCE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'S_RESOURCE_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE_H', 'column', 'S_RESOURCE_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '包括所有的表和视图,最初的连接标识+":"+表名',
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE_H', 'column', 'S_RESOURCE_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESOURCE_RELEVANCE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'R_RESOURCE_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE_H', 'column', 'R_RESOURCE_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '包括所有的表和视图,最初的连接标识+":"+表名',
   'user', @CURRENTUSER, 'table', 'RESOURCE_RELEVANCE_H', 'column', 'R_RESOURCE_NAME'
go

/*==============================================================*/
/* Index: INDEX_RESOURCE_RELEVANCE_H                            */
/*==============================================================*/
CREATE INDEX INDEX_RESOURCE_RELEVANCE_H ON RESOURCE_RELEVANCE_H (
S_IDENTIFIER ASC,
S_RESOURCE_NAME ASC,
S_FIELD ASC
)
go

/*==============================================================*/
/* Table: RESPONSE_ITEM                                         */
/*==============================================================*/
CREATE TABLE RESPONSE_ITEM (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   RESPONSE_CODE        VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   ITEM_NAME            VARCHAR(128)         NULL,
   TEST_EXPRESSION      VARCHAR(1024)        NULL,
   IS_FOR_EACH          VARCHAR(8)           NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   START_SYMBOL         VARCHAR(64)          NULL,
   END_SYMBOL           VARCHAR(64)          NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_RESPONSE_ITEM PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'ITEM_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'ITEM_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件名字',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'ITEM_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TEST_EXPRESSION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'TEST_EXPRESSION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '用于判断是否输出指定条件的样式文件部分',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'TEST_EXPRESSION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_REITE                                           */
/*==============================================================*/
CREATE INDEX INDEX_REITE ON RESPONSE_ITEM (
BUDDLE_ID ASC,
CATALOG_ID ASC,
RESPONSE_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: RESPONSE_ITEM_H                                       */
/*==============================================================*/
CREATE TABLE RESPONSE_ITEM_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   RESPONSE_CODE        VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   ITEM_NAME            VARCHAR(128)         NULL,
   TEST_EXPRESSION      VARCHAR(1024)        NULL,
   IS_FOR_EACH          VARCHAR(8)           NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   START_SYMBOL         VARCHAR(64)          NULL,
   END_SYMBOL           VARCHAR(64)          NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_RESPONSE_ITEM_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'ITEM_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'ITEM_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件名字',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'ITEM_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TEST_EXPRESSION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'TEST_EXPRESSION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '用于判断是否输出指定条件的样式文件部分',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'TEST_EXPRESSION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('RESPONSE_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'RESPONSE_ITEM_H', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_REITE_H                                         */
/*==============================================================*/
CREATE INDEX INDEX_REITE_H ON RESPONSE_ITEM_H (
BUDDLE_ID ASC,
CATALOG_ID ASC,
RESPONSE_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: STYLE                                                 */
/*==============================================================*/
CREATE TABLE STYLE (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   IDENTIFIER           VARCHAR(64)          NULL,
   NAME                 VARCHAR(128)         NULL,
   DESCRIPTION          VARCHAR(256)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_STYLE PRIMARY KEY NONCLUSTERED (CODE),
   CONSTRAINT AK_KEY_2_STYLE UNIQUE (IDENTIFIER)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('STYLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'STYLE', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '风格编码',
   'user', @CURRENTUSER, 'table', 'STYLE', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('STYLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'STYLE', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'STYLE', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('STYLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'STYLE', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'STYLE', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('STYLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'STYLE', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'STYLE', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('STYLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'STYLE', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'STYLE', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('STYLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'STYLE', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'STYLE', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('STYLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'STYLE', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'STYLE', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('STYLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IDENTIFIER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'STYLE', 'column', 'IDENTIFIER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '风格标识',
   'user', @CURRENTUSER, 'table', 'STYLE', 'column', 'IDENTIFIER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('STYLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'STYLE', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '风格名字',
   'user', @CURRENTUSER, 'table', 'STYLE', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('STYLE')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DESCRIPTION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'STYLE', 'column', 'DESCRIPTION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '描述',
   'user', @CURRENTUSER, 'table', 'STYLE', 'column', 'DESCRIPTION'
go

/*==============================================================*/
/* Index: INDEX_STYLE                                           */
/*==============================================================*/
CREATE INDEX INDEX_STYLE ON STYLE (
IDENTIFIER ASC
)
go

/*==============================================================*/
/* Table: STYLE_H                                               */
/*==============================================================*/
CREATE TABLE STYLE_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   IDENTIFIER           VARCHAR(64)          NULL,
   NAME                 VARCHAR(128)         NULL,
   DESCRIPTION          VARCHAR(256)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_STYLE_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('STYLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'STYLE_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '风格编码',
   'user', @CURRENTUSER, 'table', 'STYLE_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('STYLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'STYLE_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'STYLE_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('STYLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'STYLE_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'STYLE_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('STYLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'STYLE_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'STYLE_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('STYLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'STYLE_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'STYLE_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('STYLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'STYLE_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'STYLE_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('STYLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'STYLE_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'STYLE_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('STYLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IDENTIFIER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'STYLE_H', 'column', 'IDENTIFIER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '风格标识',
   'user', @CURRENTUSER, 'table', 'STYLE_H', 'column', 'IDENTIFIER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('STYLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'STYLE_H', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '风格名字',
   'user', @CURRENTUSER, 'table', 'STYLE_H', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('STYLE_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DESCRIPTION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'STYLE_H', 'column', 'DESCRIPTION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '描述',
   'user', @CURRENTUSER, 'table', 'STYLE_H', 'column', 'DESCRIPTION'
go

/*==============================================================*/
/* Index: INDEX_STYLE_H                                         */
/*==============================================================*/
CREATE INDEX INDEX_STYLE_H ON STYLE_H (
IDENTIFIER ASC
)
go

/*==============================================================*/
/* Table: SYNERGY                                               */
/*==============================================================*/
CREATE TABLE SYNERGY (
   CODE                 VARCHAR(24)          NOT NULL,
   ADDRESS              VARCHAR(64)          NULL,
   REFRESH_TIME         DATETIME             NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_SYNERGY PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('SYNERGY')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'SYNERGY', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '风格编码',
   'user', @CURRENTUSER, 'table', 'SYNERGY', 'column', 'CODE'
go

/*==============================================================*/
/* Table: TAG_ITEM                                              */
/*==============================================================*/
CREATE TABLE TAG_ITEM (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   TAG_CODE             VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   TEST_EXPRESSION      VARCHAR(1024)        NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   CLASS                VARCHAR(256)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_TAG_ITEM PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'TEST_EXPRESSION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'TEST_EXPRESSION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '用于判断是否输出指定条件的样式文件部分',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'TEST_EXPRESSION'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CLASS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'CLASS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'CLASS'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_TAITE                                           */
/*==============================================================*/
CREATE INDEX INDEX_TAITE ON TAG_ITEM (
BUDDLE_ID ASC,
CATALOG_ID ASC,
TAG_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: TAG_ITEM_H                                            */
/*==============================================================*/
CREATE TABLE TAG_ITEM_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   TAG_CODE             VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   TEST_EXPRESSION      VARCHAR(1024)        NULL,
   SELECT_EXPRESSION    VARCHAR(1024)        NULL,
   CLASS                VARCHAR(256)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_TAG_ITEM_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CLASS')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'CLASS'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'CLASS'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TAG_ITEM_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'TAG_ITEM_H', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_TAITE_H                                         */
/*==============================================================*/
CREATE INDEX INDEX_TAITE_H ON TAG_ITEM_H (
BUDDLE_ID ASC,
CATALOG_ID ASC,
TAG_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: TOPOLOGY                                              */
/*==============================================================*/
CREATE TABLE TOPOLOGY (
   CODE                 VARCHAR(24)          NOT NULL,
   CONNECTION_ID        VARCHAR(256)         NULL,
   CONNECTION_NAME      VARCHAR(128)         NULL,
   POSITION             VARCHAR(256)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_TOPOLOGY PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TOPOLOGY')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TOPOLOGY', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '引用编码',
   'user', @CURRENTUSER, 'table', 'TOPOLOGY', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TOPOLOGY')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TOPOLOGY', 'column', 'CONNECTION_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接标识',
   'user', @CURRENTUSER, 'table', 'TOPOLOGY', 'column', 'CONNECTION_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TOPOLOGY')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TOPOLOGY', 'column', 'CONNECTION_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '连接名字',
   'user', @CURRENTUSER, 'table', 'TOPOLOGY', 'column', 'CONNECTION_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TOPOLOGY')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TOPOLOGY', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '1.Hinge：枢纽处理类，2.DB：数据库驱动，3.WS：WEB服务接口',
   'user', @CURRENTUSER, 'table', 'TOPOLOGY', 'column', 'POSITION'
go

/*==============================================================*/
/* Table: TRUSTING_HOST                                         */
/*==============================================================*/
CREATE TABLE TRUSTING_HOST (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   ADDRESS              VARCHAR(128)         NULL,
   HOST_NAME            VARCHAR(128)         NULL,
   NAME                 VARCHAR(128)         NULL,
   DESCRIPTION          VARCHAR(256)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_TRUSTING_HOST PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TRUSTING_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '引用编码',
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TRUSTING_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TRUSTING_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TRUSTING_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TRUSTING_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TRUSTING_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TRUSTING_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TRUSTING_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'HOST_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST', 'column', 'HOST_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST', 'column', 'HOST_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TRUSTING_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '字段名字',
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TRUSTING_HOST')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DESCRIPTION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST', 'column', 'DESCRIPTION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '描述',
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST', 'column', 'DESCRIPTION'
go

/*==============================================================*/
/* Index: INDEX_THO                                             */
/*==============================================================*/
CREATE INDEX INDEX_THO ON TRUSTING_HOST (
ADDRESS ASC
)
go

/*==============================================================*/
/* Table: TRUSTING_HOST_H                                       */
/*==============================================================*/
CREATE TABLE TRUSTING_HOST_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   ADDRESS              VARCHAR(128)         NULL,
   HOST_NAME            VARCHAR(128)         NULL,
   NAME                 VARCHAR(128)         NULL,
   DESCRIPTION          VARCHAR(256)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_TRUSTING_HOST_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TRUSTING_HOST_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '引用编码',
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TRUSTING_HOST_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TRUSTING_HOST_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TRUSTING_HOST_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TRUSTING_HOST_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TRUSTING_HOST_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TRUSTING_HOST_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TRUSTING_HOST_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'HOST_NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST_H', 'column', 'HOST_NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理类',
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST_H', 'column', 'HOST_NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TRUSTING_HOST_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'NAME')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST_H', 'column', 'NAME'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '字段名字',
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST_H', 'column', 'NAME'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('TRUSTING_HOST_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'DESCRIPTION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST_H', 'column', 'DESCRIPTION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '描述',
   'user', @CURRENTUSER, 'table', 'TRUSTING_HOST_H', 'column', 'DESCRIPTION'
go

/*==============================================================*/
/* Index: INDEX_THO_H                                           */
/*==============================================================*/
CREATE INDEX INDEX_THO_H ON TRUSTING_HOST_H (
ADDRESS ASC
)
go

/*==============================================================*/
/* Table: VALUE_TAG                                             */
/*==============================================================*/
CREATE TABLE VALUE_TAG (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   DATA_CODE            VARCHAR(24)          NULL,
   VALUE_CODE           VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   TAG_NAME             VARCHAR(1024)        NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_VALUE_TAG PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VALUE_TAG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VALUE_TAG', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'VALUE_TAG', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VALUE_TAG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VALUE_TAG', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'VALUE_TAG', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VALUE_TAG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VALUE_TAG', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'VALUE_TAG', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VALUE_TAG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VALUE_TAG', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'VALUE_TAG', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VALUE_TAG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VALUE_TAG', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'VALUE_TAG', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VALUE_TAG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VALUE_TAG', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'VALUE_TAG', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VALUE_TAG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VALUE_TAG', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'VALUE_TAG', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VALUE_TAG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VALUE_TAG', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'VALUE_TAG', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VALUE_TAG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VALUE_TAG', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'VALUE_TAG', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VALUE_TAG')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VALUE_TAG', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'VALUE_TAG', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_VATAG                                           */
/*==============================================================*/
CREATE INDEX INDEX_VATAG ON VALUE_TAG (
BUDDLE_ID ASC,
CATALOG_ID ASC,
VALUE_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: VALUE_TAG_H                                           */
/*==============================================================*/
CREATE TABLE VALUE_TAG_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   BUDDLE_ID            VARCHAR(64)          NULL,
   CATALOG_ID           VARCHAR(64)          NULL,
   VALUE_CODE           VARCHAR(24)          NULL,
   POSITION             INT                  NULL,
   TAG_NAME             VARCHAR(1024)        NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_VALUE_TAG_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VALUE_TAG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VALUE_TAG_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '映射编码',
   'user', @CURRENTUSER, 'table', 'VALUE_TAG_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VALUE_TAG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VALUE_TAG_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'VALUE_TAG_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VALUE_TAG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VALUE_TAG_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'VALUE_TAG_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VALUE_TAG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VALUE_TAG_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'VALUE_TAG_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VALUE_TAG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VALUE_TAG_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'VALUE_TAG_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VALUE_TAG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VALUE_TAG_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'VALUE_TAG_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VALUE_TAG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VALUE_TAG_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'VALUE_TAG_H', 'column', 'END_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VALUE_TAG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUDDLE_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VALUE_TAG_H', 'column', 'BUDDLE_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件标识',
   'user', @CURRENTUSER, 'table', 'VALUE_TAG_H', 'column', 'BUDDLE_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VALUE_TAG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CATALOG_ID')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VALUE_TAG_H', 'column', 'CATALOG_ID'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '目录编码',
   'user', @CURRENTUSER, 'table', 'VALUE_TAG_H', 'column', 'CATALOG_ID'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VALUE_TAG_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CONNECTION_CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VALUE_TAG_H', 'column', 'CONNECTION_CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '数据库连接编码',
   'user', @CURRENTUSER, 'table', 'VALUE_TAG_H', 'column', 'CONNECTION_CODE'
go

/*==============================================================*/
/* Index: INDEX_VATAG_H                                         */
/*==============================================================*/
CREATE INDEX INDEX_VATAG_H ON VALUE_TAG_H (
BUDDLE_ID ASC,
CATALOG_ID ASC,
VALUE_CODE ASC,
POSITION ASC
)
go

/*==============================================================*/
/* Table: VOCABULARY                                            */
/*==============================================================*/
CREATE TABLE VOCABULARY (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   IDENTIFIER           VARCHAR(64)          NULL,
   KEYWORD              VARCHAR(128)         NULL,
   CONTENT              VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_VOCABULARY PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VOCABULARY')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VOCABULARY', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '风格编码',
   'user', @CURRENTUSER, 'table', 'VOCABULARY', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VOCABULARY')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VOCABULARY', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'VOCABULARY', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VOCABULARY')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VOCABULARY', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'VOCABULARY', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VOCABULARY')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VOCABULARY', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'VOCABULARY', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VOCABULARY')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VOCABULARY', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'VOCABULARY', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VOCABULARY')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VOCABULARY', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'VOCABULARY', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VOCABULARY')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VOCABULARY', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'VOCABULARY', 'column', 'END_DATE'
go

/*==============================================================*/
/* Index: INDEX_VOCABULARY                                      */
/*==============================================================*/
CREATE INDEX INDEX_VOCABULARY ON VOCABULARY (
IDENTIFIER ASC,
KEYWORD ASC
)
go

/*==============================================================*/
/* Table: VOCABULARY_H                                          */
/*==============================================================*/
CREATE TABLE VOCABULARY_H (
   CODE                 VARCHAR(24)          NOT NULL,
   IS_ACTIVE            VARCHAR(8)           NULL,
   CHANGE_FROM          VARCHAR(24)          NULL,
   CHANGE_INDEX         NUMERIC(8,0)         NULL,
   CHANGE_NUMBER        NUMERIC(8,0)         NULL,
   SECRET               NUMERIC(4,0)         NULL,
   SECRECY              NUMERIC(4,0)         NULL,
   BUILDER              VARCHAR(64)          NULL,
   OWNER                VARCHAR(64)          NULL,
   START_DATE           NUMERIC(15,0)        NULL,
   END_DATE             NUMERIC(15,0)        NULL,
   IDENTIFIER           VARCHAR(64)          NULL,
   KEYWORD              VARCHAR(128)         NULL,
   CONTENT              VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_VOCABULARY_H PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VOCABULARY_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VOCABULARY_H', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '风格编码',
   'user', @CURRENTUSER, 'table', 'VOCABULARY_H', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VOCABULARY_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'IS_ACTIVE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VOCABULARY_H', 'column', 'IS_ACTIVE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '是否使用',
   'user', @CURRENTUSER, 'table', 'VOCABULARY_H', 'column', 'IS_ACTIVE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VOCABULARY_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CHANGE_FROM')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VOCABULARY_H', 'column', 'CHANGE_FROM'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '记录来源',
   'user', @CURRENTUSER, 'table', 'VOCABULARY_H', 'column', 'CHANGE_FROM'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VOCABULARY_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'SECRECY')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VOCABULARY_H', 'column', 'SECRECY'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '密级',
   'user', @CURRENTUSER, 'table', 'VOCABULARY_H', 'column', 'SECRECY'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VOCABULARY_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'BUILDER')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VOCABULARY_H', 'column', 'BUILDER'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '创建者',
   'user', @CURRENTUSER, 'table', 'VOCABULARY_H', 'column', 'BUILDER'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VOCABULARY_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'START_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VOCABULARY_H', 'column', 'START_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '开始使用日期',
   'user', @CURRENTUSER, 'table', 'VOCABULARY_H', 'column', 'START_DATE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('VOCABULARY_H')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'END_DATE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'VOCABULARY_H', 'column', 'END_DATE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '结束使用日期',
   'user', @CURRENTUSER, 'table', 'VOCABULARY_H', 'column', 'END_DATE'
go

/*==============================================================*/
/* Index: INDEX_VOCABULARY_H                                    */
/*==============================================================*/
CREATE INDEX INDEX_VOCABULARY_H ON VOCABULARY_H (
IDENTIFIER ASC,
KEYWORD ASC
)
go

