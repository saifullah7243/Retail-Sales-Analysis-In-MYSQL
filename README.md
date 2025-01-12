# **SQL Project: Sales Data Analysis**

## **Project Overview**
This project involves performing data exploration, cleaning, and analysis on a sales dataset using MySQL. The dataset contains information about transactions, including details such as sale dates, customer demographics, product categories, and sales performance. The primary objective is to clean the data, uncover meaningful insights, and answer business questions through SQL queries.

---

## **Key Findings**

### **Data Cleaning:**
- Renamed columns for better clarity and consistency (e.g., corrected column names `ï»¿transactions_id` to `transactions_id` and `quantiy` to `quantity`).
- Verified the record count: **`<record_count>`** total records in the dataset.
- Identified and handled null values in critical columns such as `sale_date`, `customer_id`, `category`, and `total_sale`.
- Ensured all essential columns had valid and non-null data.

---

### **Insights from Data Analysis**
1. **Sales on Specific Date:**
   - Retrieved all sales data for **2022-11-05**, highlighting detailed sales activities for that day.
   
2. **Category-Specific Transactions:**
   - Identified transactions in the **Clothing** category with quantities sold exceeding 4 during **November 2022**.

3. **Category-Wise Total Sales:**
   - Calculated total sales for each category, revealing the most and least revenue-generating categories.

4. **Customer Demographics:**
   - Found the **average age** of customers who purchased items in the **Beauty** category to be **`<average_age>`**.

5. **High-Value Transactions:**
   - Filtered transactions where the total sale exceeded **$1000**, identifying premium or bulk purchases.

6. **Gender and Category Analysis:**
   - Analyzed transaction patterns, showing the number of transactions made by each gender across different product categories.

7. **Best-Selling Month:**
   - Determined the **best-selling month** for each year based on average sales, providing seasonal sales trends.

8. **Top Customers:**
   - Identified the **top 5 customers** with the highest total sales, showcasing loyal and high-spending customers.

9. **Category-Wise Unique Customers:**
   - Found the number of unique customers who purchased from each category, indicating customer reach by category.

10. **Sales Shift Analysis:**
    - Divided sales data into three shifts:
      - **Morning (<12 PM)**
      - **Afternoon (12 PM - 5 PM)**
      - **Evening (>5 PM)**
    - Analyzed the number of orders in each shift, identifying peak sales hours.

---

## **Skills and Concepts Learned**
- **Database Creation and Management:**
  - Learned how to create and use databases effectively in MySQL.

- **Data Cleaning:**
  - Renamed columns, identified null values, and ensured data integrity for accurate analysis.

- **Data Aggregation and Grouping:**
  - Used functions like `COUNT()`, `SUM()`, `AVG()`, and `GROUP BY` to aggregate and analyze data.

- **Filtering and Conditional Logic:**
  - Applied `WHERE` clauses and conditional filters to extract meaningful subsets of data.

- **Date and Time Functions:**
  - Utilized functions like `DATE_FORMAT()` and `HOUR()` to analyze time-based trends and shifts.

- **Window Functions:**
  - Leveraged `ROW_NUMBER()` to identify the best-selling months.

- **Advanced SQL Techniques:**
  - Used `WITH` and subqueries to simplify complex queries for better readability and performance.

- **Business Insights:**
  - Gained an understanding of customer demographics, sales patterns, and category performance.

---

## **Technologies Used**
- **Database Management System:** MySQL
- **Tools:** MySQL Workbench
- **Language:** SQL

---

## **How to Use**
1. Clone the repository.
2. Import the SQL scripts into your MySQL Workbench or preferred SQL client.
3. Execute the queries to explore the dataset and generate insights.

---

## **Future Improvements**
- Add visualization tools (e.g., Tableau or Power BI) for better representation of insights.
- Implement advanced analytics like predictive sales trends.
- Automate data cleaning and report generation processes.

---
