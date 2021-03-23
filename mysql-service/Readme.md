# CREATE DATABASE
    Name: qlns
# IMPORT DATABASE:
    danhgia_congviec.sql
# ADD config to file my.ini
    # ADD
    log-bin=bin.log
    log-bin-index=bin-log.index
    max_binlog_size=100M
    binlog_format=row
    socket=mysql.sock
    # After
    mysqld
    # In
    my.cnf


    docker run -d --name mysql -v /var/lib/mysql:/var/lib/mysql mysql:5.7 mysqld --datadir=/var/lib/ --user=mysql --server-id=1 --log-bin=/var/lib/mysql/mysql-bin.log  --binlog_do_db=qlns