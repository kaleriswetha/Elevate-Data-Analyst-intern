# Elevate-Data-Analyst-intern
As a Data Analyst Intern, I cleaned, processed, and analyzed datasets using Python and Excel. I created visualizations, dashboards, and reports to provide actionable insights, supported decision-making, and improved data workflows. This experience strengthened my analytical, problem-solving, and data-driven skills in real-world business scenarios.

Data cleaning is a critical step in data analysis and preprocessing, ensuring that datasets are accurate, consistent, and ready for analysis. One of the first steps involves identifying and handling missing values. In Python, the .isnull() function allows analysts to detect missing values, which can then be handled by filling them with mean, median, or default values, or by removing rows entirely. In Excel, filters can be applied to highlight blanks, which can then be corrected or deleted.

Another essential step is removing duplicate rows, which ensures that repeated records do not skew analysis. In Python, .drop_duplicates() removes duplicates efficiently, while in Excel, the “Remove Duplicates” feature performs the same task.

Standardizing text values is important for consistency. For example, gender entries like ‘M’, ‘male’, or ‘m’ should be standardized to a single format. Similarly, country names with variations like ‘USA’ and ‘U.S.A’ need uniform representation. Python string methods like .str.lower(), .str.strip(), and .replace() facilitate this process, while Excel’s Find & Replace, TRIM, and case functions help achieve uniformity.

Converting date formats ensures temporal data is consistent. Python’s pd.to_datetime() converts strings to datetime objects, whereas Excel allows formatting cells to a standard date format such as dd-mm-yyyy.

Renaming column headers and checking/fixing data types is also crucial. Columns should be lowercase and free of spaces for easier coding and querying. Data types must match the expected type: integers for numeric fields like age, datetime for date columns, and text for categorical data. Python’s .astype() and .dtypes help verify and convert types, while Excel formatting options provide similar functionality.

# 🧹 Data Cleaning Project

This project demonstrates essential **data cleaning techniques** using **Python (Pandas)** and **Excel**.  
It covers tasks such as handling missing values, removing duplicates, standardizing text, formatting dates, renaming columns, and fixing data types.

---

## 📌 Data Cleaning Tasks

### 1️⃣ Identify & Handle Missing Values
- **Python**:
```python
df.isnull().sum()
df['age'] = df['age'].fillna(df['age'].mean())
df = df.dropna()

### Standardize text values
df['gender'] = df['gender'].str.lower().str.strip()
df['gender'] = df['gender'].replace({'m':'male', 'f':'female'})
df['country'] = df['country'].str.title().str.strip()

### Check and fix data types
'df['age'] = df['age'].astype(int)
df['date'] = pd.to_datetime(df['date'])
