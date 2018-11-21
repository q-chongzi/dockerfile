<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何配置mysql迁移/同步等？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <p style="text-indent:2em">
                        对数据迁移/同步的功能目录，进行迁移/同步配置时，如果要使用操作名字为日志Mysql迁移/同步、日志Oracle迁移/同步或日志Sqlserver迁移/同步这3种方式进行迁移/同步时，需要进行如下的配置。
                    </p>
					<p style="text-indent:2em;color:#FC6767;">注意：这3种方式只能在各自的数据库内进行迁移/同步！不能跨数据库，不能和功能数据/外部数据/讯枢的目录数据进行迁移/同步！只能添加一对一进行迁移/同步，不能进行多表迁移/同步！而且在使用这3种方式前，必须是空表到空表！对两个表建立好功能设计后，才能对表添加需要进行迁移/同步的数据！mysql同步/sqlseve同步和oracle同步，不能添加验证规则和清洗规则！
                    </p>
                    <p style="text-indent:2em;color:#FC6767;">数据库版本：mysql 5.5及以上，oracel11g及以上，sqlsever 2014及以上</p>
                    <ul class="configure-fl2-top-con clearfix" style="height:2000px;">
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">1. 日志mysql迁移/同步</h2>
                                <p style="text-indent:2em">
                                    该迁移/同步方式只有mysql数据库可以使用。配置F:tomcat/webapps/infoinge/WEB-INF/classes/example的instance.properties文件，修改文件的ip和mysql数据库的端口号，输入使用的mysql数据库的帐号、密码和名称等信息。如下图：
                                    <br />
                                    <img src="img/properties.png" style="margin: 10px 0 0 28px;box-shadow:0 0 3px #333;"/>
                                    <br/>
                                    <span style="display:block;text-indent:2em">需要在my.ini文件的[mysqld]下添加：</span>
                                    <span style="display:block;text-indent:4em">log-bin=mysql-bin</span>
                                    <span style="display:block;text-indent:4em">server-id = 1</span>
                                    <span style="display:block;text-indent:4em">binlog_format=ROW</span>
                                    <span style="display:block;text-indent:4em">然后重启mysql服务即可。</span>
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">2. 日志Oracle迁移/同步</h2>
                                <p style="text-indent:2em">
                                    该迁移/同步方式只有Oracle数据库可以使用。以下的用户都是DIP,如果用户不一样，下面所有的sql语句，有DIP的都需要进行修改！
                                </p>
                                <p style="color:#FC6767;text-indent:4em">
                                    2.1 第一次使用oracle同步运行
                                </p>
                                <p style="text-indent:6em">
                                    2.1.1. 在sys（超级管理员）用户下，运行下面的sql语句：<br />
                                    <span style="display:block;text-indent:8em">ALTER USER DIP</span>
                                    <span style="display:block;text-indent:8em">QUOTA UNLIMITED ON SYSTEM</span>
                                    <span style="display:block;text-indent:8em">QUOTA UNLIMITED ON SYSAUX;</span>
                                    <span style="display:block;text-indent:8em">GRANT CREATE SESSION TO DIP;</span>
                                    <span style="display:block;text-indent:8em">GRANT CREATE TABLE TO DIP;</span>
                                    <span style="display:block;text-indent:8em">GRANT CREATE TABLESPACE TO DIP;</span>
                                    <span style="display:block;text-indent:8em">GRANT UNLIMITED TABLESPACE TO DIP;</span>
                                    <span style="display:block;text-indent:8em">GRANT SELECT_CATALOG_ROLE TO DIP;</span>
                                    <span style="display:block;text-indent:8em">GRANT EXECUTE_CATALOG_ROLE TO DIP;</span>
                                    <span style="display:block;text-indent:8em">GRANT CREATE SEQUENCE TO DIP;</span>
                                    <span style="display:block;text-indent:8em">GRANT DBA TO DIP;</span>
                                    <span style="display:block;text-indent:8em">GRANT EXECUTE on DBMS_CDC_PUBLISH TO DIP;</span>
                                    <span style="display:block;text-indent:8em;color:#FC6767;">注意：所有的用户都是以DIP为例，如果用户不一样，所有的sql语句，有DIP的都需要进行修改！！</span>
                                </p>
                                <p style="text-indent:6em">
                                    2.1.2. 然后执行下面的sql语句：<br />
                                    <span style="display:block;text-indent:8em">begin</span>
                                    <span style="display:block;text-indent:8em">DBMS_STREAMS_AUTH.GRANT_ADMIN_PRIVILEGE(GRANTEE => 'DIP',grant_privileges=>true);</span>
                                    <span style="display:block;text-indent:8em">end;</span>
                                    <span style="display:block;text-indent:8em;color:#FC6767;">注意：用户不一样时，替换sql语句中的DIP！</span>
                                </p>
                                <p style="text-indent:6em">
                                    2.1.3. 在cmd运行下面的语句：<br />
                                    <span style="display:block;text-indent:8em">C:\Users\Administrator>sqlplus “sys/Oracle12c@orcl as sysdba”              //以sys登录oracle，sys密码是Oracle12c，sid是orcl</span>
                                    <span style="display:block;text-indent:8em">SQL> alter database force logging;</span>
                                    <span style="display:block;text-indent:8em">SQL> alter database add supplemental log data;</span>
                                    <span style="display:block;text-indent:8em">SQL> shutdown immediate;</span>
                                    <span style="display:block;text-indent:8em">SQL> exit</span>
                                    <span style="display:block;text-indent:8em">然后执行：</span>
                                    <span style="display:block;text-indent:8em">C:\Users\Administrator> sqlplus “sys/Oracle12c@orcl as sysdba”</span>
                                    <span style="display:block;text-indent:8em">SQL> startup mount</span>
                                    <span style="display:block;text-indent:8em">SQL> alter database archivelog;</span>
                                    <span style="display:block;text-indent:8em">SQL> alter database open;</span>
                                    <span style="display:block;text-indent:8em">SQL> archive log list;</span>
                                    <span style="display:block;text-indent:8em;color:#FC6767;">注意：以上的语句一个oracle数据库执行一次即可！不要复制前面的sql> 等，一句一句的执行！如果sys的密码不是Oracle12c，sid不是orcl，记得修改sql语句！</span>
                                </p>
                                <p style="color:#FC6767;text-indent:4em">
                                    2.2 在以后的使用过程中运行
                                </p>
                                <p style="text-indent:6em">
                                    2.2.1. 每次重启oracle都需要执行下面的sql语句（<span style="color:#FC6767;">注意：只有Oracle12才运行下面的语句，11g等更低的版本，不用运行下面的语句！</span>）：<br />
                                    <span style="display:block;text-indent:8em">C:\Users\Administrator>sqlplus / as sysdba;</span>
                                    <span style="display:block;text-indent:8em">SQL> alter pluggable database pdborcl open;</span>
                                    <span style="display:block;text-indent:8em;color:#FC6767;">注意：如果提示：插接式数据库已变更，即成功了注意：用户不一样，所有的sql语句，有DIP的都需要进行修改！！</span>
                                </p>
                                <p style="text-indent:6em">
                                    2.2.2. 如果表结构有改变，再执行下面的sql语句（<span style="color:#FC6767;">注意：所有版本的oracle数据库都要运行下面的语句！</span>）：<br />
                                    <span style="display:block;text-indent:8em;color:#FC6767;">(1)执行下面的sql语句：</span>
                                    <span style="display:block;text-indent:10em">select LOCAL_TRANSACTION_ID from DBA_APPLY_ERROR;</span>
                                    <span style="display:block;text-indent:10em">把执行的结果，如9.12.3418，每一条都要替换下面的sql语句的9.12.3418，执行下面的sql语句，执行结果有几条就执行几次；如果没有则不执行下面的语句</span>
                                    <span style="display:block;text-indent:10em">BEGIN</span>
                                    <span style="display:block;text-indent:10em">DBMS_APPLY_ADM.delete_error(local_transaction_id =>'9.12.3418');</span>
                                    <span style="display:block;text-indent:10em">end;</span>
                                    <span style="display:block;text-indent:10em;color:#FC6767;">注意：每次对表进行新增、删除或修改字段时都需要执行一遍！对数据进行操作不需要运行！</span>
                                    <span style="display:block;text-indent:8em;color:#FC6767;">(2)再执行下面的sql语句：</span>
                                    <span style="display:block;text-indent:10em;">BEGIN</span>
                                    <span style="display:block;text-indent:10em;">DBMS_CDC_PUBLISH.ALTER_CHANGE_SET(CHANGE_SET_NAME     => 'CHANGE_SET_DEFAULT',</span>
                                    <span style="display:block;text-indent:10em;">RECOVER_AFTER_ERROR => 'y',</span>
                                    <span style="display:block;text-indent:10em;">REMOVE_DDL          => 'y');</span>
                                    <span style="display:block;text-indent:10em;">END;</span>
                                    <span style="display:block;text-indent:10em;color:#FC6767;">注意：如果新增了表，也需要执行上面的sql语句！如果提示 PL/SQL 过程已成功完成，就是成功了。如果报错了，就需要把刚才的第一步再执行一次，再执行这一步，直到没有报错为止。</span>
                                    <span style="display:block;text-indent:8em;color:#FC6767;">(3)最后，执行下面的sql语句：</span>
                                    <span style="display:block;text-indent:10em;">BEGIN</span>
                                    <span style="display:block;text-indent:10em;">DBMS_CDC_PUBLISH.ALTER_CHANGE_SET(</span>
                                    <span style="display:block;text-indent:10em;">change_set_name => 'CHANGE_SET_DEFAULT',</span>
                                    <span style="display:block;text-indent:10em;">enable_capture  => 'Y');</span>
                                    <span style="display:block;text-indent:10em;">END;</span>
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">3. 日志Sqlserver迁移/同步</h2>
                                <p style="text-indent:2em">
                                    该迁移/同步方式只有Sqlserver数据库可以使用。sql sever数据库只需要启动下面的这两个服务即可：
                                </p>
                                <img src="img/sql.png" />
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
