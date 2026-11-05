-- NBA Performance Analysis
-- Team-Level Statistics
-- Source: nba.games (2004–2020)

-- Calculate average home points, home team three-point accuracy,
-- and total home wins for each team and season.

SELECT
team_home,
season,
AVG(pts_home) AS avg_home_pts,
AVG(pct_3p_home) AS avg_3pt_percentage_home,
SUM(home_team_win) AS total_home_wins
FROM
nba.games
GROUP BY
team_home,
season
ORDER BY
team_home,
season ASC

-- Calculate average away points, away team three-point accuracy,
-- and total away wins for each team and season.
-- A home_team_win value of 0 indicates an away win.

SELECT
team_away,
season,
AVG(pts_away) AS avg_away_pts,
AVG(pct_3p_away) AS avg_3pt_percentage_away,
SUM(1 - home_team_win) AS total_away_wins
FROM
nba.games
GROUP BY
team_away,
season
ORDER BY
team_away,
season ASC