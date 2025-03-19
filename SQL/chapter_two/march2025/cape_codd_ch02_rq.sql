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

