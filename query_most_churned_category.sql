USE bank_churn_db;

SELECT TOP 1 
    Geography, 
    Gender, 
    COUNT(*) AS ChurnedCustomers
FROM Bank_Churn
WHERE Exited = 1
GROUP BY Geography, Gender
ORDER BY ChurnedCustomers DESC;