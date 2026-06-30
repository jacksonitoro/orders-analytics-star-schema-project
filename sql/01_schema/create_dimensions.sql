-- Dimensions for online customer orders

CREATE TABLE dim_date (
    date_key      INTEGER PRIMARY KEY,
    full_date     DATE NOT NULL,
    day_name      VARCHAR(20),
    month_name    VARCHAR(20),
    quarter       VARCHAR(10),
    year          INTEGER
);

CREATE TABLE dim_customer (
    customer_key   SERIAL PRIMARY KEY,
    customer_id    VARCHAR(50) NOT NULL,
    customer_name  VARCHAR(100),
    city           VARCHAR(100),
    country        VARCHAR(100),
    segment        VARCHAR(50)
);

CREATE TABLE dim_product (
    product_key    SERIAL PRIMARY KEY,
    product_id     VARCHAR(50) NOT NULL,
    product_name   VARCHAR(100),
    category       VARCHAR(100),
    brand          VARCHAR(100)
);

CREATE TABLE dim_channel (
    channel_key    SERIAL PRIMARY KEY,
    channel_name   VARCHAR(100),
    source_type    VARCHAR(50)
);