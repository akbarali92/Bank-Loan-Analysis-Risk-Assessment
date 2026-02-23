CREATE DATABASE bank_project;
USE bank_project;
CREATE TABLE loans (
customer_id INT,
age INT,
gender VARCHAR(10),
income INT,
employment_years INT,
credit_score INT,
loan_amount INT,
loan_term_months INT,
interest_rate FLOAT,
loan_purpose VARCHAR(50),
existing_debt INT,
debt_to_income FLOAT,
approval_status VARCHAR(20),
default_status VARCHAR(10),
application_date DATE,
region VARCHAR(20),
branch VARCHAR(20)
); 

SELECT COUNT(*) FROM bank_loan_dataset;

SELECT approval_status, COUNT(*)
FROM bank_loan_dataset
GROUP BY approval_status;

SELECT loan_purpose, AVG(loan_amount)
FROM bank_loan_dataset
GROUP BY loan_purpose;


SELECT default_status, COUNT(*)
FROM bank_loan_dataset
GROUP BY default_status;


SELECT region, SUM(loan_amount)
FROM bank_loan_dataset
GROUP BY region;
SELECT *
FROM bank_loan_dataset
WHERE debt_to_income > 0.5;



SELECT Gender, COUNT(*)
FROM bank_loan_dataset
GROUP BY Gender;



SELECT * FROM bank_loan_dataset;



