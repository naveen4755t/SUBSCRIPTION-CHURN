SELECT
    DATE_TRUNC('month', payment_date) AS payment_month,
    COUNT(*) AS total_payments,
    SUM(CASE WHEN payment_status = 'FAILED' THEN 1 ELSE 0 END) AS failed_payments,
    ROUND(
        100 * SUM(CASE WHEN payment_status = 'FAILED' THEN 1 ELSE 0 END) / NULLIF(COUNT(*), 0),
        2
    ) AS failure_rate_pct
FROM {{ ref('stg_payments') }}
GROUP BY 1
