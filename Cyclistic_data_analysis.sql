-- Database name
USE cyclistic;

-- Have a feel for the data
SELECT * FROM all_data;

-- Data Validation and Cleaning
SELECT MIN(started_at) FROM all_data;
SELECT MIN(ended_at) FROM all_data;
SELECT MAX(started_at) FROM all_data;
SELECT MAX(ended_at) FROM all_data;		-- Seems too high

-- Creating a new column for trip duration
ALTER TABLE all_data
ADD COLUMN trip_duration_min INT(10)
GENERATED ALWAYS AS
	(
	TIMESTAMPDIFF(MINUTE,started_at,ended_at)
	) STORED;
    
-- Check hightest trip duration
SELECT trip_duration_min/60 AS trip_duration_hr FROM all_data ORDER BY trip_duration_min DESC;
-- Too much value

-- Delete Null value rows
DELETE FROM all_data
WHERE ride_id IS NULL OR
started_at IS NULL OR
ended_at IS NULL OR
start_station_name IS NULL OR
end_station_name IS NULL OR
member_casual IS NULL;

-- Trip duration greater than 3 hrs (180 min) are fined, hence most of them has technical issues
DELETE FROM all_data WHERE trip_duration_min > 180;

-- Removing leading and trailing spaces
UPDATE all_data
SET
	ride_id = TRIM(ride_id),
    started_at = TRIM(started_at),
    ended_at = TRIM(ended_at),
    start_station_name = TRIM(start_station_name),
    end_station_name = TRIM(end_station_name),
    member_casual = TRIM(member_casual);
    
-- Day of week column (1, 2, ..., 7 : Sunday, Monday, ..., Saturday)
ALTER TABLE all_data
ADD COLUMN day_of_week INT(1)
GENERATED ALWAYS AS
	(
	DAYOFWEEK(started_at)
	) STORED;
    
-- Mean trip duration for members and casual riders
SELECT member_casual, AVG(trip_duration_min) FROM all_data GROUP BY member_casual;

-- Mean trip durations on weekends
SELECT member_casual, AVG(trip_duration_min) FROM all_data WHERE day_of_week IN (1,7) GROUP BY member_casual;

-- Mean trip durations on weekdays
SELECT member_casual, AVG(trip_duration_min) FROM all_data WHERE day_of_week NOT IN (1,7) GROUP BY member_casual;

-- Trip frequency of start station for casual bikers
SELECT start_station_name, COUNT(start_station_name) AS frequency FROM all_data
WHERE member_casual = "casual"
GROUP BY start_station_name
ORDER BY frequency DESC;

-- Trip frequency of end station for casual bikers
SELECT end_station_name, COUNT(end_station_name) AS frequency FROM all_data
WHERE member_casual = "casual"
GROUP BY end_station_name
ORDER BY frequency DESC;