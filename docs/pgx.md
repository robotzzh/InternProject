<!--
 * @Author: zzh weiersili2021@163.com
 * @Date: 2025-03-27 19:15:45
 * @LastEditors: zzh weiersili2021@163.com
 * @LastEditTime: 2025-03-29 18:47:21
 * @FilePath: /InternProject/docs/pgx.md
 * @Description: 
-->
连接：
dbConn , err := pgx.Connect(context.Backguand(),database_url)
defer dbConn.Close()
使用连接池：
*pgx.Conn返回一个pgx连接，这是一个单连接并且没有并发安全
因此需要pgxpool
dbpool ,err := pgxpool.New(context.Backguand(),database_url)
dbpool.close()

PSQL部分
\i 按照制定路径执行sql语句
postgresql要求外键只能引用主键或者唯一列
\dt 查看数据库的全部表
\d table 查看table的详细内容
