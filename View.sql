USE loan_management;

-- Create a view that combines data from Customers, Loans, Employers, Banks, and Cities
CREATE VIEW FullLoanData AS
SELECT 
    c.CustomerID,                      -- Customer ID
    c.ID AS Customer_ID,               -- Customer ID from Customers
    c.Gender,                           -- Gender of the customer
    c.DOB,                              -- Date of Birth of the customer
    c.City_Code,                        -- City code of the customer
    c.Employer_Code,                    -- Employer code of the customer
    l.LoanID,                           -- Loan ID from Loans
    l.Lead_Creation_Date,              -- Date the lead was created
    l.Monthly_Income,                  -- Monthly income of the customer
    l.Existing_EMI,                     -- Existing EMI of the customer
    l.Loan_Amount,                      -- Amount of the loan
    l.Loan_Period,                      -- Duration of the loan
    l.Interest_Rate,                    -- Interest rate of the loan
    l.EMI,                              -- EMI amount
    l.Var1,                             -- Additional variable
    l.Approved,                         -- Approval status of the loan
    e.Employer_Category1,               -- Employer category 1 from Employers
    e.Employer_Category2,               -- Employer category 2 from Employers
    b.Customer_Existing_Primary_Bank_Code, -- Bank code from Banks
    b.Primary_Bank_Type,                -- Type of the primary bank from Banks
    ct.City_Category                     -- Category of the city from Cities
FROM 
    Loans l
JOIN 
    Customers c ON l.CustomerID = c.CustomerID
JOIN 
    Employers e ON c.Employer_Code = e.Employer_Code
JOIN 
    Banks b ON b.Customer_Existing_Primary_Bank_Code = c.ID  -- Assuming relationship based on ID
JOIN 
    Cities ct ON c.City_Code = ct.City_Code;  -- Join on City_Code
