-- models/stg_churn_events.sql
SELECT
    churn_event_id,
    account_id,
    CAST(churn_date AS DATE) AS churn_date,
    reason_code,
    refund_amount_usd,
    preceding_upgrade_flag,
    preceding_downgrade_flag,
    is_reactivation,
    feedback_text
FROM
    {{ source('raw', 'stg_churn_events') }}
