-- models/nrr_monthly.sql
-- Step 1: Aggregate expansion, contraction, and churn per month,
--         but only for customers who were active the previous month.
WITH monthly_metrics AS (
    SELECT
        DATE_TRUNC('month', month_start) AS nrr_month,
        SUM(monthly_mrr) AS current_mrr,
        SUM(previous_month_mrr) AS previous_mrr,
        SUM(expansion_mrr) AS expansion,
        SUM(contraction_mrr) AS contraction,
        SUM(churn_mrr) AS churn,
        SUM(reactivation_mrr) AS reactivation
    FROM
        {{ ref('nrr_analysis') }}
    WHERE
        previous_month_mrr > 0 
    GROUP BY
        nrr_month
),

-- Step 2: Calculate NRR using the filtered data
nrr_calculation AS (
    SELECT
        nrr_month,
        previous_mrr,
        (previous_mrr + expansion + reactivation) - (contraction + churn) AS total_revenue,
        CASE
            WHEN previous_mrr > 0 THEN (previous_mrr + expansion + reactivation - contraction - churn) / previous_mrr
            ELSE NULL  
        END AS nrr_rate
    FROM
        monthly_metrics
)

SELECT
    nrr_month,
    total_revenue,
    previous_mrr,
    nrr_rate
FROM
    nrr_calculation
ORDER BY
    nrr_month
