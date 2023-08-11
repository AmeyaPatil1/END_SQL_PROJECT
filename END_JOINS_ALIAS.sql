CREATE DATABASE JOIN_SQL

USE JOIN_SQL

CREATE TABLE end_sql(
Namee1 VARCHAR(50),
Contact1 varchar(11),
City1 VARCHAR(50),
Referencee1 VARCHAR(50),
Handled_By1 VARCHAR(50),
Leadd1 VARCHAR(20),
Converted1 VARCHAR(20),
To_Be_Converted1 VARCHAR(20)
)

SELECT * FROM END_SQL

CREATE TABLE end_sql2(
Namee2 VARCHAR(50),
Contact2 varchar(11),
City2 VARCHAR(50),
Referencee2 VARCHAR(50),
Handled_By2 VARCHAR(50),
Leadd2 VARCHAR(20),
Converted2 VARCHAR(20),
To_Be_Converted2 VARCHAR(20)
)

SELECT * FROM END_SQL2

/* Performing Joins on aove two data */

SELECT *
FROM END_SQL AS A
INNER JOIN
END_SQL2 AS B 
ON A.CONTACT1 = B.CONTACT2

SELECT *
FROM END_SQL AS A
INNER JOIN
END_SQL2 AS B 
ON A.CONTACT1 = B.CONTACT2
/* There is no common contact in both data tables*/
/* Inner join provides us output when there is matching values in the dataset*/



/* I m pasting two rows from table 1 to table 2*/
INSERT INTO END_SQL2(NAMEE2,CONTACT2,CITY2,REFERENCEE2,HANDLED_BY2,LEADD2,CONVERTED2,TO_BE_CONVERTED2)
VALUES
('Neha Kumari',7299972399,'Madhya Pradesh','Investment Leads','Akash Sharma','Active lead','NO','NO'),
('Mohammed Imran',9932228741,'Hydrabad','Investment Leads',	'Suryakant Choudhary',	'End Lead',	'NO',	'NO')

SELECT * FROM END_SQL2



/* Now if we perform inner join on both data we will able to get this above records*/
SELECT *
FROM END_SQL AS A
INNER JOIN
END_SQL2 AS B 
ON A.CONTACT1 = B.CONTACT2
/*The INNER JOIN Keyword selects records that have matching values in both tables*/


/* Inner join can join 3 tables too */
/*Let create a data as third table */
CREATE TABLE END_SQL3(
Namee3 VARCHAR(50),
Contact3 varchar(11),
City3 VARCHAR(50),
Referencee3 VARCHAR(50),
Handled_By3 VARCHAR(50),
Leadd3 VARCHAR(20),
Converted3 VARCHAR(20),
To_Be_Converted3 VARCHAR(20)
)

/*Inserting two rows in third table*/
INSERT INTO END_SQL3(NAMEE3,CONTACT3,CITY3,REFERENCEE3,HANDLED_BY3,LEADD3,CONVERTED3,TO_BE_CONVERTED3)
VALUES
('Neha Kumari',7299972399,'Madhya Pradesh','Investment Leads','Akash Sharma','Active lead','NO','NO'),
('Mohammed Imran',9932228741,'Hydrabad','Investment Leads',	'Suryakant Choudhary',	'End Lead',	'NO',	'NO');

SELECT * FROM END_SQL3

/* Joining three tables*/
SELECT *
FROM END_SQL AS A 
INNER JOIN END_SQL2 AS B  ON A.CONTACT1=B.CONTACT2
INNER JOIN END_SQL3 AS C ON
B.CONTACT2 = C.CONTACT3;

/* Showing selected column from tables*/
SELECT A.NAMEE1,A.CONTACT1,A.CITY1,A.REFERENCEE1,A.HANDLED_BY1,A.CONVERTED1
FROM END_SQL AS A
INNER JOIN END_SQL2 AS B ON
A.CONTACT1=B.CONTACT2


/* Right Join */
/* In Right join will give you all the data from 2nd table and matching data from table 1*/
/* The result is zero records from the left side, if there is no match */
SELECT *
FROM END_SQL AS A
LEFT JOIN END_SQL2 AS B ON
A.CONTACT1=B.CONTACT2

# Left Join 
/* In LEFT join will give you all the data from 1ST table and matching data from table 2ND*/
/* The result is zero records from the left side, if there is no match */
SELECT *
FROM END_SQL AS A 
LEFT JOIN END_SQL2 AS B ON
A.CONTACT1=B.CONTACT2

# Full Outer Join
/*The full join keyword returns all records when there is match in table 1 or table2 */
SELECT A.NAMEE1,A.CONTACT1,A.CONVERTED1,B.NAMEE2,B.CONTACT2,B.CONVERTED2
FROM END_SQL AS A 
FULL OUTER JOIN END_SQL2 AS B ON
A.CONTACT1=B.CONTACT2;
/* Note: Mysql version does not support Full join */

# Self Join
/* A self join is a regular join, but the table is joined with itself */
SELECT A.NAMEE1,A.CONTACT1,A.CONVERTED1,B.NAMEE2,B.CONTACT2,B.CONVERTED2
FROM END_SQL AS A ,
END_SQL2 AS B ;


# Cross Join
SELECT A.NAMEE1,A.CONTACT1,A.CONVERTED1,B.NAMEE2,B.CONTACT2,B.CONVERTED2
FROM END_SQL AS A 
Cross Join END_SQL2 AS B ON
A.CONTACT1=B.CONTACT2;
/* Returns Matching Records */
