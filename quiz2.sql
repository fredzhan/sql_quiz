-- =============================== QUIZ DESCRIPTION ===============================
-- Given the same payments table
-- transanction_timestamp|transaction_id|customer_id|product_id
-- Return the cumulative distribution. 
-- (At least one transaction, at least two transactions, etc¡­)
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
),

aggr_by_freq AS (
  SELECT 
	freq,
	COUNT(*) AS cnt_customer
  FROM aggr_by_cust
  GROUP BY 1
)

SELECT
  t1.freq,
  SUM(t2.cnt_customer) AS running_sum 
FROM aggr_by_freq t1
LEFT JOIN aggr_by_freq t2
  ON t2.freq <= t1.freq
GROUP BY 1
ORDER BY 1
;
