mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
6 rows in set (0.04 sec)

mysql> create database student;
Query OK, 1 row affected (0.02 sec)

mysql> use student;
Database changed
mysql> create table student(Roll_No int,Name varchar(10));
Query OK, 0 rows affected (0.04 sec)

mysql> insert into student values(109,'Sarin');
Query OK, 1 row affected (0.03 sec)

mysql> insert into student values(110,'Sebattiny'),(111,'Shaijo'),(113,'Hariharan');
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from student;
+---------+-----------+
| Roll_No | Name      |
+---------+-----------+
|     109 | Sarin     |
|     110 | Sebattiny |
|     111 | Shaijo    |
|     113 | Hariharan |
+---------+-----------+
4 rows in set (0.00 sec)

mysql> delete from student where Roll_No=113;
Query OK, 1 row affected (0.02 sec)

mysql> select * from student;
+---------+-----------+
| Roll_No | Name      |
+---------+-----------+
|     109 | Sarin     |
|     110 | Sebattiny |
|     111 | Shaijo    |
+---------+-----------+
3 rows in set (0.00 sec)

mysql> update student set Name='ShaijoGeorge' where Roll_No=111;
ERROR 1406 (22001): Data too long for column 'Name' at row 3
mysql> update student set Name='ShaijoKG' where Roll_No=111;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student;
+---------+-----------+
| Roll_No | Name      |
+---------+-----------+
|     109 | Sarin     |
|     110 | Sebattiny |
|     111 | ShaijoKG  |
+---------+-----------+
3 rows in set (0.00 sec)

mysql> alter table student add primary key(Roll_No);
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table student add Age int;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from student;
+---------+-----------+------+
| Roll_No | Name      | Age  |
+---------+-----------+------+
|     109 | Sarin     | NULL |
|     110 | Sebattiny | NULL |
|     111 | ShaijoKG  | NULL |
+---------+-----------+------+
3 rows in set (0.00 sec)

mysql> update student set age=20;
Query OK, 3 rows affected (0.02 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> rename table student to CSEB;
Query OK, 0 rows affected (0.03 sec)

mysql> select * from CSEB;
+---------+-----------+------+
| Roll_No | Name      | Age  |
+---------+-----------+------+
|     109 | Sarin     |   20 |
|     110 | Sebattiny |   20 |
|     111 | ShaijoKG  |   20 |
+---------+-----------+------+
3 rows in set (0.00 sec)

mysql> truncate table cseb;
Query OK, 0 rows affected (0.04 sec)

mysql> select * from cseb;
Empty set (0.00 sec)

mysql> drop table cseb;
Query OK, 0 rows affected (0.03 sec)

mysql> select * from cseb;
ERROR 1146 (42S02): Table 'student.cseb' doesn't exist
mysql> show tables;
+-------------------+
| Tables_in_student |
+-------------------+
| employe_list      |
+-------------------+
1 row in set (0.00 sec)
