SELECT 
    v.location,
    v.date,
    v.people_vaccinated,
    c.total_cases,
    c.total_deaths
FROM vaccinations v
INNER JOIN "covid-data" c 
    ON v.location = c.location 
    AND v.date = c.date
WHERE v.people_vaccinated IS NOT NULL 
    AND c.total_cases IS NOT NULL
LIMIT 100;