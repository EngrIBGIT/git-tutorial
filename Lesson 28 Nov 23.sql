-- AGGREGATE FUNCTIONS--

-- MAX; Used in passing the max function in a specific column

SELECT * FROM drivers_license;

SELECT MAX(age) FROM drivers_license;

SELECT MAX(age) AS highest_age_value 
FROM drivers_license;

--MIN; Usedin passing the min function in a specific column

SELECT MIN(age) FROM drivers_license;

SELECT * FROM income;

SELECT MIN(annual_income),
       MAX(annual_income
		   FROM income;
		   
SELECT MIN(annual_income) AS lowest_income,
       MAX(annual_income)  AS highest_income
		   FROM income;
		   
--SUM; Allows adding in a column
		   
SELECT SUM(height) FROM drivers_license;

SELECT SUM(height) AS "sum of height" 
		   FROM drivers_license;
		   
SELECT SUM(annual_income)	AS "total_income"
		   FROM income;
		   
-- AVG; Returns the average in a column
		   
SELECT AVG(annual_income) FROM income;
		   
-- min,max,sum, avg
		   
SELECT MIN(annual_income) AS "minimium income",
		   MAX(annual_income) AS "maximium income",
		   AVG(annual_income) AS average_income,
		   SUM(annual_income) AS total_income
			   FROM income;
		   
		   
SELECT * FROM person;
		   
--COUNT; returns number of elements 
		 --consisting in a table of group
		   
		   SELECT COUNT(id)FROM person;
		   
		   SELECT COUNT(ssn)FROM person;
		   
SELECT * FROM interview;
		   
SELECT COUNT(*) FROM interview;
		   
SELECT * FROM drivers_license;	
		   
SELECT COUNT (car_make) FROM drivers_license;
		   
SELECT COUNT (car_make), COUNT(gender) 
		   FROM drivers_license;
		   
--DISTINCT--Passes the distinctive value in a column
		   
SELECT COUNT(car_make)
FROM drivers_license;		   

SELECT DISTINCT (car_make)
FROM drivers_license;
		   
SELECT DISTINCT(hair_color)	
FROM drivers_license;	   

SELECT DISTINCT(gender)	
FROM drivers_license;
		   
--GROUP BY;-- help to create summary rows, help to group elements in a column into...
		   
SELECT * FROM drivers_license;
		   
SELECT COUNT(gender), MAX(age) FROM drivers_license	
		   
SELECT COUNT(gender) AS "number of persons",
		   gender AS sex FROM drivers_license
		   GROUP BY gender;
		   
		   
SELECT COUNT(hair_color) AS	"frequency",
		   hair_color AS colorofhair FROM drivers_license
		   GROUP BY hair_color;
		   
SELECT * FROM facebook_event_checkin;
		   
SELECT COUNT(*) FROM facebook_event_checkin;
		   
SELECT DISTINCT(event_name)
		   FROM facebook_event_checkin;
		   
SELECT* FROM interview;
		   
		   
		   
SELECT person_id, COUNT(person_id) AS "number of times I visited police station"
		   FROM interview GROUP BY person_id
		   ORDER BY "number of times I visited police station" DESC
		   
SELECT * FROM drivers_license;	
		   
SELECT gender, AVG(height)
FROM drivers_license
GROUP By gender;	
		   
-----	HAVING clause; --- used in combination with GROUP BY	   

SELECT * FROM drivers_license;		   

SELECT car_make, COUNT(car_make)
FROM drivers_license
GROUP BY car_make;	

SELECT car_make, COUNT(car_make) AS frequency
FROM drivers_license
GROUP BY car_make
ORDER By frequency DESC;
		   
SELECT car_make, COUNT(car_make) AS frequency
FROM drivers_license		   
GROUP BY car_make
HAVING COUNT(car_make) > 300		   
ORDER By frequency DESC;
		   
SELECT hair_color, COUNT(hair_color) AS frequency		   
FROM drivers_license		   
GROUP BY hair_color
HAVING COUNT(hair_color) < 1250
ORDER BY frequency ASC;	
		   
		   
--CASE; Conditions...Case Construct makes data wrangling easier...		   
		   