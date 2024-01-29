/*
======================================================================================================================
========= Keys in Data Base =========================================================================================
======================================================================================================================
(1) Primary Key:
->  It is a column in a Table that uniquely identifies each row.(a Unique Id)
    There is only 1 Primary key for a Table and NOT NULL.

     Ex-> :: "STUDENT TABLE":: (Roll no. is considered as Primary Key)
	_________________________________________________________________
    |___RollNO.____|_____NAME_____|_____AGE_____|___Father_Name_____|
    |      1       |   Yash       |      21     |    abc            |
    |      2       |   Kunal      |      22     |    efg            |
    |______3_______|___Sanjay_____|______20_____|____xyz____________|
    
    
(2) Foreign Key:
->  A Foreign key is a column or set of column in a table that refers or points to the Primary Key of Another Table.
    Foreign Key can be multiple or Null.
    for example: 
    
    Student Table                                   foreign Key                        City Table
    ______________________________________________________|___________               __________________________
    |___RollNO.____|_____NAME_____|_____AGE_____|_______CITY________|               |____Id_____|___City______|
    |      1       |   Yash       |      21     |       1           |               |     1     |    Noida    |
    |      2       |   Kunal      |      22     |       2           |               |     2     |    Delhi    |
    |______3_______|___Sanjay_____|______20_____|_______3___________|               |_____3_____|____Pune_____|
                                                        |                                 /|\
														|__________________________________|
                                                                  Pointing







======================================================================================================================
========= Constraints in Data Base ===================================================================================
======================================================================================================================
-> Constraints are used to specify rules for data of tables. Suppose we wants to enter age data into the table but only 
   those ages that are more than 18 So we require to apply some conditions.
ex:
(1) NOT NULL    :- Column not have any Null values

(2) UNIQUE      :- All Values in Column are different

(3) PRIMARY KEY :- Makes a column Unique and Not Null both

(4) FOREIGN KEY :- Declare a link between two Tables (foreign Key Column)

(5) DEFAULT      :- Set a Default VAlue for a Column   

(6) CHECK        :- Check Contraints used to apply limit on values
*/


CREATE DATABASE IF NOT EXISTS Constraints;

USE Constraints;


CREATE TABLE City_Table
(
ID INT PRIMARY KEY,
CITY VARCHAR(30)
);

INSERT INTO City_Table 
VALUES
(1,"Noida"),
(2,"Delhi");

SELECT *FROM City_Table;

CREATE TABLE Student_Table
(
ID INT UNIQUE,
NAME VARCHAR(50),
AGE TINYINT NOT NULL,
City_ID INT,
salary INT UNSIGNED DEFAULT 20000,

PRIMARY KEY(ID,NAME),
FOREIGN KEY(City_ID) references City_Table(ID)
);

INSERT INTO Student_Table 
VALUES
(2,"Sanjay",21,2,2000),
(1,"yash",21,1,25000);


SELECT *FROM Student_Table;

DROP DATABASE constraints