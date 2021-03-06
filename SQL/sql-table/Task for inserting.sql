
select last_name from actor where first_name = 'John';
select * from actor where last_name = 'Neeson';
select * from actor where (actor_id % 10) = 0;
select title from film where film_id = 100;
select title, rating from film where rating = 'R';
select title, rating from film where rating != 'R';
select title, length from film order by length asc limit 10;
select title, special_features from film where special_features LIKE '%Deleted Scenes';
SELECT 
    *
FROM
    film_category
WHERE
    category_id = 11;
SELECT 
*
FROM
    film
        INNER JOIN
    film_category ON film.film_id = film_category.film_id
WHERE
    category_id = 11;