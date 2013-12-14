-- DATABASE EXPLORATION

SHOW TABLES FROM books;

DESCRIBE books.authors;
SELECT COUNT(au_id)
 from books.authors;


DESCRIBE books.employees;
SELECT COUNT(emp_id)
 from books.employees;

-- Grouped by single fields
SELECT DISTINCT pub_name, COUNT(state)
FROM books.publishers
GROUP BY state;

-- Grouped by tuples
SELECT DISTINCT pub_name, COUNT(state), state
FROM books.publishers
GROUP BY state, pub_name;

-- JOINS
SELECT a.*, p.*
from books.authors a
LEFT OUTER JOIN books.publishers p
on a.city = p.city;

-- 2
SELECT a.au_id, au_fname, au_lname, a.city,p.pub_name,p.city
from books.authors a
INNER JOIN books.publishers p
on a.city = p.city;

-- 4 Lists only author IDs for those that are in the same city as the publisher
SELECT a.au_id
from books.authors a
INNER JOIN books.publishers p
on a.city = p.city;

