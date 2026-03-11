WITH high_vax AS (
    SELECT 
        v.location,
        MAX(v.people_vaccinated) as vaccinated,
        MAX(c.population) as population
    FROM vaccinations v
    JOIN "covid-data" c ON v.location = c.location
    WHERE c.population > 1000000
    GROUP BY v.location
    HAVING (100.0 * vaccinated / population) > 50
)
SELECT 
    location,
    vaccinated,
    population,
    ROUND(100.0 * vaccinated / population, 2) as vax_rate
FROM high_vax
ORDER BY vax_rate DESC;