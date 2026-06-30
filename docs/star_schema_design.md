# Star schema design – Online customer orders

## 1. Business process and grain

- Dataset: Orders
- Business process: Online customer orders
- Grain: One row in `fact_orders` represents one order line item.

## 2. Measures (facts)

Planned measures in `fact_orders`:
- quantity
- unit_price
- discount_amount
- tax_amount
- gross_amount
- net_amount

## 3. Dimensions

Planned dimensions:
- `dim_date`: full_date, day_name, month_name, quarter, year
- `dim_customer`: customer_id, customer_name, city, country, segment
- `dim_product`: product_id, product_name, category, brand
- `dim_channel`: channel_name, source_type

## 4. Star schema sketch

### Fact table

`fact_orders`
- order_date_key
- customer_key
- product_key
- channel_key
- quantity
- unit_price
- discount_amount
- tax_amount
- gross_amount
- net_amount

### Dimension tables

`dim_date`
- date_key
- full_date
- day_name
- month_name
- quarter
- year

`dim_customer`
- customer_key
- customer_id
- customer_name
- city
- country
- segment

`dim_product`
- product_key
- product_id
- product_name
- category
- brand

`dim_channel`
- channel_key
- channel_name
- source_type

## 5. Notes and assumptions

- Each order can have multiple line items.
- Measures are defined at line-item level.
- Dimensions provide descriptive context, not measures.