-- NBA Performance Analysis
-- Three-Point Shooting Efficiency and Team Success
-- Source: nba.games (2004–2020)

-- Calculate home team win rates and three-point accuracy percentage at home for
-- each team and season.

SELECT
team_home,
season,
AVG(home_team_win) AS home_team_win_rate,
AVG(pct_3p_home) AS avg_3pt_percentage_home
FROM
nba.games
GROUP BY
team_home,
season
ORDER BY
team_home,
season ASC

-- Focus on the 2018–2020 seasons.

SELECT
team_home,
season,
AVG(home_team_win) AS home_team_win_rate,
AVG(pct_3p_home) AS avg_3pt_percentage_home
FROM
nba.games
WHERE
season >= '2018'
GROUP BY
team_home,
season
ORDER BY
team_home,
season ASC

-- Identify team-season records with high three-point shooting accuracy
-- (at least 37%).

SELECT
team_home,
season,
AVG(home_team_win) AS home_team_win_rate,
AVG(pct_3p_home) AS avg_3pt_percentage_home
FROM
nba.games
WHERE
season >= '2018'
GROUP BY
team_home,
season
HAVING
AVG(pct_3p_home) >= 0.37
ORDER BY
team_home,
season ASC

-- Identify high-three-point-accuracy team-season records
-- with losing home records (win rate < 0.5).

SELECT
team_home,
season,
AVG(home_team_win) AS home_team_win_rate,
AVG(pct_3p_home) AS avg_3pt_percentage_home
FROM
nba.games
WHERE
season >= '2018'
GROUP BY
team_home,
season
HAVING
AVG(pct_3p_home) >= 0.37
AND AVG(home_team_win) < 0.5
ORDER BY
team_home,
season ASC

-- Identify low-three-point-accuracy (<= 34%) team-season records with losing 
-- home records.

SELECT
team_home,
season,
AVG(home_team_win) AS home_team_win_rate,
AVG(pct_3p_home) AS avg_3pt_percentage_home
FROM
nba.games
WHERE
season >= '2018'
GROUP BY
team_home,
season
HAVING
AVG(pct_3p_home) <= 0.34
AND AVG(home_team_win) < 0.5
ORDER BY 
team_home,
season ASC
