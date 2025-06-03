SELECT
ProductID, ProductName, UnitPrice, UnitsInStock
FROM
products
WHERE
UnitsInStock >= 100
ORDER BY
UnitPrice DESC
,ProductName