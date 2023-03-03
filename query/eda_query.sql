-- master tabel

WITH master_table AS
(
SELECT 
	c.CustomerID,
	c.FirstName,
	c.LastName,
	c.CustomerCity,
	c.CustomerState,
	o.Date,
	o.ProdNumber,
	o.Quantity,
	p.ProdName,
	p.Price,
	pc.CategoryName
FROM customers c 
JOIN orders o 
ON c.CustomerID = o.Customer
JOIN products p
ON o.ProdNumber = p.ProdNumber
JOIN productcategory pc
ON p.Category = pc.CategoryID
)

-- negara bagian paling banyak revenue
-- SELECT CustomerState AS State, SUM(Quantity*Price) AS Revenue FROM master_table GROUP BY CustomerState ORDER BY 2 DESC LIMIT 5;

-- negara bagian paling sedikit revenue
-- SELECT CustomerState AS State, SUM(Quantity*Price) AS Revenue FROM master_table GROUP BY CustomerState ORDER BY 2 ASC LIMIT 5;

-- most top category order
-- SELECT CategoryName AS Category, SUM(Quantity) AS Orders FROM master_table GROUP BY CategoryName ORDER BY 2 DESC LIMIT 5;

-- most top product order
-- SELECT ProdName AS Category, SUM(Quantity) AS Orders FROM master_table GROUP BY ProdName ORDER BY 2 DESC LIMIT 5;

-- revenue by month
-- SELECT MONTH(DATE) AS MONTH, SUM(Quantity*Price) AS Revenue FROM master_table GROUP BY 1 ORDER BY 2 DESC LIMIT 5;

-- rata2 pendapatan
-- SELECT AVG(Quantity*Price) AS Revenue FROM master_table;

-- rata2 produk terjual
-- SELECT AVG(Quantity) AS Orders FROM master_table;

-- jumlah customers
-- SELECT COUNT(DISTINCT CustomerID) AS Orders FROM master_table;
