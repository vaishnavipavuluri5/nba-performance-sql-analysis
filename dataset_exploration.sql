-- NBA Performance Analysis
-- Dataset Exploration
-- Source: nba.games (2004–2020)

-- Count the total number of games and identify the season range.

SELECT
COUNT(*) AS total_games,
MIN(season) AS first_season,
MAX(season) AS last_season
FROM
nba.games

-- Return the average score from the home team, away team, and
-- the win rate of the home team.

SELECT
AVG(pts_home) AS home_team_average_score,
AVG(pts_away) AS away_team_average_score,
AVG(home_team_win) AS home_team_win_proportion
FROM
nba.games

-- Since the home team win rate is about 59%, itis more likely that the result
-- of a random NBA game is a home team winning than an away team winning.



