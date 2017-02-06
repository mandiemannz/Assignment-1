/* Question 1. */

select count(speed) from planes;
select min(speed) from planes;
select max(speed) from planes;


/* Question 2. */

select 
sum(distance) as 'milesFlown'
from flights 
where (year=2013) and (month=1);

select
sum(distance) as 'NullMiles'
from flights
where ( year=2013) and (month=1) and (tailnum is null);

/* Question 3. */

SELECT sum(distance), manufacturer 
FROM flights INNER JOIN planes on 
flights.tailnum = planes.tailnum 
WHERE (month=7) AND (day=5) AND (flights.year=2013) GROUP BY manufacturer;

SELECT sum(distance), manufacturer
FROM flights LEFT OUTER JOIN planes on 
flights.tailnum = planes.tailnum 
WHERE (month=7) AND (day=5) AND (flights.year=2013) GROUP BY manufacturer;

/* Question 4. */


SELECT manufacturer, max(distance) FROM flights
INNER JOIN planes ON flights.tailnum = planes.tailnum
where flights.year = 2013 AND month = 7 AND day = 5
Group by manufacturer;


