\encoding UTF-8


-- 4.a
\o ./results/query_result_4a.txt

SELECT
    sets.name as set_name,
    themes.name as theme_name

FROM 
    sets,
    themes
WHERE
    year = 2017 and theme_id = id;

-- --4.b
-- \o ./results/query_result_4b.txt
--
-- SELECT
--     year,
--     count(year) as num_of_sets
-- FROM 
--     sets
-- WHERE 
--     year >= 1950 and year <= 2017
-- GROUP BY year
-- ORDER BY num_of_sets DESC;

