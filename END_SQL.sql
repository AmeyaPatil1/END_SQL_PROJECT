CREATE DATABASE END_project;

USE END_Project;
CREATE TABLE end_sql(
Namee VARCHAR(50),
Contact varchar(11),
City VARCHAR(50),
Referencee VARCHAR(50),
Handled_By VARCHAR(50),
Leadd VARCHAR(20),
Converted VARCHAR(20),
To_Be_Converted VARCHAR(20)
)


/*End Project sales dataa*/

SELECT * FROM end_sql               
-- Extracting data from database:

SELECT COUNT(*) FROM end_sql        
/*Count of number of rows in sales data*/

SELECT COUNT(*) 
FROM end_sql
WHERE Leadd= 'Hot Lead';
/*Counts for customers who have given HOT LEAD(willing to buy the product):*/

SELECT *
FROM end_sql
WHERE Leadd = 'Hot Lead';
/*-By this query we get data of customers who are willing to buy product---*/

SELECT COUNT(DISTINCT(CITY))
FROM end_sql
/* By this query we get to know distinct cities available in data---*/

SELECT DISTINCT(CITY)
FROM end_sql
/*-Names of Ditinct cities:*/

SELECT COUNT(City)
FROM end_sql
Where leadd='Hot Lead'
/*--By this query we get to count of Distinct cities ---*/

SELECT CITY
FROM end_sql
WHERE Leadd='Hot Lead'
GROUP BY CITY
ORDER BY CITY DESC;
/*--- This are cities which has HOT LEAD---*/

SELECT CITY,COUNT(*) As MajorCities
FROM end_sql
WHERE Leadd='Hot Lead'
GROUP BY CITY
ORDER BY MajorCities DESC;  
/*---By this query we get to know which city has more Hot lead---*/

SELECT COUNT(DISTINCT(Handled_By)) 
FROM end_sql 
/*---We get to know counts of employees who works---*/

SELECT DISTINCT(Handled_By) 
FROM end_sql 
/*---We get to know distinct Names of Employees---*/

SELECT *
FROM END_SQL
WHERE CONVERTED='YES'
/*---To know details of customers who had buyed product---*/

SELECT Handled_BY,count(Handled_by) as customers_handled
FROM end_sql
GROUP BY Handled_by
ORDER BY customers_handled DESC;
/*---By this query we get to know how many customers each employee had handled---*/

SELECT Handled_by,count(Handled_by) as end_counts
FROM end_sql
WHERE Leadd='END LEAD'
GROUP BY Handled_by
ORDER BY end_counts DESC;
/*--By this query we get to know which emp has num of counts of end lead---*/

SELECT Handled_by,count(Handeled_by) as active_counts
FROM end_sql
WHERE Leadd='ACTIVE LEAD' 
GROUP BY Handled_by
ORDER BY active_counts DESC;
/*---By this query we get to know which emp has num of counts of Active lead---*/


SELECT Handled_by,count(*) as hot_counts
FROM end_sql
WHERE Leadd='HOT LEAD'
GROUP BY Handled_by
ORDER BY hot_counts DESC;
/*---By this query we get to know which emp has num of counts of hot lead---*/

SELECT Handled_by,count(Converted) as hot_counts_converted
FROM end_sql
WHERE Leadd='HOT LEAD' AND Converted='YES' 
GROUP BY Handled_by
ORDER BY hot_counts_converted;
/*---By this query we get to know which emp has num of counts of hot lead and converted the customer---*/

SELECT REFERENCEE, COUNT(REFERENCEE) AS COUNTS_REF
FROM END_SQL
GROUP BY REFERENCEE
ORDER BY COUNTS_REF DESC;
/*-- By this query we get to know counts of each referencee in this data---*/


SELECT REFERENCEE, COUNT(REFERENCEE) AS COUNTS_REF_active
FROM END_SQL
WHERE LEADD='Active Lead'
GROUP BY REFERENCEE
ORDER BY COUNTS_REF_active DESC;
/*---This are counts for active leadd---*/

SELECT REFERENCEE, COUNT(REFERENCEE) AS COUNTS_REF_end
FROM END_SQL
WHERE LEADD='END LEAD'
GROUP BY REFERENCEE
ORDER BY COUNTS_REF_end DESC;
/*---This are counts for end lead*/

SELECT REFERENCEE, COUNT(REFERENCEE) AS COUNTS_REF_hot
FROM END_SQL
WHERE LEADD='HOT LEAD'
GROUP BY REFERENCEE
ORDER BY COUNTS_REF_hot DESC; 
/*---This are counts for hot lead---*/

SELECT Namee,Contact,City,Converted,Leadd
FROM END_SQL
WHERE Converted='YES' 
ORDER BY NAMEE;
/*---This are customers details that are already converted---*/


SELECT *
FROM END_SQL
WHERE TO_BE_CONVERTED='YES' 
/*---This are customers details that are going to convert---*/

SELECT *
FROM END_SQL
WHERE NOT To_Be_Converted='NO'
/*---By this we get data of customers who are converted and will be converted---*/

SELECT Handled_by,Count(Handled_By) as Count_yes
FROM END_SQL
WHERE Converted='YES'
GROUP BY Handled_by
ORDER BY Count_yes DESC;
/*---Employees who has more customers converted---*/

SELECT CITY,COUNT(CITY) AS COUNT_CITY
FROM END_SQL
WHERE Converted='YES'
GROUP BY CITY
ORDER BY COUNT_CITY DESC;
/*---Customer from which city are more converted---*/



/*---We have one error in this data, we will to solve it by update command---*/
SELECT *
FROM END_SQL
WHERE Converted='YES' AND To_Be_Converted='YES'
/*---Here in TO_Be_Converted it should have been converted instead of 'YES'---*/

UPDATE END_SQL
SET To_Be_Converted='Coverted'
WHERE Namee='lucas w' 
LIMIT 1;
/*---Updated feature To_Be_Converted---*/

/*---Here we have spelling mistake for 'converted'---*/
UPDATE END_SQL
SET TO_BE_CONVERTED='Converted'
WHERE TO_BE_CONVERTED='Coverted'
LIMIT 90;

  
SELECT *
FROM END_SQL
WHERE Leadd='Hot Lead'
/*---For checking purpose---*/

SELECT *
FROM END_SQL
WHERE NOT TO_BE_CONVERTED='NO'
/*--For cheking purpose--*/

SELECT *
FROM END_SQL
WHERE LEADD LIKE 'H%';
/*---Finding any value starting with H in Leadd feature---*/

SELECT * 
FROM END_SQL
WHERE CONVERTED LIKE 'YES';
/*---Finding customers who had buyed the product---*/

SELECT *
FROM END_SQL
WHERE TO_BE_CONVERTED NOT LIKE '%O';
/*---Finding customers who will be buying the product and had purchsed---*/

SELECT *
FROM END_SQL
WHERE CITY REGEXP '^M';  
/*---Matching beginning of the string from city column---*/


SELECT *
FROM END_SQL
WHERE LEADD REGEXP '^H';
/*--Finding any value starting with H in Leadd feature---*/


SELECT * 
FROM END_SQL
WHERE CONVERTED REGEXP 'YES';
/*---Finding customers who had buyed the product---*/

SELECT *
FROM END_SQL
WHERE TO_BE_CONVERTED NOT REGEXP 'NO';
/*---Finding customers who will be buying the product and had purchsed---*/


SELECT *
FROM END_SQL
WHERE CONVERTED LIKE 'YES' AND REFERENCEE LIKE 'FB';
-- Finding customers who got reference from Fb and have purchased the product:
/*--Similary we can find for other references too:*/


