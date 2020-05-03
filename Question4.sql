SELECT c2 .FirstName ,c2 .LastName, i.Total
FROM Customer c2 
JOIN Invoice i
ON c2 .customerid = i.customerid
ORDER BY i.Total Desc
LIMIT 10 ;