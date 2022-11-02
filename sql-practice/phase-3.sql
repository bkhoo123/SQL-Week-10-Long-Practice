-- Your code here-- Your code here

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT(40) NOT NULL,
    phone TEXT UNIQUE,
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


-- You are a coffee shop owner that wants to create a customer loyalty program.
-- For each coffee that a customer purchases, they get 1 point. When a customer
-- first joins the program, they automatically get loaded with 5 points. They can
-- use 10 points to redeem a free coffee. You want to record the name of the
-- customer and an optional two forms of contact with the customer. You also want
-- to keep track of when each coffee was purchased or redeemed.


-- Problem 1 Rachel is Customer # 1
INSERT INTO customers (id, name, phone, email, points, created_at)
    VALUES 
        (null, 'Rachel', '111-11-1111', null, 0, CURRENT_TIMESTAMP);

-- Problem 2 Rachel Purchases Coffee
SELECT points FROM customers
    WHERE name = 'Rachel';

UPDATE customers 
    SET points = points + 6
    WHERE name = 'Rachel'; 

INSERT INTO coffee_orders (id, is_redeemed, ordered_at)
    VALUES
        (null, FALSE, CURRENT_TIMESTAMP);


-- Problem 3 Customers # 2 and 3 Monica / Phoebe
INSERT INTO customers (id, name, phone, email, points, created_at)
    VALUES
        (null, 'Monica', '222-222-2222', 'monica@friends.show', 0, CURRENT_TIMESTAMP),
        (null, 'Phoebe', '333-333-3333', 'phoebe@friends.show', 0, CURRENT_TIMESTAMP);


-- Problem 4 Phoebe Purchases Three Coffees
SELECT points FROM customers
    WHERE name = 'Phoebe';

UPDATE customers 
    SET points = points + 8
    WHERE name = 'Phoebe';

INSERT INTO coffee_orders (id, is_redeemed, ordered_at)
    VALUES
        (null, FALSE, CURRENT_TIMESTAMP),
        (null, FALSE, CURRENT_TIMESTAMP),
        (null, FALSE, CURRENT_TIMESTAMP);

-- Problem 5 Rachael and Monica each purchase four coffees
SELECT points FROM customers
    WHERE name = 'Rachel';

UPDATE customers 
    SET points = points + 4
    WHERE name = 'Rachel';

SELECT points FROM customers
    WHERE name = 'Monica';

UPDATE customers 
    SET points = points + 4
    WHERE name = 'Monica';



INSERT INTO coffee_orders (id, is_redeemed, ordered_at)
    VALUES
        (null, FALSE, CURRENT_TIMESTAMP),
        (null, FALSE, CURRENT_TIMESTAMP),
        (null, FALSE, CURRENT_TIMESTAMP),
        (null, FALSE, CURRENT_TIMESTAMP),
        (null, FALSE, CURRENT_TIMESTAMP),
        (null, FALSE, CURRENT_TIMESTAMP),
        (null, FALSE, CURRENT_TIMESTAMP),
        (null, FALSE, CURRENT_TIMESTAMP);


-- Problem 6 Monica wants to know her new point total
SELECT points FROM customers
    WHERE name = 'Monica';


-- Problem 7 Rachel wants to check her total points. 
-- Redeem her points for a coffee if she has enough points. If she doesn't, she wants to purchase a coffee.
SELECT points FROM customers
    WHERE name = 'Rachel';

INSERT INTO coffee_orders (id, is_redeemed, ordered_at)
    VALUES (null, TRUE, CURRENT_TIMESTAMP);

UPDATE customers
    SET points = 0
    WHERE name = 'Rachel';


-- Problem 8 Three new customers joined the loyalty program with the following customer information:
INSERT INTO customers (id, name, phone, email, points, created_at)
    VALUES
        (null, 'Joey', null, 'joey@friends.show', 0, CURRENT_TIMESTAMP),
        (null, 'Chandler', null, 'chandler@friends.show', 0, CURRENT_TIMESTAMP),
        (null, 'Ross', null, 'ross@friends.show', 0, CURRENT_TIMESTAMP);

UPDATE customers
    SET points = points + 5
    WHERE name = 'Joey';

UPDATE customers
    SET points = points + 5
    WHERE name = 'Chandler';

UPDATE customers
    SET points = points + 5
    WHERE name = 'Ross';



-- Problem 9 Ross purchases six coffees.
SELECT points FROM customers
    WHERE name = 'Ross';

UPDATE customers
    SET points = points + 6
    WHERE name = 'Ross';

INSERT INTO coffee_orders (id, is_redeemed, ordered_at)
    VALUES
        (null, FALSE, CURRENT_TIMESTAMP),
        (null, FALSE, CURRENT_TIMESTAMP),
        (null, FALSE, CURRENT_TIMESTAMP),
        (null, FALSE, CURRENT_TIMESTAMP),
        (null, FALSE, CURRENT_TIMESTAMP),
        (null, FALSE, CURRENT_TIMESTAMP);



-- Problem 10 Monica Purchases Three Coffees
SELECT points FROM customers
    WHERE name = 'Monica';

UPDATE customers
    SET points = points + 3
    WHERE name = 'Monica';   

INSERT INTO coffee_orders (id, is_redeemed, ordered_at)
    VALUES
        (null, FALSE, CURRENT_TIMESTAMP),
        (null, FALSE, CURRENT_TIMESTAMP),
        (null, FALSE, CURRENT_TIMESTAMP);


-- Problem 11 Phoebe wants to check her total points. Redeem her points for a coffee if she has enough points. 
-- If she doesn't, she wants to purchase a coffee.

SELECT points FROM customers
    WHERE name = 'Phoebe';

UPDATE customers
    SET points = points + 1
    WHERE name = 'Phoebe'; 

INSERT INTO coffee_orders (id, is_redeemed, ordered_at)
    VALUES
        (null, FALSE, CURRENT_TIMESTAMP);


-- Problem 12 Ross demands a refund for the last two coffees that he ordered.

DELETE from coffee_orders 
    WHERE id = 18;

DELETE from coffee_orders
    WHERE id = 19;



-- Problem 13 Joey Purchases Two Coffees
SELECT points FROM customers
    WHERE name = 'Joey';


UPDATE customers
    SET points = points + 2
    WHERE name = 'Joey'; 

INSERT INTO coffee_orders (id, is_redeemed, ordered_at)
    VALUES
        (null, FALSE, CURRENT_TIMESTAMP),
        (null, FALSE, CURRENT_TIMESTAMP);

-- Problem 14 Monica wants to check her total points. Redeem her points for a coffee if she has enough points.
-- If she doesn't she wants to purchase a coffee
SELECT points FROM customers
    WHERE name = 'Monica';

UPDATE customers
    SET points = points + 1
    WHERE name = 'Monica';

INSERT INTO coffee_orders (id, is_redeemed, ordered_at)
    VALUES
        (null, FALSE, CURRENT_TIMESTAMP);


-- Problem 15 Chandler wants to delete his loyalty program account
DELETE from customers 
    WHERE id = 5;



-- Problem 16 Ross wants to check his total points. Redeem his points for a coffee if he has enough. 
-- If he doesn't he wants to purchase a coffee
SELECT points FROM customers
    WHERE name = 'Ross';

UPDATE customers
    SET points = 1
    WHERE name = 'Ross';

INSERT INTO coffee_orders (id, is_redeemed, ordered_at)
    VALUES
        (null, TRUE, CURRENT_TIMESTAMP);
     

-- Problem 17 Joey wants to check his total points. Redeem his points for a coffee if he has enough points. 
--  If he doesn't, he wants to purchase a coffee.
SELECT points FROM customers
    WHERE name = 'Joey';

UPDATE customers 
    Set points = points + 1
    WHERE name = 'Joey';

INSERT INTO coffee_orders (id, is_redeemed, ordered_at)
    VALUES
        (null, FALSE, CURRENT_TIMESTAMP);



-- Problem 18 Phoebe wants to change her email to p_as_in_phoebe@friends.show.
UPDATE customers
    set email = "p_as_in_phoebe@friends.show"
    WHERE name = 'Phoebe';

SELECT * FROM coffee_orders;
SELECT * FROM customers;