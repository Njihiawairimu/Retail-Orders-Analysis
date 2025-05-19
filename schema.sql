-- Define Table Schema

create schema retail_schema;
CREATE TABLE IF NOT EXISTS retail_schema.orders (
    order_id INTEGER PRIMARY KEY,
    order_date TIMESTAMP,
    ship_mode VARCHAR(50),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(100),
    state VARCHAR(50),
    postal_code INTEGER,
    region VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_id VARCHAR(50),
    quantity INTEGER,
    discount NUMERIC(10,2),
    selling_price NUMERIC(10,2),
    profit NUMERIC(10,2)
);

