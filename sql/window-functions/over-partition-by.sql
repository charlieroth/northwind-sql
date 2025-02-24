-- Calculates the average salary for each country and adds it as a new column (`average_salary_in_country`)
-- to each row. The `PARTITION BY` clause divides the employees by country, and the `AVG()` function
-- calculates the average salary for each group
SELECT employee_id,
    first_name,
    last_name,
    country,
    AVG(salary) OVER (PARTITION BY country) as average_salary_in_country
FROM employees;