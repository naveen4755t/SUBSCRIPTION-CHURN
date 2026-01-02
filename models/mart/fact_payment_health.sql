SELECT
    payment_month,
    total_payments,
    failed_payments,
    failure_rate_pct
FROM {{ ref('int_payment_failure_monthly') }}
