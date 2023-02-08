mysql> create table employe(EMPNO varchar(5),EMP_NAME varchar(20),DEPT varchar(10),SALARY int,DOJ date,BRANCH varchar(20));
Query OK, 0 rows affected (0.04 sec)

mysql> desc employe;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| EMPNO    | varchar(5)  | YES  |     | NULL    |       |
| EMP_NAME | varchar(20) | YES  |     | NULL    |       |
| DEPT     | varchar(10) | YES  |     | NULL    |       |
| SALARY   | int         | YES  |     | NULL    |       |
| DOJ      | date        | YES  |     | NULL    |       |
| BRANCH   | varchar(20) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> insert into employe values("E101","Amit","Production",45000,"2000-03-12","Bangalore");
Query OK, 1 row affected (0.02 sec)

mysql> insert into employe values("E102","Amit","HR",70000,"2002-07-03","Bangalore");
Query OK, 1 row affected (0.02 sec)

mysql> insert into employe values("E103","Sunita","Management",120000,"2001-01-11","Mysore");
Query OK, 1 row affected (0.02 sec)

mysql> insert into employe values("E105","Sunita","IT",67000,"2001-08-01","Mysore");
Query OK, 1 row affected (0.02 sec)

mysql> insert into employe values("E106","Mahesh","Civil",145000,"2003-09-20","Mumbai");
Query OK, 1 row affected (0.02 sec)

mysql> select * from employe;
+-------+----------+------------+--------+------------+-----------+
| EMPNO | EMP_NAME | DEPT       | SALARY | DOJ        | BRANCH    |
+-------+----------+------------+--------+------------+-----------+
| E101  | Amit     | Production |  45000 | 2000-03-12 | Bangalore |
| E102  | Amit     | HR         |  70000 | 2002-07-03 | Bangalore |
| E103  | Sunita   | Management | 120000 | 2001-01-11 | Mysore    |
| E105  | Sunita   | IT         |  67000 | 2001-08-01 | Mysore    |
| E106  | Mahesh   | Civil      | 145000 | 2003-09-20 | Mumbai    |
+-------+----------+------------+--------+------------+-----------+
5 rows in set (0.00 sec)

/*  Questions:
    1. Display all the fields of employe table
    2. Retrieve employe number and their salary
    3. Retrieve average salary of all employe
    4. Retrieve number of employe
    5. Retrieve distinct number of employe
    6. Retrieve total salary of employe group by employe name and count similar names
    7. Retrieve total salary of employe which is greater than >120000
    8. Display name of employe in descending order
    9. Display details of employe whose name is AMIT and salary greater than 50000 */

(Ans1)
mysql> select * from employe;
+-------+----------+------------+--------+------------+-----------+
| EMPNO | EMP_NAME | DEPT       | SALARY | DOJ        | BRANCH    |
+-------+----------+------------+--------+------------+-----------+
| E101  | Amit     | Production |  45000 | 2000-03-12 | Bangalore |
| E102  | Amit     | HR         |  70000 | 2002-07-03 | Bangalore |
| E103  | Sunita   | Management | 120000 | 2001-01-11 | Mysore    |
| E105  | Sunita   | IT         |  67000 | 2001-08-01 | Mysore    |
| E106  | Mahesh   | Civil      | 145000 | 2003-09-20 | Mumbai    |
+-------+----------+------------+--------+------------+-----------+
5 rows in set (0.00 sec)


(Ans2)
mysql> select EMPNO,SALARY from employe;
+-------+--------+
| EMPNO | SALARY |
+-------+--------+
| E101  |  45000 |
| E102  |  70000 |
| E103  | 120000 |
| E105  |  67000 |
| E106  | 145000 |
+-------+--------+
5 rows in set (0.00 sec)


(Ans3)
mysql> select avg(SALARY) from employe;
+-------------+
| avg(SALARY) |
+-------------+
|  89400.0000 |
+-------------+
1 row in set (0.02 sec)


(Ans4)
mysql> select count(*) from employe;
+----------+
| count(*) |
+----------+
|        5 |
+----------+
1 row in set (0.02 sec)


(Ans5)
mysql> select count(distinct EMP_NAME) from employe;
+--------------------------+
| count(distinct EMP_NAME) |
+--------------------------+
|                        3 |
+--------------------------+
1 row in set (0.00 sec)


(Ans6)
mysql> select EMP_NAME,sum(SALARY),count(*) from employe group by(EMP_NAME);
+----------+-------------+----------+
| EMP_NAME | sum(SALARY) | count(*) |
+----------+-------------+----------+
| Amit     |      115000 |        2 |
| Sunita   |      187000 |        2 |
| Mahesh   |      145000 |        1 |
+----------+-------------+----------+
3 rows in set (0.00 sec)


(Ans7)
mysql> select EMP_NAME,sum(SALARY) from employe group by(EMP_NAME) having sum(SALARY)>120000;
+----------+-------------+
| EMP_NAME | sum(SALARY) |
+----------+-------------+
| Sunita   |      187000 |
| Mahesh   |      145000 |
+----------+-------------+
2 rows in set (0.00 sec)


(Ans8)
mysql> select EMP_NAME from employe order by EMP_NAME desc;
+----------+
| EMP_NAME |
+----------+
| Sunita   |
| Sunita   |
| Mahesh   |
| Amit     |
| Amit     |
+----------+
5 rows in set (0.00 sec)


(Ans9)
mysql> select * from employe where EMP_NAME="Amit" AND SALARY>50000;
+-------+----------+------+--------+------------+-----------+
| EMPNO | EMP_NAME | DEPT | SALARY | DOJ        | BRANCH    |
+-------+----------+------+--------+------------+-----------+
| E102  | Amit     | HR   |  70000 | 2002-07-03 | Bangalore |
+-------+----------+------+--------+------------+-----------+
1 row in set (0.00 sec)