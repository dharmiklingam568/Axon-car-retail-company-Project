/*---------------------------Data cleaning of customers table------------------------------------------------------------------------------------*/
select * from customers;

alter table customers
drop column addressline2;

alter table offices
drop column addressline2;

update customers
set phone=replace(replace(replace(replace(replace(replace(phone,'.',''),'+',''),'-',''),'(',''),')',''),' ','')
where phone regexp '[^0-9]';

update customers
set state='unknow'
where state is null;

/*-------------------------------------------------------------Data cleaning offices table -----------------------------------------------------*/

select * from offices;

update offices
set phone=replace(replace(phone,'+',''),' ','')
where phone regexp '[^0-9]';

update offices
set state='unknow'
where state is null;

/*-----------------------------------------Data cleaning orders table------------------------------------------------------------------------------*/

select * from orders;

update orders
set comments='No comments'
where comments is null;

/*-----------------------------------------Data cleaning productlines table-------------------------------------------------------------------------*/

select * from productlines;

alter table productlines
drop column htmldescription,
drop column image;

select * from products

