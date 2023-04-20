-- Getting started, do not update
DROP DATABASE IF EXISTS regifter;
CREATE DATABASE regifter;
\c regifter
-- End getting started code

--
-- Write your code below each prompt

--
\echo Create a table called gifts
-- with the following columns
-- id serial primary KEY
-- gift - string
-- giver - string
-- value - integer
-- previously_regifted boolean
--CREATE TABLE gifts(id serial, gift TEXT NOT NULL, giver TEXT, 
--value INT, previously_regifted BOOLEAN );

-- 
\echo See details of the table you created
-- Details of the table with column list with gift, giver,previously_registered and value listed in the column. I also 
--the  type of each of the column. There also see table collaboration,
--nullable and default . the default has the random generating of id 


-- 
\echo Alter the table so that the column price is changed to value 
-- ALTER TABLE gifts RENAME value TO price;
-- value is changed price

-- 
\echo Insert a peach candle, given by 'Santa' thats value is 9 and has been previously regifted
-- INSERT INTO
 --gifts (gift, giver, price, previously_registered)
VALUES
--('a peach candle', 'Santa', 9,true);


--
\echo Query for all the columns in your gifts table
-- the columns are id, gift,giver,price,previously_registered. now the id has been updated
-- with the id 1, gift updated with the text "a peach candle", giver updated with teh text "Santa"
--the value which was updated to price now has the number 9 and previous_registered with boolean t which is for true


--
\echo Uncomment below to insert 5 more gifts
-- 

-- INSERT INTO gifts (gift, giver, value, previously_regifted)
-- VALUES
-- ('peach candle', 'Santa', '9', TRUE),
-- ('cinnamon candle', 'Nick', '19', TRUE),
-- ('soap on a rope', 'Rudolf', '29', FALSE),
-- ('potpurri', 'Elf on the Shelf', '39', TRUE),
-- ('mango candle', 'The Boss', '49', FALSE)
-- ;

-- 
\echo Insert 5 more gifts of your own choosing,  include 1 more candle
--
INSERT INTO gifts (gift, giver, price, previously_regifted)
VALUES
('orande candle', 'Alice', '19', FALSE),
('a bottle of wine', 'Nick', '32', TRUE),
('soap on a rope', 'Rudolf', '45', FALSE),
('showergel', 'Elf on the Shelf', '98', TRUE),
('mango candle', 'The Boss', '34', TRUE)
;
\echo Query for gifts with a price greater than or equal to 20
--


--
\echo Query for every gift that has the word candle in it, only show the gift column
--
SELECT FROM gifts WHERE price >= 20
(7 rows)
--
\echo Query for every gift whose giver is Santa OR value is greater than 30
--
SELECT FROM gifts WHERE giver ='Santa' OR price > 30;
(8 rows)
--
\echo Query for every gift whose giver is NOT Santa
--
SELECT FROM gifts WHERE giver !='Santa';
(9 rows)
--
\echo Update the second gift to have a value of 2999
-- 
UPDATE gifts SET price = 2999 WHERE id = 2;

--
\echo Query for the updated item
--
id |       gift       |      giver       | price | previously_regifted
----+------------------+------------------+-------+---------------------
  1 | a peach candle   | Santa            |     9 | t
  3 | cinnamon candle  | Nick             |    19 | t
  4 | soap on a rope   | Rudolf           |    29 | f
  5 | potpurri         | Elf on the Shelf |    39 | t
  6 | mango candle     | The Boss         |    49 | f
  7 | orande candle    | Alice            |    19 | f
  8 | a bottle of wine | Nick             |    32 | t
  9 | soap on a rope   | Rudolf           |    45 | f
 10 | showergel        | Elf on the Shelf |    98 | t
 11 | mango candle     | The Boss         |    34 | t
  2 | peach candle     | Santa            |  2999 | t

--
\echo Delete all the gifts from Santa and return the 'value' and 'gift' of the gift you have deleted
--
DELETE FROM gifts WHERE id = 1;
DELETE 1
--
\echo Query for all the columns in your gifts table one more time
--
id |       gift       |      giver       | price | previously_regifted
----+------------------+------------------+-------+---------------------
  3 | cinnamon candle  | Nick             |    19 | t
  4 | soap on a rope   | Rudolf           |    29 | f
  5 | potpurri         | Elf on the Shelf |    39 | t
  6 | mango candle     | The Boss         |    49 | f
  7 | orande candle    | Alice            |    19 | f
  8 | a bottle of wine | Nick             |    32 | t
  9 | soap on a rope   | Rudolf           |    45 | f
 10 | showergel        | Elf on the Shelf |    98 | t
 11 | mango candle     | The Boss         |    34 | t
  2 | peach candle     | Santa            |  2999 | t
(10 rows)


-- BONUSES

--
 \echo Count the total number of gifts that have the word candle in it
-- 
SELECT COUNT(*) gift FROM gifts WHERE gift = 'candle' 

--
\echo Get the AVEREAGE value from all the gifts
--


-- 
 \echo Limit to 3 gifts, offset by 2 and order by price descending
--

--
-- finish
--
DROP TABLE IF EXISTS gifts;
