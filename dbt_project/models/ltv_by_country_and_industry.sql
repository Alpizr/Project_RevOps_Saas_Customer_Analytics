SELECT
    a.country,
    a.industry,
    AVG(ltv."total_mrr_ltv") AS average_ltv
FROM
    {{ ref('customer_ltv') }} AS ltv
LEFT JOIN
    {{ ref('stg_accounts') }} AS a
ON
    ltv.account_id = a.account_id
GROUP BY
    1, 2
ORDER BY
    average_ltv DESC
