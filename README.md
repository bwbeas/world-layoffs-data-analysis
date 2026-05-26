# 🗃️📊 Data Analysis on world layoffs data

### (the world layoffs data is attached in form of .csv file)

## 📌 Project Overview

This project focuses on cleaning and analyzing real-world layoffs data using SQL.  
The workflow follows a complete data analysis process, including:

- 🧹 Data Cleaning
- 📊 Exploratory Data Analysis (EDA)
- 📈 Trend Analysis

The project was built using **MySQL** and demonstrates practical SQL techniques used in real-world data analytics workflows.

---

## 🛠️ Technologies Used

- SQL
- MySQL
- Window Functions
- Common Table Expressions (CTEs)
- Aggregate Functions
- Data Cleaning Techniques
- Exploratory Data Analysis (EDA)

---

## 📂 Project Structure

```bash
├── data_cleaning.sql
├── exploratory_data_analysis.sql
└── README.md
```

---

## 🧹 Data Cleaning Process

The raw layoffs dataset contained duplicates, inconsistent formatting, blank values, and unnecessary data.  
To ensure accurate analysis, several cleaning steps were performed.

### ✅ Cleaning Tasks Performed

#### 🔹 Removing Duplicates
- Identified duplicate records using window functions
- Removed repeated rows from the dataset

#### 🔹 Standardizing Data
- Removed extra spaces and formatting inconsistencies
- Standardized industry names
- Corrected country formatting
- Converted date values into proper SQL date format

#### 🔹 Handling Null & Blank Values
- Replaced blank values with NULL values
- Filled missing industry data using existing company records
- Removed rows with insufficient information

####🔹 Removing Unnecessary Columns
- Dropped temporary/helper columns after cleaning was completed

---

## 📊 Exploratory Data Analysis (EDA)

After cleaning the dataset, exploratory analysis was performed to identify trends and patterns in layoffs across companies and years.

### 🔍 Analysis Performed

#### 🏢 Companies with Highest Layoffs
- Identified companies with the largest total layoffs

#### 📅 Layoffs by Year
- Analyzed yearly layoff trends
- Compared layoffs across different years

#### 📈 Monthly Layoff Trends
- Examined how layoffs changed month-by-month

#### 📊 Rolling Layoff Totals
- Calculated cumulative layoffs over time using window functions

#### 🏆 Top Companies by Year
- Ranked the top companies with the highest layoffs each year

#### 📌 Maximum Layoffs
- Found the maximum number of layoffs reported in a single event

---

## 🧠 SQL Concepts Used

This project demonstrates practical use of:

- CTEs (`WITH`)
- Window Functions
- Aggregate Functions
- GROUP BY
- ORDER BY
- Joins
- Data Cleaning Techniques
- Ranking Functions
- Rolling Calculations
- Date Functions

---
