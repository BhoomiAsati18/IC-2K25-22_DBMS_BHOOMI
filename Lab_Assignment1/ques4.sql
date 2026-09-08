DROP TABLE IF EXISTS countries;
DROP TABLE IF EXISTS dup_countries;

CREATE TABLE countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL,
    region_id INT
);

-- MySQL shortcut: copies structure + indexes + constraints
CREATE TABLE dup_countries LIKE countries;

AS SELECT * FROM countries;
