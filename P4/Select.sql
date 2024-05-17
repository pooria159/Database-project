-- q1


CREATE OR ALTER PROCEDURE choose_cabin @result VARCHAR(20)
    AS 
    BEGIN 
        SELECT * FROM Ticket
        WHERE cabin = @result
    END

-- q2
GO
CREATE OR ALTER PROCEDURE min_max_cost @dis VARCHAR(25)
    AS
    BEGIN
        SELECT MIN(cost), MAX(cost) FROM Ticket LEFT JOIN flight 
        ON Ticket.flight_id = flight.id WHERE flight.destination = @dis
    END

-- q3


GO
CREATE OR ALTER PROCEDURE time_soon @dis VARCHAR(25) 
    AS
    BEGIN
        SELECT flight.date_flight FROM flight
        WHERE flight.destination = @dis
        ORDER BY flight.date_flight ASC
    END


-- q4


GO
CREATE OR ALTER PROCEDURE airline_name @name VARCHAR(50)
    AS
    BEGIN
        SELECT * FROM  airline_company
        WHERE  ac_name = @name;
    END


-- q5

GO
CREATE OR ALTER PROCEDURE GET_CODE @CODE INT
    AS
    BEGIN
        SELECT * FROM Airplane
        WHERE @CODE = code;
    END

-- q6


GO
CREATE OR ALTER PROCEDURE GET_name @name VARCHAR(50)
    AS
    BEGIN
        SELECT report.last_repair_date FROM report JOIN airplane ON airplane.report_id = report.ID
        WHERE airplane.airplane_name = @name
    END


-- q7


GO
CREATE OR ALTER PROCEDURE choose_flight @result VARCHAR(50)
    AS
    BEGIN 
        SELECT * FROM flight
        WHERE in_out_flight = @result
    END


-- q8


GO
CREATE OR ALTER PROCEDURE get_date @date_flight DATETIME
    AS
    BEGIN
        SELECT * FROM flight JOIN FLIGHT_CREW ON flight.ID = FLIGHT_CREW.SSN 
        JOIN Person ON FLIGHT_CREW.SSN = Person.SSN 
        WHERE flight.date_flight = @date_flight
        AND FLIGHT_CREW.Pilot = 1
    END



-- q9

GO
CREATE OR ALTER PROCEDURE name_airport @state_airport VARCHAR(50) , @city VARCHAR(50)
    AS
    BEGIN
        SELECT Airport.airport_name FROM Airport
        WHERE state_airport = @state_airport
        AND   city = @city
    END



-- q10


GO
CREATE OR ALTER PROCEDURE name_alpha  @result VARCHAR(30)
    AS
    BEGIN 
        SELECT * FROM Passenger JOIN Person ON Passenger.SSN = Person.SSN
        ORDER BY Person.name ASC;
    END



-- q11


GO
CREATE OR ALTER PROCEDURE choose_dis @startdis VARCHAR(25) , @enddis VARCHAR(25)
    AS
    BEGIN 
        SELECT * FROM flight LEFT JOIN Ticket ON Ticket.flight_id = flight.ID
        WHERE flight.arrival_city = @startdis AND flight.destination = @enddis
    END

-- q12


GO
CREATE OR ALTER PROCEDURE choose_date @stattdis VARCHAR(25) , @enddis VARCHAR(25)
    AS
    BEGIN 
        SELECT date_flight FROM flight
        WHERE arrival_city = @stattdis AND destination = @enddis
    END

-- q13


GO
CREATE OR ALTER PROCEDURE name_pilot @date DATETIME
    AS
    BEGIN
        SELECT Person.name , Person.family_name FROM flight LEFT JOIN FLIGHT_CREW ON flight.flight_crew = FLIGHT_CREW.SSN
        LEFT JOIN Person ON Person.SSN = FLIGHT_CREW.SSN
        WHERE flight.date_flight = @date AND FLIGHT_CREW.Pilot = 1
    END

-- q14


SELECT Person.name , Person.family_name FROM FLIGHT_CREW JOIN Person ON Person.SSN = FLIGHT_CREW.SSN
WHERE FLIGHT_CREW.stewardess = 1 AND YEAR(GETDATE()) - YEAR(Person.birthdate) > 40;


-- q15

GO
CREATE OR ALTER PROCEDURE person_count @gender VARCHAR(10)
    AS
    BEGIN
        SELECT COUNT(Person.gender) FROM Person JOIN Passenger ON Passenger.SSN =  Person.SSN
        WHERE Person.gender = @gender
    END

-- q16

GO
CREATE OR ALTER FUNCTION ListWithDflights()
RETURNS TABLE
AS
RETURN
	SELECT * FROM flight right join Ticket on Ticket.flight_id=flight.ID where flight.in_out_flight='Domestic flight'

SELECT * FROM ListWithDflights()

--q17
GO
CREATE OR ALTER FUNCTION ListWithIflights()
RETURNS TABLE
AS
RETURN
	SELECT * FROM flight right join Ticket on Ticket.flight_id=flight.ID where flight.in_out_flight='International flights'

SELECT * FROM ListWithIflights()


-- q18
GO
CREATE OR ALTER FUNCTION ListWithunderlegalage()
RETURNS TABLE
AS
RETURN
	SELECT SSN from Passenger where Passenger.Legal_age=1

SELECT * FROM ListWithunderlegalage()

--q19
GO
CREATE OR ALTER FUNCTION ListWithpilotsage()
RETURNS TABLE
AS
RETURN
	SELECT * from FLIGHT_CREW  where FLIGHT_CREW.Pilot=1 and exists(select * from Person where year(Person.birthdate)>30)

SELECT * FROM ListWithpilotsage()
--q20
GO
CREATE OR ALTER FUNCTION ListWithstewsage()
RETURNS TABLE
AS
RETURN
	SELECT * from FLIGHT_CREW  where FLIGHT_CREW.stewardess=1 and exists(select * from Person where year(Person.birthdate)>45)

SELECT * FROM ListWithstewsage()