create database first_project;
use first_project;
select * from cricket_data limit 10;

set sql_safe_updates = 0;
update cricket_data
set end_date = str_to_date(end_date,  '%d-%m-%Y');

update cricket_data
set end_date = left(end_date, 10);

ALTER TABLE cricket_data
MODIFY end_date DATE;

-- Q1: Total matches played.
select count(*) as total_matches
from cricket_data;

--- Q2: Which team won the most matches? 
select winner, count(*) as wins
from cricket_data 
group by winner
order by wins desc 
limit 1;

--- Q3: Top 5 winning teams?
select winner, count(*) as wins
from cricket_data 
group by winner 
order by wins desc
limit 5;

--- Q4: How many times did the team that won the toss also win the match?
select count(*) as toss_and_match_win
from cricket_data 
where toss_won = winner;

--- Q5: analyze of batting vs bowling decision after winning the toss?
select decision , count(*) as total
from cricket_data
group by decision;

--- Q6: Highest score (1st inning)?
select MAX(first_inning_score) as highest_score
from cricket_data;

--- Q7: Lowest score (1st inning)?
select min(first_inning_score) as lowest_score
from cricket_data;

--- Q8: Hightest run chase (2nd inning)?
select max(second_inning_score) as highest_chase
from cricket_data;

--- Q9: Player of the Match?
select pom, count(*) as awards
from cricket_data
group by pom
order by awards desc
limit 1;

--- Q10: Top 5 player of the match?
select pom, count(*) as awards
from cricket_data
group by pom
order by awards desc
limit 5;

--- Q11: Home team vs Away team performance? 
select home_team, count(*) as home_matches
from cricket_data
group by home_team;
                         -- VS
select away_team, count(*) as away_matches
from cricket_data
group by away_team;						
				
                
---- Q12: Which venue hosts the most matches?
select venue_name, count(*) as matches 
from cricket_data
group by venue_name
order by matches desc
limit 5;


---- Q13; Matches where team won by chasing?
select count(*) as chasing_wins
from cricket_data
where second_inning_score > first_inning_score;           

---- Q14 Matches where team defended score?
select count(*) as defended_wins
from cricket_data 
where second_inning_score > first_inning_score;  


--- Q15: Which team won the most tosses?
select toss_won, count(*) as toss_wins
from cricket_data
group by toss_won
order by toss_wins desc
limit 1;
