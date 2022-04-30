--------------------------------------------------------------------------------------------------------------------
-- Queries con mySQL                                                                                              --
--------------------------------------------------------------------------------------------------------------------
SELECT VERSION(), CURRENT_DATE;
SELECT SIN(PI()/4), (4+1)*5;
SELECT VERSION(); 
SELECT NOW();
SELECT USER(), CURRENT_DATE;
SHOW DATABASES;
USE test;

mysql> GRANT ALL ON test.* TO 'root'@'localhost';
--------------------------------------------------------------------------------------------------------------------
-- Indizen Group                                                                                                  --
--------------------------------------------------------------------------------------------------------------------
show databases;
+--------------------+
| Database           |
+--------------------+
| ORG                |
| bank               |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| viajeros           |
+--------------------+

CREATE DATABASE ORG;
SHOW DATABASES;
USE ORG;

CREATE TABLE Worker (
WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

CREATE TABLE Bonus (
WORKER_REF_ID INT,
BONUS_AMOUNT INT(10),
BONUS_DATE DATETIME,
FOREIGN KEY (WORKER_REF_ID)
REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
(001, 5000, '16-02-20'),
(002, 3000, '16-06-11'),
(003, 4000, '16-02-20'),
(001, 4500, '16-02-20'),
(002, 3500, '16-06-11');

CREATE TABLE Title (
WORKER_REF_ID INT,
WORKER_TITLE CHAR(25),
AFFECTED_FROM DATETIME,
FOREIGN KEY (WORKER_REF_ID)
REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');

-- Write An SQL Query To Fetch “FIRST_NAME” From Worker Table Using The Alias Name As <WORKER_NAME>

SELECT FIRST_NAME WORKER_NAME
FROM ORG.Worker;

-- Write An SQL Query That Fetches The Unique Values Of DEPARTMENT From Worker Table And Prints Its Length

SELECT DISTINCT DEPARTMENT, length(DEPARTMENT) 
FROM ORG.Worker;

-- Write An SQL Query To Print Details Of Workers Excluding First Names, “Vipul” And “Satish” From Worker Table

SELECT * 
FROM ORG.Worker
WHERE FIRST_NAME NOT IN('Vipul', 'Satish');

-- Write An SQL Query To Print Details Of Workers With DEPARTMENT Name As “Admin”

SELECT * 
FROM ORG.Worker
WHERE DEPARTMENT = 'Admin';

-- Write An SQL Query To Fetch The Count Of Employees Working In The Department ‘Admin’

SELECT COUNT(*)
FROM ORG.Worker
WHERE DEPARTMENT = 'Admin';

-- Write An SQL Query To Print Details Of The Workers Who Are Also Managers

SELECT *
FROM ORG.Worker
JOIN ORG.Title
  ON WORKER_ID = WORKER_REF_ID
WHERE WORKER_TITLE = 'Manager';

-- Write An SQL Query To Fetch Duplicate Records Having Matching Data In Some Fields of the WORKER Table

-- Este join es simplemente para ver la info de todas las tablas:

SELECT WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT, BONUS_AMOUNT, BONUS_DATE, WORKER_TITLE, AFFECTED_FROM
FROM ORG.Worker a
JOIN ORG.Title b
  ON a.WORKER_ID = b.WORKER_REF_ID
JOIN ORG.Bonus c
  ON b.WORKER_REF_ID = c.WORKER_REF_ID
;

SELECT WORKER_ID, COUNT(WORKER_ID)
FROM ORG.Worker a
JOIN ORG.Bonus b
  ON a.WORKER_ID = b.WORKER_REF_ID
GROUP BY WORKER_ID
HAVING COUNT(WORKER_ID)>1
;

-- Write An SQL Query To Show The Top N (Say 10) Records Of the WORKER Table

-- TOP 5
SELECT * 
FROM ORG.Worker
ORDER BY WORKER_ID ASC
LIMIT 5;
;

-- TOP 5
SELECT * 
FROM ORG.Worker 
LIMIT 0,5;

-- TOP 5 a partir del segundo registro
SELECT * 
FROM ORG.Worker 
LIMIT 2,5;

-- Write An SQL Query To Determine The 5th Highest Salary Without Using Top or Limit Metodo;

SELECT SALARY, WORKER_ID
FROM ORG.Worker
ORDER BY SALARY DESC 
;

+--------+-----------+
| SALARY | WORKER_ID |
+--------+-----------+
| 500000 |         4 |
| 500000 |         5 |
| 300000 |         3 |
| 200000 |         6 |
| 100000 |         1 |
|  90000 |         8 |
|  80000 |         2 |
|  75000 |         7 |
+--------+-----------+

SELECT SALARY, WORKER_ID, ROW_NUMBER() OVER w AS 'row_number'
FROM ORG.Worker
WINDOW w AS (ORDER BY SALARY DESC)

-- producen la misma salida

SELECT SALARY, WORKER_ID, ROW_NUMBER() OVER (ORDER BY SALARY DESC) AS 'row_number'
FROM ORG.Worker

+--------+-----------+------------+
| SALARY | WORKER_ID | row_number |
+--------+-----------+------------+
| 500000 |         4 |          1 |
| 500000 |         5 |          2 |
| 300000 |         3 |          3 |
| 200000 |         6 |          4 |
| 100000 |         1 |          5 |
|  90000 |         8 |          6 |
|  80000 |         2 |          7 |
|  75000 |         7 |          8 |
+--------+-----------+------------+

SELECT SALARY, WORKER_ID, ROW_NUMBER() OVER (ORDER BY SALARY DESC) AS 'row_number'
FROM ORG.Worker
LIMIT 5; 

+--------+-----------+------------+
| SALARY | WORKER_ID | row_number |
+--------+-----------+------------+
| 500000 |         4 |          1 |
| 500000 |         5 |          2 |
| 300000 |         3 |          3 |
| 200000 |         6 |          4 |
| 100000 |         1 |          5 |
+--------+-----------+------------+

SELECT SALARY, WORKER_ID, b.row_number
FROM (
        SELECT SALARY, WORKER_ID, ROW_NUMBER() OVER (ORDER BY SALARY DESC) AS 'row_number'
        FROM ORG.Worker
) b
WHERE b.row_number <= 5

+--------+-----------+------------+
| SALARY | WORKER_ID | row_number |
+--------+-----------+------------+
| 500000 |         4 |          1 |
| 500000 |         5 |          2 |
| 300000 |         3 |          3 |
| 200000 |         6 |          4 |
| 100000 |         1 |          5 |
+--------+-----------+------------+

-- Write An SQL Query To Fetch The List Of Employees With The Same Salary

SELECT WORKER_ID, SALARY
FROM ORG.Worker
;
+-----------+--------+
| WORKER_ID | SALARY |
+-----------+--------+
|         1 | 100000 |
|         2 |  80000 |
|         3 | 300000 |
|         4 | 500000 |
|         5 | 500000 |
|         6 | 200000 |
|         7 |  75000 |
|         8 |  90000 |
+-----------+--------+


SELECT SALARY, COUNT(SALARY) TOTAL
FROM ORG.Worker
GROUP BY SALARY
HAVING TOTAL > 1
;

+--------+-------+
| SALARY | TOTAL |
+--------+-------+
| 500000 |     2 |
+--------+-------+

SELECT WORKER_ID, a.SALARY
FROM ORG.Worker a
JOIN 
( SELECT SALARY, COUNT(SALARY) TOTAL
  FROM ORG.Worker
  GROUP BY SALARY
  HAVING TOTAL > 1 ) b
ON a.SALARY = b.SALARY
;

+-----------+--------+
| WORKER_ID | SALARY |
+-----------+--------+
|         4 | 500000 |
|         5 | 500000 |
+-----------+--------+

-- Write An SQL Query To Fetch The First 50% Records From the WORKER Table

SELECT WORKER_ID, NTILE(2) OVER(ORDER BY WORKER_ID) as 'ntile'
FROM ORG.Worker
;
+-----------+-------+
| WORKER_ID | ntile |
+-----------+-------+
|         1 |     1 |
|         2 |     1 |
|         3 |     1 |
|         4 |     1 |
|         5 |     2 |
|         6 |     2 |
|         7 |     2 |
|         8 |     2 |
+-----------+-------+

SELECT * 
FROM ( SELECT *, NTILE(2) OVER(ORDER BY WORKER_ID) as 'ntile'        
       FROM ORG.Worker ) nt 
WHERE nt.ntile = 1
;
+-----------+------------+-----------+--------+---------------------+------------+-------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | ntile |
+-----------+------------+-----------+--------+---------------------+------------+-------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |     1 |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      |     1 |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |     1 |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |     1 |
+-----------+------------+-----------+--------+---------------------+------------+-------+

-- Write An SQL Query To Fetch Three Max Salaries From the WORKER Table

SELECT MAX(DISTINCT SALARY) 
FROM ORG.Worker 
GROUP BY SALARY 
ORDER BY SALARY DESC 
LIMIT 3
;
+----------------------+
| MAX(DISTINCT SALARY) |
+----------------------+
|               500000 |
|               300000 |
|               200000 |
+----------------------+

SELECT DISTINCT SALARY
FROM ORG.Worker 
ORDER BY SALARY DESC
LIMIT 3
;
+--------+
| SALARY |
+--------+
| 500000 |
| 300000 |
| 200000 |
+--------+

SELECT MAX(DISTINCT SALARY) 
FROM ORG.Worker 
ORDER BY SALARY DESC
LIMIT 3
;
| MAX(DISTINCT SALARY) |
+----------------------+
|               500000 |
+----------------------+

SELECT DISTINCT SALARY  
FROM ORG.Worker  
ORDER BY SALARY DESC
;
+--------+
| SALARY |
+--------+
| 500000 |
| 300000 |
| 200000 |
| 100000 |
|  90000 |
|  80000 |
|  75000 |
+--------+
7 rows in set (0,00 sec)

SELECT DISTINCT SALARY  
FROM ORG.Worker  
ORDER BY SALARY DESC 
LIMIT 3  
OFFSET 2
;
+--------+
| SALARY |
+--------+
| 200000 |
| 100000 |
|  90000 |
+--------+
3 rows in set (0,00 sec)

SELECT DISTINCT SALARY  
FROM ORG.Worker  
ORDER BY SALARY DESC 
LIMIT 3  
OFFSET 3
;
+--------+
| SALARY |
+--------+
| 100000 |
|  90000 |
|  80000 |
+--------+
3 rows in set (0,00 sec)

SELECT DISTINCT SALARY  
FROM ORG.Worker  
ORDER BY SALARY DESC 
LIMIT 3  
OFFSET 4
;
+--------+
| SALARY |
+--------+
|  90000 |
|  80000 |
|  75000 |
+--------+
3 rows in set (0,00 sec)

SELECT DISTINCT SALARY  
FROM ORG.Worker  
ORDER BY SALARY DESC 
LIMIT 3  
OFFSET 5
;
+--------+
| SALARY |
+--------+
|  80000 |
|  75000 |
+--------+

SELECT DISTINCT SALARY   
FROM ORG.Worker   
ORDER BY SALARY DESC  
LIMIT 3   
OFFSET 6
;
+--------+
| SALARY |
+--------+
|  75000 |
+--------+

SELECT DISTINCT SALARY   
FROM ORG.Worker   
ORDER BY SALARY DESC  
LIMIT 3   
OFFSET 7;
Empty set (0,00 sec)


-- SELECT WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT, BONUS_AMOUNT, BONUS_DATE, WORKER_TITLE, AFFECTED_FROM

-- Write An SQL Query To Fetch The Names Of Workers Who Earn The Highest Salary

SELECT *
FROM ORG.Worker a
JOIN ( SELECT DISTINCT SALARY
       FROM ORG.Worker 
       ORDER BY SALARY DESC
       LIMIT 3
) b
ON a.SALARY = b.SALARY

+-----------+------------+-----------+--------+---------------------+------------+--------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT | SALARY |
+-----------+------------+-----------+--------+---------------------+------------+--------+
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         | 300000 |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      | 500000 |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      | 500000 |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    | 200000 |
+-----------+------------+-----------+--------+---------------------+------------+--------+

--------------------------------------------------------------------------------------------------------------------
-- Indizen Group                                                                                                  --
--------------------------------------------------------------------------------------------------------------------

