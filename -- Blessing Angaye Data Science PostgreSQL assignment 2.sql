-- Blessing Angaye Data Science PostgreSQL Assignment 2
--Q3 The country with the highest and lowest appearance in the last five years

     WITH 
	all_world_cup AS (SELECT 
	'wc 2002' AS worlcupyear,
	team,
	points, 
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2002
UNION ALL 
SELECT 
	'wc 2006' AS worlcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2006
UNION ALL
SELECT 
	'wc 2010' AS worlcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2010
UNION ALL
SELECT 
	'wc 2014' AS worlcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2014
UNION ALL
SELECT 
	'wc 2018' AS worlcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2018
	)
SELECT
	MAX (team) AS highest_appearance, 
	MIN (team) AS lowest_appearance
FROM
	all_world_cup


    -- Q4. The country with the higest and lowest games played?

    WITH 
	all_world_cup AS (SELECT 
	'wc 2002' AS worlcupyear,
	team,
	points, 
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2002
UNION ALL 
SELECT 
	'wc 2006' AS worlcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2006
UNION ALL
SELECT 
	'wc 2010' AS worlcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2010
UNION ALL
SELECT 
	'wc 2014' AS worlcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2014
UNION ALL
SELECT 
	'wc 2018' AS worlcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2018
	)
SELECT
	team,
	SUM(games_played) AS total_games_played,
	MAX(games_played) AS highest_gp

FROM
	all_world_cup
GROUP BY
	team
ORDER BY
	MAX(games_played) DESC LIMIT 1
;


WITH 
	all_world_cup AS (SELECT 
	'wc 2002' AS worlcupyear,
	team,
	points, 
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2002
UNION ALL 
SELECT 
	'wc 2006' AS worlcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2006
UNION ALL
SELECT 
	'wc 2010' AS worlcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2010
UNION ALL
SELECT 
	'wc 2014' AS worlcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2014
UNION ALL
SELECT 
	'wc 2018' AS worlcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against
FROM 
	fifa_2018
	)
SELECT
	team,
	SUM(games_played) AS total_games_played,
	MIN(games_played) AS lowest_gp

FROM
	all_world_cup
GROUP BY
	team
ORDER BY
	MIN(games_played) ASC LIMIT 1
;


-- Q5. The country with the highest and lowest games won

WITH 
	all_world_cup AS (SELECT 
	'wc 2002' AS worlcupyear,
	team,
	points, 
	games_played,
	win,
	loss,
	goals_for,
	goals_against,
	goal_difference	
FROM 
	fifa_2002
UNION ALL 
SELECT 
	'wc 2006' AS worlcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against,
	goal_difference	
FROM 
	fifa_2006
UNION ALL
SELECT 
	'wc 2010' AS worlcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against,
	goal_difference	
FROM 
	fifa_2010
UNION ALL
SELECT 
	'wc 2014' AS worlcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against,
	goal_difference	
FROM 
	fifa_2014
UNION ALL
SELECT 
	'wc 2018' AS worlcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goals_for,
	goals_against,
	goal_difference				 
FROM 
	fifa_2018
	)
SELECT
	team,
	MAX(win) AS highest_gw

FROM
	all_world_cup
GROUP BY
	team
ORDER BY
	MAX(win) DESC LIMIT 1
;
