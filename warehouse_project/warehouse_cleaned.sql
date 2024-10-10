-- How do discounts offered affect ratings?
-- EXEC sp_rename 'dbo.warehouse.cost_of_the_product', 'cost', 'COLUMN';

SELECT CAST(customer_rating AS NUMERIC) as customer_rating,
	cost,
	discount_offered,
	CAST((cost * discount_offered)/100 AS numeric) as amount_paid, 
	CAST((cost - (cost * discount_offered)/100) AS numeric) as revenue_lost
	FROM warehouse
WHERE Reached_on_Time_Y_N = 1
ORDER BY Customer_rating
