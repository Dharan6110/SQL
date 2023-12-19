--------environment variable---

--CASE SENSITIVE--
Character  case sensitive  'char'
INDIA : UPPER
India : INITCAP
india : LOWER
date   format sensitive   'dd-mon-rr'   '15-MAY-86'

--HEADER DISPLAY JUSTIFICATION--

NUMBER DATA : RIGHT TO LEFT
CHARACTER   : LEFT TO RIGHT
ALPHA NUMERIC : MIDDLE        

-------headr display 
--> Default show in upper case-----
SELECT EMPLOYEE_ID,LAST NAME,SALARY FROM EMPLOYEES;
OR
SELECT EMPLOYEE_ID,LAST_NAME,SALARY FROM EMPLOYEES;

----COLUMN ALIAS-----
It is use to change the column heading at run time.
AS Keyword(Optioal);

---CONCATINATION OPERATOR(||)
It is use to oncat more than one column or string at run time.


NULL:

NULL+2= 
NULL-2=
NULL*2=
NULL/2=

It is value that is unavailable , un-assigned,unknown or inapplicable 
NULL not same as zero or blank space.

---LOGICAL OPERATOR--
-->AND
-->OR
-->NOT

--ARITHMATIC OPERATOR--
+ (Addition)
- (Subtraction)
* (Multiplication)
/ (Division)


--comparision operator--
= , > , >= , < , <= , <> or != or ^=

--OTHER EXPRESSIONS--
-->BETWEEN
 ...AND...
 -->LIKE 
 .... % (Percent) : Denotes zero or many character
 .... _ (Underscore) : Denotes one character
-->IN
--> IS NULL


--DISTINCT/UNIQUE KEYWORD---

java2s.com
w3scool

Ivan Bayross

-----FUNCTION------
Types of Function :

-->Single Row Function / Scalar Function

--> Multiple Row Function / Aggregate Function / Group By Function

SRF : Accept argument or parameter/input return a single output for each row.

MRF : Accept  argument or parameter/input return a single output for each group.

Types of SRF:
-->Character Function
-->Number Function
-->Date Function
-->Conversion Function
-->General Funcion
-->Other function

Types Of Character Function:
 1. Case Manipulation
 -->UPPER(p1 or exp1)
 -->LOWER(p1)
 -->INITCAP(p1)
 -->SOUNDEX(p1)
 
2. Character Manipulation
 -->ASCII(P1)
 -->DUMP(P1)
 -->CHR(P1)
 -->CONCAT(P1,P2)
 -->SUBSTR(P1,P2) or (P1,P2,P3)
 -->LENGTH(P1)
 -->INSTR(P1,P2)
 -->LPAD(P1,P2,P3)
 -->RPAD(P1,P2,P3)
 -->TRIM(P1) or (P1,P2)
 -->LTRIM(P1,P2)
 -->RTRIM(P1,P2)
 -->REPLACE(P1,P2) or (P1,P2,P3)
 
 Types of Number Function:
 -->ABS(P1)
 -->POWER(2,3)
 -->SQRT(P1)
 -->CEIL(P1)
 -->FLOOR(P1)
 -->ROUND(P1) or (P1,P2)
 -->TRUNC(P1) or (P1,P2)
 -->MOD(P1,P2)
 
 Types of Date Function:
 -->MONTHS_BETWEEN(P1,P2)
 -->LAST_DAY(P1)
 -->NEXT_DAY(P1)
 -->ROUND(P1,P2)
 -->TRUNC(P1,P2)
 
 Types of Conversion Function:
 -->TO_CHAR()
 -->TO_DATE()
 -->TO_NUMBER()
 
 Types of General Function:
 -->NVL(P1,P2)
 -->NVL2(P1,P2,P3)
 -->NULLIF(P,1P2)
 -->COALESCE(P1,P2,P3,.....,Pn)
 
Types of Other function:
-->CASE(Expression)
-->DECODE(Function)
-->GREATEST(p1,p2,P3.....,Pn)
-->LEAST(P1,P2,P3,.....,Pn)

--DUAL TABLE / MAGIC TABLE---
It is a dummy table system in-built which has oe row and one column.


 -->TO_CHAR()
 
 DAY:
 DD -->Digit
 DY -->Third Character
 DAY --> Full Name in Character
 
 MONTH:
 MM --> Digit
 MON --> Three Character
 MONTH --> Full Name In Character
 
 YEAR :
 YY    --> Two Digit
 YYY   --> Three Digit
 YYYY   --> Four Digit
 YEAR   -->Full Name in Character


1947

  19  --> Century
  47  --> Year
  
  Year <= 49   --> Add current century (2k)
  Year >=50    --> Add previous century
  
  
  
  -->NVL(P1,P2)
  
  Convert a null value to an actual value.
  If p1 is not null then p1.
  If p1 is null then p2.
  
 -->NVL2(P1,P2,P3)
IF P1 IS NOT NULL THEN THEN P2.
IF P1 IS NULL THEN P3 .


 -->NULLIF(P1,P2)
 IF P1 = P2 THEN NULL.
 IF P1 <> P2 THEN P1.
 P1 NOT ACCEPT NULL VLUE BUT P2 CAN ACCEPT NULL VALUE.
 
 -->COALESCE(P1,P2,P3,.....,Pn)


Types of Other function:
-->CASE(Expression)
-->DECODE(Function)
-->GREATEST(p1,p2,P3.....,Pn)
-->LEAST(P1,P2,P3,.....,Pn)

-->CASE(Expression)
It is an expression which is use to as a control structure.

SELECT EMPLOYEE_ID,LAST_NAME,JOB_ID,SALARY,
CASE JOB_ID        WHEN   'IT_PROG'  THEN  SALARY*2
                   WHEN    'ST_CLERK'  THEN  SALARY*3
                   WHEN    'SH_CLERK'  THEN SALARY*4
                   WHEN    'FI_ACCOUNT'   THEN  SALARY*5
              ELSE
                    SALARY END "REVISED_SALARY"
                      FROM EMPLOYEES;



SELECT EMPLOYEE_ID,LAST_NAME,JOB_ID,SALARY,
CASE LOWER(JOB_ID) WHEN   'it_prog'  THEN  SALARY*2
                   WHEN    'st_clerk'  THEN  SALARY*3
                   WHEN    'sh_clerk'  THEN SALARY*4
                   WHEN    'fi_account'   THEN  SALARY*5
              ELSE
                    SALARY END "REVISED_SALARY"
                      FROM EMPLOYEES;
					  


C1	  C2     C3     C4
--    --     --     --
3      4      5      1
6      7      8      2
4      3      2      6
Nipun@123

------DATA MANIPULATION-----
DML (Data Manipulation Language)       : INSERT , UPDATE  , DELETE , MERGE
DDL (Data Definition Language)         : CREATE , ALTER , DROP , RENAME , TRUNCATE
TCL (Transaction Control Language)     : COMMIT , ROLLBACK/ROLL BACK , SAVEPOINT

EMPLOYEES
Admin12345
DDL : It is an autocommit. Which is use to only for structure/definition.
DML : It is use to only for data/information.
TCL :  It is use to only for DML.
				  
CREATE TABLE T1
(EMPID NUMBER(10),
ENAME VARCHAR2(20),
JOB  VARCHAR2(20),
HDATE DATE,
SAL NUMBER(8,2),    --> (p , s) (Precesion , Scale)   ( 999999.99 )
DEPTNO NUMBER(10));

1. Maximum length of database object ( 30 character)
2. Always start with character
3. a-z , A-Z , 0-9 , _ , # , $
4. 8i,9i,10g : 256 column can be used in a single table.
   11g , 12c : 1000 column can be used in a single table.
 
5. CHAR              : Default length (1) --> Maximum 2000
   VARCHAR,VARCHAR2  : Default length (1) --> Maximum 4000
   DATE              : Format  'DD-MON-RR'
   NUMBER            : Default  1-38 
   
  INSERT INTO T1(EMPID,ENAME,JOB,HDATE,SAL,DEPTNO)
VALUES(100,'KING','IT','12-MAY-2018',10000,10);
		  
--SUBSTITUTION VARIABLE---
Types of SV :
-->Single Ampersand(&) : Always ask a new input from user at runtime.
-->Double Ampersand(&&) : Repeat the duplicate value.
-->Define Command 
-->Undefine Command

---> Modify Keyword
It is use to increase/decrease leangth of data type and change the data type.

Note : If exist data in the column we can only increase the length of data type.

---How to copy data fromone table to Another table---


----10g,11g,...
-->RECYCLEBIN or USER_RECYCLEBIN
-->PURGE
-->FLASHBACK

-----CONSTRAINTS----(NORMALIZATION) CODD'S 12 RULES
Enforce the rules in a table definition/structure.
Types of Constraints:
-->primary Key(Parent Key)
-->Foreign Key(Child Key,Referential Key)
-->Unique
-->Check
-->Not Null

-->Level/Method of Constraints:
1. Table Level:
PK,FK,UK and Check:it is use to both table level and column level.

2. Column Level
NN : It is use to only for column level. 

Properties of constraints:
PK :
-->PK can have only one in a one table.
-->PK can not accept duplicate value and null value.
-->PK can not use with LONG and LONG RAW data type.

FK:
-->FK can have more than one in a one table.
-->FK can accept duplicate value and null value.
-->FK can not accept which types of value does not exists in a parent key.

UK:
-->UK can have more than one in a one table
-->UK can not accept duplicate value but can accept null value.

CHECK:
-->CHECK constraints can have more than once in  one table
-->CHECK constraints work in a condition
-->CECK constraint can accept duplicate value and null value.

NN:
--> NN can have more than one in a one table .
-->NN not accept null value but can accept duplicate value.

--Column level constraints at the time of Table creation

 CREATE TABLE DEPARTMENT
 (DEPTNO NUMBER(10) CONSTRAINTS DEPT_DEPTNO_PK PRIMARY KEY,
 DNAME VARCHAR2(20) NOT NULL,
 LOCID NUMBER(10));

 SYS_CN
 SYS_C0012345
 
 CREATE TABLE EMPLOYEE
(EMPID NUMBER(10) CONSTRAINTS EMP_ID_PK PRIMARY KEY,
ENAME VARCHAR2(20) CONSTRAINTS EMP_NM_NN NOT NULL,
JOB VARCHAR2(20) CONSTRAINTS EMP_JB_UN  UNIQUE,
SAL NUMBER(10) CONSTRAINTS EMP_SL_CHK CHECK(SAL>10000),
DEPTNO NUMBER(10) CONSTRAINTS EMP_DEPTNO_FK REFERENCES DEPARTMENT (DEPTNO));

-----------AFTER CREATION OF TABLE ADD CONSTRAINTS----
Primary Key:

ALTER TABLE <TABLE_NAME>
ADD CONSTRAINTS <CONS_NAME> PRIMARY KEY(COLUMN_NAME);
OR
ALTER TABLE <TABLE_NAME>
ADD PRIMARY KEY(COLUMN_NAME);
OR
ALTER TABLE EMPLOYEE
ADD CONSTRINTS EMP_ID_PK PRIMARY KEY(EMPID);
OR
ALTER TABLE <TABLE_NAME>
MODIFY <COLUMN_NAME> CONSTRAINTS <CONS_NAME> PRIMARY KEY;


Unique:
ALTER TABLE <TABLE_NAME>
ADD CONSTRAINTS <CONS_NAME> UNIQUE(COLUMN_NAME);
OR
ALTER TABLE <TABLE_NAME>
ADD UNIQUE(COLUMN_NAME);

COMPOSITE PRIMARY KEY 
ALTER TABLE <TABLE_NAME>
ADD CONSTRAINTS <CONS_NAME> PRIMARY KEY(COL1,COL2,COL3,...,COL32);
OR
ALTER TABLE <TABLE_NAME>
ADD PRIMARY KEY(COL1,COL2,COL3,...,COL32);
8i,9i  --> 16 COLUMNM can be use is a composite primary key.
10g,11g,12c,.. -->32 COLUMNM can be use is a composite primary key.

COMPOSITE Unique Key:
ALTER TABLE <TABLE_NAME>
ADD CONSTRAINTS <CONS_NAME> Unique(COL1,COL2,COL3,...,COL32);
OR
ALTER TABLE <TABLE_NAME>
ADD Unique(COL1,COL2,COL3,...,COL32);
8i,9i  --> 16 COLUMNM can be use is a composite Unique key.
10g,11g,12c,.. -->32 COLUMNM can be use is a composite Unique key.

CHECK CONSTRAINTS:
ALTER TABLE <TABLE_NAME>
ADD CONSTRAINTS <CONS_NAME> CHECK(COLUMN_NAME>CONDITION);

FOREIGN KEY:
ALTER TABLE <TABLE_NAME>
ADD CONSTRAINTS <CONS_NAME> FOREIGN KEY(COLUMN_NAME) REFERENCE <REF_TABLE_NAME> (REF_COLUMN_NAME));
OR
ALTER TABLE <TABLE_NAME>
ADD CONSTRAINTS <CONS_NAME> FOREIGN KEY(COLUMN_NAME) REFERENCE <REF_TABLE_NAME>;

DEPARTMENT
DEPTNO(PK)
DELETE DEPARTMENT WHERE DEPTNO=30;

EMPLOYEE
DEPTNO(FK)
DELETE EMPLOYEE WHERE DEPTNO=30;

command of foreign key:

-->on delete cascade
-->on delete set null

ALTER TABLE <TABLE_NAME>
ADD CONSTRAINTS <CONS_NAME> FOREIGN KEY(COLUMN_NAME) REFERENCE <REF_TABLE_NAME> (REF_COLUMN_NAME)) on delete cascade;
OR
ALTER TABLE <TABLE_NAME>
ADD CONSTRAINTS <CONS_NAME> FOREIGN KEY(COLUMN_NAME) REFERENCE <REF_TABLE_NAME> on delete set null;

NOT NULL:
ALTER TABLE <TABLE_NAME>
MODIFY (COLUMN_NAME) CONSTRAINTS <CONS_NAME> NOT NULL;

--VIEW CONSTRAINTS--
USER_CONSTRAINTS (DICTIONARY)
USER_CONS_COLUMNS (DICTIONARY)

--DISABLE/ENABLE--
ALTER TABLE <TABLE_NAME>
DISABLE CONSTRAINTS <CONS_NAME>;
ALTER TABLE <TABLE_NAME>
ENABLE CONSTRAINTS <CONS_NAME>;

--DROP CONSTRAINTS--
ALTER TABLE <TABLE_NAME>
DROP CONSTRAINTS <CONS_NAME>;

ALTER TABLE <TABLE_NAME>
DROP PRIMARY KEY;

ALTER TABLE <TABLE_NAME>
DROP CONSTRAINTS <CONS_NAME> CASCADE CONSTRAINTS;
OR
ALTER TABLE <TABLE_NAME>
DROP PRIMARY KEY CASCADE CONSTRAINTS;


--JOIN---

It is use to fetch or retrieve information from more than once table using single statement.

Types of JOIN:
-->Equi Join(Inner Join , Simple Join)
-->Non-Equi Join
-->Self Join
-->Cross Join
-->Natural Join 
-->Outer Join:
a. left outer join / Left Join / (+)
b. Right Outer Join / Right Join / (+)
c. Full Outer Join / Full Join


Keywor of Join:
-->ON Keyword
-->USING Keyword

Equi Join:

DEPARTMENTS                 EMPLOYEES
DEPARTMENT_ID(pk)          DEPARTMENT_ID(fk)


/


OR

SELECT EMPLOYEES.EMPLOYEE_ID,EMPLOYEES.LAST_NAME,EMPLOYEES.SALARY,DEPARTMENTS.DEPARTMENT_NAME,DEPARTMENTS.DEPARTMENT_ID
FROM EMPLOYEES , DEPARTMENTS 
WHERE EMPLOYEES.DEPARTMENT_ID=DEPARTMENTS.DEPARTMENT_ID;



             DEPARTMENTS         EMPLOYEES

Equi Join  :  Both Matching information
Left       : Both Matching  + Left Un-Matching
Right      : Both Matching  + Right Un-Matching
Full       : Both Matching   + Left Un-Matching + Right Un-Matching



CROSS JOIN:

Are also known as cartesian product in mathematical word.


A   B
1   6
2   7
3   8
4   9
5   5

16
17
18
18
15
26
27
28
29
25

---------VIEW-----------
It is logical copy of database object like table, view.
Types of VIEW:

-->Simple View
-->Complex View
-->Inline View
-->Materialized View

  Command Of View:
-->NOFORCE(Default)
-->FORCE(User Define)

                           Simple View                     Complex View
			               -----------                    --------------
1. No. of Table         :    ONE                            ONE or MORE
2. Containg Function    :    No                               Yes
3. Containg Group og Data:    No                               Yes
4. DML Perform through a View: YES                             Not Always

  						   
CREATE OR REPLACE VIEW V1
AS SELECT * FROM EMPLOYEES;

OR REPLACE  : It is use to only for dependable object like : View , Synonym,Procedure,Fuctio,Package , Triggers.

CREATE OR REPLACE NOFORCE VIEW V1_DEPTNO_20_30
AS SELECT EMPLOYEE_ID,LAST_NAME,SALARY,DEPARTMENT_ID
FROM EMP
WHERE DEPARTMENT_ID=30;

Constraints of View:
--WITH CHECK OPTION
--WITH READ ONLY

CREATE OR REPLACE NOFORCE VIEW V1_DEPTNO_30
AS SELECT EMPLOYEE_ID,LAST_NAME,SALARY,DEPARTMENT_ID
FROM EMP
WHERE DEPARTMENT_ID=30 WITH CHECK OPTION CONSTRAINTS V1_DEPTNO_30_CHK;


DICTIONARY OF VIEW:
-->USER_VIEWS
-->ALL_VIEWS

----USER CREATION---
DCL (Data Control Language) : GRANT , REVOKE

----SYNONYM--

Alterative name of database object like table,view,synonym , sequence etc..

Types of Synonym :

-->Private
-->Public


----SEQUENCE---
It is a database object which is automatically generate a primary numeric value.

Syntax:

CREATE SEQUENCE <seq_name>
START WITH <n>
INCREMENT BY  <n>
MAXVALUE <n> / NOMAXVALUE
MINVALUE <n> / NOMINVALUE
CYCLE  /  NOCYCLE
CACHE <n> / NOCACHE;


CREATE SEQUENCE S1
START WITH  100  (Default start from 1)
INCREMENT BY  1 (Default increment by 1)
MAXVALUE 120 / NOMAXVALUE --> 10 per power 27
MINVALUE 100 / NOMINVALUE --> 10 per power 26<=start value
CYCLE  /  NOCYCLE
CACHE 20 / NOCACHE;


Pseudo column:
-->Nextval
-->Currval
-->Sysdate
-->Rownum
-->Rowid


--Modify sequence

ALTER SEQUENCE <seq_name>
INCREMENT BY  <n>
MAXVALUE <n> / NOMAXVALUE
MINVALUE <n> / NOMINVALUE
CYCLE  /  NOCYCLE
CACHE <n> / NOCACHE;

USER_SEQUENCES


--INDEX---
It is use to fast searching of data in the database.

Types of INDEX:
-->UNIQUE INDEX
Automatically created when you define primary Key , Unique constraints in a table defination.

-->NON-UNIQUE INDEX
It is created and maintained by user.
Types of Non-Unique Index:
-->NORMAL/BASIC INDEX
-->REVERSE INDEX
-->FUCTION-BASE INDEX
-->UNIQUE INDEX


ROWNUM: It is pseudo column which is automatically generate a primary numeric value at run time.
Which is always start with 1.

ALWAYS WORK WITH < OR <=


ROWID : It is pseudo column which is generate a hexa decimal number for each row.


---SET OPARATOR---
Types of SET Operator:
-->UNION
-->UNION ALL
-->INTERSECT
-->MINUS

