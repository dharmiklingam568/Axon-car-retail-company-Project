
/*Total payemnt of three years*/
select sum(amount) as totalpayemnt from payments;


/*Total sales of three years*/
select sum(quantityOrdered * priceEach) as totalsales
from orderdetails;


/* Total numbers of orders of three years*/
select count(*)as totalorders
from orders as o
join orderdetails as od 
on o.orderNumber=od.orderNumber;


/* Total number of customers of three years*/
select count(*) as totalcustomers from customers;



/*Total profit of three years*/
select sum((od.quantityOrdered * od.priceEach) - (p.buyPrice * od.quantityOrdered)) as totalprofit 
from orderdetails as od 
join products as p 
on od.productCode=p.productCode;



/*Total sales of each year*/
select year(orderdate) as year,sum(quantityOrdered * priceEach) as totalsales
from orderdetails as od 
join orders as o 
on od.orderNumber=o.orderNumber
join customers as c
on c.customerNumber=o.customerNumber
group by 1;



/*Total number of orders by each Customers*/
select c.contactFirstName,count(o.orderNumber) as totalorders
from customers as c
join orders as o
on c.customerNumber=o.customerNumber
group by 1 
order by 2 desc
limit 5;


/*Total orders by each country*/
select c.country,count(o.orderNumber) as totalorders
from customers as c
join orders as o
on c.customerNumber=o.customerNumber
group by 1
order by 2 desc
limit 5;


/*Total number of orders by each city*/
select c.city,count(o.orderNumber) as totalorders
from customers as c
join orders as o
on c.customerNumber=o.customerNumber
group by 1
order by 2 desc
limit 5;



/*Total orders of each year*/
select year(o.orderdate)as year,count(o.orderNumber) as total
from customers as c
join orders as o 
on c.customerNumber=o.customerNumber
group by 1
order by 2 desc;



/* Total sales by product name*/
select p.productName,sum(od.quantityOrdered * od.priceEach) as sales
from products as p
join orderdetails as od 
on p.productCode=od.productCode
join orders as o 
on o.orderNumber=od.orderNumber
group by 1
order by 2 desc
limit 5;



/* Total sales by product line*/
select p.productLine,sum(od.quantityOrdered * od.priceEach) as totalsales
from products as p
join orderdetails as od
on p.productCode=od.productCode
group by 1
order by 2 desc 
limit 5;



/*Total sale of each country*/
select c.country,sum(quantityOrdered * priceEach) as totalsales
from customers as c
join orders as o 
on c.customerNumber=o.customerNumber
join orderdetails as od 
on o.orderNumber=od.orderNumber
group by 1
order by 2 desc;


/*Total sales of each city*/
select c.city,sum(quantityOrdered * priceEach) as totalsales
from customers as c
join orders as o 
on c.customerNumber=o.customerNumber
join orderdetails as od 
on o.orderNumber=od.orderNumber
join products as p 
on p.productCode=od.productCode
group by 1
order by 2 desc;



/*Total customers of each country*/
select c.country,count(customerNumber) as totalcount
from customers as c
group by 1
order by 2 desc;


/*Total sales of each customer*/
select c.contactFirstName,sum(quantityOrdered * priceEach) as totalsales
from customers as c
join orders as o
on c.customerNumber=o.customerNumber
join orderdetails as od 
on od.orderNumber=o.orderNumber
group by 1
order by 2 desc;



/*Total payments of each customer*/
select c.contactFirstName,sum(amount) as totalamount
from customers as c
join payments as p
on c.customerNumber=p.customerNumber
group by 1
order by 2 desc;



/*Total employees of each country*/
select o.country,count(e.employeeNumber) as totalemployees
from employees as e
join offices as o
on e.officeCode=o.officeCode
group by 1
order by 2 desc;


/*Total employess of each city*/
select o.city,count(e.employeeNumber) as totalemployees
from employees as e
join offices as o
on e.officeCode=o.officeCode
group by 1
order by 2 desc;


/* Employees count by jobtitle */
select jobTitle,count(jobTitle) as totalcount
from employees
group by 1;


/*Total employees by office code*/
select o.officeCode,count(e.employeeNumber) as total
from offices as o
join employees as e
on o.officeCode=e.officeCode
group by 1
order by 2 desc;


/*Total number of products*/ 
 select count(productcode)as Totalproducts from products;
 
 
 /*Total products by sales*/
 select p.productName,sum(od.quantityOrdered) as totalquantity
 from products as p
 join orderdetails as od 
 on p.productCode=od.productCode
 group by 1
 order by 2 desc;

 
/*Total products quantity in stock*/
select productName,sum(quantityInStock) as quantityinstock
from products
group by 1
order by 2 desc;



/*Total product sales of each year*/
select year(o.orderdate)as year,sum(od.quantityOrdered * od.priceEach) as totalsales
from products as p 
join orderdetails as od
on p.productCode=od.productCode 
join orders as o
on o.orderNumber=od.orderNumber
group by 1
order by 2 desc;



/*Total product sales by productname*/
select p.productName,sum(quantityOrdered * priceEach) as totalsales
from customers as c
join orders as o 
on c.customerNumber=o.customerNumber
join orderdetails as od 
on o.orderNumber=od.orderNumber
join products as p 
on p.productCode=od.productCode
group by 1
order by 2 desc;



/*Total sales by product line*/
select p.productLine,sum(quantityOrdered) as totalorders
from customers as c
join orders as o 
on c.customerNumber=o.customerNumber
join orderdetails as od 
on o.orderNumber=od.orderNumber
join products as p 
on p.productCode=od.productCode
group by 1
order by 2 desc;



