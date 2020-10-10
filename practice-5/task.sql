-- 4

SELECT MAX(emp.sal) "Maximum", MIN(emp.sal) "Minimum", ROUND(AVG(emp.sal), 0) "Sum Average"
FROM emp;

-- 5 

SELECT job, MAX(emp.sal) "Maximum", MIN(emp.sal) "Minimum", ROUND(AVG(emp.sal), 0) "Sum Average"
FROM emp
GROUP BY job;

-- 6

SELECT job, COUNT(*)
FROM emp
GROUP BY job;

-- 7

SELECT COUNT(*) "Number Of Managers"
FROM emp
WHERE job='MANAGER';

-- 8

SELECT (MAX(emp.sal) - MIN(emp.sal)) "Difference"
FROM emp;

-- 9 

SELECT m.empno mgr, MIN(e.sal) "MIN(SAL)"
FROM emp e
RIGHT JOIN emp m ON e.mgr=m.empno
GROUP BY m.empno
HAVING MIN(e.sal)>1000;

-- 10

SELECT d.dname, d.loc, COUNT(*) "Number Of People", ROUND(AVG(e.sal), 2) "Salary"
FROM emp e
INNER JOIN dept d USING(deptno) 
GROUP BY d.dname, d.loc;

-- 11

SELECT 
    COUNT(*) "TOTAL",
    COUNT (DECODE (TO_CHAR(hiredate, 'YYYY'), '1980', empno)) "1980", 
    COUNT (DECODE (TO_CHAR(hiredate, 'YYYY'), '1981', empno)) "1981", 
    COUNT (DECODE (TO_CHAR(hiredate, 'YYYY'), '1982', empno)) "1982",
    COUNT (DECODE (TO_CHAR(hiredate, 'YYYY'), '1983', empno)) "1983"
FROM emp;

--12 

SELECT * FROM EMP;

SELECT DISTINCT
    job "Job",
    SUM(DECODE(deptno, 10, sal)) "deptno 10",
    SUM(DECODE(deptno, 20, sal)) "deptno 20",
    SUM(DECODE(deptno, 30, sal)) "deptno 30",
    SUM(sal) "Total"
FROM emp
GROUP BY job;
