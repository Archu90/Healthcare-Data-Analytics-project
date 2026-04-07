SELECT 
CASE 
    WHEN MonthlyCharges <= 50 THEN 'Low'
    WHEN MonthlyCharges <= 100 THEN 'Medium'
    ELSE 'High'
END AS charge_group,
COUNT(*) AS total_customers,
SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churn_count
FROM churn_clean
GROUP BY charge_group;