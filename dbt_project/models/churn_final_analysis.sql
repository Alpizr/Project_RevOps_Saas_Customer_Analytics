SELECT
    f.account_id,
    MAX(f.has_churned) AS has_churned,
    MIN(ce.churn_date) AS churn_date,
    MAX(s.start_date) as subscription_start_date -- Nombre de la variable corregido
FROM
    {{ ref('feature_usage_analysis') }} AS f
LEFT JOIN
    {{ ref('stg_churn_events') }} AS ce
    ON f.account_id = ce.account_id
LEFT JOIN
    {{ ref('stg_subscriptions') }} AS s -- Nombre de la tabla corregido
    ON f.account_id = s.account_id
GROUP BY 1
