-- As a data scientist at Amazon Prime Video, you are tasked with enhancing the in-flight entertainment experience for Amazon’s airline partners. Your challenge is to develop a feature that suggests individual movies from Amazon's content database that fit within a given flight's duration. For flight 101, find movies whose runtime is less than or equal to the flight's duration.

-- The output should list suggested movies for the flight, including 'flight_id', 'movie_id', and 'movie_duration'."

-- Tables: entertainment_catalog, flight_schedule

-- entertainment_catalog
-- Preview
-- movie_id	title	duration
-- 1	The Great Adventure	120
-- 2	Space Journey	90
-- 3	Ocean Mystery	60
-- 4	The Lost City	150
-- 5	Mountain Quest	110

-- flight_schedule
-- Preview
-- flight_id	flight_duration	flight_date
-- 101	240	2024-01-01
-- 102	180	2024-01-02
-- 103	240	2024-01-03
-- 104	150	2024-01-04
-- 105	300	2024-01-05

-- Output
-- flight_id	movie_id	movie_duration
-- 101	3	60
-- 101	9	75
-- 101	8	85
-- 101	2	90
-- 101	6	95

SELECT 
    t1.flight_id AS "flight_id", 
    t2.movie_id AS "movie_id", 
    t2.duration AS "movie_duration"
FROM 
    flight_schedule t1
JOIN 
    entertainment_catalog t2
ON 
    t2.duration <= t1.flight_duration
WHERE 
    t1.flight_id = 101;