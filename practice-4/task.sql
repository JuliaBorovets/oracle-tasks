-- 1

SELECT emp.ename, emp.deptno, dept.dname
FROM emp, dept
WHERE emp.deptno=dept.deptno;

SELECT emp.ename, emp.deptno, dept.dname
FROM emp INNER JOIN dept ON emp.deptno=dept.deptno;

-- 2 

SELECT DISTINCT emp.job, dept.loc
FROM emp, dept
WHERE emp.deptno=dept.deptno AND dept.deptno=30;

SELECT DISTINCT loc, job
FROM dept
INNER JOIN emp ON emp.deptno=dept.deptno
WHERE dept.deptno=30;

--3

SELECT ename, dname, loc
FROM emp
INNER JOIN dept USING(deptno)
WHERE comm IS NOT NULL;

--4

SELECT ename, dname
FROM emp e, dept d
WHERE e.deptno=d.deptno 
AND ename LIKE '%A%' 
AND dname LIKE '%A%';

SELECT ename, dname
FROM emp e
INNER JOIN dept d ON e.deptno=d.deptno
WHERE  ename LIKE '%A%' 
AND dname LIKE '%A%';

--5

SELECT e.ename, e.job, e.deptno, d.dname
FROM emp e, dept d
WHERE e.deptno=d.deptno 
AND d.loc='DALLAS';

--6

SELECT w.ename "Employee",  w.empno "Emp#", e.ename "Manager", e.empno "Mgr#"
FROM emp w, emp e
WHERE w.mgr=e.empno;

--7

SELECT w.ename "Employee",  w.empno "Emp#", e.ename "Manager", e.empno "Mgr#"
FROM emp w, emp e
WHERE w.mgr=e.empno(+);

SELECT w.ename "Employee",  w.empno "Emp#", e.ename "Manager", e.empno "Mgr#"
FROM emp w
LEFT JOIN emp e ON w.mgr=e.empno;

--8

SELECT e.deptno department, e.ename employee, c.ename colleague
FROM emp e, emp c
WHERE e.deptno=c.deptno 
AND e.ename<>c.ename;

SELECT e.deptno department, e.ename employee, c.ename colleague
FROM emp e
INNER JOIN emp c ON e.deptno=c.deptno
WHERE  e.ename<>c.ename;

-- 9

SELECT e.ename, e.job, d.dname, e.sal, s.grade
FROM emp e
INNER JOIN dept d ON e.deptno=d.deptno
INNER JOIN salgrade s ON e.sal BETWEEN s.losal AND s.hisal;

SELECT e.ename, e.job, d.dname, e.sal, s.grade
FROM emp e, dept d, salgrade s
WHERE e.deptno=d.deptno 
AND e.sal BETWEEN s.losal AND s.hisal;


-- 10

SELECT * FROM emp;
SELECT ename, hiredate
FROM emp
WHERE hiredate > ( SELECT hiredate FROM emp WHERE ename='BLAKE');

-- 11

SELECT e.ename "Employee Emp", e.hiredate "Hiredate", m.ename "Manager", m.hiredate "Mgr Hiredate"
FROM emp e, emp m
WHERE e.mgr=m.empno
AND e.hiredate<m.hiredate;

SELECT e.ename "Employee Emp", e.hiredate "Hiredate", m.ename "Manager", m.hiredate "Mgr Hiredate"
FROM emp e
INNER JOIN emp m ON e.mgr=m.empno
WHERE e.hiredate<m.hiredate;

-- 12

SELECT ename || ' ' || LPAD(' ', sal/100, '*')
FROM emp
ORDER BY sal DESC;
