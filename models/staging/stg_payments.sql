SELECT
    payment_id,
    subscription_id,
    payment_date,
    amount,
    payment_status
FROM {{source('raw', 'payments') }}



