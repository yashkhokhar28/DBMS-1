CREATE TABLE STUDENT
(			Rno INT,
			Name VARCHAR(50),
			Branch VARCHAR(50)
)

CREATE TABLE RESULT
(			Rno INT,
			Spi DECIMAL(4,2)
)

CREATE TABLE EMPLOYEE
(			EmployeeNo VARCHAR(50),
			Name VARCHAR(50),
			ManagerNo VARCHAR(50)
)

SELECT * FROM STUDENT;

SELECT * FROM RESULT;

SELECT * FROM EMPLOYEE;


INSERT INTO STUDENT VALUES(101,'RAJU','CE');
INSERT INTO STUDENT VALUES(102,'AMIT','CE');
INSERT INTO STUDENT VALUES(103,'SANJAY','ME');
INSERT INTO STUDENT VALUES(104,'NEHA','EC');
INSERT INTO STUDENT VALUES(105,'MEERA','EE');
INSERT INTO STUDENT VALUES(106,'MAHESH','ME');

INSERT INTO RESULT VALUES(101,8.8);
INSERT INTO RESULT VALUES(102,9.2);
INSERT INTO RESULT VALUES(103,7.6);
INSERT INTO RESULT VALUES(104,8.2);
INSERT INTO RESULT VALUES(105,7.0);
INSERT INTO RESULT VALUES(107,8.9);

INSERT INTO EMPLOYEE VALUES('E01','TARUN',NULL);
INSERT INTO EMPLOYEE VALUES('E02','ROHAN','E02');
INSERT INTO EMPLOYEE VALUES('E03','PRIYA','E01');
INSERT INTO EMPLOYEE VALUES('E04','MILAN','E03');
INSERT INTO EMPLOYEE VALUES('E05','JAY','E01');
INSERT INTO EMPLOYEE VALUES('E06','ANJANA','E04');

--1--
SELECT * FROM STUDENT
CROSS JOIN RESULT;

--2--
SELECT S.RNO,S.NAME,S.BRANCH,R.SPI
FROM STUDENT S
INNER JOIN RESULT R
ON S.RNO = R.RNO;

--7--
SELECT S.RNO,S.NAME,S.BRANCH,R.SPI
FROM STUDENT S
LEFT OUTER JOIN RESULT R
ON S.RNO = R.RNO;

--8--
SELECT S.RNO,S.NAME,S.BRANCH,R.SPI
FROM STUDENT S
RIGHT OUTER JOIN RESULT R
ON S.RNO = R.RNO;

--9--
SELECT S.RNO,S.NAME,S.BRANCH,R.SPI
FROM STUDENT S
FULL OUTER JOIN RESULT R
ON S.RNO = R.RNO;

--2--
SELECT S.RNO,S.NAME,S.BRANCH,R.SPI
FROM STUDENT S
LEFT OUTER JOIN RESULT R
ON S.RNO = R.RNO
WHERE S.BRANCH = 'CE';

--3--
SELECT S.RNO,S.NAME,S.BRANCH,R.SPI
FROM STUDENT S
LEFT OUTER JOIN RESULT R
ON S.RNO = R.RNO
WHERE S.BRANCH != 'EC';


--4--
SELECT S.BRANCH,AVG(R.SPI)
FROM STUDENT S
INNER JOIN RESULT R
ON S.RNO = R.RNO
GROUP BY S.BRANCH;

--5--
SELECT S.BRANCH,AVG(R.SPI)
FROM STUDENT S
INNER JOIN RESULT R
ON S.RNO = R.RNO
GROUP BY S.BRANCH
ORDER BY AVG(R.SPI);

--6--
SELECT S.BRANCH,AVG(R.SPI)
FROM STUDENT S
INNER JOIN RESULT R
ON S.RNO = R.RNO AND S.BRANCH IN('CE','ME')
GROUP BY S.BRANCH
ORDER BY AVG(R.SPI);

--10--
SELECT M.NAME,E.NAME
FROM EMPLOYEE E
INNER JOIN EMPLOYEE M
ON M.MANAGERNO = E.EmployeeNo;





















			