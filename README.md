# E-commerce Customer Segmentation (RFM Analysis) 📊

## Project Overview
This project focuses on Customer Segmentation using **RFM (Recency, Frequency, Monetary)** analysis on an e-commerce dataset. The goal is to categorize customers based on their purchasing behavior to identify high-value clients, loyal customers, and those at risk of churning. All data cleaning, exploration, and analysis were performed using **SQL**.

## Tools & Technologies Used
* **Database:** MySQL
* **Language:** SQL (Data Cleaning, Aggregations, Date/String Functions)
* **Concepts:** RFM Analysis, Customer Retention, Data Wrangling

## The RFM Model
* **Recency (R):** How recently a customer made a purchase (Calculated using `DATEDIFF`).
* **Frequency (F):** How often a customer makes a purchase (Count of distinct invoices).
* **Monetary (M):** How much money a customer spends (Calculated as `Quantity * UnitPrice`).

## Key Data Cleaning Steps
During the analysis, several data quality issues were addressed directly within the SQL queries:
* Filtered out rows with `NULL` Customer IDs.
* Removed cancelled orders (Invoice numbers starting with 'C').
* Filtered out negative quantities and zero/negative unit prices to ensure accurate revenue calculations.
* Standardized date formats using the `STR_TO_DATE` function.

## Future Enhancements
* Export the aggregated RFM data.
* Connect the dataset to Power BI / Tableau to build an interactive dashboard visualizing customer segments.
