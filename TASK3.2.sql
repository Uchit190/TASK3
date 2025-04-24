/*IN THIS QUERY I AM USING SELECT, ORDER BY ,GROUP BY     */
SELECT Country, COUNT(*) AS Transactions
FROM transactions
GROUP BY Country
ORDER BY Transactions DESC
LIMIT 5;
#where clause
SELECT * FROM transactions
where Country = 'India'
limit 5;