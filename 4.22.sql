use games;

select * from games order by price desc limit 1;
select * from games g1 where g1.price = (select max(g2.price) from games g2); 