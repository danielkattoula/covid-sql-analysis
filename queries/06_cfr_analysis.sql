SELECT 
    location,
    MAX(total_cases) as cases,
    MAX(total_deaths) as deaths,
    ROUND(100.0 * MAX(total_deaths) / MAX(total_cases), 2) as case_fatality_rate
FROM "covid-data"
WHERE total_cases > 100000
GROUP BY location
ORDER BY case_fatality_rate DESC
LIMIT 20;
