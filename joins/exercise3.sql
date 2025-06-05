select
products.productid,
products.productname,
products.unitprice,
categories.CategoryName
from
products
inner join categories on products.categoryid = categories.CategoryID
order by CategoryName, ProductName;

select 
products.productid,
products.productname,
products.unitprice,
suppliers.companyname
from
products
inner join suppliers on suppliers.supplierid = products.supplierid
where
unitprice > 75
order by
productname;

select
products.productid,
products.productname,
products.unitprice,
categories.CategoryName,
suppliers.companyname
from
products
inner join categories on products.categoryid = categories.CategoryID
inner join suppliers on suppliers.supplierid = products.supplierid
order by
productname;

select
orders.orderid,
orders.shipname,
orders.shipaddress,
shippers.companyname
from
orders
inner join shippers on orders.shipvia = shipperid
where
orders.shipcountry = 'Germany';