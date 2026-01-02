SELECT
    customer_id,
    customer_name,
    signup_date,
    country
FROM {{ ref('stg_customers') }}
