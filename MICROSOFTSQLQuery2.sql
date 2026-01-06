select * from bank_loan_data

select count(id) as total_application from bank_loan_data


SELECT COUNT(id) AS MTD_LOAN_DATA
FROM bank_loan_data
WHERE YEAR(issue_date) = (
    SELECT YEAR(MAX(issue_date)) FROM bank_loan_data
)
AND MONTH(issue_date) = (
    SELECT MONTH(MAX(issue_date)) FROM bank_loan_data
);

SELECT TOP 1
    curr.yr,
    curr.mon,
    curr.loan_count AS MTD,
    prev.loan_count AS PMTD,
    ROUND(
        (curr.loan_count - prev.loan_count) * 1.0 / prev.loan_count * 100,
        2
    ) AS MoM_Growth_Percentage
FROM (
    SELECT YEAR(issue_date) AS yr, MONTH(issue_date) AS mon, COUNT(id) AS loan_count
    FROM bank_loan_data
    GROUP BY YEAR(issue_date), MONTH(issue_date)
) curr
LEFT JOIN (
    SELECT YEAR(issue_date) AS yr, MONTH(issue_date) AS mon, COUNT(id) AS loan_count
    FROM bank_loan_data
    GROUP BY YEAR(issue_date), MONTH(issue_date)
) prev
ON (
    (prev.yr = curr.yr AND prev.mon = curr.mon - 1)
    OR
    (curr.mon = 1 AND prev.mon = 12 AND prev.yr = curr.yr - 1)
)
ORDER BY curr.yr DESC, curr.mon DESC;

select sum(loan_amount) as total_funded_amout from bank_loan_data


SELECT sum(loan_amount) AS MTD_total_funded_amount
FROM bank_loan_data
WHERE YEAR(issue_date) = (
    SELECT YEAR(MAX(issue_date)) FROM bank_loan_data
)
AND MONTH(issue_date) = (
    SELECT MONTH(MAX(issue_date)) FROM bank_loan_data
);

SELECT TOP 1
    curr.yr,
    curr.mon,
    curr.loan_amount AS MTD,
    prev.loan_amount AS PMTD,
    ROUND(
        (curr.loan_amount - prev.loan_amount) * 1.0 / prev.loan_amount * 100,
        2
    ) AS MoM_Growth_Percentage_total_funded_amount
FROM (
    SELECT YEAR(issue_date) AS yr, MONTH(issue_date) AS mon, sum(loan_amount) AS loan_amount
    FROM bank_loan_data
    GROUP BY YEAR(issue_date), MONTH(issue_date)
) curr
LEFT JOIN (
    SELECT YEAR(issue_date) AS yr, MONTH(issue_date) AS mon, sum(loan_amount) AS loan_amount
    FROM bank_loan_data
    GROUP BY YEAR(issue_date), MONTH(issue_date)
) prev
ON (
    (prev.yr = curr.yr AND prev.mon = curr.mon - 1)
    OR
    (curr.mon = 1 AND prev.mon = 12 AND prev.yr = curr.yr - 1)
)
ORDER BY curr.yr DESC, curr.mon DESC;


select sum(total_payment) as total_amount_received from bank_loan_data

SELECT sum(total_payment) AS MTD_total_amount_received
FROM bank_loan_data
WHERE YEAR(issue_date) = (
    SELECT YEAR(MAX(issue_date)) FROM bank_loan_data
)
AND MONTH(issue_date) = (
    SELECT MONTH(MAX(issue_date)) FROM bank_loan_data
);

SELECT TOP 1
    curr.yr,
    curr.mon,
    curr.total_payment AS MTD,
    prev.total_payment AS PMTD,
    ROUND(
        (curr.total_payment - prev.total_payment) * 1.0 / prev.total_payment * 100,
        2
    ) AS MoM_Growth_Percentage_total_payment_received
FROM (
    SELECT YEAR(issue_date) AS yr, MONTH(issue_date) AS mon, sum(total_payment) AS total_payment
    FROM bank_loan_data
    GROUP BY YEAR(issue_date), MONTH(issue_date)
) curr
LEFT JOIN (
    SELECT YEAR(issue_date) AS yr, MONTH(issue_date) AS mon, sum(total_payment) AS total_payment
    FROM bank_loan_data
    GROUP BY YEAR(issue_date), MONTH(issue_date)
) prev
ON (
    (prev.yr = curr.yr AND prev.mon = curr.mon - 1)
    OR
    (curr.mon = 1 AND prev.mon = 12 AND prev.yr = curr.yr - 1)
)
ORDER BY curr.yr DESC, curr.mon DESC;



select round(avg(int_rate),4) * 100 as average_interest_rate from bank_loan_data

SELECT round(avg(int_rate),4) * 100 AS MTD_average_interest_rate
FROM bank_loan_data
WHERE YEAR(issue_date) = (
    SELECT YEAR(MAX(issue_date)) FROM bank_loan_data
)
AND MONTH(issue_date) = (
    SELECT MONTH(MAX(issue_date)) FROM bank_loan_data
);

SELECT TOP 1
    curr.yr,
    curr.mon,
    curr.int_rate AS MTD,
    prev.int_rate AS PMTD,
    ROUND(
        (curr.int_rate - prev.int_rate) * 1.0 / prev.int_rate * 100,
        2
    ) AS MoM_Growth_Percentage_average_interest_rate
FROM (
    SELECT YEAR(issue_date) AS yr, MONTH(issue_date) AS mon, round(avg(int_rate),4) * 100 AS int_rate
    FROM bank_loan_data
    GROUP BY YEAR(issue_date), MONTH(issue_date)
) curr
LEFT JOIN (
    SELECT YEAR(issue_date) AS yr, MONTH(issue_date) AS mon, round(avg(int_rate),4) * 100 AS int_rate
    FROM bank_loan_data
    GROUP BY YEAR(issue_date), MONTH(issue_date)
) prev
ON (
    (prev.yr = curr.yr AND prev.mon = curr.mon - 1)
    OR
    (curr.mon = 1 AND prev.mon = 12 AND prev.yr = curr.yr - 1)
)
ORDER BY curr.yr DESC, curr.mon DESC;



select round(avg(dti),4) * 100 as average_DTI from bank_loan_data

SELECT round(avg(dti),4) * 100 AS MTD_average_DTI
FROM bank_loan_data
WHERE YEAR(issue_date) = (
    SELECT YEAR(MAX(issue_date)) FROM bank_loan_data
)
AND MONTH(issue_date) = (
    SELECT MONTH(MAX(issue_date)) FROM bank_loan_data
);

SELECT TOP 1
    curr.yr,
    curr.mon,
    curr.dti AS MTD,
    prev.dti AS PMTD,
    ROUND(
        (curr.dti - prev.dti) * 1.0 / prev.dti * 100,
        2
    ) AS MoM_Growth_Percentage_average_DTI
FROM (
    SELECT YEAR(issue_date) AS yr, MONTH(issue_date) AS mon, round(avg(dti),4) * 100 AS dti
    FROM bank_loan_data
    GROUP BY YEAR(issue_date), MONTH(issue_date)
) curr
LEFT JOIN (
    SELECT YEAR(issue_date) AS yr, MONTH(issue_date) AS mon, round(avg(dti),4) * 100 AS dti
    FROM bank_loan_data
    GROUP BY YEAR(issue_date), MONTH(issue_date)
) prev
ON (
    (prev.yr = curr.yr AND prev.mon = curr.mon - 1)
    OR
    (curr.mon = 1 AND prev.mon = 12 AND prev.yr = curr.yr - 1)
)
ORDER BY curr.yr DESC, curr.mon DESC;

select 
(count(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id end)*100)
/
count(id) as good_loan_percentage from bank_loan_data


select sum(loan_amount)as good_loan_application_funded_amount from bank_loan_data
where loan_status = 'Fully Paid' or loan_status = 'Current'

select sum(total_payment)as good_loan_application_received_amount from bank_loan_data
where loan_status = 'Fully Paid' or loan_status = 'Current'


select 
(count(case when loan_status = 'Charged Off' then id end)*100.0)
/
count(id) as bad_loan_percentage from bank_loan_data

select count(loan_status)as count_bad_loan_application from bank_loan_data
where loan_status = 'Charged Off'


select sum(loan_amount)as bad_loan_application_funded_amount from bank_loan_data
where loan_status = 'Charged Off'

select sum(total_payment)as bad_loan_application_received_amount from bank_loan_data
where loan_status = 'Charged Off'



SELECT
        loan_status,
        COUNT(id) AS Total_Loan_Applications,
        SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti * 100) AS DTI
    FROM
        bank_loan_data
    GROUP BY
        loan_status

SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status

SELECT 
	MONTH(issue_date) AS Month_Munber, 
	DATENAME(MONTH, issue_date) AS Month_name, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date)

SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY address_state
ORDER BY address_state

SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY term
ORDER BY term

SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY emp_length
ORDER BY emp_length

SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY purpose
ORDER BY purpose

SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY home_ownership
