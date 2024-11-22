# Sales Funnel Optimization and Loan Application Data Analysis

## Overview

This project focuses on analyzing a loan application dataset to identify inefficiencies in the sales funnel and provide actionable recommendations. The process involves cleaning and preprocessing raw data, exploratory data analysis (EDA), creating database schemas, and performing a detailed funnel analysis. Visualizations, including funnel plots, waterfall charts, and sunburst charts, are used to highlight key insights.

---

## Objectives

1. **Data Cleaning**:
   - Handle missing values, standardize formats, and ensure data quality.
   - Save a cleaned version of the dataset for further analysis.
2. **Exploratory Data Analysis (EDA)**:
   - Analyze key features and their relationships.
   - Highlight patterns and outliers in the dataset.
3. **Sales Funnel Optimization**:
   - Define funnel stages, calculate conversion rates, and visualize drop-offs.
   - Propose recommendations to improve lead conversion rates.
4. **Database Design**:
   - Create a structured relational database for efficient querying and analysis.

---

## Files and Descriptions

### Python Files

1. **DataCleaning.ipynb**:
   - Focuses on cleaning the raw dataset (`train.csv`).
   - Handles missing values, converts data types, and removes duplicates.
   - Saves the cleaned dataset as `cleaned_loanData_cleaned.csv`.

2. **DataAnalysis.ipynb**:
   - Performs exploratory data analysis (EDA) and sales funnel analysis.
   - Visualizes the sales funnel using funnel plots, waterfall charts, and sunburst charts.
   - Proposes recommendations to optimize the funnel.

---

### SQL Files

1. **CreateTables.sql**:
   - Defines the database schema for storing cleaned and structured data.
   - Creates tables such as `Customers`, `Loans`, `Employers`, `Banks`, and `Cities`.

2. **InsertData.sql**:
   - Inserts the cleaned data from `cleaned_loanData_cleaned.csv` into the database tables.
   - Handles relationships between tables using foreign keys.

3. **Database.sql**:
   - Initializes the database `loan_management` and manages overall database operations.

4. **EDA.sql**:
   - Performs SQL queries for exploratory data analysis, including summary statistics, value counts, and distribution analysis.

5. **View.sql**:
   - Creates a view (`FullLoanData`) to combine data from multiple tables.
   - Simplifies querying and analysis by consolidating key information.

---

### CSV Files

1. **train.csv**:
   - The raw dataset containing 69,713 rows and 22 columns.
   - Includes customer demographics, loan details, and funnel progression indicators.

2. **cleaned_loanData_cleaned.csv**:
   - The cleaned dataset after data preprocessing and standardization.
   - Used for both Python and SQL analyses.

---

## Visualizations and Dashboards

### Power BI Dashboard

- A Power BI dashboard provides interactive insights into the sales funnel and its stages. 
- **[Link to Power BI Dashboard](https://example.com)** (replace with the actual link to your dashboard).

---

## Project Workflow

1. **Data Cleaning**:
   - Handled missing values, standardized formats, and converted data types.
   - Removed duplicates and saved the cleaned dataset.

2. **Database Creation**:
   - Designed and implemented a relational database schema for structured data storage.
   - Loaded cleaned data into the database using SQL scripts.

3. **EDA and Funnel Analysis**:
   - Analyzed key metrics like conversion rates and approval rates.
   - Visualized the sales funnel using Python and SQL.

4. **Visualization**:
   - Created dashboards and visualizations to highlight insights and propose improvements.

---

## Recommendations

1. **Increase Contact Rate**:
   - Optimize lead outreach processes.
   - Use multi-channel communication to reduce uncontacted leads.

2. **Enhance Application Quality**:
   - Provide clear eligibility guidelines and pre-qualification tools.
   - Offer support during application submission to reduce errors.

3. **Boost Approval Rate**:
   - Analyze rejection reasons and introduce alternative loan products.
   - Educate applicants on loan requirements.

---
