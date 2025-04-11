# 📊 Superstore Performance Overview

## 📁 Overview
This interactive Power BI dashboard is designed for business stakeholders—including **Sales Managers**, **Regional Heads**, and **Marketing Teams**—to monitor and explore key sales, profit, and growth performance metrics of the Superstore business.

---

## 🎯 Purpose
The primary goal of this dashboard is to:
- Provide high-level visibility into business performance.
- Enable strategic decisions by identifying trends and outliers.
- Empower stakeholders with actionable insights into regions, categories, and product segments.

---

## 📚 Dataset Summary
The dashboard is built using the **Superstore dataset**, with key columns including:
- `Order Date`, `Sales`, `Profit`, `Quantity`, `Discount`
- `Order ID`, `Customer Name`, `Region`, `Segment`
- `Category`, `Sub-Category`, `State`, `City`

---

## 🧭 Dashboard Navigation

This is a **multi-page Power BI dashboard** with navigation using **buttons and bookmarks**.

### 1️⃣ Executive Summary
**Purpose:** Provide an at-a-glance overview of business performance.

**Key Components:**
- **KPIs (Cards):**
  - Total Sales
  - Total Profit
  - YoY Sales Growth
  - YoY Profit Growth
  - Number of Orders
- **Slicers:**
  - Year
  - Region
  - Segment
  - (Optional) Category
- **Region Summary:**
  - Sales by Region (Mini Cards)
  - Profit by Region
- **Design:** Consistent color theme (Blue/Green = Positive, Red/Orange = Caution)

---

### 2️⃣ Sales Performance Analysis
**Purpose:** Drill into sales trends by time, category, and customer segment.

**Visuals:**
- **Line Chart:** Sales Trend (Year-Month)
- **Small Multiples:** Sales by Segment over Time
- **Bar Charts:**
  - Sales by Category
  - Sales by Sub-Category (Top N or Scrollable)

**Slicers:**
- Year
- Month
- Region
- Segment
- Category

---

### 3️⃣ Profitability Analysis
**Purpose:** Evaluate profit performance and discount impacts.

**Visuals:**
- **Line Chart:** Profit Trend Over Time
- **Bar Charts:**
  - Profit by Category
  - Profit by Sub-Category
- **Column Chart:** Profit Margin by Category (`Profit / Sales`)
- **Scatter Plot:** Discount vs. Profit

**Slicers:**
- Year
- Month
- Region
- Segment
- Category

---

### 4️⃣ Regional Performance
**Purpose:** Geographical view of sales and profit.

**Visuals:**
- **Filled Maps:**
  - Sales by Region
  - Profit by Region
- **Bar Charts:**
  - Top N States by Sales
  - Top N States by Profit

**Slicers:**
- Year
- Region
- Category

---

## 🎨 Design Notes
- **Color Coding:**  
  - Positive: Blue / Green  
  - Negative or Attention Areas: Orange / Red
- **Tooltips:** Insightful tooltips across visuals
- **Drill-through:** Enabled for Sub-Category and State exploration
- **Bookmarks:** Navigation across dashboard pages

---

## ✅ Tips for Use
- Use slicers to filter by year, region, and segment to explore different dimensions.
- Hover over visuals to gain extra context from tooltips.
- Use the navigation buttons to switch between pages.
- Compare YoY trends and regional insights for strategic actions.

---

## 📁 Files Included
- `Task4_SuperStore.pbix` – Power BI Dashboard File
- `READMEtask4.md` – Dashboard Documentation

---

## 📬 Feedback
Have suggestions or questions? Please feel free to open an issue or submit a pull request!

---

