/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     2017/10/12 星期四 9:47:27                       */
/*==============================================================*/


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
           WHERE  ID    = OBJECT_ID('JOURNAL_0')
            AND   NAME  = 'INDEX_JOURNAL_0'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_0.INDEX_JOURNAL_0
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_0')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_0
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_1')
            AND   NAME  = 'INDEX_JOURNAL_1'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_1.INDEX_JOURNAL_1
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_1')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_1
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_10')
            AND   NAME  = 'INDEX_JOURNAL_10'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_10.INDEX_JOURNAL_10
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_10')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_10
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_11')
            AND   NAME  = 'INDEX_JOURNAL_11'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_11.INDEX_JOURNAL_11
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_11')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_11
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_12')
            AND   NAME  = 'INDEX_JOURNAL_12'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_12.INDEX_JOURNAL_12
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_12')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_12
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_13')
            AND   NAME  = 'INDEX_JOURNAL_13'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_13.INDEX_JOURNAL_13
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_13')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_13
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_14')
            AND   NAME  = 'INDEX_JOURNAL_14'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_14.INDEX_JOURNAL_14
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_14')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_14
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_15')
            AND   NAME  = 'INDEX_JOURNAL_15'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_15.INDEX_JOURNAL_15
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_15')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_15
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_16')
            AND   NAME  = 'INDEX_JOURNAL_16'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_16.INDEX_JOURNAL_16
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_16')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_16
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_17')
            AND   NAME  = 'INDEX_JOURNAL_17'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_17.INDEX_JOURNAL_17
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_17')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_17
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_18')
            AND   NAME  = 'INDEX_JOURNAL_18'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_18.INDEX_JOURNAL_18
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_18')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_18
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_19')
            AND   NAME  = 'INDEX_JOURNAL_19'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_19.INDEX_JOURNAL_19
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_19')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_19
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_2')
            AND   NAME  = 'INDEX_JOURNAL_2'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_2.INDEX_JOURNAL_2
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_2')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_2
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_20')
            AND   NAME  = 'INDEX_JOURNAL_20'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_20.INDEX_JOURNAL_20
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_20')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_20
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_21')
            AND   NAME  = 'INDEX_JOURNAL_21'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_21.INDEX_JOURNAL_21
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_21')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_21
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_22')
            AND   NAME  = 'INDEX_JOURNAL_22'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_22.INDEX_JOURNAL_22
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_22')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_22
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_23')
            AND   NAME  = 'INDEX_JOURNAL_23'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_23.INDEX_JOURNAL_23
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_23')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_23
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_24')
            AND   NAME  = 'INDEX_JOURNAL_24'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_24.INDEX_JOURNAL_24
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_24')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_24
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_25')
            AND   NAME  = 'INDEX_JOURNAL_25'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_25.INDEX_JOURNAL_25
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_25')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_25
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_26')
            AND   NAME  = 'INDEX_JOURNAL_26'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_26.INDEX_JOURNAL_26
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_26')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_26
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_27')
            AND   NAME  = 'INDEX_JOURNAL_27'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_27.INDEX_JOURNAL_27
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_27')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_27
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_28')
            AND   NAME  = 'INDEX_JOURNAL_28'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_28.INDEX_JOURNAL_28
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_28')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_28
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_29')
            AND   NAME  = 'INDEX_JOURNAL_29'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_29.INDEX_JOURNAL_29
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_29')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_29
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_3')
            AND   NAME  = 'INDEX_JOURNAL_3'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_3.INDEX_JOURNAL_3
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_3')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_3
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_30')
            AND   NAME  = 'INDEX_JOURNAL_30'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_30.INDEX_JOURNAL_30
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_30')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_30
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_31')
            AND   NAME  = 'INDEX_JOURNAL_31'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_31.INDEX_JOURNAL_31
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_31')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_31
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_32')
            AND   NAME  = 'INDEX_JOURNAL_32'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_32.INDEX_JOURNAL_32
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_32')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_32
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_33')
            AND   NAME  = 'INDEX_JOURNAL_33'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_33.INDEX_JOURNAL_33
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_33')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_33
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_34')
            AND   NAME  = 'INDEX_JOURNAL_34'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_34.INDEX_JOURNAL_34
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_34')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_34
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_35')
            AND   NAME  = 'INDEX_JOURNAL_35'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_35.INDEX_JOURNAL_35
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_35')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_35
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_36')
            AND   NAME  = 'INDEX_JOURNAL_36'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_36.INDEX_JOURNAL_36
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_36')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_36
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_37')
            AND   NAME  = 'INDEX_JOURNAL_37'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_37.INDEX_JOURNAL_37
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_37')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_37
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_38')
            AND   NAME  = 'INDEX_JOURNAL_38'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_38.INDEX_JOURNAL_38
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_38')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_38
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_39')
            AND   NAME  = 'INDEX_JOURNAL_39'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_39.INDEX_JOURNAL_39
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_39')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_39
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_4')
            AND   NAME  = 'INDEX_JOURNAL_4'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_4.INDEX_JOURNAL_4
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_4')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_4
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_40')
            AND   NAME  = 'INDEX_JOURNAL_40'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_40.INDEX_JOURNAL_40
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_40')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_40
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_41')
            AND   NAME  = 'INDEX_JOURNAL_41'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_41.INDEX_JOURNAL_41
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_41')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_41
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_42')
            AND   NAME  = 'INDEX_JOURNAL_42'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_42.INDEX_JOURNAL_42
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_42')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_42
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_43')
            AND   NAME  = 'INDEX_JOURNAL_43'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_43.INDEX_JOURNAL_43
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_43')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_43
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_44')
            AND   NAME  = 'INDEX_JOURNAL_44'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_44.INDEX_JOURNAL_44
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_44')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_44
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_45')
            AND   NAME  = 'INDEX_JOURNAL_45'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_45.INDEX_JOURNAL_45
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_45')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_45
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_46')
            AND   NAME  = 'INDEX_JOURNAL_46'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_46.INDEX_JOURNAL_46
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_46')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_46
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_47')
            AND   NAME  = 'INDEX_JOURNAL_47'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_47.INDEX_JOURNAL_47
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_47')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_47
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_48')
            AND   NAME  = 'INDEX_JOURNAL_48'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_48.INDEX_JOURNAL_48
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_48')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_48
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_49')
            AND   NAME  = 'INDEX_JOURNAL_49'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_49.INDEX_JOURNAL_49
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_49')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_49
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_5')
            AND   NAME  = 'INDEX_JOURNAL_5'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_5.INDEX_JOURNAL_5
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_5')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_5
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_50')
            AND   NAME  = 'INDEX_JOURNAL_50'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_50.INDEX_JOURNAL_50
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_50')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_50
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_51')
            AND   NAME  = 'INDEX_JOURNAL_51'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_51.INDEX_JOURNAL_51
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_51')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_51
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_52')
            AND   NAME  = 'INDEX_JOURNAL_52'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_52.INDEX_JOURNAL_52
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_52')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_52
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_53')
            AND   NAME  = 'INDEX_JOURNAL_53'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_53.INDEX_JOURNAL_53
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_53')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_53
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_54')
            AND   NAME  = 'INDEX_JOURNAL_54'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_54.INDEX_JOURNAL_54
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_54')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_54
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_55')
            AND   NAME  = 'INDEX_JOURNAL_55'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_55.INDEX_JOURNAL_55
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_55')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_55
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_56')
            AND   NAME  = 'INDEX_JOURNAL_56'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_56.INDEX_JOURNAL_56
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_56')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_56
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_57')
            AND   NAME  = 'INDEX_JOURNAL_57'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_57.INDEX_JOURNAL_57
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_57')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_57
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_58')
            AND   NAME  = 'INDEX_JOURNAL_58'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_58.INDEX_JOURNAL_58
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_58')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_58
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_59')
            AND   NAME  = 'INDEX_JOURNAL_59'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_59.INDEX_JOURNAL_59
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_59')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_59
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_6')
            AND   NAME  = 'INDEX_JOURNAL_6'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_6.INDEX_JOURNAL_6
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_6')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_6
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_7')
            AND   NAME  = 'INDEX_JOURNAL_7'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_7.INDEX_JOURNAL_7
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_7')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_7
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_8')
            AND   NAME  = 'INDEX_JOURNAL_8'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_8.INDEX_JOURNAL_8
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_8')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_8
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('JOURNAL_9')
            AND   NAME  = 'INDEX_JOURNAL_9'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX JOURNAL_9.INDEX_JOURNAL_9
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('JOURNAL_9')
            AND   TYPE = 'U')
   DROP TABLE JOURNAL_9
go

/*==============================================================*/
/* Table: DATA_STATISTICS                                       */
/*==============================================================*/
CREATE TABLE DATA_STATISTICS (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
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
/* Table: JOURNAL_0                                             */
/*==============================================================*/
CREATE TABLE JOURNAL_0 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_0 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_0')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_0', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_0', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_0')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_0', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_0', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_0')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_0', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_0', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_0')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_0', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_0', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_0                                       */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_0 ON JOURNAL_0 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_1                                             */
/*==============================================================*/
CREATE TABLE JOURNAL_1 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_1 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_1')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_1', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_1', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_1')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_1', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_1', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_1')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_1', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_1', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_1')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_1', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_1', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_1                                       */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_1 ON JOURNAL_1 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_10                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_10 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_10 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_10')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_10', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_10', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_10')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_10', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_10', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_10')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_10', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_10', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_10')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_10', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_10', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_10                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_10 ON JOURNAL_10 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_11                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_11 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_11 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_11')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_11', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_11', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_11')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_11', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_11', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_11')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_11', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_11', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_11')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_11', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_11', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_11                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_11 ON JOURNAL_11 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_12                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_12 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_12 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_12')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_12', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_12', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_12')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_12', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_12', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_12')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_12', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_12', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_12')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_12', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_12', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_12                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_12 ON JOURNAL_12 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_13                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_13 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_13 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_13')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_13', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_13', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_13')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_13', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_13', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_13')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_13', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_13', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_13')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_13', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_13', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_13                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_13 ON JOURNAL_13 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_14                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_14 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_14 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_14')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_14', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_14', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_14')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_14', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_14', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_14')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_14', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_14', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_14')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_14', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_14', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_14                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_14 ON JOURNAL_14 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_15                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_15 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_15 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_15')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_15', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_15', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_15')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_15', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_15', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_15')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_15', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_15', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_15')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_15', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_15', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_15                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_15 ON JOURNAL_15 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_16                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_16 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_16 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_16')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_16', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_16', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_16')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_16', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_16', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_16')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_16', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_16', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_16')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_16', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_16', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_16                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_16 ON JOURNAL_16 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_17                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_17 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_17 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_17')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_17', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_17', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_17')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_17', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_17', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_17')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_17', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_17', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_17')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_17', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_17', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_17                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_17 ON JOURNAL_17 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_18                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_18 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_18 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_18')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_18', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_18', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_18')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_18', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_18', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_18')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_18', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_18', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_18')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_18', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_18', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_18                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_18 ON JOURNAL_18 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_19                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_19 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_19 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_19')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_19', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_19', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_19')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_19', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_19', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_19')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_19', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_19', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_19')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_19', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_19', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_19                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_19 ON JOURNAL_19 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_2                                             */
/*==============================================================*/
CREATE TABLE JOURNAL_2 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_2 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_2')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_2', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_2', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_2')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_2', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_2', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_2')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_2', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_2', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_2')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_2', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_2', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_2                                       */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_2 ON JOURNAL_2 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_20                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_20 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_20 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_20')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_20', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_20', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_20')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_20', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_20', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_20')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_20', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_20', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_20')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_20', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_20', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_20                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_20 ON JOURNAL_20 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_21                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_21 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_21 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_21')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_21', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_21', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_21')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_21', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_21', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_21')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_21', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_21', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_21')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_21', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_21', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_21                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_21 ON JOURNAL_21 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_22                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_22 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_22 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_22')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_22', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_22', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_22')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_22', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_22', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_22')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_22', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_22', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_22')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_22', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_22', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_22                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_22 ON JOURNAL_22 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_23                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_23 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_23 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_23')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_23', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_23', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_23')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_23', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_23', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_23')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_23', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_23', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_23')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_23', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_23', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_23                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_23 ON JOURNAL_23 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_24                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_24 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_24 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_24')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_24', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_24', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_24')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_24', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_24', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_24')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_24', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_24', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_24')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_24', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_24', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_24                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_24 ON JOURNAL_24 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_25                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_25 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_25 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_25')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_25', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_25', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_25')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_25', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_25', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_25')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_25', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_25', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_25')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_25', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_25', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_25                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_25 ON JOURNAL_25 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_26                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_26 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_26 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_26')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_26', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_26', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_26')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_26', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_26', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_26')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_26', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_26', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_26')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_26', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_26', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_26                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_26 ON JOURNAL_26 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_27                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_27 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_27 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_27')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_27', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_27', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_27')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_27', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_27', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_27')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_27', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_27', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_27')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_27', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_27', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_27                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_27 ON JOURNAL_27 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_28                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_28 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_28 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_28')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_28', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_28', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_28')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_28', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_28', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_28')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_28', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_28', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_28')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_28', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_28', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_28                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_28 ON JOURNAL_28 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_29                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_29 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_29 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_29')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_29', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_29', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_29')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_29', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_29', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_29')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_29', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_29', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_29')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_29', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_29', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_29                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_29 ON JOURNAL_29 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_3                                             */
/*==============================================================*/
CREATE TABLE JOURNAL_3 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_3 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_3')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_3', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_3', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_3')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_3', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_3', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_3')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_3', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_3', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_3')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_3', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_3', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_3                                       */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_3 ON JOURNAL_3 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_30                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_30 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_30 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_30')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_30', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_30', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_30')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_30', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_30', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_30')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_30', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_30', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_30')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_30', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_30', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_30                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_30 ON JOURNAL_30 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_31                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_31 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_31 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_31')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_31', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_31', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_31')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_31', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_31', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_31')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_31', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_31', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_31')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_31', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_31', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_31                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_31 ON JOURNAL_31 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_32                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_32 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_32 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_32')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_32', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_32', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_32')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_32', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_32', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_32')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_32', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_32', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_32')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_32', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_32', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_32                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_32 ON JOURNAL_32 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_33                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_33 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   POSITION             INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_33 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_33')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_33', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_33', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_33')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_33', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_33', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_33')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_33', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_33', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_33')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_33', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_33', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_33                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_33 ON JOURNAL_33 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_34                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_34 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_34 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_34')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_34', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_34', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_34')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_34', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_34', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_34')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_34', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_34', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_34')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_34', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_34', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_34                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_34 ON JOURNAL_34 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_35                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_35 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_35 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_35')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_35', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_35', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_35')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_35', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_35', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_35')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_35', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_35', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_35')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_35', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_35', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_35                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_35 ON JOURNAL_35 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_36                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_36 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_36 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_36')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_36', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_36', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_36')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_36', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_36', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_36')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_36', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_36', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_36')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_36', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_36', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_36                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_36 ON JOURNAL_36 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_37                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_37 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_37 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_37')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_37', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_37', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_37')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_37', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_37', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_37')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_37', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_37', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_37')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_37', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_37', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_37                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_37 ON JOURNAL_37 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_38                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_38 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_38 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_38')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_38', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_38', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_38')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_38', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_38', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_38')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_38', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_38', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_38')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_38', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_38', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_38                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_38 ON JOURNAL_38 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_39                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_39 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_39 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_39')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_39', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_39', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_39')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_39', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_39', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_39')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_39', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_39', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_39')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_39', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_39', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_39                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_39 ON JOURNAL_39 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_4                                             */
/*==============================================================*/
CREATE TABLE JOURNAL_4 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_4 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_4')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_4', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_4', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_4')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_4', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_4', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_4')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_4', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_4', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_4')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_4', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_4', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_4                                       */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_4 ON JOURNAL_4 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_40                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_40 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_40 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_40')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_40', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_40', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_40')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_40', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_40', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_40')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_40', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_40', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_40')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_40', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_40', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_40                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_40 ON JOURNAL_40 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_41                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_41 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_41 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_41')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_41', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_41', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_41')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_41', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_41', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_41')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_41', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_41', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_41')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_41', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_41', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_41                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_41 ON JOURNAL_41 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_42                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_42 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_42 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_42')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_42', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_42', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_42')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_42', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_42', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_42')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_42', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_42', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_42')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_42', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_42', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_42                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_42 ON JOURNAL_42 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_43                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_43 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_43 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_43')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_43', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_43', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_43')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_43', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_43', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_43')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_43', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_43', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_43')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_43', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_43', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_43                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_43 ON JOURNAL_43 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_44                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_44 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_44 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_44')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_44', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_44', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_44')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_44', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_44', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_44')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_44', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_44', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_44')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_44', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_44', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_44                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_44 ON JOURNAL_44 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_45                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_45 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_45 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_45')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_45', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_45', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_45')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_45', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_45', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_45')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_45', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_45', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_45')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_45', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_45', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_45                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_45 ON JOURNAL_45 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_46                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_46 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_46 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_46')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_46', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_46', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_46')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_46', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_46', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_46')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_46', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_46', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_46')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_46', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_46', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_46                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_46 ON JOURNAL_46 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_47                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_47 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_47 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_47')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_47', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_47', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_47')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_47', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_47', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_47')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_47', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_47', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_47')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_47', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_47', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_47                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_47 ON JOURNAL_47 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_48                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_48 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_48 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_48')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_48', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_48', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_48')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_48', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_48', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_48')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_48', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_48', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_48')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_48', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_48', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_48                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_48 ON JOURNAL_48 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_49                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_49 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_49 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_49')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_49', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_49', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_49')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_49', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_49', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_49')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_49', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_49', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_49')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_49', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_49', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_49                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_49 ON JOURNAL_49 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_5                                             */
/*==============================================================*/
CREATE TABLE JOURNAL_5 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_5 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_5')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_5', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_5', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_5')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_5', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_5', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_5')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_5', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_5', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_5')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_5', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_5', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_5                                       */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_5 ON JOURNAL_5 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_50                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_50 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_50 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_50')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_50', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_50', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_50')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_50', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_50', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_50')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_50', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_50', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_50')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_50', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_50', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_50                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_50 ON JOURNAL_50 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_51                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_51 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_51 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_51')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_51', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_51', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_51')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_51', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_51', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_51')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_51', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_51', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_51')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_51', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_51', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_51                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_51 ON JOURNAL_51 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_52                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_52 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_52 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_52')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_52', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_52', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_52')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_52', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_52', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_52')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_52', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_52', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_52')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_52', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_52', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_52                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_52 ON JOURNAL_52 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_53                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_53 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_53 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_53')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_53', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_53', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_53')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_53', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_53', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_53')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_53', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_53', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_53')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_53', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_53', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_53                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_53 ON JOURNAL_53 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_54                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_54 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_54 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_54')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_54', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_54', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_54')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_54', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_54', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_54')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_54', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_54', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_54')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_54', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_54', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_54                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_54 ON JOURNAL_54 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_55                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_55 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_55 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_55')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_55', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_55', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_55')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_55', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_55', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_55')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_55', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_55', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_55')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_55', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_55', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_55                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_55 ON JOURNAL_55 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_56                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_56 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_56 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_56')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_56', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_56', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_56')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_56', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_56', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_56')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_56', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_56', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_56')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_56', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_56', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_56                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_56 ON JOURNAL_56 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_57                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_57 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_57 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_57')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_57', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_57', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_57')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_57', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_57', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_57')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_57', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_57', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_57')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_57', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_57', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_57                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_57 ON JOURNAL_57 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_58                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_58 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_58 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_58')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_58', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_58', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_58')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_58', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_58', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_58')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_58', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_58', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_58')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_58', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_58', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_58                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_58 ON JOURNAL_58 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_59                                            */
/*==============================================================*/
CREATE TABLE JOURNAL_59 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_59 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_59')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_59', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_59', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_59')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_59', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_59', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_59')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_59', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_59', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_59')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_59', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_59', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_59                                      */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_59 ON JOURNAL_59 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_6                                             */
/*==============================================================*/
CREATE TABLE JOURNAL_6 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_6 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_6')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_6', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_6', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_6')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_6', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_6', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_6')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_6', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_6', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_6')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_6', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_6', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_6                                       */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_6 ON JOURNAL_6 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_7                                             */
/*==============================================================*/
CREATE TABLE JOURNAL_7 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_7 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_7')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_7', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_7', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_7')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_7', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_7', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_7')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_7', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_7', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_7')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_7', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_7', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_7                                       */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_7 ON JOURNAL_7 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_8                                             */
/*==============================================================*/
CREATE TABLE JOURNAL_8 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_8 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_8')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_8', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_8', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_8')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_8', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_8', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_8')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_8', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_8', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_8')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_8', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_8', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_8                                       */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_8 ON JOURNAL_8 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

/*==============================================================*/
/* Table: JOURNAL_9                                             */
/*==============================================================*/
CREATE TABLE JOURNAL_9 (
   CODE                 VARCHAR(24)          NOT NULL,
   RECORD_HOST          VARCHAR(128)         NULL,
   RECORD_YEAR          INT                  NULL,
   RECORD_MONTH         INT                  NULL,
   RECORD_DAY           INT                  NULL,
   RECORD_HOUR          INT                  NULL,
   RECORD_MINUTE        INT                  NULL,
   RECORD_SECOND        INT                  NULL,
   RECORD_MILLISCOND    NUMERIC(16)          NULL,
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
   PROCESS_INDEX        INT                  NULL,
   OPERATE_TIMES        INT                  NULL,
   OPERATE_RESULT       VARCHAR(16)          NULL,
   EFFECT_NUMBER        INT                  NULL,
   ERROR_ID             VARCHAR(256)         NULL,
   LOCATION             VARCHAR(256)         NULL,
   DESCRIPTION          VARCHAR(512)         NULL,
   CONNECTION_CODE      VARCHAR(24)          NULL,
   CONSTRAINT PK_JOURNAL_9 PRIMARY KEY NONCLUSTERED (CODE)
)
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_9')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'CODE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_9', 'column', 'CODE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '插件编码',
   'user', @CURRENTUSER, 'table', 'JOURNAL_9', 'column', 'CODE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_9')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'RECORD_MILLISCOND')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_9', 'column', 'RECORD_MILLISCOND'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_9', 'column', 'RECORD_MILLISCOND'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_9')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'JOURNAL_TYPE')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_9', 'column', 'JOURNAL_TYPE'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '0：登录，1：功能，2：迁移，3：同步，4：定时任务',
   'user', @CURRENTUSER, 'table', 'JOURNAL_9', 'column', 'JOURNAL_TYPE'
go

IF EXISTS(SELECT 1 FROM SYS.EXTENDED_PROPERTIES P WHERE
      P.MAJOR_ID = OBJECT_ID('JOURNAL_9')
  AND P.MINOR_ID = (SELECT C.COLUMN_ID FROM SYS.COLUMNS C WHERE C.OBJECT_ID = P.MAJOR_ID AND C.NAME = 'POSITION')
)
BEGIN
   DECLARE @CURRENTUSER SYSNAME
SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_DROPEXTENDEDPROPERTY 'MS_Description', 
   'user', @CURRENTUSER, 'table', 'JOURNAL_9', 'column', 'POSITION'

END


SELECT @CURRENTUSER = USER_NAME()
EXECUTE SP_ADDEXTENDEDPROPERTY 'MS_Description', 
   '处理顺序',
   'user', @CURRENTUSER, 'table', 'JOURNAL_9', 'column', 'POSITION'
go

/*==============================================================*/
/* Index: INDEX_JOURNAL_9                                       */
/*==============================================================*/
CREATE INDEX INDEX_JOURNAL_9 ON JOURNAL_9 (
RECORD_HOST ASC,
RECORD_YEAR ASC,
RECORD_MONTH ASC,
RECORD_DAY ASC,
RECORD_HOUR ASC,
RECORD_SECOND ASC,
RECORD_MILLISCOND ASC
)
go

