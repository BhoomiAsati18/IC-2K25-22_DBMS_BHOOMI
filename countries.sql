CREATE TABLE countries(
  country_id INT,
  country_name VARCHAR(50),
  region_id INT
);

INSERT INTO countries(country_id, country_name, region_id) VALUES
(1, 'India', 101),
(2, 'U.S.', 102),
(3, 'U.K.', 103);


SELECT * FROM countries;
