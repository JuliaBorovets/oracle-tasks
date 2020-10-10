-- practice-1

-- 8

SELECT empno, ename, job, hiredate
FROM emp;

-- 9

SELECT DISTINCT job
FROM emp;

-- 10

SELECT empno "Emp #", ename "Employee", job "Job", hiredate "Hire Date"
FROM emp;

-- 11

SELECT ename  || ', ' || job AS "Employee and Title"
FROM emp;

-- 12

SELECT empno || ', ' || ename || ', ' || job || ', ' ||  mgr  || ', ' || hiredate
FROM emp;
