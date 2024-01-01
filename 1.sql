
--1.
select last_name 
from actor
where last_name like 'Wahlberg';
--ans = 2

--2
select amount
from payment 
where amount > 3.99 and amount <5.99;
--ans = 0

--3
select film_id, sum(film_id)
from inventory
group by inventory_id;
--ans = Zorro Ark



--4
select last_name
from customer where last_name like 'Williams';
--ans = 1

--5
select staff_id , sum(rental_id)
from rental 
group by rental_id;
-- ans Jon Stephens

--6
select  count(distinct district)  
from address;
--ans = 378

--7
select film_id ,count(distinct actor_id)
from film_actor
group by film_id;
--ans = Lambs Cincinatti

--8
select count(customer_id)
from customer
where upper(substring(last_name,length(last_name)-1)) = 'ES'
group by store_id;
--ans = 13


--9
select payment.amount, count(amount) as customer_id
from payment
JOIN rental ON payment.payment_id = rental.rental_id
JOIN customer ON rental.customer_id = customer.customer_id
WHERE customer.customer_id BETWEEN 380 AND 430
GROUP BY payment.amount
having amount > 250


--10

SELECT COUNT(DISTINCT rating) AS rating_categories
FROM film;


SELECT rating, COUNT(*) as number_of_movies
FROM film
GROUP BY rating
ORDER BY number_of_movies desc
;
-- ans = PG-13



