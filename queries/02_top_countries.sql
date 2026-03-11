SELECT 
    location,
    MAX(people_vaccinated) as total_vaccinated,
    MAX(date) as latest_date
FROM vaccinations
WHERE people_vaccinated IS NOT NULL
GROUP BY location
ORDER BY total_vaccinated DESC
LIMIT 20;