-- Create Flights table
-- CREATE TABLE Flights (
--     flight_id INTEGER PRIMARY KEY,
--     origin TEXT NOT NULL,
--     destination TEXT NOT NULL,
--     departure_time TEXT NOT NULL,
--     arrival_time TEXT NOT NULL,
--     price REAL NOT NULL
-- );

-- Create Users table
-- CREATE TABLE Users (
--     user_id INTEGER PRIMARY KEY,
--     name TEXT NOT NULL,
--     email TEXT NOT NULL UNIQUE
-- );

-- INSERT INTO Flights (origin, destination, departure_time, arrival_time, price) 
-- VALUES ('Skopje', 'Berlin', '2024-10-01 08:00', '2024-10-01 08:00', 120);
-- INSERT INTO Flights (origin, destination, departure_time, arrival_time, price) 
-- VALUES ('Amsterdam', 'London', '2024-10-01 08:00', '2024-10-01 08:00', 220);
-- INSERT INTO Flights (origin, destination, departure_time, arrival_time, price) 
-- VALUES ('London', 'Frankfurt', '2024-10-01 08:00', '2024-10-01 08:00', 250);


-- -- Insert data into Users table
-- INSERT INTO Users (name, email) 
-- VALUES ('Alice Johnson', 'alice.j@example.com');

-- INSERT INTO Users (name, email) 
-- VALUES ('Bo Petroska', 'bo@gmail.com');
-- INSERT INTO Users (name, email) 
-- VALUES ('Nikita Korsun', 'nikita@gmail.com');


-- DELETE FROM Flights WHERE column1='London';
-- UPDATE Users SET email = 'bo@gmail.com' WHERE user_id=1;

-- SELECT COUNT (*) AS total_flights FROM Flights;


-- SELECT MAX(price) AS max_price FROM Flights;
-- SELECT MIN(price) AS min_price FROM Flights;

-- INSERT INTO Flights (origin, destination, departure_time, arrival_time, price) 
-- VALUES 
-- ('San Francisco', 'lONDON', '2024-10-01 08:00', '2024-10-01 08:00', 900),
-- ('New York', 'AMSTERDAM', '2024-10-01 08:00', '2024-10-01 08:00', 960);


-- SELECT origin, AVG(price), SUM(price) FROM Flights GROUP BY origin HAVING SUM(price) > 1000;


-- CREATE TABLE Bookings (
--     booking_id INTEGER PRIMARY KEY,
--     user_id INTEGER,
--     flight_id INTEGER,
--     booking_date TEXT NOT NULL,
--     FOREIGN KEY (user_id) REFERENCES Users(user_id),
--     FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
-- );

-- INSERT INTO bookings (user_id, flight_id, booking_date)
-- VALUES (2, 1, '2024-10-25 06:00');

SELECT * FROM Users;
SELECT * FROM Flights;
SELECT * FROM Bookings;

-- SELECT Users.name, Flights.origin, Flights.destination, Bookings.booking_date
-- FROM Bookings
-- INNER JOIN Users ON Bookings.user_id = Users.user_id
-- Inner JOIN Flights ON Bookings.flight_id = Flights.flight_id;

-- SELECT Users.name, Bookings.booking_date
-- FROM Users
-- LEFT JOIN Bookings ON Users.user_id = Bookings.user_id;

-- SELECT Users.name, Flights.origin, Flights.destination
-- FROM Users CROSS JOIN Flights;