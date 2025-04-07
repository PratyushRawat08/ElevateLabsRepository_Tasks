# ElevateLabs_tasks1
# 🚗 Cleaned Car Sales Data

This project involves cleaning and preprocessing a car sales dataset to prepare it for analysis or modeling.

## 🧹 Cleaning Techniques Used

The following data cleaning steps were performed:

### 1. Removing Null Values
- All rows containing missing (`NaN`) values in critical columns were removed.
- Placeholder values such as empty strings (`''`), dashes (`'-'`, `'—'`) were also removed.

### 2. Data Type Conversion
- Columns with incorrect data types (e.g., object stored as strings) were converted to their proper types.

### 3. Date Format Standardization
- Original date strings like `Tue Dec 16 2014 12:30:00 GMT-0800 (PST)` were cleaned and converted.
- Dates were reformatted into a consistent `DDMMYYYY` format for easier sorting and filtering.

### 4. Dropping Unnecessary Columns
- Columns that were irrelevant or redundant (such as `dateonly`) were dropped from the final dataset.

## 💾 Output

The cleaned dataset is saved as: 

