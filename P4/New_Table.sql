CREATE TABLE Person (
    SSN CHAR(10) NOT NULL UNIQUE,
    Phone_num CHAR(15) NOT NULL UNIQUE,
    name VARCHAR(30) NOT NULL,
    family_name varchar(50) NOT NULL,
    email varchar(300) NOT NULL UNIQUE,
    birthdate DATE NOT NULL,
    gender VARCHAR(10),
    PRIMARY KEY (SSN),
    CONSTRAINT check_sex  CHECK (gender='Male' or gender='Female')
);


CREATE TABLE Passenger (
    Legal_age BIT NOT NULL,
    Physical_defect BIT,
    SSN CHAR(10) NOT NULL UNIQUE,
    PRIMARY KEY (SSN),
    FOREIGN KEY (SSN) REFERENCES Person(SSN) ON UPDATE CASCADE
);


CREATE TABLE FLIGHT_CREW (
    flight_num_per_day INT,
    Education VARCHAR(30), 
    SSN CHAR(10) NOT NULL UNIQUE,
    stewardess BIT, 
    Pilot BIT,
    Airport_ID INT NOT NULL UNIQUE,
    PRIMARY KEY(SSN),
	FOREIGN KEY (SSN) REFERENCES Person(SSN) ON UPDATE CASCADE
);

CREATE TABLE reports (
    last_repair_date DATE NOT NULL,
    ID INT NOT NULL UNIQUE,
    PRIMARY KEY (ID),
);
CREATE TABLE airline_company (
    code INT NOT NULL UNIQUE,
    country VARCHAR(50) ,
    ac_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (code)
);
CREATE TABLE airplane (
    capacity_of_passengers INT,
    capacity_of_bar FLOAT NOT NULL,
    code INT NOT NULL,  
    airplane_name VARCHAR(50),
    ac_code INT NOT NULL UNIQUE  ,
    report_id INT NOT NULL UNIQUE,
    PRIMARY KEY(code),
    FOREIGN KEY(ac_code) REFERENCES airline_company(code) ON UPDATE CASCADE,
	FOREIGN KEY (report_id) REFERENCES reports(ID) ON UPDATE CASCADE
);



CREATE TABLE flight (
    date_flight DATETIME NOT NULL,
    ID int NOT NULL UNIQUE,
    arrival_city VARCHAR(25) NOT NULL,
    time_flight INT NOT NULL,
    destination VARCHAR(25) NOT NULL,
    flight_crew CHAR(10) NOT NULL UNIQUE,
    Airplane_ID INT NOT NULL UNIQUE,
    Airport_ID INT NOT NULL UNIQUE,
	in_out_flight VARCHAR(50),
    PRIMARY KEY (ID),
    FOREIGN KEY (flight_crew) REFERENCES FLIGHT_CREW(SSN) ON DELETE CASCADE,
    FOREIGN KEY (Airplane_ID) REFERENCES Airplane(code) ON UPDATE CASCADE,
	CONSTRAINT check_in_out CHECK (in_out_flight  = 'Domestic flight' OR in_out_flight = 'International flights')
    --FOREIGN KEY (Airport_ID) REFERENCES Airport(ID) ON UPDATE CASCADE
);

CREATE TABLE Airport (
    country VARCHAR(50),  
    state_airport VARCHAR(50), 
    city VARCHAR(50) NOT NULL, 
    airport_name VARCHAR(200) NOT NULL UNIQUE, 
    ID INT NOT NULL UNIQUE,
    flight_id INT NOT NULL UNIQUE,
    flight_crew_ssn CHAR(10) NOT NULL UNIQUE,
    PRIMARY KEY (airport_name , ID),
    FOREIGN KEY (flight_crew_ssn) REFERENCES FLIGHT_CREW(SSN) ON UPDATE CASCADE,
	FOREIGN KEY (flight_id) REFERENCES flight(id) ON DELETE CASCADE
);




CREATE TABLE Ticket(
    Amout_of_load INT,
    cost FLOAT,
    cabin VARCHAR(20) NOT NULL,
    seri_num CHAR(20) NOT NULL UNIQUE,
    flight_id INT NOT NULL UNIQUE,
    passenger_id CHAR(10) NOT NULL UNIQUE,
    PRIMARY KEY(seri_num),
    FOREIGN KEY (passenger_id) REFERENCES Person(ssn),
	FOREIGN KEY (flight_id) REFERENCES flight(id) ON DELETE CASCADE,
    CONSTRAINT check_cabin CHECK(cabin = 'firstcalss' OR cabin = 'buisinessclass' OR cabin = 'economyclass')
);

CREATE TABLE gate (
    id INT NOT NULL UNIQUE,
    Airport_ID INT NOT NULL UNIQUE,
    PRIMARY KEY (id),
    FOREIGN KEY (Airport_ID) REFERENCES airport(ID)
);

CREATE TABLE land_takeoff (
    Airport_ID INT NOT NULL UNIQUE,
    Flight_ID INT NOT NULL UNIQUE,
    PRIMARY KEY (Airport_ID , Flight_ID),
    FOREIGN KEY (Airport_ID) REFERENCES Airport(ID),
    FOREIGN KEY (Flight_ID) REFERENCES flight(ID)
);


----------------------------------------------triggers
GO
CREATE TRIGGER check_age 
ON Passenger
FOR INSERT
AS
BEGIN
	declare @age int
	select @age= year(Person.birthdate) from Person

	if(YEAR(GETDATE())-@age>18)
	begin
		update Passenger
		set Legal_age=1
	end

END
GO

GO
CREATE TRIGGER check_amount_of_bar
ON ticket
AFTER INSERT,UPDATE
AS
BEGIN
	declare @capacity int
	select @capacity=Ticket.Amout_of_load from Ticket

	if(@capacity>30)
	begin
		RAISERROR ('The amount of load is greater than the limit', 16, 1 )

	end

END
GO

---------------------------------------------------update tables
ALTER TABLE Passeenger ADD account_num varchar(20);

ALTER TABLE Ticket ADD discount_coupon bit;
-----------------------------------------------------update row
GO
CREATE OR ALTER PROCEDURE change_row @id int , @dest varchar(max)
AS
	UPDATE flight
	SET destination = @dest          
GO
EXEC change_row @dest = 'hongkong' , @id = 30;

UPDATE reports
SET last_repair_date=GETDATE()
WHERE reports.ID=1
-------------------------------------------------------------delete table
ALTER TABLE Person DROP COLUMN email; --delete
ALTER TABLE Person DROP INDEX check_sex;

--------------------------------------------------------------constraints

ALTER TABLE Ticket ADD CONSTRAINT check_cost CHECK (cost<=10000000);

--------------------------------------------------------------------------view
GO
CREATE VIEW view_of_persons AS
SELECT Person.name, Person.family_name ,Person.gender
FROM Person;

GO
CREATE VIEW view_of_flights AS
SELECT flight.arrival_city,flight.destination,flight.date_flight
FROM flight;


