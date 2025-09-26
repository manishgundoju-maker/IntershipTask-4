# IntershipTask-4
Task 4: Aggregate Functions and Grouping (SUM, COUNT, AVG, GROUP BY, HAVING)

SELECT SUM(salary) AS total_salary FROM employees;
→ Adds up all employee salaries and gives the total.

SELECT COUNT(*) AS total_employees FROM employees;
→ Counts how many employees are in the table.

SELECT AVG(salary) AS average_salary FROM employees;
→ Calculates the overall average salary of all employees.

SELECT department_id, SUM(salary) AS department_total FROM employees GROUP BY department_id;
→ Groups employees by department and shows the total salary for each department.

SELECT department_id, AVG(salary) AS department_avg FROM employees GROUP BY department_id;
→ Groups employees by department and shows the average salary per department.

SELECT department_id, AVG(salary) AS avg_salary FROM employees GROUP BY department_id HAVING AVG(salary) > 50000;
→ Groups employees by department, finds the average salary, and shows only those departments where the average salary is greater than 50,000.
