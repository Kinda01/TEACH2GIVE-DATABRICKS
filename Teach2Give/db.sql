--Creating Database
 CREATE DATABASE TEACH2GIVE;
--Query OK, 1 row affected (0.15 sec)

-- Creating the table
CREATE TABLE race_results (
    location VARCHAR(50),
    grid INT,
    position INT,
    fastest_lap INT,
    points INT,
    driver_name VARCHAR(50),
    race_name VARCHAR(50),
    time VARCHAR(20),
    year INT,
    team_name VARCHAR(50),
    date DATE
);

-- Inserting the data
INSERT INTO race_results (location, grid, position, fastest_lap, points, driver_name, race_name, time, year, team_name, date) VALUES
('Portimão', 1, 1, 63, 26, 'Lewis Hamilton', 'Portuguese Grand Prix', '1:29:56.828', 2020, 'Mercedes', '2020-10-25'),
('Sochi', 3, 1, 51, 26, 'Valtteri Bottas', 'Russian Grand Prix', '1:34:00.364', 2020, 'Mercedes', '2020-09-27'),
('Imola', 2, 1, 63, 26, 'Lewis Hamilton', 'Emilia Romagna Grand Prix', '1:28:32.430', 2020, 'Mercedes', '2020-11-01'),
('Budapest', 1, 1, 70, 26, 'Lewis Hamilton', 'Hungarian Grand Prix', '1:36:12.473', 2020, 'Mercedes', '2020-07-19'),
('Mugello', 1, 1, 58, 26, 'Lewis Hamilton', 'Tuscan Grand Prix', '2:19:35.060', 2020, 'Mercedes', '2020-09-13'),
('Sakhir', 5, 1, 68, 25, 'Sergio Pérez', 'Sakhir Grand Prix', '1:31:15.114', 2020, 'Racing Point', '2020-12-06'),
('Nürburg', 1, 1, 58, 26, 'Lewis Hamilton', 'Eifel Grand Prix', '1:35:49.641', 2020, 'Mercedes', '2020-10-11'),
('Spielburg', 2, 1, 56, 25, 'Lewis Hamilton', 'Styrian Grand Prix', '1:22:50.683', 2020, 'Mercedes', '2020-07-12'),
('Sakhir', 1, 1, 55, 25, 'Lewis Hamilton', 'Bahrain Grand Prix', '2:59:47.515', 2020, 'Mercedes', '2020-11-29'),
('Montmeló', 1, 1, 45, 25, 'Lewis Hamilton', 'Spanish Grand Prix', '1:31:45.279', 2020, 'Mercedes', '2020-08-16'),
('Monza', 10, 1, 34, 25, 'Pierre Gasly', 'Italian Grand Prix', '1:47:06.056', 2020, 'AlphaTauri', '2020-09-06'),
('Silverstone', 4, 1, 38, 26, 'Max Verstappen', '70th Anniversary Grand Prix', '1:19:41.993', 2020, 'Red Bull', '2020-08-09'),
('Spielburg', 2, 1, 25, 25, 'Valtteri Bottas', 'Austrian Grand Prix', '1:30:55.739', 2020, 'Mercedes', '2020-07-05'),
('Istanbul', 6, 1, 56, 26, 'Lewis Hamilton', 'Turkish Grand Prix', '1:42:19.313', 2020, 'Mercedes', '2020-11-15'),
('Silverstone', 1, 1, 45, 25, 'Lewis Hamilton', 'British Grand Prix', '1:28:01.283', 2020, 'Mercedes', '2020-08-02');
--display the results for only 2020 data, ordered by driver points:
SELECT 
    location, 
    grid, 
    position, 
    fastest_lap, 
    points, 
    driver_name, 
    race_name, 
    time, 
    year, 
    team_name, 
    date
FROM 
    race_results
WHERE 
    year = 2020
ORDER BY 
    points DESC;
