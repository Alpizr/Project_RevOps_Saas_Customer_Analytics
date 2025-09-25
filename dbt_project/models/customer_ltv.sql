-- models/customer_ltv.sql
SELECT
    account_id,
    -- Sumamos el MRR de cada suscripción para obtener el LTV
    SUM(mrr_amount) AS total_mrr_ltv,
    -- Calculamos la duración de la suscripción en días
    SUM(
        DATE_PART('day', (COALESCE(end_date, CURRENT_DATE)::timestamp - start_date::timestamp))
    ) AS subscription_duration_days
FROM
    {{ ref('fct_subscriptions') }}
GROUP BY
    account_id
ORDER BY
    total_mrr_ltv DESC
