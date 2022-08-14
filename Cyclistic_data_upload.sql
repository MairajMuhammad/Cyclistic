-- Name of database
USE cyclistic;

CREATE TABLE 202106_divvy_tripdata (
	ride_id VARCHAR(30),
    rideable_type VARCHAR(20),
    started_at DATETIME,
    ended_at DATETIME,
    start_station_name VARCHAR(100),
    start_station_id VARCHAR(50),
    end_station_name VARCHAR(100),
    end_station_id VARCHAR(50),
    start_lat DECIMAL(5,2),
    start_lng DECIMAL(5,2),
    end_lat DECIMAL(5,2),
    end_lng DECIMAL(5,2),
    member_casual VARCHAR(6)
);

LOAD DATA INFILE "E:/Data Science/Data scientist/Google Data Analytics Course/Capstone/Cyclistic/Cyclistic_Rstudio/202106-divvy-tripdata.csv" 
INTO TABLE 202106_divvy_tripdata 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@vride_id, @vrideable_type, @vstarted_at, @vended_at, @vstart_station_name, @start_station_id, @vend_station_name, @vend_station_id, @vstart_lat, @vstart_lng, @vend_lat, @vend_lng, @vmember_casual)
SET
	ride_id = NULLIF(@vride_id,''),
    rideable_type = NULLIF(@vrideable_type,''),
    started_at = NULLIF(@vstarted_at,''),
    ended_at = NULLIF(@vended_at,''),
    start_station_name = NULLIF(@vstart_station_name,''),
    start_station_id = NULLIF(@vstart_station_id,''),
    end_station_name = NULLIF(@vend_station_name,''),
    end_station_id = NULLIF(@vend_station_id,''),
    start_lat = NULLIF(@vstart_lat,''),
    start_lng = NULLIF(@vstart_lng,''),
    end_lat = NULLIF(@vend_lat,''),
    end_lng = NULLIF(@vend_lng,''),
    member_casual = NULLIF(@vmember_casual,'');

CREATE TABLE 202107_divvy_tripdata AS SELECT * FROM 202106_divvy_tripdata;
CREATE TABLE 202108_divvy_tripdata AS SELECT * FROM 202107_divvy_tripdata;
CREATE TABLE 202109_divvy_tripdata AS SELECT * FROM 202107_divvy_tripdata;
CREATE TABLE 202110_divvy_tripdata AS SELECT * FROM 202107_divvy_tripdata;
CREATE TABLE 202111_divvy_tripdata AS SELECT * FROM 202107_divvy_tripdata;
CREATE TABLE 202112_divvy_tripdata AS SELECT * FROM 202107_divvy_tripdata;
CREATE TABLE 202201_divvy_tripdata AS SELECT * FROM 202107_divvy_tripdata;
CREATE TABLE 202202_divvy_tripdata AS SELECT * FROM 202107_divvy_tripdata;
CREATE TABLE 202203_divvy_tripdata AS SELECT * FROM 202107_divvy_tripdata;
CREATE TABLE 202204_divvy_tripdata AS SELECT * FROM 202107_divvy_tripdata;
CREATE TABLE 202205_divvy_tripdata AS SELECT * FROM 202107_divvy_tripdata;

LOAD DATA INFILE "E:/Data Science/Data scientist/Google Data Analytics Course/Capstone/Cyclistic/Cyclistic_Rstudio/202107-divvy-tripdata.csv" 
INTO TABLE 202107_divvy_tripdata 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@vride_id, @vrideable_type, @vstarted_at, @vended_at, @vstart_station_name, @start_station_id, @vend_station_name, @vend_station_id, @vstart_lat, @vstart_lng, @vend_lat, @vend_lng, @vmember_casual)
SET
	ride_id = NULLIF(@vride_id,''),
    rideable_type = NULLIF(@vrideable_type,''),
    started_at = NULLIF(@vstarted_at,''),
    ended_at = NULLIF(@vended_at,''),
    start_station_name = NULLIF(@vstart_station_name,''),
    start_station_id = NULLIF(@vstart_station_id,''),
    end_station_name = NULLIF(@vend_station_name,''),
    end_station_id = NULLIF(@vend_station_id,''),
    start_lat = NULLIF(@vstart_lat,''),
    start_lng = NULLIF(@vstart_lng,''),
    end_lat = NULLIF(@vend_lat,''),
    end_lng = NULLIF(@vend_lng,''),
    member_casual = NULLIF(@vmember_casual,'');

LOAD DATA INFILE "E:/Data Science/Data scientist/Google Data Analytics Course/Capstone/Cyclistic/Cyclistic_Rstudio/202108-divvy-tripdata.csv" 
INTO TABLE 202108_divvy_tripdata 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@vride_id, @vrideable_type, @vstarted_at, @vended_at, @vstart_station_name, @start_station_id, @vend_station_name, @vend_station_id, @vstart_lat, @vstart_lng, @vend_lat, @vend_lng, @vmember_casual)
SET
	ride_id = NULLIF(@vride_id,''),
    rideable_type = NULLIF(@vrideable_type,''),
    started_at = NULLIF(@vstarted_at,''),
    ended_at = NULLIF(@vended_at,''),
    start_station_name = NULLIF(@vstart_station_name,''),
    start_station_id = NULLIF(@vstart_station_id,''),
    end_station_name = NULLIF(@vend_station_name,''),
    end_station_id = NULLIF(@vend_station_id,''),
    start_lat = NULLIF(@vstart_lat,''),
    start_lng = NULLIF(@vstart_lng,''),
    end_lat = NULLIF(@vend_lat,''),
    end_lng = NULLIF(@vend_lng,''),
    member_casual = NULLIF(@vmember_casual,'');

LOAD DATA INFILE "E:/Data Science/Data scientist/Google Data Analytics Course/Capstone/Cyclistic/Cyclistic_Rstudio/202109-divvy-tripdata.csv" 
INTO TABLE 202109_divvy_tripdata 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@vride_id, @vrideable_type, @vstarted_at, @vended_at, @vstart_station_name, @start_station_id, @vend_station_name, @vend_station_id, @vstart_lat, @vstart_lng, @vend_lat, @vend_lng, @vmember_casual)
SET
	ride_id = NULLIF(@vride_id,''),
    rideable_type = NULLIF(@vrideable_type,''),
    started_at = NULLIF(@vstarted_at,''),
    ended_at = NULLIF(@vended_at,''),
    start_station_name = NULLIF(@vstart_station_name,''),
    start_station_id = NULLIF(@vstart_station_id,''),
    end_station_name = NULLIF(@vend_station_name,''),
    end_station_id = NULLIF(@vend_station_id,''),
    start_lat = NULLIF(@vstart_lat,''),
    start_lng = NULLIF(@vstart_lng,''),
    end_lat = NULLIF(@vend_lat,''),
    end_lng = NULLIF(@vend_lng,''),
    member_casual = NULLIF(@vmember_casual,'');

LOAD DATA INFILE "E:/Data Science/Data scientist/Google Data Analytics Course/Capstone/Cyclistic/Cyclistic_Rstudio/202110-divvy-tripdata.csv" 
INTO TABLE 202110_divvy_tripdata 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@vride_id, @vrideable_type, @vstarted_at, @vended_at, @vstart_station_name, @start_station_id, @vend_station_name, @vend_station_id, @vstart_lat, @vstart_lng, @vend_lat, @vend_lng, @vmember_casual)
SET
	ride_id = NULLIF(@vride_id,''),
    rideable_type = NULLIF(@vrideable_type,''),
    started_at = NULLIF(@vstarted_at,''),
    ended_at = NULLIF(@vended_at,''),
    start_station_name = NULLIF(@vstart_station_name,''),
    start_station_id = NULLIF(@vstart_station_id,''),
    end_station_name = NULLIF(@vend_station_name,''),
    end_station_id = NULLIF(@vend_station_id,''),
    start_lat = NULLIF(@vstart_lat,''),
    start_lng = NULLIF(@vstart_lng,''),
    end_lat = NULLIF(@vend_lat,''),
    end_lng = NULLIF(@vend_lng,''),
    member_casual = NULLIF(@vmember_casual,'');
    
LOAD DATA INFILE "E:/Data Science/Data scientist/Google Data Analytics Course/Capstone/Cyclistic/Cyclistic_Rstudio/202111-divvy-tripdata.csv" 
INTO TABLE 202111_divvy_tripdata 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@vride_id, @vrideable_type, @vstarted_at, @vended_at, @vstart_station_name, @start_station_id, @vend_station_name, @vend_station_id, @vstart_lat, @vstart_lng, @vend_lat, @vend_lng, @vmember_casual)
SET
	ride_id = NULLIF(@vride_id,''),
    rideable_type = NULLIF(@vrideable_type,''),
    started_at = NULLIF(@vstarted_at,''),
    ended_at = NULLIF(@vended_at,''),
    start_station_name = NULLIF(@vstart_station_name,''),
    start_station_id = NULLIF(@vstart_station_id,''),
    end_station_name = NULLIF(@vend_station_name,''),
    end_station_id = NULLIF(@vend_station_id,''),
    start_lat = NULLIF(@vstart_lat,''),
    start_lng = NULLIF(@vstart_lng,''),
    end_lat = NULLIF(@vend_lat,''),
    end_lng = NULLIF(@vend_lng,''),
    member_casual = NULLIF(@vmember_casual,'');

LOAD DATA INFILE "E:/Data Science/Data scientist/Google Data Analytics Course/Capstone/Cyclistic/Cyclistic_Rstudio/202112-divvy-tripdata.csv" 
INTO TABLE 202112_divvy_tripdata 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@vride_id, @vrideable_type, @vstarted_at, @vended_at, @vstart_station_name, @start_station_id, @vend_station_name, @vend_station_id, @vstart_lat, @vstart_lng, @vend_lat, @vend_lng, @vmember_casual)
SET
	ride_id = NULLIF(@vride_id,''),
    rideable_type = NULLIF(@vrideable_type,''),
    started_at = NULLIF(@vstarted_at,''),
    ended_at = NULLIF(@vended_at,''),
    start_station_name = NULLIF(@vstart_station_name,''),
    start_station_id = NULLIF(@vstart_station_id,''),
    end_station_name = NULLIF(@vend_station_name,''),
    end_station_id = NULLIF(@vend_station_id,''),
    start_lat = NULLIF(@vstart_lat,''),
    start_lng = NULLIF(@vstart_lng,''),
    end_lat = NULLIF(@vend_lat,''),
    end_lng = NULLIF(@vend_lng,''),
    member_casual = NULLIF(@vmember_casual,'');
    
LOAD DATA INFILE "E:/Data Science/Data scientist/Google Data Analytics Course/Capstone/Cyclistic/Cyclistic_Rstudio/202201-divvy-tripdata.csv" 
INTO TABLE 202201_divvy_tripdata 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@vride_id, @vrideable_type, @vstarted_at, @vended_at, @vstart_station_name, @start_station_id, @vend_station_name, @vend_station_id, @vstart_lat, @vstart_lng, @vend_lat, @vend_lng, @vmember_casual)
SET
	ride_id = NULLIF(@vride_id,''),
    rideable_type = NULLIF(@vrideable_type,''),
    started_at = NULLIF(@vstarted_at,''),
    ended_at = NULLIF(@vended_at,''),
    start_station_name = NULLIF(@vstart_station_name,''),
    start_station_id = NULLIF(@vstart_station_id,''),
    end_station_name = NULLIF(@vend_station_name,''),
    end_station_id = NULLIF(@vend_station_id,''),
    start_lat = NULLIF(@vstart_lat,''),
    start_lng = NULLIF(@vstart_lng,''),
    end_lat = NULLIF(@vend_lat,''),
    end_lng = NULLIF(@vend_lng,''),
    member_casual = NULLIF(@vmember_casual,'');
    
LOAD DATA INFILE "E:/Data Science/Data scientist/Google Data Analytics Course/Capstone/Cyclistic/Cyclistic_Rstudio/202202-divvy-tripdata.csv" 
INTO TABLE 202202_divvy_tripdata 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@vride_id, @vrideable_type, @vstarted_at, @vended_at, @vstart_station_name, @start_station_id, @vend_station_name, @vend_station_id, @vstart_lat, @vstart_lng, @vend_lat, @vend_lng, @vmember_casual)
SET
	ride_id = NULLIF(@vride_id,''),
    rideable_type = NULLIF(@vrideable_type,''),
    started_at = NULLIF(@vstarted_at,''),
    ended_at = NULLIF(@vended_at,''),
    start_station_name = NULLIF(@vstart_station_name,''),
    start_station_id = NULLIF(@vstart_station_id,''),
    end_station_name = NULLIF(@vend_station_name,''),
    end_station_id = NULLIF(@vend_station_id,''),
    start_lat = NULLIF(@vstart_lat,''),
    start_lng = NULLIF(@vstart_lng,''),
    end_lat = NULLIF(@vend_lat,''),
    end_lng = NULLIF(@vend_lng,''),
    member_casual = NULLIF(@vmember_casual,'');
    
LOAD DATA INFILE "E:/Data Science/Data scientist/Google Data Analytics Course/Capstone/Cyclistic/Cyclistic_Rstudio/202203-divvy-tripdata.csv" 
INTO TABLE 202203_divvy_tripdata 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@vride_id, @vrideable_type, @vstarted_at, @vended_at, @vstart_station_name, @start_station_id, @vend_station_name, @vend_station_id, @vstart_lat, @vstart_lng, @vend_lat, @vend_lng, @vmember_casual)
SET
	ride_id = NULLIF(@vride_id,''),
    rideable_type = NULLIF(@vrideable_type,''),
    started_at = NULLIF(@vstarted_at,''),
    ended_at = NULLIF(@vended_at,''),
    start_station_name = NULLIF(@vstart_station_name,''),
    start_station_id = NULLIF(@vstart_station_id,''),
    end_station_name = NULLIF(@vend_station_name,''),
    end_station_id = NULLIF(@vend_station_id,''),
    start_lat = NULLIF(@vstart_lat,''),
    start_lng = NULLIF(@vstart_lng,''),
    end_lat = NULLIF(@vend_lat,''),
    end_lng = NULLIF(@vend_lng,''),
    member_casual = NULLIF(@vmember_casual,'');
    
LOAD DATA INFILE "E:/Data Science/Data scientist/Google Data Analytics Course/Capstone/Cyclistic/Cyclistic_Rstudio/202204-divvy-tripdata.csv" 
INTO TABLE 202204_divvy_tripdata 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@vride_id, @vrideable_type, @vstarted_at, @vended_at, @vstart_station_name, @start_station_id, @vend_station_name, @vend_station_id, @vstart_lat, @vstart_lng, @vend_lat, @vend_lng, @vmember_casual)
SET
	ride_id = NULLIF(@vride_id,''),
    rideable_type = NULLIF(@vrideable_type,''),
    started_at = NULLIF(@vstarted_at,''),
    ended_at = NULLIF(@vended_at,''),
    start_station_name = NULLIF(@vstart_station_name,''),
    start_station_id = NULLIF(@vstart_station_id,''),
    end_station_name = NULLIF(@vend_station_name,''),
    end_station_id = NULLIF(@vend_station_id,''),
    start_lat = NULLIF(@vstart_lat,''),
    start_lng = NULLIF(@vstart_lng,''),
    end_lat = NULLIF(@vend_lat,''),
    end_lng = NULLIF(@vend_lng,''),
    member_casual = NULLIF(@vmember_casual,'');
    
LOAD DATA INFILE "E:/Data Science/Data scientist/Google Data Analytics Course/Capstone/Cyclistic/Cyclistic_Rstudio/202205-divvy-tripdata.csv" 
INTO TABLE 202205_divvy_tripdata 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@vride_id, @vrideable_type, @vstarted_at, @vended_at, @vstart_station_name, @start_station_id, @vend_station_name, @vend_station_id, @vstart_lat, @vstart_lng, @vend_lat, @vend_lng, @vmember_casual)
SET
	ride_id = NULLIF(@vride_id,''),
    rideable_type = NULLIF(@vrideable_type,''),
    started_at = NULLIF(@vstarted_at,''),
    ended_at = NULLIF(@vended_at,''),
    start_station_name = NULLIF(@vstart_station_name,''),
    start_station_id = NULLIF(@vstart_station_id,''),
    end_station_name = NULLIF(@vend_station_name,''),
    end_station_id = NULLIF(@vend_station_id,''),
    start_lat = NULLIF(@vstart_lat,''),
    start_lng = NULLIF(@vstart_lng,''),
    end_lat = NULLIF(@vend_lat,''),
    end_lng = NULLIF(@vend_lng,''),
    member_casual = NULLIF(@vmember_casual,'');

CREATE TABLE all_data AS
SELECT *
FROM 202106_divvy_tripdata
UNION
SELECT *
FROM 202107_divvy_tripdata
UNION
SELECT *
FROM 202108_divvy_tripdata
UNION
SELECT *
FROM 202109_divvy_tripdata
UNION
SELECT *
FROM 202110_divvy_tripdata
UNION
SELECT *
FROM 202111_divvy_tripdata
UNION
SELECT *
FROM 202112_divvy_tripdata
UNION
SELECT *
FROM 202201_divvy_tripdata
UNION
SELECT *
FROM 202202_divvy_tripdata
UNION
SELECT *
FROM 202203_divvy_tripdata
UNION
SELECT *
FROM 202204_divvy_tripdata
UNION
SELECT *
FROM 202205_divvy_tripdata;

202106_divvy_tripdata