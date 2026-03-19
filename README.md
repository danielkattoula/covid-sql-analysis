# COVID-19 Vaccination & Outcomes Analysis

## Overview
Does vaccination coverage correlate with better COVID-19 outcomes across countries? This project uses SQL to analyze global vaccination rates and case fatality rates from 2020–2024.

## Data Source & Size
- **Source:** Our World in Data COVID-19 Dataset
- **Records:** 625,000+ observations
- **Period:** 2020–2024
- **Scope:** 235 countries and territories
- **Tables:** `vaccinations`, `covid-data`

## Key Findings
- 9 countries achieved >80% population vaccination coverage; UAE led at 105.83% (includes boosters)
- Case fatality rates among high-case countries ranged from 2.7% to 4.88%; Peru, Egypt, and Mexico showed the highest rates
- Lower-income countries generally had higher CFRs, reflecting healthcare system constraints
- 41.3% of vaccination records contained complete people_vaccinated data; missingness was concentrated in early pandemic periods and lower-resource countries

## Tools & Skills Demonstrated
- **Language:** SQL (SQLite 3.x), DB Browser for SQLite
- **Techniques:** Multi-table JOINs, CTEs, window functions (RANK, PARTITION BY), aggregate functions, subqueries, date functions, population-adjusted calculations
- **Queries:** 8 modular `.sql` files covering vaccination summaries, country rankings, trend analysis, and fatality rates
