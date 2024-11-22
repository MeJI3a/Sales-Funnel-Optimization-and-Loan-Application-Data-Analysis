USE loan_management;

-- Summary Statistics for Loans
SELECT 
    AVG(l.Loan_Amount) AS Avg_Loan_Amount,  -- Average Loan Amount
    MAX(l.Loan_Amount) AS Max_Loan_Amount,  -- Maximum Loan Amount
    MIN(l.Loan_Amount) AS Min_Loan_Amount,  -- Minimum Loan Amount
    COUNT(*) AS Total_Records,                -- Total number of records in Loans
    COUNT(DISTINCT c.ID) AS Unique_Customers  -- Count of unique customers from Customers table
FROM Loans l  -- Alias for Loans table
JOIN Customers c ON l.CustomerID = c.CustomerID;  -- Join to get Customer IDs


-- Count of Non-Null Values
SELECT 
    COUNT(*) AS Total_Records,                -- Total number of records
    COUNT(ID) AS Non_Null_ID,                 -- Count of non-null IDs
    COUNT(Gender) AS Non_Null_Gender,         -- Count of non-null Genders
    COUNT(DOB) AS Non_Null_DOB,               -- Count of non-null DOBs
    COUNT(City_Code) AS Non_Null_City_Code    -- Count of non-null City Codes
FROM Customers;  -- From the Customers table


-- Value Counts for Gender
SELECT 
    Gender, COUNT(*) AS Count  -- Count occurrences of each gender
FROM Customers
GROUP BY Gender;  -- Group by Gender


-- Value Counts for City Category
SELECT 
    City_Category, COUNT(*) AS Count  -- Count occurrences of each city category
FROM Cities
GROUP BY City_Category;  -- Group by City Category


-- Distribution of Loan Amounts
SELECT 
    Loan_Amount, COUNT(*) AS Frequency  -- Count frequency of each loan amount
FROM Loans
GROUP BY Loan_Amount  -- Group by Loan Amount
ORDER BY Loan_Amount;  -- Order by Loan Amount


-- Average Loan Amount and Interest Rate by City Code
SELECT 
    c.City_Code,  -- Select City_Code from Customers table
    AVG(l.Loan_Amount) AS Avg_Loan_Amount,  -- Average Loan Amount
    AVG(l.Interest_Rate) AS Avg_Interest_Rate  -- Average Interest Rate
FROM Loans l  -- Alias for Loans table
JOIN Customers c ON l.CustomerID = c.CustomerID  -- Join to get City_Code
GROUP BY c.City_Code;  -- Group by City_Code


-- Summary of Loan Amounts by City Category
SELECT 
    ci.City_Category,                        -- City Category from Cities table
    MIN(l.Loan_Amount) AS Min_Loan_Amount,  -- Minimum Loan Amount
    MAX(l.Loan_Amount) AS Max_Loan_Amount,  -- Maximum Loan Amount
    AVG(l.Loan_Amount) AS Avg_Loan_Amount   -- Average Loan Amount
FROM Loans l  -- Alias for Loans table
JOIN Customers c ON l.CustomerID = c.CustomerID  -- Join Loans with Customers to get Customer information
JOIN Cities ci ON c.City_Code = ci.City_Code  -- Join Customers with Cities to get City Categories
GROUP BY ci.City_Category;  -- Group by City_Category

-- Pairwise Relationships (Summary Statistics)
SELECT 
    AVG(Loan_Amount) AS Avg_Loan_Amount,  -- Average Loan Amount
    AVG(Interest_Rate) AS Avg_Interest_Rate,  -- Average Interest Rate
    AVG(Monthly_Income) AS Avg_Monthly_Income  -- Average Monthly Income
FROM Loans
JOIN Customers ON Loans.CustomerID = Customers.CustomerID;  -- Join to get customer data


-- Creating Age from DOB (not directly in SQL, but you can calculate it in reports)
SELECT 
    ID, 
    DOB, 
    YEAR(CURDATE()) - YEAR(DOB) AS Age  -- Calculate age
FROM Customers;


-- Average Loan Amount by Gender
SELECT 
    Gender, 
    AVG(Loan_Amount) AS Avg_Loan_Amount  -- Average Loan Amount by Gender
FROM Loans
JOIN Customers ON Loans.CustomerID = Customers.CustomerID  -- Join to get customer data
GROUP BY Gender;  -- Group by Gender


-- Distribution of Loan Amounts
SELECT 
    Loan_Amount,
    COUNT(*) AS Frequency  -- Count frequency of each loan amount
FROM Loans
GROUP BY Loan_Amount
ORDER BY Loan_Amount;  -- Order by Loan Amount


-- Monthly Loan Amount Trends
SELECT 
    DATE_FORMAT(Lead_Creation_Date, '%Y-%m') AS Month,  -- Format date to Year-Month
    SUM(Loan_Amount) AS Total_Loan_Amount  -- Total Loan Amount by Month
FROM Loans
GROUP BY Month  -- Group by Month
ORDER BY Month;  -- Order by Month


-- Detect Outliers in Loan Amounts
SELECT 
    Loan_Amount, 
    CASE 
        WHEN Loan_Amount > (SELECT AVG(Loan_Amount) + 3 * STD(Loan_Amount) FROM Loans) 
        THEN 'Outlier' 
        ELSE 'Normal' 
    END AS Status  -- Label as Outlier or Normal
FROM Loans;







