# AdventureWorks Data Exploration, Sales Management Project
## ReadMe
### Skills used: SQL Server (Joins, Concatenante, Case, DateDiff) and Power BI (interactive dashboards for sales, customers, and products)

## Description
This is a data exploration project using the Microsoft AdventureWorks [database](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver15&tabs=ssms), which is a product sample for an online transaction processing (OLTP) database depicting a fictitious, multinational manufacturing company called Adventure Works Cycles. This analysis delivers an executive business request using SQL and Power BI on two years of data (January 2021 - January 2023), which leads to the conclusion that Mountain Bikes are the most popular sale item, Bikes make up the majority of sales (95.3%), and December is the busiest month for sales. The sales manager requested live and interactive sales reports for management and the sales team to track sales over time per customers and products in real time.

Used existing sample database from Microsoft [AdventureWorks](https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2019.bak) to create a data analyst project using SQL (SSMS) for transformation/analysis and Power BI for visualization.

A fictional business request/scenario was used to determine the objectives of the project to create a CRM report and deliverables presented with a live dashboard.

Data was updated (Update_AdventureWorksDW_Data.sql) and queried using SSMS and has been documented in the "import_restore_updata_data.sql" file.

Raw data was imported and can be viewed in the "RAW_%" files.

Relevant tables have been cleaned and transformed using SSMS to create useful queries for the project, and have been labeld "DIM_% and FACT_%.sql".

Tables have been extracted and saved as .csv files then imported into Microsoft Power BI for visualization and can be viewed as "DIM_%.csv" and "FACT_%.csv" files.

A report has been created to fulfill the business request/scenario and can be seen [here](https://jesserichardville.wordpress.com/) which was exported as a live and interactive Power BI [dashboard](https://app.powerbi.com/links/LRRRrNlE1P?ctid=dd9514d9-0843-4d4f-8158-06bf09d7ea7c&pbi_source=linkShare&bookmarkGuid=3f1b3e80-1e6b-44a8-b865-0ba062c35f12).

This analysis delivers an executive business request using SQL and Power BI on two years of data (January 2021 - January 2023), which leads to the conclusion that Mountain Bikes are the most popular sale item, Bikes make up the majority of sales (95.3%), and December is the busiest month for sales.
