SELECT e.first_name, e.last_name, e.salary
FROM employees e
JOIN job_grades jg
    ON e.salary BETWEEN jg.lowest_sal AND jg.highest_sal
WHERE e.salary = jg.lowest_sal;