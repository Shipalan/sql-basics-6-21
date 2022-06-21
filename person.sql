CREATE TABLE person (
  id serial primary key,
  name VARCHAR(30),
  age INTEGER,
  height INTEGER,
  city VARCHAR(50),
  favorite_color VARCHAR(30) );

--Adding people--------------------------------------------------------------------------------------------

INSERT INTO person (name, age, height, city, favorite_color) VALUES ('Alan', 26, 198, 'Washington', 'Red'),
('Aubrey', 24, 155, 'Washington', 'Blue'),
('Todd', 53, 195, 'Saratoga_Springs', 'Blue'),
('Bekka', 48, 155, 'Herriman', 'Purple'),
('Mike', 31, 155, 'Washington', 'Green');

--Selecting all people and sorting by height from tallest to shortest---------------------------------------

SELECT * FROM person ORDER BY height DESC ;

--Selecting all people and sorting by height from shortest to tallest--------------------------------------

SELECT * FROM person ORDER BY height ASC ;

--Selecting all people and sorting by age oldest to youngest-----------------------------------------------

SELECT * FROM person ORDER BY age DESC ;

--Select all the people in the person table older than age 20-----------------------------------------------

SELECT * FROM person WHERE age > 20 ;

--Select all the people in the person table that are exactly 18.----------------------------------------------

SELECT * FROM person WHERE age = 18 ;

--Select all the people in the person table that are less than 20 and older than 30.--------------------------

SELECT * FROM person WHERE age <20 OR age >30;

--Select all the people in the person table that are not 27-------------------------------------

SELECT * FROM person WHERE age <> 27;

--Select all the people in the person table where their favorite color is not red------------------------------

SELECT * FROM person WHERE favorite_color = 'Red';

--Select all the people in the person table where their favorite color is not red and is not blue-----------------

SELECT * FROM person WHERE favorite_color <> 'Red' AND favorite_color <> 'Blue';

--Select all the people in the person table where their favorite color is orange or green.------------------------

SELECT * FROM person WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

--Select all the people in the person table where their favorite color is orange, green or blue (use IN)----------

SELECT * FROM person WHERE favorite_color IN ('Orange', 'Green', 'Blue');

--Select all the people in the person table where their favorite color is yellow or purple (use IN)----------------

SELECT * FROM person WHERE favorite_color IN ('Yellow', 'Purple');