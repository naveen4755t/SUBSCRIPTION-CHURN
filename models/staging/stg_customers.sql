SELECT
    customer_id,
    customer_name,
    signup_date,
    country
FROM {{ source('raw', 'customers') }}
