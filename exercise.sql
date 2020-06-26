CREATE TABLE dept  
       (deptNO int(2),   
        DNAME VARCHAR(14) ,  
        LOC VARCHAR(13),  
        primary key(deptNO) ) ;  
  
CREATE TABLE emp  
       (empNO int(4) ,  
        ENAME VARCHAR(10),  
        JOB VARCHAR(9),  
        MGR int(4),  
        HIREDATE DATE,  
        SAL int(7),  
        COMM int(7),  
        deptNO int(2),  
        primary key(empno),   
        foreign key(deptno) REFERENCES dept(deptno));  
  
INSERT INTO dept VALUES  
        (10,'ACCOUNTING','NEW YORK');  
INSERT INTO dept VALUES (20,'RESEARCH','DALLAS');  
INSERT INTO dept VALUES  
        (30,'SALES','CHICAGO');  
INSERT INTO dept VALUES  
        (40,'OPERATIONS','BOSTON');  

INSERT INTO emp VALUES  
(7369,'SMITH','CLERK',7902,date_format('1980-12-17','%Y-%m-%d'),800,NULL,20);  
INSERT INTO emp VALUES  
(7499,'ALLEN','SALESMAN',7698,date_format('1981-2-20','%Y-%m-%d'),1600,300,30);  
INSERT INTO emp VALUES  
(7521,'WARD','SALESMAN',7698,date_format('1981-2-22','%Y-%m-%d'),1250,500,30);  
INSERT INTO emp VALUES  
(7566,'JONES','MANAGER',7839,date_format('1981-4-2','%Y-%m-%d'),2975,NULL,20);  
INSERT INTO emp VALUES  
(7654,'MARTIN','SALESMAN',7698,date_format('1981-9-28','%Y-%m-%d'),1250,1400,30);  
INSERT INTO emp VALUES  
(7698,'BLAKE','MANAGER',7839,date_format('1981-5-1','%Y-%m-%d'),2850,NULL,30);  
INSERT INTO emp VALUES  
(7782,'CLARK','MANAGER',7839,date_format('1981-6-9','%Y-%m-%d'),2450,NULL,10);  
INSERT INTO emp VALUES  
(7788,'SCOTT','ANALYST',7566,date_format('1987-7-13','%Y-%m-%d'),3000,NULL,20);  
INSERT INTO emp VALUES  
(7839,'KING','PRESIDENT',NULL,date_format('1981-11-17','%Y-%m-%d'),5000,NULL,10);  
INSERT INTO emp VALUES  
(7844,'TURNER','SALESMAN',7698,date_format('1981-9-8','%Y-%m-%d'),1500,0,30);  
INSERT INTO emp VALUES  
(7876,'ADAMS','CLERK',7788,date_format('1987-6-13', '%Y-%m-%d'),1100,NULL,20);  
INSERT INTO emp VALUES  
(7900,'JAMES','CLERK',7698,date_format('1981-12-3','%Y-%m-%d'),950,NULL,30);  
INSERT INTO emp VALUES  
(7902,'FORD','ANALYST',7566,date_format('1981-12-3','%Y-%m-%d'),3000,NULL,20);  
INSERT INTO emp VALUES  
(7934,'MILLER','CLERK',7782,date_format('1982-1-23','%Y-%m-%d'),1300,NULL,10);  

CREATE TABLE BONUS  
        (  
        ENAME VARCHAR(10)      ,  
        JOB VARCHAR(9)  ,  
        SAL int,  
        COMM int  
        ) ;  
  
CREATE TABLE SALGRADE  
      ( GRADE int,  
        LOSAL int,  
        HISAL int );  
  
INSERT INTO SALGRADE VALUES (1,700,1200);  
INSERT INTO SALGRADE VALUES (2,1201,1400);  
INSERT INTO SALGRADE VALUES (3,1401,2000);  
INSERT INTO SALGRADE VALUES (4,2001,3000);  
INSERT INTO SALGRADE VALUES (5,3001,9999);  
COMMIT;  

SELECT deptno,ename,sal
  FROM emp outer
  WHERE sal>(SELECT avg(sal)
                FROM emp )
  ORDER BY deptno;
mysql