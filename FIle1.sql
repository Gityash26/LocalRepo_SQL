/*

================================================================================================================
_______________Creating  A DATABASE_____________________________________________________________________________
================================================================================================================
-> Before writing any instruction first we have to initilize a Data Base.
syntax:
         CREATE DATABASE <db_name>;
*/

CREATE DATABASE College;



/*
================================================================================================================
_______________Using  A DATABASE________________________________________________________________________________
================================================================================================================
-> After Initilizing a Data Base we can have multiple DataBases at the same time.
   So writing instruction for a specific Data Base we have to call it as 
   syntax:
             USE <db_name>;
*/

USE College;
 
 
/*
================================================================================================================
________________CREATING TABLES______________________________________________________________________________
================================================================================================================
-> Data Base is working on Tables and their Data so it helps to create Tables.
syntax : 
          CREATE TABLE <table_name>
          (
          column_name1 datatype constraints,
          column_name2 datatype constraints
          );
          
*/

CREATE TABLE Student (
    ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    AGE INT NOT NULL
);



/*
================================================================================================================
_______________INSERTING DATA INTO TABLES____________________________________________________________________
================================================================================================================
syntax : 
			INSERT INTO table_name VALUES(value1 , value2 , value3);
            
            :::::::::::::::::::::: OR ::::::::::::::::::::::::::::::::
            
syntax for inserting multiple values:
		   INSERT INTO table_name
           (column1, column2)
           VALUES
           (col1_v1,col2,v2),
           (col1_v2,col2,v2);
*/
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
INSERT INTO Student VALUES(1,"Yash Sharma",21);
INSERT INTO Student VALUES(2,"Sanjay Kumar",22);
INSERT INTO Student VALUES(3,"Kunal Kushwaha",20);

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

INSERT INTO Student
(ID,NAME,AGE)
VALUES
(4,"Navikant",18),
(5,"Himashu",23),
(6,"Sachin",42);
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



SELECT *FROM Student;





/*
================================================================================================================
______________________DATA TYPES IN SQL_________________________________________________________________________
================================================================================================================
CHAR        ->  Store String(0-255) : fixed length
VARCHAR     ->  Store String(0-255) : Upto given Length
BLOB        ->  Store String(0-65535)
INT         ->  Store Integers Value : (-2,147,483,649 to 2,147,483,647)
TINYINT     ->  Store Integer Value  : (-128 to 127)
BIGINT      ->  Store Integer Value  : (-9,223,372,036,854,775,808 to 9,223,372,036,854,775,807)
BIT         ->  Store x-bit Values   : x range(1 to 64) 
FLOAT       ->  Store Decimal Values : precision to 23 digits
DOUBLE      ->  Store Decimal Values : precision to 24 to 53 digits
BOOLEAN     ->  Store Bool Value     : (0 or 1)
DATE        ->  Store Date in formate: (YYYY-MM-DD) in range (1000-01-01 to 9999-12-31)
YEAR        ->  Store Year           : In 4 digit formate range (1901 to 2155) 



================================================================================================================
:::::::::> Signed and Unsigned <::::::
================================================================================================================
                                        
                                        NUMERIC VALUES
									  ___________|_____________
									 |                         | 			
							 (positive)                    (Negative)
							  Unsigned                       Signed        

-> Signed TINYINT range (-128 to 127)        

-> Unsigned TINYINT range (0 to 255)           
Make TINYINT as Unsigned helps to increase its range as (-ve no. now takes +ve digits place)   
        
        
        
	

================================================================================================================
___________________________________________Types Of SQL Commands________________________________________________
================================================================================================================
DDL (Data Defination Language)       :    Working on Schema Part (Create, Alter, Rename, Truncate, Drop)
DQL (Data Query Language)            :    Displaying Data-Base Data (Select Command)
DML (Data Manipulation Language)     :    Working on Instance(Data) Part (Insert, Update, Delete)
DCL (Data Control Language)          :    Grant and Revoke Permissions to Users (Access Control)
TCL (Transaction COntrol Language)   :    Working with (Transactions, Rollback, Commit etc)
    
    
    
    
    
    
    

================================================================================================================
___________________________________________Data Base Related Queries________________________________________________
================================================================================================================
-> IF EXIST
-> IF NOT EXISTS

Those "IF EXIST" and "IF NOT EXISTS" queries are helps to check for the existance of some entity.
This will help to raise a proper warning instead of error.
ex: 
     ~ Before creating a database we can check if it is already exist or not
     ~ Before Drop a database we can check if it is already exist or not
     
syntax :  CREATE DATABASE IF NOT EXIST <db_name>;
		  DROP DATABASE IF EXIST <db_name>;
*/                                 




/*
================================================================================================================
_________________CLosing DATABASE_______________________________________________________________________________
================================================================================================================
-> It helps to close Data Base
syntax:
           DROP DATABASE
*/
DROP DATABASE College;









/*
================================================================================================================
____________________________________Question Time_______________________________________________________________
================================================================================================================
Q: Create a database for your company named XYZ

STep1: Create a table inside the database to store employee info (id, name, salary).

Step2: Add following Information into Database:
	1, "Adam", 25000
    2, "Bob", 30000
    3, "Casey", 40000
    
Step3: Select and View you Table
*/
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
CREATE DATABASE XYZ;

USE XYZ;

CREATE TABLE Employee (
    ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    SALARY INT UNSIGNED
);

INSERT INTO Employee
(ID,NAME,SALARY)
VALUES
(1, "Adam", 25000),
(2, "Bob", 30000),
(3, "Casey", 40000);

SELECT *FROM Employee;

DROP DATABASE XYZ;
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~








