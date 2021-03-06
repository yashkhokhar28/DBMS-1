CREATE TABLE STUDENTS
(				RNO INT,
				NAME VARCHAR(50),
				BRANCH VARCHAR(50)
)

CREATE TABLE RESULTS
(				RNO INT,
				SPI DECIMAL(4,2)
)

SELECT * FROM STUDENTS;

SELECT * FROM RESULTS;

INSERT INTO STUDENTS VALUES(101,'RAJU','CE');
INSERT INTO STUDENTS VALUES(102,'AMIT','CE');
INSERT INTO STUDENTS VALUES(103,'SANJAY','ME');
INSERT INTO STUDENTS VALUES(104,'NEHA','EC');
INSERT INTO STUDENTS VALUES(105,'MEERA','EE');
INSERT INTO STUDENTS VALUES(106,'MAHESH','ME');

INSERT INTO RESULTS VALUES(101,8.8);
INSERT INTO RESULTS VALUES(102,9.2);
INSERT INTO RESULTS VALUES(103,7.6);
INSERT INTO RESULTS VALUES(104,8.2);
INSERT INTO RESULTS VALUES(105,7.0);
INSERT INTO RESULTS VALUES(107,8.9);


--1--
CREATE PROCEDURE GetStudentDetails
AS
BEGIN
SELECT STUDENTS.RNO,STUDENTS.NAME,STUDENTS.BRANCH,RESULTS.SPI
FROM STUDENTS
FULL OUTER JOIN RESULTS
ON STUDENTS.RNO=RESULTS.RNO
END

exec GetStudentDetails;


--2--
CREATE PROCEDURE GetStudentDetailsByRollNo
@Rno INT
AS
BEGIN
SELECT * FROM STUDENTS
WHERE Rno=@Rno
END;

exec GetStudentDetailsByRollNo 105

--3--
CREATE PROCEDURE STUDENTINSERT
@RNO INT,
@NAME VARCHAR(50),
@BRANCH VARCHAR(50)
AS
BEGIN
INSERT INTO STUDENTS VALUES(@RNO,@NAME,@BRANCH)
END;

exec STUDENTINSERT 110,'YASH','CSE';

--4--
CREATE PROCEDURE UPDATESTUDENTBY_ID
@RNO INT,
@BRANCH VARCHAR(50)
AS
BEGIN
UPDATE STUDENTS
SET BRANCH = @BRANCH
WHERE RNO = @RNO;
END;

exec UPDATESTUDENTBYID 105,'CE';

--5--
CREATE PROCEDURE DELETESTUDENTBYRNO
@RNO INT
AS
BEGIN
DELETE FROM STUDENTS
WHERE RNO = @RNO
END;

exec DELETESTUDENTBYRNO 110;