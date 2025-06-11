-- Create the database if it doesn't exist
IF NOT EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = 'bank_churn_db')
BEGIN
    CREATE DATABASE bank_churn_db;
END
GO

-- Use the database
USE bank_churn_db;
GO

-- Create the customers table if it doesn't exist
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Bank_Churn')
BEGIN
    CREATE TABLE customers (
        CustomerId INT PRIMARY KEY,
        Surname NVARCHAR(255),
        CreditScore INT,
        Geography NVARCHAR(255),
        Gender NVARCHAR(255),
        Age INT,
        Tenure INT,
        Balance DECIMAL(10, 2),
        NumOfProducts INT,
        HasCrCard BIT,
        IsActiveMember BIT,
        EstimatedSalary DECIMAL(10, 2),
        Exited BIT
    );
END
GO

-- SELECT * FROM Bank_Churn



