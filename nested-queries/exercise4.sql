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
    
select
  orderid,
  shipname,
  shipaddress
from
  orders
where
  shipvia = (
    select shipperid
    from shippers
    where companyname = 'Federal Shipping'
  );
	
select
orderid
from
`order details`
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