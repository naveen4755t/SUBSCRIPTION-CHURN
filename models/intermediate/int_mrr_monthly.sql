SELECT
    DATE_TRUNC('month', payment_date) AS revenue_month,
    s.plan_name,
    COUNT(DISTINCT s.subscription_id) AS active_subscriptions_paid,
    SUM(p.amount) AS mrr,
    SUM(p.amount) * 12 AS arr
FROM {{ ref('stg_payments') }} p
JOIN {{ ref('stg_subscriptions') }} s
  ON p.subscription_id = s.subscription_id
WHERE p.payment_status = 'SUCCESS'
GROUP BY 1, 2
