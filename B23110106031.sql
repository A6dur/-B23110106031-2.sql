-- -- 1. Total number of customers
-- SELECT COUNT(*) AS TotalCustomers
-- FROM Customers;

-- -- 2. Average sale price of all car sales
-- SELECT AVG(SalePrice) AS AverageSalePrice
-- FROM Sales;

-- -- 3. Most expensive car ever sold
-- SELECT *
-- FROM Sales
-- ORDER BY SalePrice DESC
-- LIMIT 1;

-- -- 4. Total inventory count of all cars
-- SELECT SUM(InventoryCount) AS TotalInventory
-- FROM Cars;

-- -- 5. Earliest and most recent sale dates
-- SELECT MIN(SaleDate) AS EarliestSale, MAX(SaleDate) AS LatestSale
-- FROM Sales;


-- -- 1. Group cars by brand and count how many models each brand has
-- SELECT Brand, COUNT(DISTINCT Model) AS ModelCount
-- FROM Cars
-- GROUP BY Brand;

-- -- 2. Calculate the total sales amount for each salesperson
-- SELECT SalespersonID, SUM(SalePrice) AS TotalSalesAmount
-- FROM Sales
-- GROUP BY SalespersonID;

-- -- 3. Find the average sale price for each car model
-- SELECT CarID, AVG(SalePrice) AS AverageSalePrice
-- FROM Sales
-- GROUP BY CarID;

-- -- 4. For each service type, find the average service cost
-- SELECT ServiceType, AVG(Cost) AS AverageServiceCost
-- FROM ServiceRecords
-- GROUP BY ServiceType;

-- -- 5. Find the count of cars by brand and color combination
-- SELECT Brand, Color, COUNT(*) AS CarCount
-- FROM Cars
-- GROUP BY Brand, Color;

-- -- 1. Identify brands that offer more than five different car models
-- SELECT Brand, COUNT(DISTINCT Model) AS ModelCount
-- FROM Cars
-- GROUP BY Brand
-- HAVING COUNT(DISTINCT Model) > 5;

-- -- 2. List car models that have been sold more than 10 times
-- SELECT CarID, COUNT(*) AS SaleCount
-- FROM Sales
-- GROUP BY CarID
-- HAVING COUNT(*) > 10;

-- -- 3. Find salespersons whose average sale price is greater than 50000
-- SELECT SalespersonID, AVG(SalePrice) AS AvgSalePrice
-- FROM Sales
-- GROUP BY SalespersonID
-- HAVING AVG(SalePrice) > 50000;

-- -- 4. Identify months that had more than 20 sales
-- SELECT YEAR(SaleDate) AS Year, MONTH(SaleDate) AS Month, COUNT(*) AS SaleCount
-- FROM Sales
-- GROUP BY YEAR(SaleDate), MONTH(SaleDate)
-- HAVING COUNT(*) > 20;

-- -- 5. Find service types where the average cost is greater than 500
-- SELECT ServiceType, AVG(Cost) AS AvgCost
-- FROM ServiceRecords
-- GROUP BY ServiceType
-- HAVING AVG(Cost) > 500;

