-- NBA Performance Analysis
-- Seasonal Trends
-- Source: nba.games (2004–2020)

-- Compare scoring and home-court advantage across seasons.

SELECT
season,
AVG(pts_home) AS home_team_average_score,
AVG(pts_away) AS away_team_average_score,
AVG(home_team_win) AS home_team_win_proportion
FROM
nba.games
GROUP BY season
ORDER BY season ASC

-- Over the years, both the home teams and away teams tend to average
-- higher scores as time goes on. Overtime, the home team win rate
-- decreases slightly.

-- Include average three-point shooting accuracy for both away and home teams.

SELECT
season,
AVG(pts_home) AS home_team_average_score,
AVG(pts_away) AS away_team_average_score,
AVG(home_team_win) AS home_team_win_proportion,
AVG(pct_3p_home) AS avg_3pt_rate_home,
AVG(pct_3p_away) AS avg_3pt_rate_away
FROM
nba.games
GROUP BY season
ORDER BY season ASC

-- The average 3-point shot rates for both away and home teams stay
-- almost the same overtime.

