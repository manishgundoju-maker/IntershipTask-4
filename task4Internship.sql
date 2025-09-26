INSERT INTO employee (employee_id, name, department_id, salary) VALUES
(1, 'Alice', 101, 60000),
(2, 'Bob', 102, 45000),
(3, 'Charlie', 101, 55000),
(4, 'David', 103, 70000),
(5, 'Eve', 102, 40000),
(6, 'Frank', 101, 65000);

-- 3. Queries with Aggregate Functions

-- a) SUM: Total salary of all employees
SELECT SUM(salary) AS total_salary
FROM employee;

-- b) COUNT: Number of employees
SELECT COUNT(*) AS total_employees
FROM employee;

-- c) AVG: Average salary of employees
SELECT AVG(salary) AS average_salary
FROM employee;

-- 4. GROUP BY Examples

-- d) Total salary per department
SELECT department_id, SUM(salary) AS department_total
FROM employee
GROUP BY department_id;

-- e) Average salary per department
SELECT department_id, AVG(salary) AS department_avg
FROM employee
GROUP BY department_id;

-- 5. HAVING Example

-- f) Departments where average salary is above 50,000
SELECT department_id, AVG(salary) AS avg_salary
FROM employee
GROUP BY department_id
HAVING AVG(salary) > 50000;

