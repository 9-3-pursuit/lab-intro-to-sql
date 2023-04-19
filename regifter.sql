-- Getting started, do not update
DROP DATABASE IF EXISTS regifter;
CREATE DATABASE regifter;
\c regifter
-- End getting started code

--
-- Write your code below each prompt

--
\echo 1. Create a table called gifts
-- with the following columns
-- id serial primary KEY
-- gift - string
-- giver - string
-- value - integer
-- previously_regifted boolean


-- 
\echo 2. See details of the table you created
-- 


-- 
\echo 3. Alter the table so that the column price is changed to value 
-- 


-- 
\echo 4. Insert a peach candle, given by 'Santa' thats value is 9 and has been previously regifted
-- 


--
\echo 5. Query for all the columns in your gifts table
-- 


--
\echo 6. Uncomment below to insert 5 more gifts
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
\echo 7. Insert 5 more gifts of your own choosing,  include 1 more candle
--



--
\echo 8. Query for gifts with a price greater than or equal to 20
--


--
\echo 9. Query for every gift that has the word candle in it, only show the gift column
--


--
\echo 10. Query for every gift whose giver is Santa OR value is greater than 30
--


--
\echo 11. Query for every gift whose giver is NOT Santa
--


--
\echo 12. Update the second gift to have a value of 2999
-- 


--
\echo 13. Query for the updated item
--


--
\echo 14. Delete all the gifts from Santa and return the 'value' and 'gift' of the gift you have deleted
--


--
\echo 15. Query for all the columns in your gifts table one more time
--



-- BONUSES

--
 \echo Count the total number of gifts that have the word candle in it
-- 


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
