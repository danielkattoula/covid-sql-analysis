# COVID-19 Vaccination & Outcomes Analysis

## Overview
SQL database analyzing COVID-19 vaccination rates and health outcomes across 200+ countries.

## Data
- Source: Our World in Data COVID-19 Dataset
- Records: 625,000+ observations
- Period: 2020-2024
- Tables: vaccinations, covid-data

## Key Findings

### Global Vaccination Coverage
- Analyzed vaccination data across 235 countries and territories through August 2024
- Global total: 47.98 billion vaccine doses administered worldwide
- India led in absolute numbers with 999.5 million people vaccinated, followed by Japan (999.8 million) and Morocco (999.4 million)

### Vaccination Rates by Population
- 9 countries achieved >80% population vaccination coverage
- United Arab Emirates achieved highest rate at 105.83% (includes boosters counting as additional vaccinations)
- Portugal (95.62%), Cuba (89.05%), and Tuvalu (86.13%) achieved strong population-wide coverage
- Small island nations showed particularly high vaccination uptake rates

### Case Fatality Analysis
- Case fatality rates among countries with >100,000 cases ranged from 2.7% to 4.88%
- Peru showed highest CFR at 4.88%, followed by Egypt (4.81%) and Mexico (4.39%)
- Lower-income countries generally showed higher CFRs, likely reflecting healthcare system capacity constraints
- Average CFR among high-case countries: approximately 3.5%

### Data Quality
- 41.34% of vaccination records contained complete people_vaccinated data
- 196,246 total vaccination records analyzed across all countries and time periods
- Missing data primarily concentrated in early pandemic periods and lower-resource countries

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
