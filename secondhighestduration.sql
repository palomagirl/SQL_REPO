select * from(select * from
(select distinct rental_duration  from film
order by 1 desc)a
limit 2)b
order by 1 
limit 1
;

select  max(rental_duration)  from film
where rental_duration not in(select max(rental_duration)  from film)
