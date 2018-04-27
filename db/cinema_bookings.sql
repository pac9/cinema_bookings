-- DROP TABLE tickets;
DROP TABLE films;
DROP TABLE customers;

CREATE TABLE customers(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  funds INT4
);

CREATE TABLE films(
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(255),
  price VARCHAR(255)
);

-- CREATE TABLE tickets(
--   id SERIAL4 PRIMARY KEY,
--   customer_id INT4 REFERENCES customer(id) ON DELETE CASCADE,
--   film_id INT4 REFERENCES film(id) ON DELETE CASCADE
-- );
