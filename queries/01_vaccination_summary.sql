SELECT 
    COUNT(DISTINCT location) as countries,
    MAX(date) as latest_date,
    SUM(total_vaccinations) as total_doses_worldwide
FROM vaccinations
WHERE total_vaccinations IS NOT NULL;