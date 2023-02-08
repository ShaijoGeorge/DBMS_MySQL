mysql> create database MOVIE;
Query OK, 1 row affected (0.01 sec)

mysql> use MOVIE;
Database changed
mysql> create table movies(title varchar(20),director varchar(20),myear int,rating float);
Query OK, 0 rows affected (0.06 sec)

mysql> insert into movies values("Pulimurugan","Vysakh",2016,6.7);
Query OK, 1 row affected (0.03 sec)

mysql> insert into movies values("Shylock","AjaiVasudev",2020,5.1);
Query OK, 1 row affected (0.02 sec)

mysql> insert into movies values("Bheeshma Parvam","Amal Neerad",2022,7.7);
Query OK, 1 row affected (0.02 sec)

mysql> insert into movies values("Sagar Alias Jacky","Amal Neerad",2009,5.3);
Query OK, 1 row affected (0.02 sec)

mysql> select * from movies;
+-------------------+-------------+-------+--------+
| title             | director    | myear | rating |
+-------------------+-------------+-------+--------+
| Pulimurugan       | Vysakh      |  2016 |    6.7 |
| Shylock           | AjaiVasudev |  2020 |    5.1 |
| Bheeshma Parvam   | Amal Neerad |  2022 |    7.7 |
| Sagar Alias Jacky | Amal Neerad |  2009 |    5.3 |
+-------------------+-------------+-------+--------+
4 rows in set (0.01 sec)

mysql> create table actors(actor varchar(20),ayear int);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into actors values("Mohanlal",1960);
Query OK, 1 row affected (0.02 sec)

mysql> insert into actors values("Mammootty",1951);
Query OK, 1 row affected (0.02 sec)

mysql> insert into actors values("Prithviraj",1982);
Query OK, 1 row affected (0.02 sec)

mysql> insert into actors values("Kunchacko Boban",1976);
Query OK, 1 row affected (0.02 sec)

mysql> select * from actors;
+-----------------+-------+
| actor           | ayear |
+-----------------+-------+
| Mohanlal        |  1960 |
| Mammootty       |  1951 |
| Prithviraj      |  1982 |
| Kunchacko Boban |  1976 |
+-----------------+-------+
4 rows in set (0.00 sec)

mysql> create table acts(actor varchar(20),title varchar(20));
Query OK, 0 rows affected (0.04 sec)

mysql> insert into acts values("Mohanlal","Pulimurukan");
Query OK, 1 row affected (0.02 sec)

mysql> insert into acts values("Mammootty","Bheeshma Parvam");
Query OK, 1 row affected (0.02 sec)

mysql> insert into acts values("Mohanlal","Sagar Alias Jacky");
Query OK, 1 row affected (0.02 sec)

mysql> insert into acts values("Mammootty","Shylock");
Query OK, 1 row affected (0.02 sec)

mysql> select * from acts;
+-----------+-------------------+
| actor     | title             |
+-----------+-------------------+
| Mohanlal  | Pulimurukan       |
| Mammootty | Bheeshma Parvam   |
| Mohanlal  | Sagar Alias Jacky |
| Mammootty | Shylock           |
+-----------+-------------------+
4 rows in set (0.00 sec)

mysql> create table directors(director varchar(20),dyear int);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into directors values("Amal Neerad",1976);
Query OK, 1 row affected (0.02 sec)

mysql> insert into directors values("AjaiVasudev",1982);
Query OK, 1 row affected (0.02 sec)

mysql> insert into directors values("Vaisakh",1978);
Query OK, 1 row affected (0.02 sec)

mysql> select * from directors;
+-------------+-------+
| director    | dyear |
+-------------+-------+
| Amal Neerad |  1976 |
| AjaiVasudev |  1982 |
| Vaisakh     |  1978 |
+-------------+-------+
3 rows in set (0.00 sec)


/* Question1: Find movies made after 2010 */
mysql> select title from movies where myear>2010;
+-----------------+
| title           |
+-----------------+
| Pulimurugan     |
| Shylock         |
| Bheeshma Parvam |
+-----------------+
3 rows in set (0.00 sec)


/* Question2: Find movies made by Amal Neerad after 2020 */
mysql> select title from movies where director="Amal Neerad" AND myear>2020;
+-----------------+
| title           |
+-----------------+
| Bheeshma Parvam |
+-----------------+
1 row in set (0.00 sec)


/* Question3: Find all movies and their ratings */
mysql> select title,rating from movies;
+-------------------+--------+
| title             | rating |
+-------------------+--------+
| Pulimurugan       |    6.7 |
| Shylock           |    5.1 |
| Bheeshma Parvam   |    7.7 |
| Sagar Alias Jacky |    5.3 |
+-------------------+--------+
4 rows in set (0.00 sec)


/* Question4: Find all actors and directors */
mysql> select actor from actors UNION select director from directors;
+-----------------+
| actor           |
+-----------------+
| Mohanlal        |
| Mammootty       |
| Prithviraj      |
| Kunchacko Boban |
| Amal Neerad     |
| AjaiVasudev     |
| Vaisakh         |
+-----------------+
7 rows in set (0.01 sec)


/* Question5: Find Amal Neerad's movies with Mohanlal */
mysql> SELECT title FROM movies
    -> WHERE director = 'Amal Neerad'
    -> AND title IN (
    ->     SELECT title FROM acts
    ->     WHERE actor = 'Mohanlal'
    -> );
+-------------------+
| title             |
+-------------------+
| Sagar Alias Jacky |
+-------------------+
1 row in set (0.02 sec)