USE loan_management;

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    ID VARCHAR(255),
    Gender VARCHAR(255),
    DOB DATE,
    City_Code VARCHAR(255),  -- Include City_Code for relationship
    Employer_Code VARCHAR(255)  -- Include Employer_Code for relationship
);


CREATE TABLE Loans (
    LoanID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    Lead_Creation_Date DATE,
    Monthly_Income FLOAT,
    Existing_EMI FLOAT,
    Loan_Amount FLOAT,
    Loan_Period FLOAT,
    Interest_Rate FLOAT,
    EMI FLOAT,
    Var1 INT,
    Approved INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Employers (
    EmployerID INT AUTO_INCREMENT PRIMARY KEY,
    Employer_Code VARCHAR(255),
    Employer_Category1 VARCHAR(255),
    Employer_Category2 FLOAT
);


CREATE TABLE Banks (
    BankID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_Existing_Primary_Bank_Code VARCHAR(255),
    Primary_Bank_Type VARCHAR(255)
);

CREATE TABLE Cities (
    CityID INT AUTO_INCREMENT PRIMARY KEY,
    City_Code VARCHAR(255),
    City_Category VARCHAR(255)
);


DROP TABLE IF EXISTS Cities, Customers, Employers, Loans, Banks;
