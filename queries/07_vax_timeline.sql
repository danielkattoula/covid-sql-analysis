SELECT 
    location,
    date,
    people_vaccinated,
    RANK() OVER (PARTITION BY location ORDER BY people_vaccinated DESC) as vax_rank
FROM vaccinations
WHERE people_vaccinated IS NOT NULL
    AND location IN ('United States', 'United Kingdom', 'Germany', 'France', 'Canada')
ORDER BY location, vax_rank
LIMIT 50;