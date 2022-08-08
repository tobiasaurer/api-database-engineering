CREATE DATABASE gans;
USE gans;

-- CITIES
CREATE TABLE cities( 
	city_id INT,
    city NVARCHAR(200),
	city_ascii VARCHAR(200),
	lat FLOAT,
	lng FLOAT,
	country NVARCHAR(200),
	iso2 NVARCHAR(200),
	iso3 NVARCHAR(200),
	admin_name NVARCHAR(200),
	capital VARCHAR(200),
	population INT
);


-- FLIGHT_INFO
CREATE TABLE flight_info(
 city_id INT,
 city_name NVARCHAR(200),
 flight_id VARCHAR(200),
 origin_icao VARCHAR(200),
 origin_iata VARCHAR(200),
 origin_airport NVARCHAR(200),
 scheduled_time_local VARCHAR(200),
 scheduled_time_utc VARCHAR(200),
 airline NVARCHAR(200),
 arrival_airport_name NVARCHAR(200)
 );


-- WEATHER_INFO
DROP TABLE weather_info;
CREATE TABLE weather_info(
 city_id INT,
 city_ascii VARCHAR(200),
 country VARCHAR(200),
 timestamp VARCHAR(200),
 date_and_time VARCHAR(200),
 avg_visibility_m INT,
 precipitation_probability FLOAT,
 temp FLOAT,
 felt_temp FLOAT,
 min_temp FLOAT,
 max_temp FLOAT,
 pressure INT,
 pressure_sea_lvl INT,
 pressure_ground_lvl INT,
 humidity_perc INT,
 cloudiness_perc INT,
 wind_speed_m_per_sec FLOAT,
 wind_direction_degrees INT,
 wind_gust_m_per_sec FLOAT,
 night_or_day VARCHAR(15),
 outlook_id VARCHAR(15),
 outlook_short VARCHAR(10),
 outlook_long VARCHAR(50),
 rain_vol_last_3_hrs VARCHAR(200)
 );