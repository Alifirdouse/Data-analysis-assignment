create database sql_project; 

use sql_project;

select * from fifa ;

#1. How many players are there in the dataset?
select count(*) from fifa ;

#2. How many nationalities do these players belong to?
select distinct Nationality from fifa;

#3. Which nationality has the highest number of players, what are the top 3 nationalities by # of players?
SELECT Nationality, COUNT(*) AS Player_Count
FROM fifa
GROUP BY Nationality
ORDER BY Player_Count DESC
LIMIT 3;

#4.  What is the total wage given to all players?  What’s the average and  standard deviation?
select sum(Wage) as Total_wage , avg(Wage) as AVerage_wage, stddev(Wage) from fifa;

#5. Which player has the highest wage? Who has the lowest ?
select max(Wage) as Highest_wage, min(Wage) as lowest_wage   from fifa ;

SELECT Name, Max(Wage) AS Highest_wage
FROM Fifa
GROUP BY Name
ORDER BY Highest_wage DESC
LIMIT 1; 

SELECT Name, Min(Wage) AS lowest_wage
FROM Fifa
GROUP BY Name
ORDER BY Lowest_wage Asc
LIMIT 1; 


#6. The player having the best overall rating? Worst overall rating?
select  max(Overall) as Highest_Overall, min(Overall) as lowest_Overall   from fifa;

SELECT Name, Max(Overall) AS Highest_Overall
FROM Fifa
GROUP BY Name
ORDER BY Highest_Overall desc
LIMIT 1; 

SELECT Name, Min(Overall) AS lowest_Overall
FROM Fifa
GROUP BY Name
ORDER BY Lowest_Overall Asc
LIMIT 1; 


#7.  Club having the highest total of overall rating? Highest Average of overall rating?

SELECT Club, SUM(Overall) AS Total_Overall
FROM Fifa
GROUP BY Club
ORDER BY Total_Overall DESC
LIMIT 1;

#8. What  are the top 5 clubs based on the average rating of their players?
SELECT Club, AVG(Overall) AS Average_Overall
FROM Fifa
GROUP BY Club
ORDER BY Average_Overall DESC
LIMIT 5;

select * from fifa;

#1. What is the distribution of players whose preferred foot is left vs right?

select distinct Preferred_Foot from fifa; 
select Preferred_Foot, count(*) as cnt from fifa group by Preferred_Foot;


#2. Which jersey number is the luckiest?

SELECT Jersey_Number, AVG(Overall) AS Average_Overall
FROM Fifa
GROUP BY Jersey_Number
ORDER BY Average_Overall DESC
LIMIT 1;

#3. What is the frequency distribution of nationalities among players whose club name starts with M?

SELECT Nationality, COUNT(*) AS Player_Count
FROM Fifa
WHERE Club LIKE 'M%'
GROUP BY Nationality
ORDER BY Player_Count DESC;

#4. How many players have joined their respective clubs in the date range 20 May 2018 to 10 April 2019(both inclusive)?

SELECT COUNT(*) 
FROM Fifa 
WHERE joined BETWEEN '2018-05-20' AND '2019-04-10';

select * from Fifa;

#5. How many players have joined their respective clubs date wise?

SELECT joined, COUNT(*) AS player_count
FROM Fifa
GROUP BY joined
ORDER BY joined;

#6. How many players have joined their respective clubs yearly?

SELECT YEAR(joined) AS year, COUNT(*) AS player_count
FROM Fifa
GROUP BY YEAR(joined)
ORDER BY YEAR(joined);
