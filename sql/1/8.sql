SELECT department_id, emp_name, salary
FROM (
  SELECT department_id, emp_name, salary, 
  ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY salary DESC) AS row_num
  FROM employees
) AS ranked
WHERE row_num = 1;