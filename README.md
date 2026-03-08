# Customer Shopping Behaviour Analysis
Overview

This project analyzes customer shopping behaviour to identify patterns in purchasing habits, customer preferences, and sales trends. The analysis was performed using Python for data cleaning and exploratory data analysis (EDA), MySQL for SQL-based analysis, and Power BI for data visualization.

The goal of this project is to demonstrate practical data analytics skills including data preprocessing, querying structured data, and building interactive dashboards to derive business insights.

## Dataset

The dataset used in this project is Customer Shopping Behavior Data, containing 3,900 customer purchase records and 18 features.

## Key Columns in the Dataset

- Customer ID – Unique identifier for each customer

- Age – Customer age

- Gender – Male / Female

- Item Purchased – Product purchased

- Category – Product category (Clothing, Accessories, etc.)

- Purchase Amount (USD) – Amount spent by the customer

- Location – Customer location

- Size – Size of purchased item

- Color – Product color

- Season – Season of purchase

- Review Rating – Customer rating for the product

- Subscription Status – Whether customer has a subscription

- Shipping Type – Shipping method used

- Discount Applied – Whether a discount was applied

- Promo Code Used – Whether a promo code was used

- Previous Purchases – Number of past purchases

- Payment Method – Payment mode (Credit Card, PayPal, Cash, etc.)

- Frequency of Purchases – Weekly, Monthly, Annually, etc.

## Tools & Technologies

- Python

- Pandas 

- MySQL Server

- Power BI

## Project Workflow
### 1. Data Loading

The dataset was loaded into Python using Pandas for analysis.
Initial data exploration was performed using:

- df.head()

- df.info()

- df.describe()

- df.isnull().sum()

### 2. Data Cleaning

Several preprocessing steps were performed:

##### Handling Missing Values

- Missing Review Ratings were filled using the median rating within each product category.

##### Column Standardization

- Converted column names to lowercase

- Replaced spaces with underscores

- Renamed purchase_amount_(usd) to purchase_amount

### 3. Feature Engineering
###### Age Group Segmentation

Customers were grouped into age segments using quartiles.

###### Purchase Frequency Conversion

Purchase frequency categories were converted into numeric days for easier analysis.

### 4. Data Consistency Check

A validation check was performed to compare discount_applied and promo_code_used columns.Since both columns contained identical information, promo_code_used was removed to eliminate redundancy.

### 5. SQL Analysis

The cleaned dataset was imported into MySQL Server for further analysis using SQL queries.

### 6. Power BI Dashboard

A Power BI dashboard was created to visualize key insights from the dataset.
