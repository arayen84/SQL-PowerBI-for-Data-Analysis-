select * from sales;

select * from people;

select s.SaleDate,s.Amount,p.Salesperson
from sales s
join people p on p.SPID = s.SPID
order by Amount desc;

select s.SaleDate,s.Amount,p.Product,p.Category
from sales s
left join products p on p.PID = s.PID
order by Amount desc;

select pd.Product,p.Salesperson,p.Team,s.Amount
from products pd
join sales s on s.PID = pd.PID
join people p on p.SPID = s.SPID
;

select pd.Product,p.Salesperson,p.Team,s.Amount
from products pd
join sales s on s.PID = pd.PID
join people p on p.SPID = s.SPID
where s.Amount < 1000
and p.Team = "Yummies";

select pd.Product,p.Salesperson,p.Team,s.Amount
from products pd
join sales s on s.PID = pd.PID
join people p on p.SPID = s.SPID
where s.Amount < 1000
and p.Team = "";

select pd.Product,p.Salesperson,p.Team,s.Amount,g.Geo
from products pd
join sales s on s.PID = pd.PID
join people p on p.SPID = s.SPID
join geo g on g.GeoID = s.GeoID
where s.Amount < 1000
and g.Geo = "USA" or g.Geo="UK"
order by Amount desc ;

select g.Geo,sum(Amount),sum(Boxes)
from sales
join geo g on g.GeoID = sales.GeoID
group by g.Geo;

select pr.Category,p.Team,sum(Boxes),sum(Amount)
from sales s
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
group by pr.Category,p.Team;

select pr.Category,p.Team,sum(Boxes),sum(Amount)
from sales s
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
where p.Team <>''
group by pr.Category,p.Team
order by pr.Category,p.Team;

select p.product,sum(s.Amount) as Total_amount
from products p
join sales s on s.PID = p.PID
group by p.product
order by `Total_amount` desc
limit 10;