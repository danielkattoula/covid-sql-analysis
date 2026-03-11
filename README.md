# COVID-19 Vaccination & Outcomes Analysis

## Overview
SQL database analyzing COVID-19 vaccination rates and health outcomes across 200+ countries.

## Data
- Source: Our World in Data COVID-19 Dataset
- Records: 625,000+ observations
- Period: 2020-2024
- Tables: vaccinations, covid-data

## Key Findings
- Analyzed vaccination rollout across 200+ countries
- Identified correlation between vaccination rates and case trends
- Top vaccinated countries achieve >70% population coverage

## SQL Skills Demonstrated
- Multi-table JOINs
- Aggregate functions (COUNT, SUM, MAX, AVG)
- Window functions (RANK, PARTITION BY)
- CTEs (Common Table Expressions)
- Date functions (strftime)
- Subqueries
- Complex filtering with WHERE and HAVING
- Calculated fields and percentages

## Queries
1. `01_vaccination_summary.sql` - Overall vaccination statistics
2. `02_top_countries.sql` - Top vaccinated countries ranking
3. `03_vax_vs_cases.sql` - Vaccination vs cases analysis (JOIN)
4. `04_monthly_trends.sql` - Monthly vaccination trends
5. `05_vax_rate.sql` - Vaccination rate by population
6. `06_cfr_analysis.sql` - Case fatality rate analysis
7. `07_vax_timeline.sql` - Vaccination timeline (window functions)
8. `08_high_vax_cte.sql` - High vaccination countries (CTE)

## Tools
- SQLite 3.x
- DB Browser for SQLite

## Database Schema
**vaccinations table:**
- location, iso_code, date, total_vaccinations, people_vaccinated

**covid-data table:**
- iso_code, continent, location, date, total_cases, total_deaths, population