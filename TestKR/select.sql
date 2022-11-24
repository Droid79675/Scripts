/3
SELECT flight FROM flight WHERE flight_time = (SELECT max(flight_time) FROM flight);

/4
SELECT airport_id_start,  COUNT(airport_id_start) + COUNT(airport_id_destination) as flights_quantity
from flight
where (flight_start = '08:00:00')
group by airport_id_start;

/5 сначала min, затем max
SELECT fullname, SUM(flight_time) AS SUM FROM passenger JOIN flight ON flight.id = passenger.id
group by fullname order by sum
    limit 1;

SELECT fullname, SUM(flight_time) AS SUM FROM passenger JOIN flight ON flight.id = passenger.id
group by fullname order by sum desc
    limit 1;