Portfolio-Project-1-of-Bank-Loan-Analysis-Risk-Assessment
This project analyzes bank loan data to understand customer behavior, loan approval patterns, and risk factors that may lead to loan default.
# 📊 Bank Loan Analysis & Risk Assessment Project
  📌 Project Overview

This project analyzes bank loan data to understand customer behavior, loan approval patterns, and risk factors that may lead to loan default.

The goal is to help financial institutions make better lending decisions by identifying high-risk customers and improving approval strategies.

🎯 Problem Statement

Banks face challenges in:

* Identifying trustworthy customers
* Reducing loan defaults
* Understanding factors affecting loan approval
* Managing financial risk

This project aims to analyze customer financial data to uncover patterns that influence loan approval and default risk.

📂 Dataset Information

The dataset contains customer and loan details including:

* Customer ID
* Age
* Gender
* Income
* Employment Years
* Credit Score
* Loan Amount
* Loan Term
* Interest Rate
* Loan Purpose
* Existing Debt
* Debt-to-Income Ratio
* Approval Status
* Default Status
* Application Date
* Region
* Branch

🛠️ Tools & Technologies Used

 **Excel** → Data viewing and initial exploration
 **Python** → Data cleaning and analysis

  * Pandas
  * NumPy
  * Matplotlib
* **MySQL** → Querying and aggregation
* **Power BI** → Dashboard creation and visualization

🔎 Project Workflow

 Step 1 — Data Cleaning (Python)

* Loaded dataset using Pandas
* Checked missing values
* Verified data types
* Created new risk flag column based on debt-to-income ratio

Example:

```python
df['risk_flag'] = np.where(df['debt_to_income'] > 0.4, 'High Risk', 'Low Risk')
```

 Step 2 — Exploratory Data Analysis

Performed analysis to understand:

* Total number of loan applications
* Average loan amount
* Approval vs rejection distribution
* Default rates
* Loan distribution by purpose
* Regional loan performance

 Step 3 — SQL Analysis

Used MySQL queries to calculate:

#### Total Customers

```sql
SELECT COUNT(*) FROM loans;
 Approval Rate

```sql
SELECT
COUNT(CASE WHEN approval_status = 'Approved' THEN 1 END) / COUNT(*) AS approval_rate
FROM loans;
 Loan by Purpose

```sql
SELECT loan_purpose, AVG(loan_amount)
FROM loans
GROUP BY loan_purpose;
 Default Customers

```sql
SELECT default_status, COUNT(*)
FROM loans
GROUP BY default_status;
```

---

### Step 4 — Power BI Dashboard

Created interactive dashboard including:

* KPI Cards

  * Total Applications
  * Total Loan Amount
  * Approval Rate
  * Default Rate

* Charts

  * Loan by Purpose (Bar Chart)
  * Approval by Region (Column Chart)
  * Monthly Loan Trend (Line Chart)
  * Credit Score vs Loan Amount (Scatter Plot)
  * Default Rate Distribution (Pie Chart)

📈 Key Insights

* Customers with higher credit scores have higher approval rates.
* High debt-to-income ratio increases default probability.
* Certain loan purposes show higher average loan amounts.
* Some regions contribute more loan applications than others.
* Default rate is associated with lower income and higher existing debt.

💡 Business Recommendations

* Improve credit risk assessment using debt-to-income ratio.
* Focus marketing on low-risk customer segments.
* Adjust interest rates based on risk level.
* Monitor high-risk customers more closely to reduce defaults.

 ✅ Conclusion

This project demonstrates how data analytics can support banking institutions in:

* Risk management
* Loan approval optimization
* Customer segmentation
* Financial decision-making

Using data-driven insights helps reduce losses and improve profitability.

 🚀 How to Run This Project

1. Download the dataset
2. Run Python analysis notebook
3. Execute SQL queries in MySQL
4. Open Power BI dashboard file

 📷 Dashboard Preview

(Add your Power BI dashboard screenshot here)

Example:

```
![Dashboard](images/dashboard.png)
```

👨‍💻 Author

Akbar Ali
Aspiring Data Analyst
