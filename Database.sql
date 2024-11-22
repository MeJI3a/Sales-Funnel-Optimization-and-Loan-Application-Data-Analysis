CREATE DATABASE loan_management;

-- Switch to the newly created database
USE loan_management;

DROP TABLE IF EXISTS temp_loan_data;

CREATE TEMPORARY TABLE temp_loan_data (
    ID VARCHAR(50),
    Gender VARCHAR(10),
    DOB DATE,
    Lead_Creation_Date DATE,
    City_Code VARCHAR(10),
    City_Category VARCHAR(5),
    Employer_Code VARCHAR(20),
    Employer_Category1 VARCHAR(5),
    Employer_Category2 FLOAT,
    Monthly_Income FLOAT,
    Customer_Existing_Primary_Bank_Code VARCHAR(20),
    Primary_Bank_Type VARCHAR(20),
    Contacted VARCHAR(5),
    Source VARCHAR(10),
    Source_Category VARCHAR(5),
    Existing_EMI FLOAT,
    Loan_Amount FLOAT,
    Loan_Period FLOAT,
    Interest_Rate FLOAT,
    EMI FLOAT,
    Var1 INT,
    Approved INT
);

ALTER TABLE temp_loan_data MODIFY COLUMN Interest_Rate DECIMAL(5, 2);
SHOW CREATE TABLE temp_loan_data;

ALTER TABLE temp_loan_data MODIFY COLUMN Employer_Category1 VARCHAR(255);  -- or another size that suits your data

ALTER TABLE temp_loan_data 
    MODIFY COLUMN ID VARCHAR(255),
    MODIFY COLUMN Gender VARCHAR(255),
    MODIFY COLUMN City_Code VARCHAR(255),
    MODIFY COLUMN City_Category VARCHAR(255),
    MODIFY COLUMN Employer_Code VARCHAR(255),
    MODIFY COLUMN Employer_Category1 VARCHAR(255),
    MODIFY COLUMN Customer_Existing_Primary_Bank_Code VARCHAR(255),
    MODIFY COLUMN Primary_Bank_Type VARCHAR(255),
    MODIFY COLUMN Source VARCHAR(255),
    MODIFY COLUMN Source_Category VARCHAR(255),
    MODIFY COLUMN Contacted VARCHAR(255);


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cleaned_loanData_cleaned.csv'
INTO TABLE temp_loan_data
FIELDS TERMINATED BY ','  
OPTIONALLY ENCLOSED BY '"'  
LINES TERMINATED BY '\n'  
IGNORE 1 ROWS;

SELECT * FROM temp_loan_data LIMIT 10;  -- View the first 10 rows


