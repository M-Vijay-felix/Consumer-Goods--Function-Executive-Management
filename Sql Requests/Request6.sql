/*6. Generate a report which contains the top 5 customers who received an
average high pre_invoice_discount_pct for the fiscal year 2021 and in the
Indian market. The final output contains these fields,
customer_code
customer
average_discount_percentage*/

SELECT dc.customer_code,customer,market, avg(pre_invoice_discount_pct) as Average_Discount_Percentage
FROM dim_customer dc JOIN fact_pre_invoice_deductions fid
ON dc.customer_code = fid. customer_code
WHERE fid.fiscal_year = "2021" AND market = "India"
GROUP BY customer_code
ORDER BY Average_Discount_Percentage  DESC limit 5;