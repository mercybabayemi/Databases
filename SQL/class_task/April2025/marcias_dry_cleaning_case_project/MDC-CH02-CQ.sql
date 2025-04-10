SELECT *
FROM CUSTOMER, INVOICE, INVOICE_ITEM;

SELECT LastName, FirstName, Phone
FROM CUSTOMER;

SELECT LastName, FirstName, Phone
FROM CUSTOMER 
WHERE FIRSTNAME = "Nikki";

SELECT C.LastName, C.FirstName, C.Phone, I.DateIn, I.DateOut
FROM CUSTOMER C
INNER JOIN INVOICE I ON C.CustomerID = I.CustomerID
WHERE I.TotalAmount > 100.00;

SELECT LastName, FirstName, Phone 
FROM CUSTOMER 
WHERE LastName 
LIKE '%cat%';

SELECT LastName, FirstName, Phone 
FROM CUSTOMER 
WHERE SUBSTRING(Phone, 3, 2) = '23';

SELECT MAX(TotalAmount) 
AS MaxTotal, MIN(TotalAmount) 
AS MinTotal 
FROM INVOICE;

SELECT AVG(TotalAmount) 
AS AverageTotal 
FROM INVOICE;

SELECT COUNT(*) 
AS CustomerCount 
FROM CUSTOMER;

SELECT LastName, FirstName, COUNT(*) 
AS Count 
FROM CUSTOMER 
GROUP BY LastName, FirstName;

SELECT LastName, FirstName, COUNT(*) 
AS Count 
FROM CUSTOMER 
GROUP BY LastName, FirstName;

SELECT LastName, FirstName, Phone 
FROM CUSTOMER 
WHERE CustomerID IN (SELECT CustomerID FROM INVOICE WHERE TotalAmount > 100.00)
ORDER BY LastName ASC, FirstName DESC;

SELECT C.LastName, C.FirstName, C.Phone 
FROM CUSTOMER C, INVOICE I 
WHERE C.CustomerID = I.CustomerID AND I.TotalAmount > 100.00
ORDER BY C.LastName ASC, C.FirstName DESC;

SELECT C.LastName, C.FirstName, C.Phone 
FROM CUSTOMER C 
JOIN INVOICE I ON C.CustomerID = I.CustomerID 
WHERE I.TotalAmount > 100.00
ORDER BY C.LastName ASC, C.FirstName DESC;

SELECT C.LastName, C.FirstName, C.Phone 
FROM CUSTOMER C 
WHERE C.CustomerID IN (
    SELECT I.CustomerID 
    FROM INVOICE I 
    JOIN INVOICE_ITEM II ON I.InvoiceNumber = II.InvoiceNumber 
    WHERE II.Item = 'Dress Shirt'
)
ORDER BY C.LastName ASC, C.FirstName DESC;

SELECT C.LastName, C.FirstName, C.Phone 
FROM CUSTOMER C, INVOICE I, INVOICE_ITEM II 
WHERE C.CustomerID = I.CustomerID AND I.InvoiceNumber = II.InvoiceNumber AND II.Item = 'Dress Shirt'
ORDER BY C.LastName ASC, C.FirstName DESC;

SELECT C.LastName AS CustomerLastName, C.FirstName AS CustomerFirstName, 
       R.LastName AS ReferredByLastName, R.FirstName AS ReferredByFirstName
FROM CUSTOMER C 
LEFT JOIN CUSTOMER R ON C.ReferredBy = R.CustomerID;

SELECT C.LastName, C.FirstName, C.Phone 
FROM CUSTOMER C 
JOIN INVOICE I ON C.CustomerID = I.CustomerID 
WHERE I.InvoiceNumber IN (
    SELECT InvoiceNumber 
    FROM INVOICE_ITEM 
    WHERE Item = 'Dress Shirt'
)
ORDER BY C.LastName ASC, C.FirstName DESC;

SELECT C.LastName, C.FirstName, C.Phone, I.TotalAmount 
FROM CUSTOMER C 
JOIN INVOICE I ON C.CustomerID = I.CustomerID 
WHERE I.InvoiceNumber IN (
    SELECT InvoiceNumber 
    FROM INVOICE_ITEM 
    WHERE Item = 'Dress Shirt'
)
ORDER BY I.TotalAmount ASC, C.LastName ASC, C.FirstName DESC;