# BANK-LOAN-ANALYTICS-DASHBOARD
End-to-End Data Analytics Capstone Project
1. Introduction

In the modern financial ecosystem, banks generate and manage massive volumes of loan-related data. Effective analysis of this data is essential to assess credit risk, monitor portfolio health, improve lending strategies, and ensure regulatory compliance. Traditional reporting methods often fail to provide real-time, interactive, and insightful views of loan performance.

This capstone project, Bank Loan Analytics Dashboard, addresses this challenge by designing an end-to-end data analytics solution using Excel, Python, SQL logic, and Power BI. The project transforms raw loan data into meaningful business insights through structured KPIs and interactive dashboards.

2. Objectives of the Project

The primary objectives of this project are:

To analyze bank loan data and understand lending performance

To classify loans into Good Loans and Bad Loans based on loan status

To track key financial KPIs such as funded amount, received amount, interest rate, and DTI

To identify trends across time, geography, borrower profile, and loan purpose

To build interactive dashboards that support data-driven decision-making

3. Domain Understanding – Bank Loan System

A bank loan is a financial agreement in which a lender provides funds to a borrower with the expectation of repayment along with interest. Banks evaluate multiple parameters before granting loans, including:

Credit history

Income and employment stability

Debt-to-Income Ratio (DTI)

Loan purpose

Collateral and risk profile

Analyzing historical loan data enables banks to:

Predict default risk

Optimize interest rates

Improve portfolio profitability

Detect fraud and irregularities

4. Dataset Description

The dataset used in this project contains structured bank loan records with the following key attributes:

Loan ID

Issue Date

Loan Amount

Total Payment Received

Interest Rate

Debt-to-Income Ratio (DTI)

Loan Status (Fully Paid, Current, Charged Off)

Loan Term (36 / 60 months)

Loan Purpose

Employee Length

Home Ownership

Grade and Sub-grade

State

This dataset enables multi-dimensional analysis of loan performance and borrower behavior.

5. Tools and Technologies Used
Tool	Purpose
Excel	Initial data inspection and cleaning
Python (Google Colab)	Data preprocessing and validation
SQL Logic	KPI calculations and aggregations
Power BI	Data modeling and interactive dashboards

Python Notebook Link: https://colab.research.google.com/drive/1H05q1RswLQbYSrTfTD9HjNbRFH5tnfvC

6. Data Preprocessing
6.1 Excel

Removed null and duplicate values

Verified data types

Standardized categorical values

6.2 Python

Loaded dataset into Pandas DataFrames

Validated numerical ranges (interest rate, DTI)

Checked distribution of loan statuses

Exported cleaned dataset for Power BI consumption

7. KPI Design and Metrics
Core KPIs:

Total Loan Applications

Total Funded Amount

Total Amount Received

Average Interest Rate

Average Debt-to-Income Ratio (DTI)

Time-Based KPIs:

Month-to-Date (MTD) metrics

Previous Month-to-Date (PMTD)

Month-over-Month (MoM) change

8. Good Loan vs Bad Loan Analysis
Good Loans

Loans with status:

Fully Paid

Current

Metrics:

Good Loan Percentage

Good Loan Applications

Good Loan Funded Amount

Good Loan Amount Received

Bad Loans

Loans with status:

Charged Off

Metrics:

Bad Loan Percentage

Bad Loan Applications

Bad Loan Funded Amount

Bad Loan Amount Received

This classification helps measure credit risk and portfolio quality.

9. Dashboard Architecture

The Power BI report consists of three interactive dashboards:

9.1 Summary Dashboard

Purpose:

High-level performance overview

Key Features:

KPI cards with MTD and MoM indicators

Good vs Bad Loan donut charts

Loan status performance table

9.2 Overview Dashboard

Purpose:

Trend and segmentation analysis

Visuals Included:

Monthly loan application trend (Line Chart)

State-wise loan distribution (Map)

Loan term analysis (Donut Chart)

Loan purpose breakdown (Bar Chart)

Employee length analysis (Bar Chart)

Home ownership analysis (Tree Map)

9.3 Details Dashboard

Purpose:

Transaction-level analysis

Features:

Detailed loan records table

Filters by State, Grade, and Loan Status

Drill-down capability for individual loan analysis

10. Key Insights and Findings

Approximately 69% of loans are Good Loans, indicating a healthy portfolio

Charged-off loans contribute significantly less to total received amount

Majority of loans are issued for debt consolidation and small business purposes

Borrowers with mortgage ownership dominate the loan portfolio

Interest rate and DTI increase with lower credit grades

11. Business Use Cases

This dashboard can be used by:

Credit Risk Teams – to identify high-risk loans

Portfolio Managers – to monitor loan performance

Management – to evaluate lending strategies

Analysts – for deep-dive financial analysis

12. Limitations

Dataset represents historical data only

No predictive modeling included

External economic factors are not considered

13. Future Enhancements

Integrate machine learning models for default prediction

Automate data refresh using cloud pipelines

Add borrower segmentation using clustering

Incorporate real-time loan data

14. Conclusion

The Bank Loan Analytics Dashboard successfully demonstrates an end-to-end data analytics workflow—from raw data processing to business-level insights. By combining Python, SQL logic, and Power BI, this project delivers a scalable and interactive solution suitable for real-world banking analytics.

This project highlights strong skills in data analysis, financial KPIs, dashboard design, and business storytelling, making it a solid capstone for data analytics and data science roles.BANK LOAN ANALYTICS DASHBOARD
End-to-End Data Analytics Capstone Project
1. Introduction

In the modern financial ecosystem, banks generate and manage massive volumes of loan-related data. Effective analysis of this data is essential to assess credit risk, monitor portfolio health, improve lending strategies, and ensure regulatory compliance. Traditional reporting methods often fail to provide real-time, interactive, and insightful views of loan performance.

This capstone project, Bank Loan Analytics Dashboard, addresses this challenge by designing an end-to-end data analytics solution using Excel, Python, SQL logic, and Power BI. The project transforms raw loan data into meaningful business insights through structured KPIs and interactive dashboards.

2. Objectives of the Project

The primary objectives of this project are:

To analyze bank loan data and understand lending performance

To classify loans into Good Loans and Bad Loans based on loan status

To track key financial KPIs such as funded amount, received amount, interest rate, and DTI

To identify trends across time, geography, borrower profile, and loan purpose

To build interactive dashboards that support data-driven decision-making

3. Domain Understanding – Bank Loan System

A bank loan is a financial agreement in which a lender provides funds to a borrower with the expectation of repayment along with interest. Banks evaluate multiple parameters before granting loans, including:

Credit history

Income and employment stability

Debt-to-Income Ratio (DTI)

Loan purpose

Collateral and risk profile

Analyzing historical loan data enables banks to:

Predict default risk

Optimize interest rates

Improve portfolio profitability

Detect fraud and irregularities

4. Dataset Description

The dataset used in this project contains structured bank loan records with the following key attributes:

Loan ID

Issue Date

Loan Amount

Total Payment Received

Interest Rate

Debt-to-Income Ratio (DTI)

Loan Status (Fully Paid, Current, Charged Off)

Loan Term (36 / 60 months)

Loan Purpose

Employee Length

Home Ownership

Grade and Sub-grade

State

This dataset enables multi-dimensional analysis of loan performance and borrower behavior.

5. Tools and Technologies Used
Tool	Purpose
Excel	Initial data inspection and cleaning
Python (Google Colab)	Data preprocessing and validation
SQL Logic	KPI calculations and aggregations
Power BI	Data modeling and interactive dashboards

Python Notebook Link: https://colab.research.google.com/drive/1H05q1RswLQbYSrTfTD9HjNbRFH5tnfvC

6. Data Preprocessing
6.1 Excel

Removed null and duplicate values

Verified data types

Standardized categorical values

6.2 Python

Loaded dataset into Pandas DataFrames

Validated numerical ranges (interest rate, DTI)

Checked distribution of loan statuses

Exported cleaned dataset for Power BI consumption

7. KPI Design and Metrics
Core KPIs:

Total Loan Applications

Total Funded Amount

Total Amount Received

Average Interest Rate

Average Debt-to-Income Ratio (DTI)

Time-Based KPIs:

Month-to-Date (MTD) metrics

Previous Month-to-Date (PMTD)

Month-over-Month (MoM) change

8. Good Loan vs Bad Loan Analysis
Good Loans

Loans with status:

Fully Paid

Current

Metrics:

Good Loan Percentage

Good Loan Applications

Good Loan Funded Amount

Good Loan Amount Received

Bad Loans

Loans with status:

Charged Off

Metrics:

Bad Loan Percentage

Bad Loan Applications

Bad Loan Funded Amount

Bad Loan Amount Received

This classification helps measure credit risk and portfolio quality.

9. Dashboard Architecture

The Power BI report consists of three interactive dashboards:

9.1 Summary Dashboard

Purpose:

High-level performance overview

Key Features:

KPI cards with MTD and MoM indicators

Good vs Bad Loan donut charts

Loan status performance table

9.2 Overview Dashboard

Purpose:

Trend and segmentation analysis

Visuals Included:

Monthly loan application trend (Line Chart)

State-wise loan distribution (Map)

Loan term analysis (Donut Chart)

Loan purpose breakdown (Bar Chart)

Employee length analysis (Bar Chart)

Home ownership analysis (Tree Map)

9.3 Details Dashboard

Purpose:

Transaction-level analysis

Features:

Detailed loan records table

Filters by State, Grade, and Loan Status

Drill-down capability for individual loan analysis

10. Key Insights and Findings

Approximately 69% of loans are Good Loans, indicating a healthy portfolio

Charged-off loans contribute significantly less to total received amount

Majority of loans are issued for debt consolidation and small business purposes

Borrowers with mortgage ownership dominate the loan portfolio

Interest rate and DTI increase with lower credit grades

11. Business Use Cases

This dashboard can be used by:

Credit Risk Teams – to identify high-risk loans

Portfolio Managers – to monitor loan performance

Management – to evaluate lending strategies

Analysts – for deep-dive financial analysis

12. Limitations

Dataset represents historical data only

No predictive modeling included

External economic factors are not considered

13. Future Enhancements

Integrate machine learning models for default prediction

Automate data refresh using cloud pipelines

Add borrower segmentation using clustering

Incorporate real-time loan data

14. Conclusion

The Bank Loan Analytics Dashboard successfully demonstrates an end-to-end data analytics workflow—from raw data processing to business-level insights. By combining Python, SQL logic, and Power BI, this project delivers a scalable and interactive solution suitable for real-world banking analytics.

This project highlights strong skills in data analysis, financial KPIs, dashboard design, and business storytelling, making it a solid capstone for data analytics and data science roles.
