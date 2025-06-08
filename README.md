# Retail-Orders-Analysis


## Environment Variables

To securely manage Kaggle credentials (`KAGGLE_USERNAME` and `KAGGLE_KEY`), I followed these steps:

1. **Installed Required Packages**  
   Installed the `kaggle` and `python-dotenv` packages using pip.

2. **Created a `.env` File**  
   Stored the Kaggle credentials in a `.env` file located in the root directory of the project.

3. **Loaded Environment Variables**  
   Used the `python-dotenv` package to load the environment variables.

4. **Accessed the Variables**  
   Retrieved `KAGGLE_USERNAME` and `KAGGLE_KEY` using the `os` module’s `getenv()` method.

5. **Secured the `.env` File**  
   Added the `.env` file to the `.gitignore` file to prevent exposing credentials in version control.


## Data Loading and Inspection

1. **Downloaded the datasets using Kaggle API**  
   The dataset was downloaded directly within the Jupyter notebook using the Kaggle CLI prefixed with `!`
   The data was save as a `retail-orders.zip` file

2. **Extracted the dataset** 
   The `retail-orders.zip` file was extracted into an `orders` folder which contains the `orders.csv`

3. **Loaded the data**  
   The dataset was read into a pandas DataFrame for further analysis.

4. **Displayed the First 30 Rows**  
   Previewed the dataset by displaying the first 30 rows to understand its structure and sample records.

5. **Checked the Dataset Shape**  
   Determined the number of rows and columns in the dataset to understand its size.

6. **Identified Missing Values**  
   Assessed the dataset for missing values by checking how many are present in each column.


## Categorical Data Exploration

- Identified all categorical (object-type) columns in the dataset, excluding the `Order Date` column.
- Used a loop to print the unique values for each of these categorical columns.
- This helped understand the variety of categories present in the data, such as product names, regions, and customer segments.

## Data Cleaning and Transformation

1. Identified all object-type columns in the dataset (excluding `Order Date`) and printed their unique values to understand the categorical distributions.

2. Replaced invalid entries `'Not Available'` and `'unknown'` in the `Ship Mode` column with `NaN` to standardize missing values.

3. Renamed all DataFrame columns by converting them to lowercase and replacing spaces with underscores to maintain a consistent naming convention.

4. Created derived columns:
   - Computed a `discount` column as:  
     `discount = list_price * discount_percent / 100`
   - Computed a `selling_price` column as:  
     `selling_price = list_price - discount`
   - Computed a `profit` column as:  
     `profit = selling_price - cost_price`

5. Dropped the `cost_price`, `list_price`, and `discount_percent` columns after deriving the required values.

6. Converted the `order_date` column to datetime format using the ISO8601 standard.

## Database Operations

1. **Connection String**  
   Environment variables (`HOST`, `DATABASE`, `USER`, `PASSWORD`, `PORT`) were used to securely construct a MySQL SQLAlchemy connection string.

2. **Establishing the Connection**  
   The notebook connects to the database using SQLAlchemy and gracefully handles potential connection errors.

3. **Writing the DataFrame to SQL**  
   The transformed DataFrame was written to a MySQL table named `orders`. If the table already existed, it was replaced. Indexes were excluded.

4. **Reading from SQL**  
   All records from the `orders` table were fetched and inspected to verify successful insertion into the database.

---

## SQL Analysis Queries

A series of queries and grouped analyses were conducted to gain insights from the data:

1. **Total Revenue per Category**  
   Determined which categories generated the most revenue based on selling price totals.

2. **Top 3 Profitable Cities**  
   Ranked cities by their total profit to identify the top performers.

3. **Profit Margin per Product**  
   Calculated profit margins and listed the top 25 most profitable products by percentage.

4. **Order Counts by Shipping Mode**  
   Assessed which shipping method was used most often.

5. **Month with Highest Orders**  
   Identified the month with the greatest number of orders.

6. **Top 5 Most Discounted Products**  
   Highlighted the products that received the largest monetary discounts.

7. **Top 3 Cities by Sales**  
   Listed cities contributing the highest total sales revenue.

8. **Average Profit for 2023**  
   Computed the mean profit for all orders placed in the year 2023.

9. **Sub-Category Sales Ranking**  
   Displayed the top five sub-categories by total revenue.

10. **Average Selling Price per Category**  
    Ranked categories based on their average selling price.

11. **Top 10 Products by Order Count**  
    Found the most frequently ordered products.

12. **Top 5 Profitable Products**  
    Identified the products that generated the highest cumulative profit.

13. **Year with Highest Sales**  
    Determined the year with the highest overall revenue.

14. **Region with Lowest Discount**  
    Identified which region received the least average discount.

15. **Yearly Sales Growth**  
    Tracked total annual sales to evaluate growth over time.

16. **Profit Contribution by Category**  
    Calculated each category's percentage contribution to total profit.

17. **Most Common Shipping Mode**  
    Found the shipping method used most frequently.

18. **Highest Average Order Value by Region**  
    Compared regions to find where customers spent the most per order on average.

19. **Category & Sub-Category Sales**  
    Broke down revenue by combinations of product categories and sub-categories.

20. **Top 3 Profitable Products per Sub-Category**  
    For each sub-category, listed the three most profitable products.

21. **Monthly Order Counts for 2023**  
    Ranked months by the number of orders in 2023.

22. **States with Lowest Sales**  
    Listed the ten states with the lowest cumulative revenue.

23. **Top 5 States by Revenue**  
    Ranked the five states with the highest total sales.

24. **Average Discount by Sub-Category**  
    Computed average discount across all product sub-categories.

25. **Top 10 Products by Revenue**  
    Identified the top ten products that earned the most revenue.

---

## Conclusion

This project demonstrates how raw retail data can be transformed into meaningful business intelligence using data cleaning, transformation, database integration, and SQL-style analysis.

---

## Author

**Felista Wairimu Njihia**  
Aspiring Data Scientist  
📫 [Email](njihiafelista@gmail.com) | 🌍 Nairobi, Kenya