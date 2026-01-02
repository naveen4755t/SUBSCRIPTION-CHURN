SELECT
    revenue_month,
    plan_name,
    active_subscriptions_paid,
    mrr,
    arr
FROM {{ ref('int_mrr_monthly') }}
