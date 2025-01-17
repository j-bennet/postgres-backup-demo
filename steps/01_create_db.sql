CREATE DATABASE mytestdb;

\connect mytestdb

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    salary NUMERIC
);


-- Next, insert 1000 rows into the `employees` table:
DO $$
BEGIN
 FOR i IN 1..1000 LOOP
 INSERT INTO employees (first_name, last_name, email, salary)
 VALUES (
 'FirstName' || i,
 'LastName' || i,
 'email' || i || '@example.com',
 ROUND(CAST(RANDOM() as NUMERIC) * 10000 + 30000, 2)
 );
 END LOOP;
END $$;