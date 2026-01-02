SELECT
    subscription_id,
    customer_id,
    plan_name,
    start_date,
    cancel_date,
    status,

    CASE
        WHEN status = 'CANCELLED' THEN 1
        ELSE 0
    END AS is_churned

FROM {{ ref('stg_subscriptions') }}
