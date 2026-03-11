SELECT 
    v.location,
    MAX(v.people_vaccinated) as vaccinated,
    MAX(c.population) as population,
    ROUND(100.0 * MAX(v.people_vaccinated) / MAX(c.population), 2) as vax_percentage
FROM vaccinations v
JOIN "covid-data" c ON v.location = c.location
WHERE c.population IS NOT NULL 
    AND v.people_vaccinated IS NOT NULL
GROUP BY v.location
HAVING vax_percentage > 0
ORDER BY vax_percentage DESC
LIMIT 30;