-- Your code here
-- DROP TABLE IF EXISTS customers;

-- CREATE TABLE customers (
--     id INTEGER PRIMARY KEY AUTOINCREMENT,
--     name TEXT(40) NOT NULL,
--     phone TEXT UNIQUE,
--     email TEXT UNIQUE,
--     points INTEGER,
--     created_at CURRENT_TIMESTAMP
-- );

-- DROP TABLE IF EXISTS coffee_orders;

-- CREATE TABLE coffee_orders (
--     id INTEGER PRIMARY KEY AUTOINCREMENT,
--     is_redeemed BOOLEAN,
--     ordered_at CURRENT_TIMESTAMP
-- );


CREATE TABLE employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name TEXT(50) NOT NULL,
    department VARCHAR,
    relationship_with VARCHAR,
    performance_review INTEGER,
    job_position VARCHAR;
)


.print "#1: Add Michael Scott to your list of employees in the Management Department in the role of Regional Manager"

