\encoding UTF-8

\o ./results/query_result_4f.txt 

WITH color_in_theme(theme_id, theme_name, color_name, quantity) AS
    (
        SELECT
            theme_id,
            themes.name as theme_name,
            colors.name as color_name,
            sum(quantity) as quantity
        FROM
            inventory_parts,
            inventories,
            sets,
            themes,
            colors

        WHERE
            inventory_id = inventories.id 
            and inventories.set_num = sets.set_num
            and theme_id = themes.id 
            and colors.id = color_id

        GROUP BY
            theme_id,
            theme_name,
            color_name
        ORDER BY theme_id ASC
    ),
    theme_max_quantity(theme_id, theme_name, max_quantity) AS
    (
        SELECT
            theme_id, 
            theme_name,
            max(quantity) as max_quantity
        FROM
            color_in_theme
        GROUP BY 
            theme_id,
            theme_name
    )

SELECT 
    color_in_theme.theme_name as theme_name,
    color_name
FROM
    color_in_theme,
    theme_max_quantity
WHERE
    quantity = max_quantity 
    and color_in_theme.theme_id = theme_max_quantity.theme_id
