CREATE TABLE EMPLOYEES
(					EID INT NOT NULL,
					ENAME VARCHAR(50) NOT NULL,
					DEPARTMENT VARCHAR(50) NOT NULL,
					SALARY DECIMAL(8,2) NOT NULL,
					JOININGDATE DATETIME NOT NULL, 
					CITY VARCHAR(50) NOT NULL
) 

SELECT * FROM EMPLOYEES


INSERT INTO EMPLOYEES VALUES(101,'RAHUL','ADMIN',56000,'1-JAN-90','RAJKOT');
INSERT INTO EMPLOYEES VALUES(102,'HARDIK','IT',18000,'25-SEP-90','AHEMDABAD');
INSERT INTO EMPLOYEES VALUES(103,'BHAVIN','HR',25000,'14-MAY-91','BARODA');
INSERT INTO EMPLOYEES VALUES(104,'BHOOMI','ADMIN',39000,'8-FEB-91','RAJKOT');
INSERT INTO EMPLOYEES VALUES(105,'ROHIT','IT',17000,'23-JUL-90','JAMNAGAR');
INSERT INTO EMPLOYEES VALUES(106,'PRIYA','IT',9000,'18-OCT-90','AHEMDABAD');
INSERT INTO EMPLOYEES VALUES(107,'NEHA','HR',34000,'25-DEC-91','RAJKOT');


SELECT MAX(SALARY) As Maximum, MIN(SALARY) As Minimum, AVG(SALARY) As Avg_Sal,
SUM (salary) As Total_Sal
FROM EMPLOYEES 

SELECT COUNT(ENAME) FROM EMPLOYEES;

SELECT MAX(SALARY) AS MAX_SAL FROM EMPLOYEES WHERE DEPARTMENT = 'IT';

SELECT COUNT(DISTINCT CITY) FROM EMPLOYEES

SELECT CITY,COUNT(ENAME) FROM EMPLOYEES GROUP BY CITY

SELECT CITY FROM EMPLOYEES GROUP BY CITY HAVING COUNT(ENAME)>1;

SELECT DEPARTMENT,SUM(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT;

SELECT DEPARTMENT,AVG(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT;

SELECT MIN(SALARY) FROM EMPLOYEES WHERE CITY = 'AHEMDABAD';

SELECT DEPARTMENT FROM EMPLOYEES  WHERE CITY = 'RAJKOT' GROUP BY DEPARTMENT HAVING SUM(SALARY)>50000;

SELECT COUNT(ENAME) FROM EMPLOYEES WHERE CITY = 'RAJKOT';

SELECT MAX(SALARY)-MIN(SALARY) AS SAL_DIFFRENCE FROM EMPLOYEES;

SELECT COUNT(ENAME) FROM EMPLOYEES WHERE JOININGDATE<'01-JAN-91';


SELECT SUM(SALARY) FROM EMPLOYEES HAVING SUM(SALARY) > 35000 ORDER BY SUM(SALARY);

SELECT DEPARTMENT FROM EMPLOYEES   GROUP BY DEPARTMENT HAVING COUNT(EID)>2 ;

SELECT MIN(SALARY) FROM EMPLOYEES WHERE CITY = 'RAJKOT';

SELECT COUNT(ENAME),CITY FROM EMPLOYEES GROUP BY CITY;

SELECT MIN(SALARY),DEPARTMENT FROM EMPLOYEES GROUP BY DEPARTMENT;

SELECT SUM(SALARY) FROM EMPLOYEES GROUP BY CITY;

SELECT SUM(SALARY),MIN(SALARY),MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT;






