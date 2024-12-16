select * from SalesOrder
Limit 500;

select count(*)
from SalesOrder;

select count(*) As Num_of_rows
from SalesOrder; -- NUMBER OF ROWS

select count(*) As Num_of_cols 
from INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'salesorder'; -- NUMBER OF COLUMNS


select * from Customer

limit 20;

select count(*)
from Customer;

select count(*) As Num_of_rows
from Customer; -- NUMBER OF ROWS

select count(*) As Num_of_cols 
from INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'customer'; -- NUMBER OF COLUMNS


select * from SalesOrder;

select count(*)
from SalesOrder;

select count(*) As Num_of_rows
from SalesOrder; -- NUMBER OF ROWS

select count(*) As Num_of_cols 
from INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'salesorder'; -- NUMBER OF COLUMNS

update customer SET fax = "020-123479"
WHERE custid = 3;

update customer 
set region = CASE
WHEN custid = 1 THEN "AMERICA"
WHEN custid = 2 THEN "AFRICA"
WHEN custid = 3 THEN "EUROPE"
WHEN custid = 4 THEN "USA"
WHEN custid = 5 THEN "CANADA"
WHEN custid = 6 THEN "ASIA"
WHEN custid = 7 THEN "AMERICA"
WHEN custid = 8 THEN "AFRICA"
WHEN custid = 9 THEN "USA"
WHEN custid = 10 THEN "AMERICA"
ELSE region 
END
WHERE custid IN (1,2,3,4,5,6,7,8,9,10);

select * from Customer;

SELECT custid,contactName FROM customer WHERE contactName LIKE "P%" ORDER BY custid ASC;
