--practice-7

-- 1

SELECT ename, deptno, sal
FROM emp
WHERE (deptno, sal) IN (SELECT deptno, sal
                           FROM emp
                           WHERE comm IS NOT NULL);

-- 2

SELECT ename, dname, sal
FROM emp
INNER JOIN dept USING(deptno)
WHERE (sal, NVL(comm, 0)) IN (SELECT sal, NVL(comm, 0)
                      FROM emp
                      INNER JOIN dept USING(deptno)
                      WHERE loc='DALLAS');

-- 3

SELECT ename, hiredate, sal
FROM emp
WHERE (sal, NVL(comm, 0)) IN (SELECT sal, NVL(comm, 0)
                      FROM emp
                      WHERE ename='SCOTT')
AND ename <> 'SCOTT';       

-- 4

SELECT ename, job, sal
FROM emp
WHERE sal > ALL (SELECT sal
                 FROM emp
                 WHERE job='CLERK')
ORDER BY sal DESC;
