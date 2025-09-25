-- models/feature_usage_analysis.sql
SELECT
    s.account_id,
    f.feature_name,
    SUM(f.usage_count) AS total_usage_count,
    SUM(f.usage_duration_secs) AS total_usage_duration_secs,
    SUM(f.error_count) AS total_error_count,
    MAX(CAST(s.churn_flag AS INTEGER)) AS has_churned
FROM
    {{ ref('stg_feature_usage') }} f
LEFT JOIN
    {{ ref('stg_subscriptions') }} sub
ON
    f.subscription_id = sub.subscription_id
LEFT JOIN
    {{ ref('fct_subscriptions') }} s
ON
    sub.account_id = s.account_id
GROUP BY
    s.account_id,
    f.feature_name
ORDER BY
    total_usage_count DESC
