\encoding UTF-8

--4b
\o ./results/query_result_4b.txt

SELECT
    year,
    count(year) as num_of_sets
FROM 
    sets
WHERE 
    year >= 1950 and year <= 2017
GROUP BY year
ORDER BY num_of_sets DESC;
