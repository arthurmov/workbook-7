select
count(*) "Number of Suppliers"
from
suppliers;

select
sum(salary) "Sum of Employee's Salary"
from
employees;

select
productname "The Cheapest Item Northwind Sells"
,unitprice 
from 
products
where
UnitPrice = (Select min(UnitPrice) from products);

select
avg(unitprice) "Average Price of Items Northwind Sells"
from
products;

select
supplierid 
,count(QuantityPerUnit) "Number of Items Supplied"
from
products
group by supplierid;

select
categoryid, 
avg(unitprice) "Average Price of Item in Category"
from
products
group by categoryid;

select
supplierid "Suppliers that provided at least 5 items"
,count(*) "Number of Items Supplied"
from
products
group by supplierid
having
count(*) >= 5;

select
productid
,productname
,unitprice * unitsinstock "Inventory Value $"
from
products
order by
unitprice * unitsinstock DESC;