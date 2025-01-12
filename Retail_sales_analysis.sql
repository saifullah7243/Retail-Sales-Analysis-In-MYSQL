# Create database
CREATE database sql_projects;

USE sql_projects;

# Data Explorating & Cleaning
Select * from project_1;

-- Change the column name
ALTER TABLE project_1
RENAME COLUMN `ï»¿transactions_id` TO `transactions_id`;

ALTER TABLE project_1
RENAME COLUMN `quantiy` TO `quantity`;

Select * from project_1;




-- Record count

Select count(*) as record_count from project_1;

-- Customer Count
Select count(distinct transactions_id) as customer_count from project_1;

-- distinct category
Select distinct category from project_1;

-- Check the null values
SELECT * FROM project_1
WHERE 
    sale_date IS NULL 
    OR sale_time IS NULL 
    OR customer_id IS NULL 
    OR gender IS NULL 
    OR age IS NULL 
    OR category IS NULL 
    OR quantity IS NULL 
    OR price_per_unit IS NULL 
    OR cogs IS NULL 
    OR total_sale IS NULL;
    
    SELECT 
    COUNT(*) AS total_rows,
    COUNT(sale_date) AS non_null_sale_date,
    COUNT(sale_time) AS non_null_sale_time,
    COUNT(customer_id) AS non_null_customer_id,
    COUNT(gender) AS non_null_gender,
    COUNT(age) AS non_null_age,
    COUNT(category) AS non_null_category,
    COUNT(quantity) AS non_null_quantity,
    COUNT(price_per_unit) AS non_null_price_per_unit,
    COUNT(cogs) AS non_null_cogs,
    COUNT(total_sale) AS non_null_total_sale
FROM project_1;

# Data Analysis & Findings
-- Question-1: Write a SQL query to retrieve all columns for sales made on '2022-11-05:
SELECT * from project_1
where sale_date = "2022-11-05";

/*-- Question-2: Write a SQL query to retrieve all transactions where 
the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022:*/
SELECT * 
FROM project_1
WHERE category = 'Clothing' 
  AND quantity >= 4 
  AND DATE_FORMAT(sale_date, "%Y-%m") = "2022-11";
  
# Question#3: Write a SQL query to calculate the total sales (total_sale) for each category.:
SELECT category, sum(total_sale) as category_sales
from project_1
group by category;

# Question-4: Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.:
SELECT avg(age) as cust_avg_age from project_1
where category = 'Beauty';

# Question- 5: Write a SQL query to find all transactions where the total_sale is greater than 1000.:
Select * from project_1
where total_sale > 1000;

# Question - 6: Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.:
Select
gender, category, count(transactions_id) as total_trans_id 
from project_1
group by gender, category;

/* Question-7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year: */
SELECT * 
FROM (
    SELECT 
        MONTH(sale_date) AS month, 
        YEAR(sale_date) AS year, 
        AVG(total_sale) AS avg_total_sale,
        ROW_NUMBER() OVER (PARTITION BY YEAR(sale_date) ORDER BY AVG(total_sale) DESC) AS ran
    FROM 
        project_1
    GROUP BY 
        MONTH(sale_date), YEAR(sale_date)
) AS sales_data
WHERE ran = 1;

-- Question-8: **Write a SQL query to find the top 5 customers based on the highest total sales **:
Select customer_id, sum(total_sale) as total_sale
from project_1
group by customer_id
order by total_sale desc
limit 5;

-- Question_9: Write a SQL query to find the number of unique customers who purchased items from each category.:
Select category, count(DISTINCT customer_id) as uniq_cuts
from project_1
group by category;

/*Write a SQL query to create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17):*/
with new_t as (
Select *,
case
when hour(sale_time) < 12 then "Morning"
when hour(sale_time) between 12 and 17 then "Afternoon"
when hour(sale_time) > 17 then "Evening"
Else "OOh please check the logic..."
end as shift
 from project_1 ) 
 SELECT 
    shift,
    COUNT(*) as total_orders    
FROM new_t
GROUP BY shift
