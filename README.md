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

2. **Extracted the dataset**  *Displayed the First 30 Rows**  
   Previewed the dataset by displaying the first 30 rows to understand its structure and sample records.

2. **Checked the Dataset Shape**  
   Determined the number of rows and columns in the dataset to understand its size.

3. **Identified Missing Values**  
   Assessed the dataset for missing values by checking how many are present in each column.

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

