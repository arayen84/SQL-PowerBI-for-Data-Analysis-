show tables;
desc geo;
select * from sales;
select SaleDate,Amount,Customers,Boxes from sales;
select SaleDate ,Amount,Boxes,Amount/Boxes as Amount_per_box from sales;
select * from sales
where Amount >10000;
select * from sales
where Amount >10000
order by Amount desc;
select * from sales
where GeoID='G1'
order by PID,Amount desc;
select * from sales
where Amount >10000 and SaleDate >= '2022-01-01';
select SaleDate ,Amount from sales
where amount > 10000 and year(saleDate)=2022
order by Amount desc;
select * from sales
where Boxes >0 and Boxes<=50;
select SaleDate,Amount,Boxes ,weekday(SaleDate) as Day_of_week
from sales
where weekday(SaleDate) =4 ;

select * from people;
select Salesperson,Team from people
where Team='Delish' or Team='Jucies';
select * from people
where Salesperson like 'B%';
select count(*) from sales;
select SaleDate,Amount,
case
when Amount < 1000 then 'Under 1k'
when Amount < 5000 then 'Under 5k'
when Amount < 10000 then 'Under 10k'
else '10k or more'
end as 'Amount Category'
from sales;




