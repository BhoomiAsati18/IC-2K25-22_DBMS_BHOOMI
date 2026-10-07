SELECT first_name, last_name
FROM employees
WHERE manager_id IS NOT NULL AND department_id IN(
  SELECT d.department_id
  FROM departments d
  JOIN locations l ON d.location_id = l.location_id
  JOIN countries c ON l.country_id = c.country_id
  WHERE c.country_name  'United States of America'
);
