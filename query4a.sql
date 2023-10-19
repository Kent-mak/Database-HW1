\encoding UTF-8


-- 4a
\o ./results/query_result_4a.txt

SELECT
    sets.name as set_name,
    themes.name as theme_name

FROM 
    sets,
    themes
WHERE
    year = 2017 and theme_id = id;
