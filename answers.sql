SELECT OrderID, CustomerName, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(Products, ',', n.n), ',', -1)) AS Product
FROM ProductDetail
JOIN (SELECT 1 AS n UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5) n
  ON LENGTH(Products) - LENGTH(REPLACE(Products, ',', '')) >= n.n - 1;
  CREATE TABLE Customers AS
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;
CREATE TABLE OrderItems AS
SELECT OrderID, Product, Quantity
FROM OrderDetails;
DROP TABLE OrderDetails;
