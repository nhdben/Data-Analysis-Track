# Data-Analysis-Track
## Query a Digital Music Store (Part I)
### Introduction
In this lab, you will query the Chinook Database. The Chinook Database holds information about a music store. For this lab, you will be answering 4 queries to help the Chinook team understand the media in their store, their customers and employees, and their invoice information. To assist you in the queries ahead, the schema for the Chinook Database is provided below. You can see the columns that link tables together via the arrows. 
![ ](https://github.com/nhdben/Learning-github/blob/master/chinook.png)
### Task
For this lab, you will help the Chinook team understand the media in their store, their customers and employees, and their invoice information.

### Key Takeaways
-Write queries to extract data from multiple tables in a database.
-Use SQL to make data informed decisions.

### Question 1
The Chinook database contains all invoices from the beginning of 2009 till the end of 2013. The employees at Chinook store are interested in seeing all invoices that happened in 2013 only. Using the Invoice table, write a query that returns all the info of the invoices in 2013.
 ```sql
 select * from Invoice 
where InvoiceDate between '2013-01-01 00:00:00' and '2013-12-31 00:00:00'
```
### Question 2
The Chinook team decided to run a marketing campaign in Brazil, Canada, india, and Sweden. Using the customer table, write a query that returns the first name, last name, and country for all customers from the 4 countries.
```sql
select firstname, lastname, country  
from Customer c2 
where country in ('Brazil', 'Canada', 'India','Sweden');
```
### Question 3
Using the Track and Album tables, write a query that returns all the songs that start with the letter 'A' and the composer field is not empty. Your query should return the name of the song, the name of the composer, and the title of the album.
```sql
SELECT Track.Name as Name ,Track.Composer as Composer ,Album.Title as Title
FROM Track
INNER JOIN Album
On Album.Albumid = Track.Albumid
WHERE Name LIKE 'A%' AND Composer IS NOT NULL;
```
### Question 4
The Chinook team would like to throw a promotional Music Festival for their top 10 customers who have spent the most in a single invoice. Write a query that returns the first name, last name, and invoice total for the top 10 invoices ordered by invoice total descending.
```sql
SELECT c2 .FirstName ,c2 .LastName, i.Total
FROM Customer c2 
JOIN Invoice i
ON c2 .customerid = i.customerid
ORDER BY i.Total Desc
LIMIT 10 ;
```
