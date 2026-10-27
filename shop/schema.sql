DROP TABLE IF EXISTS orders, products, customers;



Create TABLE customers (
    customer_id INT  PRIMARY KEY,
    name TEXT NOT NULL,
    city TEXT UNIQUE NOT NULL,
    signup_date Date NOT NULL
);  

CREATE TABLE products (
    product_id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    price NUMERIC(10, 2) NOT NULL,
    category TEXT NOT NULL
);  


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT ,
    product_id INT,
    status TEXT,
    ordered_at TIMESTAMPTZ,
    quantity INT NOT NULL
);