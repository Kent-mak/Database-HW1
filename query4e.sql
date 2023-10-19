\encoding UTF-8

\o ./results/query_result_4e.txt 

WITH unique_parts(part_num, color_id) AS
    (
        SELECT DISTINCT
            part_num,
            color_id
        FROM 
            inventory_parts
    )


SELECT 
    name
FROM
    (
        SELECT 
            name,
            count(color_id) as count
        FROM
            colors,
            unique_parts
        WHERE 
            id = color_id 
        GROUP BY name
        ORDER BY count DESC
    )
LIMIT 10;