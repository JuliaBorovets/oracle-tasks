-- practice-2

-- 1

SELECT ename, sal
FROM emp
WHERE sal>2850;

-- 2

SELECT ename, deptno
FROM emp
WHERE empno=7566;

-- 3

SELECT ename, sal
FROM emp
WHERE sal NOT BETWEEN 1500 AND 2850;

-- 4

SELECT ename, job, hiredate
FROM emp
WHERE TO_DATE(hiredate, 'DD/MM/YYYY') BETWEEN TO_DATE('20/01/1981', 'DD/MM/YYYY') AND TO_DATE('01/05/1981', 'DD/MM/YYYY'); 

-- 5

SELECT ename, deptno
FROM emp
WHERE deptno=10 OR deptno=30
ORDER BY ename;

-- 6

SELECT ename "Employee", sal "Monthly Salary"
FROM emp
WHERE (deptno=10 OR deptno=30) AND sal>1500;

-- 7

SELECT ename, hiredate
FROM emp
WHERE extract(YEAR FROM hiredate) = 1982;

-- 8 

SELECT ename, job
FROM emp
WHERE mgr IS NULL;

-- 9

SELECT ename, sal, comm
FROM emp
WHERE comm IS NOT NULL
ORDER BY sal DESC, comm DESC;

-- 10

SELECT ename
FROM emp
WHERE ename LIKE '__A%';

-- 11

SELECT ename
FROM emp
WHERE ename LIKE '%LL%'
AND deptno=30 OR mgr=7782;

-- 12 

SELECT ename, job, sal
FROM emp
WHERE job='CLERK' OR job='ANALYST'
AND sal NOT IN (1000, 3000, 5000);

-- 13

SELECT ename, sal, comm
FROM emp
WHERE comm > sal*1.1;
