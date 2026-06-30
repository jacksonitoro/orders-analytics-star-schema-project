-- Fact table for online customer orders

CREATE TABLE fact_orders (
    order_line_id    SERIAL PRIMARY KEY,
    order_date_key   INTEGER NOT NULL,
    customer_key     INTEGER NOT NULL,
    product_key      INTEGER NOT NULL,
    channel_key      INTEGER,
    quantity         NUMERIC(18,2),
    unit_price       NUMERIC(18,2),
    discount_amount  NUMERIC(18,2),
    tax_amount       NUMERIC(18,2),
    gross_amount     NUMERIC(18,2),
    net_amount       NUMERIC(18,2)
    -- Foreign keys will be added after dimension tables exist
);