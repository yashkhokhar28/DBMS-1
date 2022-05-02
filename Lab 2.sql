CREATE TABLE DEPOSIT
(		ACTNO INT,
		CNAME VARCHAR(50),
		BNAME VARCHAR(20),
		AMOUNT DECIMAL(8,2),
		ADATE DATETIME
)
CREATE TABLE BRANCH
(	BNAME VARCHAR(50),
	CITY VARCHAR(20)
)

CREATE TABLE CUSTOMERS
(	CNAME VARCHAR(50),
	CITY VARCHAR(50)
)


CREATE TABLE BORROW
(	LOANNO INT,
	CNAME VARCHAR(50),
	BNAME VARCHAR(50),
	AMOUNT DECIMAL(8,2)
)

SELECT * FROM DEPOSIT

INSERT INTO DEPOSIT VALUES(101,'ANIL','VRCE',1000.00,'01-MAR-95')
INSERT INTO DEPOSIT VALUES(102,'SUNIL','AJNI',5000.00,'04-JAN-96')
INSERT INTO DEPOSIT VALUES(103,'MEHUL','KAROLBAGH',3500.00,'17-NOV-95')
INSERT INTO DEPOSIT VALUES(104,'MADHURI','CHANDI',1200.00,'17-DEC-95')
INSERT INTO DEPOSIT VALUES(105,'PRMOD','M.G.ROAD',3000.00,'27-MAR-96')
INSERT INTO DEPOSIT VALUES(106,'SANDIP','ANDHERI',2000.00,'31-MAR-96')
INSERT INTO DEPOSIT VALUES(107,'SHIVANI','VIRAR',1000.00,'05-SEP-95')
INSERT INTO DEPOSIT VALUES(108,'KRANTI','NEHRU PLACE',5000.00,'02-JUL-95')
INSERT INTO DEPOSIT VALUES(109,'MINU','POWAI',7000.00,'10-AUG-95')


SELECT * FROM BRANCH

INSERT INTO BRANCH VALUES('VRCE','NAGPUR')
INSERT INTO BRANCH VALUES('AJNI','NAGPUR')
INSERT INTO BRANCH VALUES('KAROLBAGH','DELHI')
INSERT INTO BRANCH VALUES('CHANDI','NAGPUR')
INSERT INTO BRANCH VALUES('DHARAMPETH','BANGLORE')
INSERT INTO BRANCH VALUES('M.G.ROAD','BOMBAY')
INSERT INTO BRANCH VALUES('ANDHERI','BOMBAY')
INSERT INTO BRANCH VALUES('VIRAR','DELHI')
INSERT INTO BRANCH VALUES('NEHRU PLACE','BOMBAY')

SELECT * FROM CUSTOMERS

INSERT INTO CUSTOMERS VALUES('ANIL','CALCUTTA')
INSERT INTO CUSTOMERS VALUES('SUNIL','DELHI')
INSERT INTO CUSTOMERS VALUES('MEHUL','BARODA')
INSERT INTO CUSTOMERS VALUES('MANDAR','PATNA')
INSERT INTO CUSTOMERS VALUES('MADHURI','NAGPUR')
INSERT INTO CUSTOMERS VALUES('PRAMOD','NAGPUR')
INSERT INTO CUSTOMERS VALUES('SANDIP','SURAT')
INSERT INTO CUSTOMERS VALUES('SHIVANI','BOMBAY')
INSERT INTO CUSTOMERS VALUES('KRANTI','BOMBAY')
INSERT INTO CUSTOMERS VALUES('NAREN','BOMBAY')


SELECT * FROM BORROW

INSERT INTO BORROW VALUES(201,'ANIL','VRCE',1000.00)
INSERT INTO BORROW VALUES(206,'MEHUL','AJNI',5000.00)
INSERT INTO BORROW VALUES(311,'SUNIL','DHARAMOETH',3000.00)
INSERT INTO BORROW VALUES(375,'MADHURI','ANDHERI',2000.00)
INSERT INTO BORROW VALUES(375,'PRMOD','VIRAR',8000.00)
INSERT INTO BORROW VALUES(481,'KRANTI','NEHRU PLACE',3000.00)


--2.1--

SELECT * FROM DEPOSIT

SELECT * FROM BORROW 

SELECT * FROM CUSTOMERS 

SELECT ACTNO,CNAME,AMOUNT FROM DEPOSIT;

SELECT LOANNO,AMOUNT FROM BORROW;

SELECT * FROM BORROW
		WHERE BNAME='ANDHERI';

SELECT ACTNO,AMOUNT FROM DEPOSIT
		WHERE ACTNO<106;

SELECT CNAME FROM BORROW
		WHERE AMOUNT>5000;

SELECT CNAME FROM DEPOSIT
		WHERE ADATE>1-12-96;

SELECT CNAME FROM DEPOSIT
		WHERE ACTNO<105;

SELECT CNAME FROM CUSTOMERS
		WHERE CITY IN('NAGPUR','DELHI');

SELECT CNAME,BNAME FROM DEPOSIT
		WHERE AMOUNT>4000 AND ACTNO<105;

SELECT CNAME FROM BORROW
		WHERE AMOUNT>=3000 AND AMOUNT<=8000;

SELECT CNAME FROM DEPOSIT
		WHERE BNAME!='ANDHERI';

SELECT CNAME FROM BORROW
		WHERE AMOUNT IS NULL;

SELECT ACTNO,CNAME,AMOUNT FROM DEPOSIT
		WHERE BNAME IN('AJNI','KAROLBAGH') OR BNAME = 'M.G.ROAD' AND AMOUNT<104;

SELECT TOP 5 * FROM CUSTOMERS

SELECT TOP 3 *  FROM DEPOSIT
		WHERE AMOUNT>1000;

SELECT TOP 5 LOANNO,CNAME FROM BORROW
		WHERE BNAME!=('ANDHERI');

SELECT DISTINCT CITY FROM CUSTOMERS;

SELECT DISTINCT BNAME FROM BRANCH;

SELECT * FROM CUSTOMERS
		 ORDER BY CITY;

SELECT * FROM DEPOSIT
		ORDER BY AMOUNT DESC;

SELECT * FROM CUSTOMERS
		ORDER BY CITY;

SELECT DISTINCT CNAME AS UNI_Borrowers FROM BORROW;

--2.2--

UPDATE DEPOSIT
	SET AMOUNT=5000
		WHERE AMOUNT=3000;

UPDATE BORROW
	SET BNAME='C.G.ROAD'
		WHERE CNAME='ANIL';

UPDATE DEPOSIT
	SET ACTNO = 111 ,
	AMOUNT = 5000
		WHERE CNAME='SANDIP';

UPDATE BORROW
	SET AMOUNT = AMOUNT + (AMOUNT * 0.1)

UPDATE DEPOSIT
	SET AMOUNT = 5000
		WHERE ACTNO BETWEEN 103 AND 107;

UPDATE BORROW
	SET LOANNO = NULL
		WHERE LOANNO = 321;

UPDATE BORROW
	SET LOANNO = 401,BNAME='AJNI'
		WHERE LOANNO = 201 AND BNAME = 'VRCE';

UPDATE CUSTOMERS
	SET CNAME = 'ANIL JAIN'
		WHERE CNAME = 'ANIL';

UPDATE DEPOSIT
	SET CNAME = 'RAMESH',
	BNAME = 'VRCE',
	AMOUNT = 5500
		WHERE ACTNO = 102;

UPDATE BORROW
	SET BNAME = NULL,
		AMOUNT = NULL
			WHERE LOANNO = 481 AND CNAME = 'KRANTI';


--2.3--

DELETE FROM CUSTOMERS
	WHERE CITY = 'BOMBAY';

DELETE FROM BORROW
	WHERE AMOUNT<1000;

DELETE FROM BORROW
	WHERE BNAME = 'AJNI';

DELETE FROM BORROW
	WHERE LOANNO>201 AND LOANNO<210;

DELETE FROM DEPOSIT
	WHERE ADATE>'1-12-96';

TRUNCATE TABLE CUSTOMERS;

DELETE FROM DEPOSIT
	WHERE CNAME = 'ANIL' AND ACTNO = 201;

DELETE FROM BORROW
	WHERE BNAME = 'ANDHERI';

DELETE FROM BORROW
	WHERE AMOUNT<2000 AND BNAME = 'VRCE';

DROP TABLE BRANCH;
