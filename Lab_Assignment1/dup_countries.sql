DROP TABLE IF EXISTS countries;
DROP TABLE IF EXISTS dup_countries;

CREATE TABLE countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL,
    region_id INT
);

INSERT INTO countries (country_id, country_name, region_id) VALUES
(1, 'United States', 101),
(2, 'United Kingdom', 102),
(3, 'India', 103),
(4, 'Australia', 104),
(5, 'Brazil', 105);

-- MySQL shortcut: copies structure + indexes + constraints
CREATE TABLE dup_countries LIKE countries;

INSERT INTO dup_countries (country_id, country_name, region_id) VALUES
(1, 'Canada', 201),
(2, 'Japan', 202),
(3, 'Germany', 203);

SELECT * FROM countries;
SELECT * FROM dup_countries;
