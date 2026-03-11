SELECT 
    strftime('%Y-%m', date) as month,
    SUM(total_vaccinations) as monthly_vaccinations,
    COUNT(DISTINCT location) as countries_reporting
FROM vaccinations
WHERE total_vaccinations IS NOT NULL
GROUP BY month
ORDER BY month;