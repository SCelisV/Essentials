-- SQL Structured Query Language (SQL), 

-- http://sqlfiddle.com/
-- https://www.khanacademy.org/
-- http://sqlzoo.net/
-- https://dbeaver.io/download/

-- Oracle Database from Oracle Corporation
-- SQL Server from Microsoft
-- DB2 Universal Database from IBM
-- Sybase Adaptive Server from Sybase
-- PostgreSQL and 
-- MySQL.  http://www.mysql.com

-- DDL (Data Definition Languaje): Modifican la estructura de la BBDD - Lenguaje de Definición de Datos - creación de una base de datos y todos sus componentes: tablas, índices, relaciones, disparadores (triggers), procedimientos almacenados, etc.
-- DML (Data Manipulation Languaje): Manipulan datos - Lenguaje de Manipulación de Datos - utilizadas para insertar, borrar, modificar y consultar CRUD

-- Alan Beaulieu - Learning SQL - Exercises

-- SQL Statement Classes

-- The SQL language is divided into several distinct parts: 

-- SQL schema statements, which are used to define the data structures stored in the database; 
-- SQL data statements, which are used to manipulate the data structures previously defined using SQL schema statements; 
-- SQL transaction state-ments; which are used to begin, end, and roll back transactions;

-- Open the Run dialog box from the Start menu Launch a command window: Choose Start and then Run 
-- Launch a command window: Type cmd and click OK
-- Log in to MySQL as root: mysql -u root -p
-- Create a database for the sample data: create database bank;
-- Create the lrngsql database user with full privileges on the bank database: grant all privileges on bank.* to 'lrngsql'@'localhost’ identified by 'xyz';
-- Exit the mysql tool: quit;
-- Log in to MySQL as lrngsql: mysql -u lrngsql -p;
-- Attach to the bank database: use bank;

-- SQL SCHEMA STATEMENTS - DB elements created are stored in a special set of tables called the data dictionary.

-- Ejecutar scripts - importar los ficheros...

-- mysql.user: User accounts, global privileges, and other non-privilege columns
-- mysql.db: Database-level privileges
-- mysql.tables_priv: Table-level privileges
-- mysql.columns_priv: Column-level privileges
-- mysql.procs_priv: Stored procedure and function privileges
-- mysql.proxies_priv: Proxy-user privilege

-- converting strings to datetimes in MySQL:

-- %a The short weekday name, such as Sun, Mon, …
-- %b The short month name, such as Jan, Feb, … 
-- %c The numeric month (0..12)
-- %d The numeric day of the month (00..31)
-- %f The number of microseconds (000000..999999)
-- %H The hour of the day, in 24-hour format (00..23)
-- %h The hour of the day, in 12-hour format (01..12)
-- %i The minutes within the hour (00..59)
-- %j The day of year (001..366)
-- %M The full month name (January..December)
-- %m The numeric month
-- %p AM or PM
-- %s The number of seconds (00..59)
-- %W The full weekday name (Sunday..Saturday)
-- %w The numeric day of the week (0=Sunday..6=Saturday) %Y The four-digit year
-- %Y to indicate a four-character year.

-- An expression can be any of the following:
-- * A number
-- * A column in a table or view
-- * A string literal, such as 'Teller'
-- * A built-in function, such as concat('Learning', ' ', 'SQL')
-- * A subquery
-- * A list of expressions, such as ('Teller', 'Head Teller', 'Operations Manager')
-- The operators used within conditions include:
    -- * Comparison operators, such as =, !=, <, >, <>, LIKE, IN, and BETWEEN
    -- * Arithmetic operators, such as +, −, *, and /

-- Timestamp -> UTC + 2

mysql> source path..... /viajerosdb.sql;
mysql> source path..... /Essentials/LearningSQLExample.sql;

mysql> SELECT now();
mysql> SHOW CHARACTER SET;

SELECT user 
from 
mysql.user;

SELECT user, host 
FROM mysql.user;

-- LIKE
SELECT VERSION(), USER(), DATABASE();
SELECT USER(), CURRENT_USER();
SHOW VARIABLES LIKE 'skip_networking';
SHOW VARIABLES LIKE "secure_file_priv";

-- Exercise 3-1. Retrieve the employee ID, first name, and last name for all bank employees. Sort by last name and then by first name.

mysql> SHOW DATABASES;
mysql> use bank;
mysql> show tables;

mysql> describe employee;

mysql> SELECT emp_id AS employee_ID, fname AS first_name, lname AS last_name
        FROM employee
        ORDER BY lname , fname;

-- Exercise 3-2. Retrieve the account ID, customer ID, and available balance for all accounts whose status equals 'ACTIVE' and whose available balance is greater than $2,500.

mysql> desc account;

SELECT account_id  AS account_ID, cust_id AS customer_ID, avail_balance AS available_balance
FROM account
WHERE status = 'ACTIVE' and avail_balance > 2500;

----------------------------------------------------------------------
-- Exercise 3-3. Write a query against the account table that returns the IDs of the employees who opened the accounts (use the account.open_emp_id column). Include a single row for each distinct employee.

SELECT DISTINCT open_emp_id
FROM account;
account_id, product_cd, cust_id, open_date , close_date, last_activity_date, status, open_branch_id, open_emp_id, avail_balance, pending_balance

SELECT open_date AS fec_apertura 
FROM account;

SELECT DISTINCT(open_date) AS fec_apertura
FROM account ORDER BY fec_apertura;

SELECT COUNT(DISTINCT(open_date)) AS fec_apertura
FROM account;

-- ALL muestra todos los registros de un campo. - no me funciono en mysql
SELECT ALL cust_id 
FROM account; 

SELECT cust_id 
FROM account LIMIT 10;


-- Exercise 3-4. Fill in the blanks (denoted by <#>) for this multi-data-set query to achieve the results shown here:
-- JOIN's

-- SELECT p.product_cd, a.cust_id, a.avail_balance
-- FROM product p INNER JOIN account <1>
-- ON p.product_cd = <2>
-- WHERE p.<3> = 'ACCOUNT'
-- ORDER BY <4>, <5>;

mysql> DESC product;
mysql> SELECT p.product_cd, a.cust_id, a.avail_balance
        FROM product p INNER JOIN account a
        ON p.product_cd = a.product_cd
        WHERE p.product_type_cd = 'ACCOUNT'
        ORDER BY p.product_cd, a.cust_id;

-- to remove rows from the account table that were closed in 2002
-- first SELECT AND THEN DELETE 

SELECT *
FROM account
WHERE  status = "CLOSED" AND YEAR(close_date) = 2002;

DELETE
FROM account
WHERE  status = "CLOSED" AND YEAR(close_date) = 2002;

-- All accounts with between $3,000 and $5,000 of an available balance are returned.
-- BETWEEN
mysql> SELECT account_id, product_cd, cust_id, avail_balance 
        FROM account 
        WHERE avail_balance BETWEEN 3000 AND 5000;

-- Retrieve account_id, product_cd, cust_id, avail_balance of product_type are 'ACCOUNT'
-- SUBSELECT - SUBCONSULTA -- Temporary tables (i.e., rows returned by a Subquery - SUBSELECT)

mysql> SELECT account_id, product_cd, cust_id, avail_balance
        FROM account
        WHERE product_cd IN (
                                SELECT product_cd 
                                FROM product
                                WHERE product_type_cd = 'ACCOUNT'
                            );

-- Retrieve account_id, product_cd, cust_id, avail_balance all product_cd NOT are checking:'CHK', savings:'SAV', certificate of deposit:'CD', or money market:'MM' accounts.

mysql> SELECT account_id, product_cd, cust_id, avail_balance 
        FROM account
        WHERE product_cd NOT IN ('CHK','SAV','CD','MM');

-- Retrive customer id,  document id  for all customer like his documen id 11-character strings with dashes in the fourth and seventh positions
-- LIKE
mysql> SELECT cust_id, fed_id 
        FROM customer 
        WHERE fed_id LIKE '___-11-____';

-- Exercise 4-1. The following transaction data is used for the first two exercises.

Txn_id Txn_date     Account_id Txn_type_cd Amount

    1  2005-02-22       101         CDT     1000.00 
    2  2005-02-23       102         CDT     525.75 
    3  2005-02-24       101         DBT     100.00 
    4  2005-02-24       103         CDT     55
    5  2005-02-25       101         DBT     50
    6  2005-02-25       103         DBT     25
    7  2005-02-25       102         CDT     125.37 
    8  2005-02-26       103         DBT     10
    9  2005-02-27       101         CDT     75


-- Which of the transaction IDs would be returned by the following filter conditions? - 

txn_date < '2005-02-26' AND (txn_type_cd = 'DBT' OR amount > 100)

1, 2, 3, 5, 6, 7

-- Exercise 4-2. Which of the transaction IDs would be returned by the following filter conditions? - 

account_id IN (101,103) AND NOT (txn_type_cd = 'DBT' OR amount > 100)

4, 9

-- Exercise 4-3. Construct a query that retrieves all accounts opened in 2002


SELECT * 
FROM account
WHERE YEAR(open_date) = 2002;

-- Exercise 4-4. Construct a query that finds all nonbusiness customers (!= 'B') whose last name contains an a in the second position and an e anywhere after the a.

-- JOIN's
SELECT * 
FROM individual as i
INNER JOIN customer as c
ON i.cust_id = c.cust_id
WHERE lname LIKE "%a%"


-- Construct a query that finds los departamentos con más de 2 employee

-- JOIN's
SELECT d.name, COUNT(e.emp_id) num_employee
FROM department as d
INNER JOIN employee as e ON d.dept_id = e.dept_id
GROUP BY d.name
HAVING (num_employee > 2);

SELECT open_emp_id, product_cd
FROM account
ORDER BY open_emp_id, product_cd

-- JOIN's
SELECT employee.emp_id, employee.fname, employee.lname 
FROM employee;

SELECT emp_id, fname, lname, d.name
FROM employee e
INNER JOIN department d ON d.dept_id = e.dept_id;

SELECT e.emp_id, e.fname, e.lname, d.name AS dept_name
FROM employee AS e
INNER JOIN department AS d ON e.dept_id = d.dept_id;

SELECT p.product_cd, a.cust_id, a.avail_balance
FROM product p 
INNER JOIN account a ON p.product_cd = a.product_cd
WHERE p.product_type_cd = 'ACCOUNT'
ORDER BY p.product_cd, a.cust_id;

SELECT c.fname, c.lname, o.order_date
FROM customers c
JOIN orders o ON(c.cust_id = o.cust_id)
WHERE c.zipcode='94306';

-- Virtual tables (i.e., created using the create view statement)
-- VIEWS - TO SIMPLIFYING COMPLEX QUERIES - simplificar querie(s)-(consulta(s))
-- Realizar este querie(s)-consulta(s) cada vez para una orden... lo mejor es crear una vista - tabla temporal

SELECT o.order_id, order_date, p.prod_id, brand, name
FROM orders o
JOIN order_details d ON (o.order_id = d.order_id)
JOIN products p ON (d.prod_id = p.prod_id)
WHERE o.order_id=6584288

CREATE VIEW order_info AS
SELECT o.order_id, order_date, p.prod_id, brand, name
FROM orders o
JOIN order_details d ON (o.order_id = d.order_id)
JOIN products p ON (d.prod_id = p.prod_id)

CREATE VIEW employee_vw AS 
SELECT emp_id, fname, lname, YEAR(start_date) AS start_year 
FROM employee;

SELECT emp_id, start_year 
FROM employee_vw;

-- Clasificar los datos de los clientes por los tres primeros dígitos del número de id

SELECT * 
FROM customer
ORDER BY LEFT(fed_id,3);

SELECT *  
FROM customer 
ORDER BY RIGHT(fed_id,3);

-- Order BY número de columnas
SELECT *
FROM employee
ORDER BY title, lname;

or

SELECT *
FROM employee
ORDER BY 2, 7;

SELECT emp_id, fname, lname
FROM employee
ORDER BY lname, fname;

SELECT emp_id, UPPER(lname), 3.1416 * emp_id,
FROM employee;

SELECT emp_id, 'ACTIVE', UPPER(lname), 3.1416 * emp_id
FROM employee;

SELECT emp_id, 'ACTIVE' status, UPPER(lname) first_name_upper, 3.1416 * emp_id emp_id_pi
FROM employee;

SELECT emp_id, 'ACTIVE' AS status, emp_id*3.1416 AS emp_id_pi, UPPER(lname) AS first_name_upper
FROM employee;

SELECT account_id, cust_id, avail_balance
FROM account
WHERE status = 'ACTIVE' 
AND avail_balance > 1500;

-- JOIN's
SELECT p.product_cd, p.name, p.product_type_cd
FROM product p
INNER JOIN product_type pt ON p.product_type_cd = pt.product_type_cd
WHERE p.name = 'checking account';

SELECT e.emp_id, e.fname, e.lname, d.name AS dept_name
FROM employee AS e
INNER JOIN department AS d ON e.dept_id = d.dept_id;

SELECT emp_id, fname, lname, start_date
FROM employee
WHERE start_date < '2007-01-01' AND start_date >= '2000-01-01';

-- BETWEEN
SELECT * FROM city
WHERE Population BETWEEN 200000 AND 400000
ORDER BY Population DESC;

SELECT * FROM city
WHERE Population BETWEEN 200000 AND 400000
ORDER BY Population DESC LIMIT 10;

SELECT account_id, cust_id, avail_balance 
FROM account 
WHERE status = 'ACTIVE' 
AND avail_balance between 2000 AND 5000
ORDER BY cust_id, avail_balance;

-- IN
SELECT account_id, cust_id, avail_balance 
FROM account  
WHERE product_cd IN ('CHK','SAV','CD','MM');

SELECT account_id, product_cd, cust_id, avail_balance
        FROM account
        WHERE product_cd IN (
                                SELECT product_cd 
                                FROM product
                                WHERE product_type_cd = 'ACCOUNT'
                            );

-- LIKE
empieza por A: LIKE 'A%'
acaba por A: LIKE '%A'
contiene la letra A: LIKE '%A%'
empieza por A y después contiene un solo carácter cualquiera: LIKE 'A_'
empieza por una A, después cualquier carácter, luego una E y al final cualquier cadena de caracteres: LIKE 'A_E%'

SELECT *
FROM employee
WHERE title LIKE 'H%';

SELECT * 
FROM city
WHERE Name = "Kabul"
OR Name = "Utrecht" LIMIT 9;

SELECT *
FROM city
WHERE Name IN ("Kabul", "Utrecht");

SELECT *
FROM employee
WHERE title LIKE 'H%'
AND start_date > '2001-01-01';

SELECT *
FROM employee
WHERE title LIKE 'H%'
OR start_date > '2001-01-01';

SELECT * 
FROM  employee 
WHERE lname LIKE "%R%";

SELECT * 
FROM city 
WHERE Name LIKE "d_u%";

SELECT * 
FROM city 
WHERE Name LIKE "__a%" 
and Population > 2000000;

SELECT * 
FROM employee 
WHERE (title = 'Head Teller'
AND start_date > '2001-01-01')
OR (title = 'Teller'
AND start_date > '2001-01-01');

SELECT * 
FROM city 
WHERE Name IN( "Kabul", "Utrecht");

SELECT count(Name) AS "Numero de Ciudades", count(DISTINCT(District)) AS "Numero de Distritos", MIN(Population) AS "Población Minima", MAX(Population) AS "Población Maxima", SUM(Population) AS "Población Total", AVG(Population) AS "Media de Población"
FROM city
WHERE CountryCode = "GBR";

SELECT emp_id, fname, lname
FROM  employee 
WHERE LEFT(lname,1) = 'R' 
OR LEFT(lname,1) = 'r';

SELECT emp_id, fname, lname
FROM  employee 
WHERE LEFT(lname,1) = 'R';

SELECT emp_id, fname, lname
FROM  employee   
WHERE fname LIKE "%_a_l%";

SELECT emp_id, fname, lname
FROM  employee  
WHERE LEFT(lname,2) = 'Pa';

-- Expresiones Regulares - REGEXP

SELECT emp_id, fname, lname
FROM  employee   
WHERE lname REGEXP '[A-Z][aA][a-z][lL]*';

SELECT emp_id, fname, lname
FROM employee
WHERE lname REGEXP '^[FG]';

SELECT emp_id, fname, lname
FROM employee
WHERE regexp_like(lname, 6) = '^[FG]';

-- NULL
SELECT emp_id, fname, lname, superior_emp_id
FROM employee
WHERE superior_emp_id IS NOT NULL;

SELECT emp_id, fname, lname, superior_emp_id
FROM employee
WHERE superior_emp_id IS NULL;

SELECT *
FROM countrylanguage
WHERE CountryCode <> "ABW" LIMIT 100;

SELECT *
FROM countrylanguage
WHERE CountryCode != "ABW" LIMIT 100;

SELECT emp_id, fname, lname, superior_emp_id
FROM employee
WHERE ISNULL(superior_emp_id);

SELECT emp_id, fname, lname, superior_emp_id
FROM employee
WHERE superior_emp_id = 6;

-- SUBSELECT - SUBCONSULTA -- Temporary tables (i.e., rows returned by a Subquery - SUBSELECT)
SELECT emp_id, fname, lname, superior_emp_id
FROM employee
WHERE superior_emp_id = ( 
                                SELECT emp_id
                                FROM employee      
                                WHERE lname='Cristina'
                                AND fname='Estebanez'
                        );

SELECT a.emp_id, a.fname, a.lname, ( SELECT count(emp_id) 
                                       FROM employee e )
FROM employee a;


-- ERROR 1242 (21000): Subquery returns more than 1 row
SELECT a.emp_id, a.fname, a.lname, ( SELECT emp_id 
                                       FROM employee e)
FROM employee a;

SELECT emp_id, fname, lname, superior_emp_id
FROM employee
WHERE end_date IS NULL
AND title != 'Teller';

SELECT i.fname, i.lname, p.name, t.txn_id, t.txn_type_cd, t.txn_date, t.amount 
FROM individual i
INNER JOIN account a ON i.cust_id = a.cust_id
INNER JOIN product p ON p.product_cd = a.product_cd 
INNER JOIN transaction t ON t.account_id = a.account_id
WHERE p.name = 'checking account';

SELECT i.fname, i.lname, p.name, t.txn_id, t.txn_type_cd, t.txn_date, t.amount 
FROM individual i
INNER JOIN account a ON i.cust_id = a.cust_id
INNER JOIN product p ON p.product_cd = a.product_cd 
INNER JOIN transaction t ON t.account_id = a.account_id
WHERE i.fname = 'Louis' 
  AND i.lname = 'Blake' 
  AND p.name = 'checking account';

SELECT cust_id, fname, lname 
FROM individual 
WHERE lname = 'Spencer';

UPDATE product
SET name = 'Certificate of Deposit' 
WHERE product_cd = 'CD';

SELECT account_id, open_date 
FROM account
WHERE open_date 
BETWEEN '2001-01-01' 
AND '2002-01-01';

-- JOIN's 
SELECT emp_id, lname, fname
FROM employee e
INNER JOIN department d;

SELECT emp_id, lname, fname
FROM employee e
INNER JOIN department d ON e.dept_id = d.dept_id;

SELECT emp_id, lname, fname
FROM employee e
INNER JOIN department d
USING (dept_id);

SELECT i.fname, i.lname, p.name, t.txn_id, t.txn_type_cd, t.txn_date, t.amount 
FROM individual i
INNER JOIN account a ON i.cust_id = a.cust_id
INNER JOIN product p ON p.product_cd = a.product_cd 
INNER JOIN transaction t ON t.account_id = a.account_id

----------------------------------------------------------------------
SELECT a.account_id, c.cust_id
FROM account a 
INNER JOIN customer c ON a.cust_id = c.cust_id
INNER JOIN employee e ON a.open_emp_id = e.emp_id
WHERE c.cust_type_cd = 'B';

----------------------------------------------------------------------
-- Estos son diferentes por las uniones
-- nombre y apellidos de empleados con el nombre y apellidos de su superior
SELECT a.emp_id, a.fname, a.lname, a.superior_emp_id, b.fname, b.lname
FROM employee a
INNER JOIN employee b ON a.emp_id = b.emp_id;

-- nombre y apellidos de empleados con el nombre y apellidos de su superior - sale el NULL que hay 
SELECT a.emp_id, a.fname, a.lname, a.superior_emp_id, b.fname, b.lname
FROM employee a
INNER JOIN employee b ON a.superior_emp_id = b.emp_id;
----------------------------------------------------------------------
-- Comprobación de cuentas: cuenta corriente sin interes

SELECT a.account_id, a.cust_id, c.cust_type_cd, p.product_cd, name, product_type_cd
FROM account a
INNER JOIN customer c ON a.cust_id = c.cust_id
INNER JOIN product p ON p.product_cd = a.product_cd
WHERE c.cust_type_cd = 'I';

----------------------------------------------------------------------

-- Grupo de clientes 'IND' individuales y negocio 'NEG'

SELECT 'IND' as grupo,  cust_id, fname
FROM individual i
UNION ALL
SELECT 'NEG' as grupo,  cust_id, name
FROM business b;

SELECT cust_id, fname 
from individual;

SELECT cust_id, name 
from business;

----------------------------------------------------------------------

-- Cuentas con saldos positivos, negativos y 0 (absoluto)
--   0 |               0.00 | si el valor es 0
--   1 |            3487.19 | si el valor es positivo 
--  -1 |          - 3487.19 | si el valor fuera negativo 

SELECT account_id, SIGN(avail_balance), ABS(avail_balance)
FROM account;

----------------------------------------------------------------------

-- nombre y apellidos que esten asignados a un supervisor diferente
SELECT a.emp_id, a.fname, a.lname, a.superior_emp_id, b.emp_id, b.fname, b.lname
FROM employee a
INNER JOIN employee b ON a.superior_emp_id = b.emp_id
WHERE a.dept_id != b.dept_id;

-- Selecciona los empleados que tengan el mismo jefe de departamento

SELECT a.emp_id, a.fname, a.lname, a.superior_emp_id, b.emp_id, b.fname, b.lname, b.superior_emp_id
-- a.emp_id, a.fname, a.lname, a.superior_emp_id, a.dept_id, b.emp_id, b.fname, b.lname, b.superior_emp_id, b.dept_id
FROM employee a
INNER JOIN employee b ON a.superior_emp_id = b.emp_id
WHERE a.dept_id = b.dept_id;

-- Selecciona los empleados que tengan diferente jefe de departamento

SELECT a.emp_id, a.fname, a.lname, a.superior_emp_id, b.emp_id, b.fname, b.lname, b.superior_emp_id
-- a.emp_id, a.fname, a.lname, a.superior_emp_id, a.dept_id, b.emp_id, b.fname, b.lname, b.superior_emp_id, b.dept_id
FROM employee a
INNER JOIN employee b ON a.superior_emp_id = b.emp_id
WHERE a.dept_id != b.dept_id;

----------------------------------------------------------------------

-- SUBSELECT - SUBCONSULTA -- Temporary tables (i.e., rows returned by a Subquery - SUBSELECT)
-- Calcular el número de cuentas de cada cliente

SELECT c.cust_id, c.fed_id, c.cust_type_cd, CASE ( SELECT count(*)
                                                   FROM account a
                                                   WHERE a.cust_id = c.cust_id)
                                                    WHEN 0 THEN 'Ninguna' 
                                                    WHEN 1 THEN '1' 
                                                    WHEN 2 THEN '2' 
                                                    ELSE '3+' 
                                                    END num_cuentas_case
FROM customer c;

+---------+-------------+--------------+------------------+
| cust_id | fed_id      | cust_type_cd | num_cuentas_case |
+---------+-------------+--------------+------------------+
|       1 | 111-11-1111 | I            | 3+               |
|       2 | 222-22-2222 | I            | 2                |
|       3 | 333-33-3333 | I            | 2                |
|       4 | 444-44-4444 | I            | 3+               |
|       5 | 555-55-5555 | I            | 1                |
|       6 | 666-66-6666 | I            | 2                |
|       7 | 777-77-7777 | I            | 1                |
|       8 | 888-88-8888 | I            | 2                |
|       9 | 999-99-9999 | I            | 3+               |
|      10 | 04-1111111  | B            | 2                |
|      11 | 04-2222222  | B            | 1                |
|      12 | 04-3333333  | B            | 1                |
|      13 | 04-4444444  | B            | 1                |
+---------+-------------+--------------+------------------+

