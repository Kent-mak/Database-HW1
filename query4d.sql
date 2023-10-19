\encoding UTF-8


\o ./results/query_result_4d.txt

WITH avg_num_parts_of_theme(id, avg_num_parts) AS
    (
        SELECT 
            theme_id,
            avg(num_parts) as avg_num_parts
        FROM 
            sets
        GROUP BY
            theme_id
    )


SELECT 
    name, 
    avg_num_parts
FROM 
    themes,
    avg_num_parts_of_theme
WHERE
    themes.id = avg_num_parts_of_theme.id
ORDER BY avg_num_parts ASC;
