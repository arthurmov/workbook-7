select
ProductName,
UnitPrice as "The Most Expensive Product"
from
products
where UnitPrice =
(
	select max(UnitPrice)
	from products
    );
    
SELECT
  orderid,
  shipname,
  shipaddress
FROM
  orders
WHERE
  shipvia = (
    SELECT shipperid
    FROM shippers
    WHERE companyname = 'Federal Shipping'
  );
	
select
orderid
from
orderdetails
where
  productid = (
  select productid
  from products
  where productname = 'Sasquatch Ale'
  );
  
  select
  lastname,
  firstname
  from
  employees
  where
  employeeid = (
  select employeeid
  from orders
  where orderid = 10266);
  
  select
  contactname
  from
  customers
  where
  customerid = (
  select customerid
  from orders
  where orderid = 10266);