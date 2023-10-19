\encoding UTF-8

--4c

\o ./results/query_result_4c.TEXT

WITH sets_themes(theme, theme_count) as
    (
        SELECT 
            theme_id,
            count(theme_id) as count
        FROM 
            sets
        WHERE
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
        WHERE theme_count = max(theme_count)
    );