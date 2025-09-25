SELECT
    st.account_id,
    st.priority,
    AVG(st.satisfaction_score) AS average_satisfaction_score,
    AVG(st.resolution_time_hours) AS average_resolution_time,
    COUNT(st.ticket_id) AS total_tickets,
    MAX(CASE WHEN ce.churn_date IS NOT NULL THEN 1 ELSE 0 END) AS is_churned
FROM
    {{ ref('stg_support_tickets') }} AS st
LEFT JOIN
    {{ ref('stg_churn_events') }} AS ce
ON
    st.account_id = ce.account_id
GROUP BY
    1, 2
ORDER BY
    total_tickets DESC
