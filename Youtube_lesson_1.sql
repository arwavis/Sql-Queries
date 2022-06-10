/* This Shows the available Databases*/
show databases;
/* To use the database*/
use youtube_lesson;

/* To Show the Tables in the selected DB*/
show tables;
describe USERS;

/* Helps you alter the database columns*/
ALTER TABLE USERS
	ADD CITY varchar(50) NOT NULL,
    ADD CONTACT varchar(50) NOT NULL;
/* Helps you alter the database columns*/
ALTER TABLE USERS modify CONTACT varchar(25) NOT NULL;
/* Helps you Rename the Database*/
ALTER TABLE USERS RENAME TO STUDENTS;
describe STUDENTS;
/* INSERT Single Contact Method 1*/
INSERT INTO STUDENTS VALUES (NULL, 'RAM', 25, 'MALE','SALEM', 998776541);
/* INSERT Single Contact Method 2*/
INSERT INTO STUDENTS (NAME, AGE, GENDER, CITY, CONTACT) VALUES ('SAM', '23', 'MALE', 'COIMBATORE',9987603421);
/* INSERT Multiple Contact Method 2*/
INSERT INTO STUDENTS (NAME, AGE, GENDER, CITY, CONTACT) VALUES ('KRISH', 22, 'MALE', 'OOTY',9987604567),
																('RAMYA', 24, 'FEMALE', 'NAMAKKAL',9187604567),
                                                                ('PRINCE', 23, 'MALE','BANGALORE',9165604567),
                                                                ('SAM', '23', 'MALE', 'COIMBATORE',9987603421),
																('RAM', 25, 'MALE','SALEM', 998776541),
                                                                ('LAKSHMAN', 23, 'MALE', 'BANGALORE', 998776545),
                                                                ('RAHUL', 23, 'MALE', 'COIMBATORE',998886545),
                                                                ('YOKESH', 21, 'MALE','SALEM',888886545),
                                                                ('MALATHI', 21, 'FEMALE','SALEM',788886545),
                                                                ('KARTHIKA',23, 'FEMALE','NAMAKKAL',9187604564);
/* How to delete a user in the table*/
DELETE FROM STUDENTS WHERE ID =4;

/* How to update the users CITY*/
UPDATE STUDENTS SET CITY ='HOSUR', CONTACT =9987765416 WHERE ID = 1;
/* Shows the data in the slected table*/

/*How to truncate the table*/
TRUNCATE TABLE STUDENTS;
SELECT * FROM STUDENTS;
/* How to get the selected column*/
SELECT NAME,AGE FROM STUDENTS;
SELECT NAME,AGE,CITY FROM STUDENTS WHERE CITY ='SALEM';
SELECT NAME,AGE,CITY FROM STUDENTS WHERE CITY ='SALEM' AND AGE>=23;
SELECT NAME,AGE,CITY FROM STUDENTS WHERE CITY ='SALEM' OR CITY ='BANGALORE';
SELECT NAME,AGE,CITY FROM STUDENTS WHERE (CITY ='SALEM' OR CITY ='BANGALORE')  AND AGE>=23 ORDER BY CITY;
SELECT CITY FROM STUDENTS;
/* The above query gets you duplicate values and to ignore duplicates*/
 SELECT DISTINCT CITY FROM STUDENTS;
 /* To get the count of all city*/
 SELECT COUNT(CITY) FROM STUDENTS; 
 /* To get the count of distict city*/
 SELECT COUNT(DISTINCT CITY) FROM STUDENTS; 
 /* To provide a Alias Name*/
 SELECT COUNT(DISTINCT CITY) AS TOTAL FROM STUDENTS;
 /* To get pagination*/
 SELECT * FROM STUDENTS LIMIT 5,10;
 /* To get the last record*/
 SELECT * FROM STUDENTS ORDER BY ID DESC LIMIT 0,1;
 /* To get max value*/
 SELECT MAX(AGE) FROM STUDENTS;
 
 /* To get min value*/
 SELECT MIN(AGE) FROM STUDENTS;
 
  /* To get Average value*/
 SELECT AVG(AGE) FROM STUDENTS;
/* To get Rounded Average value*/
 SELECT ROUND(AVG(AGE),0) FROM STUDENTS;
 
 /* To get sum of values*/
  SELECT SUM(AGE) FROM STUDENTS;
  
/* Gender wise count report*/
SELECT GENDER, COUNT(ID)FROM STUDENTS;
SELECT GENDER, COUNT(ID) AS TOTAL FROM STUDENTS group by GENDER;
SELECT CITY, COUNT(ID) AS TOTAL FROM STUDENTS group by CITY;

/* Wild Card search*/
SELECT NAME FROM STUDENTS WHERE NAME LIKE 'RA%';
SELECT NAME FROM STUDENTS WHERE NAME LIKE '%AM%';
SELECT NAME FROM STUDENTS WHERE NAME LIKE '%LA%';
SELECT * FROM STUDENTS WHERE NAME NOT LIKE 'RA%';

/* using IN how to query*/
SELECT * FROM STUDENTS WHERE CITY ='SALEM' OR CITY='NAMAKKAL';

/* using IN */
SELECT * FROM STUDENTS WHERE CITY IN ('SALEM', 'NAMAKKAL');

/* using NOT IN */
SELECT * FROM STUDENTS WHERE CITY NOT IN ('SALEM', 'NAMAKKAL');

show databases;
use youtube_lesson;
show tables;
SELECT * from students;
SELECT * FROM STUDENTS WHERE CITY NOT IN ('SALEM', 'NAMAKKAL') order by CITY;

/*To get data where Age between 21 to 23*/
SELECT NAME,AGE FROM STUDENTS WHERE AGE BETWEEN 21 AND 23;
SELECT NAME,AGE FROM STUDENTS WHERE AGE NOT BETWEEN 21 AND 23;

/* To use WHEN AND THEN
OOTY = 400
NAMAKKAL = 350
BANGALORE =500
COIMBATORE = 450
SALEM = 600
*/
SELECT NAME, CITY,
(
CASE
WHEN CITY = 'OOTY' THEN 400
WHEN CITY = 'NAMAKKAL' THEN 350
WHEN CITY = 'BANGALORE' THEN 500
WHEN CITY = 'COIMBATORE' THEN 450
WHEN CITY = 'SALEM' THEN 600
END

) AS AMT
FROM STUDENTS ORDER BY AMT;
