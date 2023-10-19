\encoding UTF-8


\o ./results/query_result_4c.txt

WITH sets_themes(theme_id, theme_count) AS
    (
        SELECT 
            theme_id,
            count(theme_id) AS count
        FROM 
            sets
        GROUP BY theme_id
    ) 

SELECT 
    name
FROM
    themes

WHERE
    id = (
        SELECT theme_id
        FROM sets_themes
        WHERE theme_count = (SELECT max(theme_count) FROM sets_themes)
    );