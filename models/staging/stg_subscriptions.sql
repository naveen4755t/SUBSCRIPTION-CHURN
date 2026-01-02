SELECT
    subscription_id,
    customer_id,
    plan_name,
    start_date,
    cancel_date,
    status
FROM {{ source('raw', 'subscriptions') }}
