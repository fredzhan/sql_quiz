-- =============================== QUIZ DESCRIPTION ===============================
-- Given a table of ¡ª 
-- friend1_id|friend2_id. 
-- Return the number of mutual friends between two friends.
-- ================================================================================

-- ======== ENV: PostgreSQL v10.0 ========

-- ======== ANSWER ========
SELECT
  COUNT(*) / 2 AS cnt_mutual_friends
FROM user_relationship r1
INNER JOIN user_relationship r2
  ON r1.friend2_id = r2.friend1_id
WHERE r1.friend1_id = r2.friend2_id
;