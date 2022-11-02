-- Your code here

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    phone INTEGER UNIQUE,
    email TEXT UNIQUE,
    points INTEGER,
    created_at CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS coffee_orders;

CREATE TABLE coffee_orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    is_redeemed BOOLEAN,
    ordered_at CURRENT_TIMESTAMP
);

