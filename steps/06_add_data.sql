\c mytestdb

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