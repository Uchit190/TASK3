#JOINS 
#1. INNER JOIN
SELECT t.Country, c.Region, COUNT(*) as Transactions
FROM transactions t
INNER JOIN countries c on t.Country = c.Country
GROUP BY t.Country, c.Region;
#2. LEFT JOIN
select c.Country, c.Region, count(t.country) as transactions
from countries c
left join transactions t on t.Country = c.country
group by c.Country, c.region
order by transactions asc;
#3. RIGHT JOIN
select c.Country, c.Region, count(t.country) as transactions
from transactions t
left join countries c on t.Country = c.country
group by c.Country, c.region
order by transactions asc;