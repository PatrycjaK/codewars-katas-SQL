-- For this challenge you need to create a VIEW. This VIEW is used by a sales store to give out vouches to members who have spent over $1000 in departments that have brought in more than $10000 total ordered by the members id. The VIEW must be called members_approved_for_voucher then you must create a SELECT query using the view.

-- Tables and relationship below:

-- resultant table schema
-- id
-- name
-- email
-- total_spending
-- NOTE: Your solution should use pure SQL. Ruby is used within the test cases to do the actual testing.


CREATE VIEW members_approved_for_voucher AS
SELECT d.id, SUM(price) 
FROM sales s
JOIN departments d ON d.id = s.department_id
JOIN products p ON p.id = s.product_id
GROUP BY d.id
HAVING SUM(price) > 10000;


SELECT m.id, m.name, m.email, SUM(price) AS total_spending
FROM sales s
JOIN departments d ON d.id = s.department_id
JOIN products p ON p.id = s.product_id
JOIN members m ON m.id = s.member_id
WHERE d.id IN (SELECT id FROM members_approved_for_voucher)
GROUP BY m.id, m.name, m.email
HAVING SUM(price) > 1000
ORDER BY m.id;