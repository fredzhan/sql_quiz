-- =============================== QUIZ DESCRIPTION ===============================
-- Given a payments transactions table -
-- transanction_timestamp|transaction_id|customer_id|product_id, 
-- return a frequency distribution of the number of payments each customer made. 
-- (I.E. 1 transaction ¡ª 100 customers, 2 transactions?¡ª?50 customers, etc¡­)
-- ================================================================================

-- ======== ENV: PostgreSQL v10.0 ========

-- ======== ANSWER ========
WITH
aggr_by_cust AS (
	SELECT 
  		customer_id,
  		COUNT(*) AS freq
   FROM transaction
   GROUP BY 1
)

SELECT 
	freq,
	COUNT(*) AS cnt_customer
FROM aggr_by_cust
GROUP BY 1
ORDER BY 1
;