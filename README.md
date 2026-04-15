# IPL_Data_analysis_SQL
A SQL-based analysis of Indian Premier League (IPL) match data covering 16 seasons (2008–2023), sourced from Kaggle. The project explores team performance, toss impact, venue stats, and player awards using structured queries on a single dataset.

# 📁 Files
File	                        Description
Cricket_data.csv	            Raw match dataset from Kaggle
SQL_IPL_PROJECT.sql  	        All SQL queries — setup + analysis

# 📦 About the Dataset
•	Source: Kaggle

•	Records: ~1,002 matches

•	Seasons: 2008 – 2023

# Key Columns

•	season — IPL year

•	home_team / away_team — Teams playing

•	toss_won / decision — Toss result and choice (Bat/Bowl)

•	first_inning_score / second_inning_score — Team scores

•	winner — Match winner

•	venue_name — Stadium and city

•	pom — Player of the Match

•	home_captain / away_captain — Team captains

# 🛠️ Setup
sql

CREATE DATABASE first_project;

USE first_project;



-- Fix date format after CSV import

SET sql_safe_updates = 0;

UPDATE cricket_data SET end_date = STR_TO_DATE(end_date, '%d-%m-%Y');

ALTER TABLE cricket_data MODIFY end_date DATE;

# 📊 Analysis Covered

•	✅ Total matches played across all seasons

•	✅ Team with the most wins & top 5 winning teams

•	✅ How often the toss winner also won the match

•	✅ Batting vs Bowling toss decision trends

•	✅ Highest & lowest 1st innings scores

•	✅ Biggest successful run chase

•	✅ Most Player of the Match awards (individual & top 5)

•	✅ Most matches hosted by venue

•	✅ Matches won by chasing vs defending

•	✅ Team with the most toss wins

# 💡 Key Insights

•	Teams bowl first more often after winning the toss in modern IPL seasons

•	A small group of players dominate the Player of the Match awards

•	Iconic venues like Wankhede and Eden Gardens host the most matches

•	Toss advantage doesn't always translate into a match win

# 🏏 IPL Match Conclusions

# 🏆 Team Performance

•	A few teams like MI (Mumbai Indians) and CSK (Chennai Super Kings) consistently dominate wins across seasons

•	New franchises like GT (Gujarat Titans) showed strong performance in recent seasons

# 🎲 Toss Impact

•	Winning the toss does not guarantee winning the match

•	Most captains prefer to bowl first after winning the toss, especially in night matches — likely due to dew factor

# 🏟️ Venues

•	Wankhede Stadium (Mumbai) and Eden Gardens (Kolkata) are the most frequently used grounds

•	Home advantage plays a role — teams tend to perform better on familiar pitches

# 🏅 Player of the Match

•	A small set of star players win the majority of awards, showing individual brilliance is concentrated

•	All-rounders tend to dominate POM awards over pure batters or bowlers

# 🎯 Batting vs Chasing

•	Both defending and chasing are competitive — no extreme bias, but chasing has become more popular in modern IPL due to better powerplay strategies

•	Highest scores in 1st innings are often very high (200+), yet teams successfully chase them

# 📅 Overall

•	IPL has grown massively from 2008 to 2023 in terms of match quality, scores, and competition

•	The tournament remains highly unpredictable — making it one of the most exciting T20 leagues in the world.



