-- practice 6

-- 1

SELECT ename, hiredate
FROM emp
WHERE deptno = (SELECT deptno
                FROM emp
                WHERE ename='BLAKE')
AND ename <> 'BLAKE';

-- 2

SELECT empno, ename
FROM emp
WHERE sal > (SELECT AVG(sal)
            FROM emp)
ORDER BY sal DESC;

-- 3

SELECT empno, ename
FROM emp
WHERE deptno IN (SELECT deptno
                FROM emp
                WHERE ename LIKE '%T%');
                
-- 4

SELECT ename, deptno, job
FROM emp
WHERE deptno IN (SELECT deptno
                FROM dept
                WHERE loc='DALLAS');
                
--5 

SELECT ename, sal
FROM emp
WHERE mgr = (SELECT empno
            FROM emp
            WHERE ename='KING');
            
-- 6

SELECT deptno, ename, job
FROM emp
WHERE deptno = (SELECT deptno
                FROM dept
                WHERE dname='SALES');

-- 7

SELECT empno, ename, sal
FROM emp
WHERE deptno IN (SELECT deptno
                FROM emp
                WHERE ename LIKE '%T%')
AND sal > (SELECT AVG(sal)
          FROM emp);
