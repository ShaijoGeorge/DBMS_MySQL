mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| student            |
| sys                |
| world              |
+--------------------+
7 rows in set (0.00 sec)

mysql> use student;
Database changed
mysql> create table employe(Fname varchar(20),Lname varchar(20),SSN int,Address varchar(20),Gender char(10));
Query OK, 0 rows affected (0.04 sec)

mysql> insert into employe values("Sarin","Madhav",109,"Pattambi","Male");
Query OK, 1 row affected (0.02 sec)

mysql> insert into employe values("Sebattiny","Jaison",110,"Kuriachira","Female");
Query OK, 1 row affected (0.00 sec)

mysql> insert into employe values("Shaijo","George",111,"Kunnamkulam","Male");
Query OK, 1 row affected (0.02 sec)

mysql> insert into employe values("Hariharan","S",113,"Palakkad","Male");
Query OK, 1 row affected (0.02 sec)

mysql> select * from employe;
+-----------+--------+------+-------------+--------+
| Fname     | Lname  | SSN  | Address     | Gender |
+-----------+--------+------+-------------+--------+
| Sarin     | Madhav |  109 | Palakkad    | Male   |
| Sebattiny | Jaison |  110 | Thrissur    | Female |
| Shaijo    | George |  111 | Thrissur    | Male   |
| Hariharan | S      |  113 | Palakkad    | Male   |
+-----------+--------+------+-------------+--------+
4 rows in set (0.00 sec)

mysql> select char_length(Fname) from employe;
+--------------------+
| char_length(Fname) |
+--------------------+
|                  5 |
|                  9 |
|                  6 |
|                  9 |
+--------------------+
4 rows in set (0.02 sec)

mysql> select concat(Fname,Lname) from employe;
+---------------------+
| concat(Fname,Lname) |
+---------------------+
| SarinMadhav         |
| SebattinyJaison     |
| ShaijoGeorge        |
| HariharanS          |
+---------------------+
4 rows in set (0.02 sec)

mysql> select concat_ws("_",Fname,Lname) from employe;
+----------------------------+
| concat_ws("_",Fname,Lname) |
+----------------------------+
| Sarin_Madhav               |
| Sebattiny_Jaison           |
| Shaijo_George              |
| Hariharan_S                |
+----------------------------+
4 rows in set (0.02 sec)

mysql> select find_in_set("Shaijo",Fname) from employe;
+-----------------------------+
| find_in_set("Shaijo",Fname) |
+-----------------------------+
|                           0 |
|                           0 |
|                           1 |
|                           0 |
+-----------------------------+
4 rows in set (0.01 sec)

mysql> select lower(Fname) from employe;
+--------------+
| lower(Fname) |
+--------------+
| sarin        |
| sebattiny    |
| shaijo       |
| hariharan    |
+--------------+
4 rows in set (0.02 sec)

mysql> select upper(Fname) from employe;
+--------------+
| upper(Fname) |
+--------------+
| SARIN        |
| SEBATTINY    |
| SHAIJO       |
| HARIHARAN    |
+--------------+
4 rows in set (0.00 sec)

mysql> select insert(Fname,2,3,"jo") from employe;
+------------------------+
| insert(Fname,2,3,"jo") |
+------------------------+
| Sjon                   |
| Sjottiny               |
| Sjojo                  |
| Hjoharan               |
+------------------------+
4 rows in set (0.02 sec)

mysql>
