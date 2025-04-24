CREATE DATABASE ecommerce_data;
USE ecommerce_data;
CREATE TABLE transactions (
    Transaction_ID INT,
    User_Name VARCHAR(100),
    Age INT,
    Country VARCHAR(50),
    Product_Category VARCHAR(50),
    Purchase_Amount DECIMAL(10, 2),
    Payment_Method VARCHAR(50),
    Transaction_Date DATE
);
CREATE TABLE countries (
    Country VARCHAR(100),
    Region VARCHAR(100)
);
INSERT INTO countries (Country, Region) VALUES
('India', 'Asia'),
('USA', 'North America'),
('Germany', 'Europe'),
('France', 'Europe'),
('Canada', 'North America');
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
SELECT t.Country, c.Region, COUNT(*) as Transactions
FROM transactions t
INNER JOIN countries c ON t.Country = c.Country
GROUP BY t.Country, c.Region;S

select * from transactions ;