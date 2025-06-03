SELECT
ProductID, ProductName, UnitsInStock, ReorderLevel
FROM
products
WHERE
UnitsInStock = 0 and ReorderLevel > 0
ORDER BY
ProductName