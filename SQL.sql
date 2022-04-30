-- SQL => 

-- mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| analyst_dualcore   |
| bank               |
| dbMSMK             |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| world              |
+--------------------+

-- mysql> use analyst_dualcore;

-- clear screen on mac mysql> ⌥ + CMD + L
--
-- Exercises - mysql
-- Execute a shell 

source create_database_and_user.sql;

DROP USER 'books'@'localhost' ;
CREATE database books ;
CREATE USER 'books'@'localhost' identified by 'books' ;
GRANT ALL ON books.* to 'books'@'localhost' ;
FLUSH PRIVILEGES 

-- S.C.MacBookPro: ~$ /usr/local/mysql/bin/mysql -u books -p

-- mysql> source create_populate_tables_constraints.sql

-- 16. Listar autores cuyo apellido no sea Hull
mysql> SELECT au_id, au_fname, au_lname FROM authors WHERE au_lname <> 'Hull';

-- 17. Listar libros sin contrato ﬁrmado
mysql> SELECT title_name, contract FROM titles WHERE contract <> 1;

-- 18. Listar títulos publicados a partir del año 2001
SELECT title_name, pubdate 
FROM titles WHERE YEAR(pubdate) >= 2001;

-- 19. Listar títulos que han producido un beneﬁcio superior a 1.000.000.
SELECT title_name, (price * sales) as Revenue 
FROM titles
WHERE((price * sales) ) > 1000000

-- 21. Listar biografías cuyo precio es inferior a 20
SELECT title_name , type , price
FROM titles
WHERE type = 'biography' AND price < 20;

-- 22. Listar autores cuyo apellido empieza con una letra entre la H y la Z y su estado no es California
SELECT au_fname , au_lname 
FROM authors
WHERE au_lname BETWEEN 'H' AND 'Z' 
AND state <> 'CA' ;

SELECT au_fname, au_lname 
FROM authors 
WHERE au_lname >= 'H' AND au_lname <= 'Z' AND state <> 'CA' ;

--OJO ? -- IN
SELECT au_fname , au_lname  
FROM authors WHERE au_lname 
IN ('H' AND 'Z')  AND state <> 'CA';

--OJO ? -- IN
SELECT au_fname , au_lname  
FROM authors WHERE au_lname 
IN ('H' OR 'Z')  AND state <> 'CA';

--OJO ? -- IN
SELECT au_fname , au_lname 
FROM authors
WHERE au_lname IN ('H', 'Z') 
AND state <> 'CA' ;

-- 23. Listar autores que vivan en el estado de Nueva York, Colorado, o en la ciudad de San Francisco
SELECT au_fname, au_lname, state, city 
FROM authors
WHERE state = 'CO' OR state = 'NY' OR city = 'San Francisco' ;

-- 24. Listar todos los editores
SELECT * 
FROM publishers;

-- 25. Listar editores que viven o no viven en California
SELECT * 
FROM publishers
WHERE state = 'CA' OR state <> 'CA';

SELECT * 
FROM publishers
WHERE state = 'CA' OR state <> 'CA' OR state IS NULL;

-- 26. Listar autores que no viven en California
SELECT au_fname , au_lname , state 
FROM authors
WHERE state <> 'CA' OR state IS NULL;

-- 27. Listar libros cuyo precio no es inferior a 20 y que hayan vendido más de 15.000 copias
SELECT title_name, sales, price
FROM titles
WHERE price >= 20 and sales > 15000 ;

SELECT title_name, sales, price
FROM titles
WHERE NOT( price <20 ) and sales > 15000 ;

-- 28. Listar libros 1) cuyo tópico es historia o 2) cuyo tópico es biografía y su precio es inferiOR a 20
SELECT title_id, type, price 
FROM titles 
WHERE type ='history' OR ( type='biography' and not (price>20) ) ;

-- 29. Listar libros 1) cuyo tópico es historia o biografía AND 2) su precio es inferior a 20
SELECT title_id, type, price
FROM titles
WHERE ( price < 20 ) and (type = 'history' OR type = 'biography') ;

-- 30. Depurar
SELECT type , 
    CASE
        WHEN type = 'history' THEN 1
        ELSE 0  
    END as 'Hist?', 
    CASE
        WHEN type = 'biography' THEN 1
        ELSE 0  
    END as 'Bio?',
    price,
        CASE
           WHEN price < 20 THEN 1
           WHEN price IS NULL THEN price
        ELSE 0
    END as '<20?'
FROM titles ;

SELECT type, type = 'history' AS "Hist?", type = 'biography' AS "Bio?", price, price < 20 AS "<20?"
FROM titles;

-- 31. Listar autores cuyo apellido empieza por Kel
SELECT au_lname 
FROM authors
WHERE au_lname LIKE '%Kel%' ;

-- 32. Listar autores cuyo apellidos tienen ll (ele, ele) en la tercera y cuarta posición 
SELECT au_fname, au_lname 
FROM authors
WHERE au_lname LIKE '__ll%' ;

-- 33. Listar autores cuyo código postal empieza por 94
SELECT au_fname , au_lname , city , state , zip
FROM authors
WHERE zip LIKE '94%' ;

-- 34. Listar autores cuyo teléfono (phone) no empiece por 212, 415, o 303
SELECT au_fname , au_lname , city , state , zip
FROM authors
WHERE phone NOT LIKE '212%' 
  AND phone NOT LIKE '415%' 
  AND phone NOT LIKE '303%' ;

-- 35. Listar libros cuyo título contenga un %
SELECT title_name 
FROM titles 
WHERE title_name 
LIKE '%!%%' ESCAPE '!';

SELECT title_name 
FROM titles 
WHERE title_name 
LIKE "%?'%" ESCAPE '?';

-- 36. Listar autores cuyo código postal esté fuera del rango 20.000-89.999
SELECT au_fname , au_lname , city , state , zip
FROM authors
WHERE zip NOT BETWEEN '20000' AND '89999' ;

-- 37. Listar libros cuyo precio esté comprendido entre 10 y 19,95 (inclusive)
SELECT title_id, type, price
FROM titles
WHERE price BETWEEN '10' AND '19.95' ;

-- 38. Listar libros que se hayan publicado en el año 2000
SELECT title_id, type, price, pubdate
FROM titles
WHERE YEAR(pubdate) = 2000;

-- 39. Listar libros cuyo precio sea estrictamente superior a 10 y estrictamente inferior a 19,95 
SELECT title_id, type, price
FROM titles
WHERE price > 10 AND price < 19.95 ;

-- 40. Listar autores que no viven en ninguno de estos estados: Nueva York (NY), New Jersey (NJ), o California (CA).
SELECT au_fname , au_lname , city , state , zip
FROM authors
WHERE state NOT IN ('NY', 'NJ', 'CA') ;

-- 41. Listar libros que tengan un adelanto de 0, 1.000, o 5.000
SELECT title_id, advance
FROM royalties
WHERE advance IN (0, 1000, 5000) ;

--OJO ? -- 42. Listar libros que se publicaron el primer día del año 2000, 2001, o 2002
SELECT title_id, pubdate
FROM titles

-- 43. Listar editores que viven en California
SELECT pub_id ,city ,state , country
FROM publishers
WHERE STATE = 'CA'

LIKE, BETWEEN, IN … no pueden encontrar nulos.

-- 44. Listar editores que no viven en California
SELECT pub_id ,city ,state , country
FROM publishers
WHERE NOT (STATE = 'CA')

-- 45. Listar editores que no viven en California o cuyo estado es null
SELECT pub_id ,city ,state , country
FROM publishers
WHERE NOT (STATE = 'CA') OR STATE IS NULL

-- ór

SELECT pub_id ,city ,state , country
FROM publishers
WHERE STATE <> 'CA' OR STATE IS NULL

-- 46. Listar libros cuyo tema es biografía y su fecha de publicación no es null
SELECT title_id, type, pubdate 
FROM titles 
WHERE type = 'biography' AND pubdate IS NOT NULL;

-- 47. Creación de una columna derivada artiﬁcial
SELECT au_id, 2+3
FROM authors

SELECT au_id, au_fname, au_lname
FROM authors
ORDER BY 2 ;

-- 48. Listar libros con un 10% de descuento
SELECT title_id , price , 0.10 as "Discount" , price * (1- 0.10) as "New price" 
FROM titles

-- 49. Listar adelantos de libros con un valor en negativo
SELECT title_id , Advance*-1 AS "Advance"
FROM royalties

-- 50. Listar libros de biografías junto con las ventas que han generado (venta = price*sales) en orden descendiente
SELECT title_id , price*sales as "Revenue"
FROM titles 
WHERE type = 'biography'
ORDER BY 2 DESC

-- 51. Listar libros con el número de páginas divido por 10 como enteros y como decimales
SELECT title_id , pages , pages/10 , pages/10.0
FROM titles

SELECT title_id , pages , truncate(pages/10,0) AS "pages/10", pages/10.0 AS "pages/10.0"
FROM titles;

SELECT title_id, pages, pages DIV 10 AS "pages/10", pages/10.0 AS "pages/10.0" 
FROM titles;

-- 52. Listar autores con nombre y apellidos concatenados en una sola columna
SET sql_mode := 'PIPES_AS_CONCAT'; 
SELECT au_fname || ' ' || au_lname AS "Author name"
FROM authors