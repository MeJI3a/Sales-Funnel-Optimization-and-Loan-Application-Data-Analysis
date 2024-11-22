USE loan_management;

INSERT INTO Cities (City_Code, City_Category)
SELECT DISTINCT City_Code, City_Category
FROM temp_loan_data
WHERE City_Code IS NOT NULL;

INSERT INTO Employers (Employer_Code, Employer_Category1, Employer_Category2)
SELECT DISTINCT Employer_Code, Employer_Category1, Employer_Category2
FROM temp_loan_data
WHERE Employer_Code IS NOT NULL;

INSERT INTO Banks (Customer_Existing_Primary_Bank_Code, Primary_Bank_Type)
SELECT DISTINCT Customer_Existing_Primary_Bank_Code, Primary_Bank_Type
FROM temp_loan_data
WHERE Customer_Existing_Primary_Bank_Code IS NOT NULL;

INSERT INTO Customers (ID, Gender, DOB, City_Code, Employer_Code)
SELECT DISTINCT ID, Gender, DOB, City_Code, Employer_Code
FROM temp_loan_data
WHERE ID IS NOT NULL;

INSERT INTO Loans (CustomerID, Lead_Creation_Date, Monthly_Income, Existing_EMI, Loan_Amount, Loan_Period, Interest_Rate, EMI, Var1, Approved)
SELECT 
    c.CustomerID, 
    t.Lead_Creation_Date, 
    t.Monthly_Income, 
    t.Existing_EMI, 
    t.Loan_Amount, 
    t.Loan_Period, 
    t.Interest_Rate, 
    t.EMI, 
    t.Var1, 
    t.Approved
FROM 
    temp_loan_data t
JOIN 
    Customers c ON t.ID = c.ID;  -- Join to get the CustomerID
    
    
-- check tables
SHOW CREATE TABLE Cities;
SHOW CREATE TABLE Customers;
SHOW CREATE TABLE Employers;
SHOW CREATE TABLE Loans;
SHOW CREATE TABLE Banks;


SELECT COUNT(*) FROM Cities;
SELECT COUNT(*) FROM Customers;
SELECT COUNT(*) FROM Employers;
SELECT COUNT(*) FROM Loans;
SELECT COUNT(*) FROM Banks;




