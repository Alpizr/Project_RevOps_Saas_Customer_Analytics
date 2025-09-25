-- models/fct_subscriptions.sql
SELECT
    s.account_id,
    s.subscription_id,
    s.start_date,
    s.end_date,
    s.mrr_amount,
    s.arr_amount,
    s.churn_flag,
    COALESCE(c.churn_date, NULL) AS churn_date,
    COALESCE(c.reason_code, 'No Churn') AS churn_reason,
    COALESCE(c.refund_amount_usd, 0) AS refund_amount_usd,
    s.billing_frequency,
    s.auto_renew_flag
FROM
    {{ ref('stg_subscriptions') }} s
LEFT JOIN
    {{ ref('stg_churn_events') }} c
ON
    s.account_id = c.account_id
