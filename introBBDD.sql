1- Escribe una consulta que recupere los Vuelos (flights) y su identificador que figuren con status On Time.

Select flight_id, flight_no 
from flights
where status = 'On Time';

2- Escribe una consulta que extraiga todas las columnas de la tabla bookings y
 refleje todas las reservas que han supuesto una cantidad total mayor a 1.000.000 (Unidades monetarias).

Select *
from bookings
where total_amount > 1000000;

3- Escribe una consulta que extraiga todas las columnas de los datos de los modelos de aviones disponibles (aircraft_data).

Select *
from aircrafts_data;

4. Con el resultado anterior visualizado previamente, escribe una consulta que extraiga los identificadores de 
vuelo que han volado con un Boeing 737. (Código Modelo Avión = 733)

Select flight_id
from flights
where aircraft_code = '733';

5. Escribe una consulta que te muestre la información detallada de los tickets que han comprado las personas que se llaman Irina.

Select *
from tickets
where passenger_name like '%Irina%';

6. Mostrar las ciudades con más de un aeropuerto.

Select city, count(airport_code) as num_airports
from airports_data
group by city
having count(airport_code) > 1;

7. Mostrar el número de vuelos por modelo de avión.

Select aircraft_code, count(flight_id) as num_flights
from flights
group by aircraft_code;

8. Reservas con más de un billete (varios pasajeros).

Select book_ref, count(ticket_no) as num_tickets
from tickets
group by book_ref
having count(ticket_no) > 1;

9. Vuelos con retraso de salida superior a una hora.

Select flight_id, scheduled_departure, actual_departure
from flights
where actual_departure IS NOT NULL
AND actual_departure > scheduled_departure + INTERVAL '1 hour';
