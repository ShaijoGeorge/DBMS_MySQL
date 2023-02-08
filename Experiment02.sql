mysql> create database company;
Query OK, 1 row affected (0.02 sec)

mysql> use company;
Database changed

mysql> create table department(DEPTNO int,DNAME varchar(20),LOC varchar(20));
Query OK, 0 rows affected (0.04 sec)

/*  Q1. Rename the table department as dept */
mysql> alter table department rename to dept;
Query OK, 0 rows affected (0.04 sec)


/*  Q2. Add a new column PINCODE with not null constraints to the existing table DEPT */
mysql> alter table dept add(PINCODE int(6) NOT NULL);
Query OK, 0 rows affected, 1 warning (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 1

mysql> desc dept;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| DEPTNO  | int         | YES  |     | NULL    |       |
| DNAME   | varchar(20) | YES  |     | NULL    |       |
| LOC     | varchar(20) | YES  |     | NULL    |       |
| PINCODE | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.02 sec)


/*  Q3. Rename the column DNAME to DEPT_NAME in dept table */
mysql> alter table dept rename column DNAME to DEPT_NAME;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc dept;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| DEPTNO    | int         | YES  |     | NULL    |       |
| DEPT_NAME | varchar(20) | YES  |     | NULL    |       |
| LOC       | varchar(20) | YES  |     | NULL    |       |
| PINCODE   | int         | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)


/*  Q4. Change the data type of column loc as CHAR with size 10 */
mysql> alter table dept modify LOC varchar(10);
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc dept;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| DEPTNO    | int         | YES  |     | NULL    |       |
| DEPT_NAME | varchar(20) | YES  |     | NULL    |       |
| LOC       | varchar(10) | YES  |     | NULL    |       |
| PINCODE   | int         | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)


/*  Q5. Delete table */
mysql> drop table dept;
Query OK, 0 rows affected (0.03 sec)

mysql> desc dept;
ERROR 1146 (42S02): Table 'company.dept' doesn't exist