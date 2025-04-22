SELECT SKU, SKU_Description
FROM inventory;

SELECT SKU_Description, SKU
FROM inventory;

SELECT WarehouseID
FROM inventory;

SELECT DISTINCT WarehouseID
FROM inventory;

SELECT *
FROM inventory;

SELECT WarehouseID, SKU, SKU_Description, QuantityOnHand, QuantityOnOrder
FROM inventory;

SELECT QuantityOnHand > 0
FROM inventory;

SELECT SKU, SKU_Description
FROM inventory
WHERE QuantityOnHand = 0 ;

SELECT SKU, SKU_Description, WarehouseID
FROM inventory
WHERE QuantityOnHand = 0
ORDER BY WarehouseID ASC;

SELECT SKU, SKU_Description, WarehouseID
FROM inventory
WHERE QuantityOnHand > 0
ORDER BY WarehouseID DESC, SKU ASC;

SELECT SKU, SKU_Description, WarehouseID
FROM inventory
WHERE QuantityOnHand = 0
AND QuantityOnOrder > 0
ORDER BY WarehouseID DESC, SKU ASC;

SELECT SKU, SKU_Description, WarehouseID
FROM inventory
WHERE QuantityOnHand = 0
OR QuantityOnOrder = 0
ORDER BY WarehouseID DESC, SKU ASC;

SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand
FROM inventory
WHERE QuantityOnHand > 1
AND QuantityOnHand < 10;

SELECT DISTINCT SKU, SKU_Description
FROM inventory
WHERE SKU_Description LIKE 'Half-Dome%';

SELECT DISTINCT SKU, SKU_Description LIKE '%Climb%'
FROM inventory;

SELECT DISTINCT SKU, SKU_Description LIKE '___d%'
FROM inventory;

SELECT SUM(QuantityOnHand) AS QuantitySum
FROM inventory;

SELECT SUM(WarehouseID) AS WareIDSum,
AVG(WarehouseID) AS WareIDAverage,
MIN(WarehouseID) AS WareIDMin,
MAX(WarehouseID) AS WareIDMax,
SUM(QuantityOnHand) AS QuantityHandSum,
AVG(QuantityOnHand) AS QuantityHandAverage,
MIN(QuantityOnHand) AS QuantityHandMin,
MAX(QuantityOnHand) AS QuantityHandMax,
SUM(QuantityOnOrder) AS QuantityOrderSum,
AVG(QuantityOnOrder) AS QuantityOrderAverage,
MIN(QuantityOnOrder) AS QuantityOrderMin,
MAX(QuantityOnOrder) AS QuantityOrderMax
FROM inventory;

SELECT COUNT(*) AS InventoryNumberOfRows
FROM inventory;

/* Difference between SQL Count and Sum
The SQL built-in function count and sum sounds similar, however, they produce different result. 
The count function counts the number of rows in a column while the sum function calculates the total of all values in a column*/ 


SELECT WarehouseID, 
SUM(QuantityOnHand) AS TotalItemsOnHand
FROM inventory
GROUP BY WarehouseID
ORDER BY  TotalItemsOnHand DESC;

SELECT WarehouseID, 
SUM(QuantityOnHand) AS TotalItemsOnHandLT3
FROM inventory
WHERE QuantityOnHand < 3
GROUP BY WarehouseID
ORDER BY  TotalItemsOnHandLT3 DESC;

SELECT WarehouseID, 
SUM(QuantityOnHand) AS TotalItemsOnHandLT3
FROM inventory
WHERE QuantityOnHand < 3
GROUP BY WarehouseID
HAVING COUNT(SKU) <	 2
ORDER BY  TotalItemsOnHandLT3 DESC;


