# api-database-engineering
This project is a part of the [DataScience Bootcamp](https://www.wbscodingschool.com/data-science-bootcamp/) at [WBS Coding School](https://www.wbscodingschool.com/).   Other datascience projects can be found at my [main GitHub repo](https://github.com/tobiasaurer).

#### Project Status: Finished

## Project Intro/Objective
The purpose of this project is to learn dealing with API's and JSON files.   
Data had to be requested, structured, and visualized. 
First a database is built in mySQL Workbench based on the data.  
Then the scripts are transferred to the cloud ([Amazon Web Services](https://aws.amazon.com/de/)) and scheduled to be executed every 24 hours. 
Iteratively, an SQL database of weather and flight-information is built in the cloud.

### Methods Used
* API-Calls 
* Data Engineering
* Data Visualization
* Cloud Computing
* Cloud Database

### Technologies
* Python
  * pandas, jupyter, requests (api)
* Matplotlib
* Amazon Webservices
* SQL

## Project Description
The data gathered is freely available:
* Weather Data -> [Open Weather](https://openweathermap.org/).  
* Airport Data -> [Rapid API](https://rapidapi.com/aedbx-aedbx/api/aerodatabox/)
* City Data    -> [datahub.io](https://datahub.io/core/world-cities)
  
Main goals of the project:  
* Access weather and airport data via API-requests
* Structure the incoming data to make it usable 
* Create some basic visualisations
* Transfer the whole project to the cloud and schedule it for regular execution.

## Getting Started

1. Clone this repo (for help see this [tutorial](https://help.github.com/articles/cloning-a-repository/)).
2. Make sure to have the following libraries in your environment:
    - pandas
    - requests
    - matplotlib
    - sqlalchemy
3. Create an account at [Open Weather](https://openweathermap.org/) and insert your API-key in [api_keys.py](https://github.com/tobiasaurer/api-database-engineering/blob/main/api_keys.py)
4. Create an account at [Rapid API](https://rapidapi.com/aedbx-aedbx/api/aerodatabox/) and insert your API-key in [api_keys.py](https://github.com/tobiasaurer/api-database-engineering/blob/main/api_keys.py)
5. Create a database in your SQL program of choice (I use MySQL-Workbench) by executing [create_db.sql](https://github.com/tobiasaurer/api-database-engineering/blob/main/create_db.sql)
6. Connect to your database by filling in the relevant information in the "Update SQL database" section of the [main notebook](https://github.com/tobiasaurer/api-database-engineering/blob/main/api_requests_weather_flights.ipynb) and executing the cells
7. Visualisations are saved [here](https://github.com/tobiasaurer/api-database-engineering/tree/main/visualisations)


## Transfer to Cloud 
1. Create an account at [Amazon Web Services](https://aws.amazon.com/de/) 
2. Create a new SQL database in your AWS dashboard
3. Copy the contents of [aws_lambda_function.py](https://github.com/tobiasaurer/api-database-engineering/blob/main/aws_lambda_function.py) into a lambda function, and replace the placeholders in the SQL connection and the API-Calls with the credentials of your new database 
4. Schedule a trigger using Amazon Event Bridge to schedule regular execution of the lambda function. 


## Featured Notebooks
* [API-Call and Data-Engineering](https://github.com/tobiasaurer/api-database-engineering/blob/main/api_requests_weather_flights.ipynb)
* [Visualisations](https://github.com/tobiasaurer/api-database-engineering/blob/main/visualisations.ipynb)

## Contact
* https://github.com/tobiasaurer
* tobias@aurer.de