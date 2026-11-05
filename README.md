# nba-performance-sql-analysis
SQL analysis of NBA game data (2004–2020), exploring scoring trends, home-court advantage, and three-point shooting accuracy.

## Project Overview

This project explores NBA game data from 2004-2020 using SQL to investigate trends in team performance, scoring, home-court advantage, and three-point shooting accuracy. 

Objective: Through exploratory data analysis and SQL aggregation functions, examine how NBA performance metrics vary across seasons and teams, focusing on the relationship between three-point shooting efficiency and winning records. Focus on four key questions:

1. How has average NBA scoring changed across seasons?
2. How has home-court advantage, measured through home-team win percentage, changed over time?
3. How does three-point shooting accuracy relate to team performance?
4. What differences emerge between teams with higher and lower three-point shooting percentages?

Context: I completed this project as part of the Global Career Accelerator's Coding for Data program.

## Tools & Technical Skills

* SQL Aggregation: COUNT(), AVG(), SUM()
* Data Filtering: WHERE, HAVING
* Grouping and Sorting: GROUP BY, ORDER BY
* Analytical Skills: Trend analysis, comparative analysis

## Analysis

### 1. NBA Scoring Trends

Analyzed average points scored across NBA seasons to investigate changes in offensive performance over time.

Used SQL aggregation and season-level grouping to summarize scoring trends and compare results across seasons.

### 2. Home-Court Advantage

Calculated home-team win percentages across seasons to investigate whether playing at home was associated with a competitive advantage. 

Compared season-level results to identify potential changes in home-court advantage over time. 

### 3. Three-Point Shooting Efficiency

Examined the relationship between team three-point shooting accuracy and winning records. 

Compared team-season performance using three-point shooting thresholds:

* High accuracy: >= 37% three-point shooting
* Low accuracy: <= 34% three-point shooting

Used SQL filtering and aggregation to examine teams meeting each threshold and their win-loss records.

### 4. Team Performance Comparison

Compared teams with higher and lower three-point shooting accuracy to investigate whether more accurate shooting was associated with stronger overall team performance.

Used grouped statistics and conditional filtering to identify teams with losing records within each shooting category. 

## Broad Analytical Insights

Season-level aggregation allows scoring trends and home-court win percentages to be compared over time.

Three-point shooting accuracy provides one useful metric for evaluating team performance.

Shooting efficiency alone does not establish causation or fully explain team success. Other factors, including defense, turnovers, and rebounding, may also contribute.

## Limitations

This project uses historical NBA game data from 2004–2020 and does not reflect current NBA performance.

The dataset was accessed through a SQL platform provided by the Global Career Accelerator and is not included in this repository.

The analysis identifies associations rather than causal relationships.

**Future Improvements**

Potential improvements to this project going forward are:

* Visualizing scoring trends and home-court win percentages across seasons.

* Incorporating additional performance metrics such as rebounds, assists, and turnovers.

* Using regression analysis to investigate the relationship between shooting efficiency and winning percentage.