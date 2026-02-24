/* Write your PL/SQL query statement below */


SELECT 
Department,
Employee,
SALARY FROM (
SELECT 
D.NAME AS Department,
E.NAME AS Employee,
E.SALARY,
DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY E.SALARY DESC ) DR
FROM EMPLOYEE E 
INNER JOIN DEPARTMENT D ON E.departmentId= D.ID) A WHERE A.DR <= 3