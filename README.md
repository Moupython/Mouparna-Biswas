#**Project Title**

**Order & Menu Analytics – SQL-Based BI Project**
This project analyzes restaurant order and menu data to generate actionable business insights related to sales performance, product demand, and customer ordering patterns. The goal is to simulate a real-world business intelligence scenario where data is used to support operational and strategic decision-making.

**Business Problem**
Organizations in the food and retail industry need visibility into:
  Which products drive the most revenue
  Customer ordering trends and behavior
  Opportunities to optimize menu offerings

This project demonstrates how raw transactional data can be transformed into meaningful insights to support data-driven decisions.

**Dataset Description**
The dataset consists of:
Orders – Contains order-level information
Order Details – Line-level details for each order
Menu Items – Product catalog including categories and pricing
Data Dictionary – Field-level metadata

**Key Analysis Performed**
Revenue analysis by category and item
Identification of top-selling and high-performing menu items
Order volume and sales trends
Average order value calculation
Product performance comparison across categories

**SQL Techniques Used**
Joins (Inner, Left) to combine multiple datasets
Aggregations (SUM, COUNT, AVG) for KPI calculations
Group By for category-level insights
Window functions for ranking and advanced analysis
CTEs (Common Table Expressions) for modular query design

**Sample Insights**
Top-performing menu items contribute a significant portion of total revenue
Certain categories consistently outperform others in sales
Order patterns indicate peak demand periods that can inform staffing and inventory decisions
Pricing variations across categories impact average order value

**Repository Structure**
menu_items.csv → Product dataset
order_details.csv → Order line details
Menu.sql → SQL queries for menu and pricing analysis
Orders_2.sql → SQL queries for order-level insights
restaurant_db_data_dictionary.csv → Data definitions

**Tools & Technologies**
SQL (Data Analysis & Querying)
Relational Data Modeling Concepts
GitHub (Version Control)

**Business Value**
This project highlights how data can be leveraged to:
Support revenue optimization strategies
Identify high-performing products
Improve operational efficiency
Enable data-driven decision-making

**Future enhancements may include:** **(Upcoming)**

Power BI dashboard for visualization of insights
Data modeling using fact and dimension tables
Integration into a cloud-based data pipeline (e.g., Azure Databricks)
