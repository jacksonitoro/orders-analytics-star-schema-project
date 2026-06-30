CREATE TABLE stg_orders (
    customer_id              VARCHAR(50),
    customer_status          VARCHAR(50),
    order_date               DATE,
    delivery_date            DATE,
    order_id                 VARCHAR(50),
    product_id               VARCHAR(50),
    quantity_ordered         NUMERIC(18, 2),
    total_retail_price       NUMERIC(18, 2),
    cost_price_per_unit      NUMERIC(18, 2)
);