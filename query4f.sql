\encoding UTF-8

\o ./results/query_result_4f.txt 

WITH color_in_theme(theme_name, color_name, quantity) AS
    (
        SELECT 
            themes.name,
            colors.name,
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
            themes.name,
            colors.name
        ORDER BY themes.name ASC
    ),
    theme_max_quantity(theme_name, max_quantity) AS
    (
        SELECT 
            theme_name,
            max(quantity)
        FROM
            color_in_theme
        GROUP BY 
            theme_name
    )

SELECT
    theme_name,
    max(color_name) as color_name
FROM
    (
        SELECT 
            color_in_theme.theme_name AS theme_name,
            color_name
        FROM
            color_in_theme,
            theme_max_quantity
        WHERE
            quantity = max_quantity 
            and color_in_theme.theme_name = theme_max_quantity.theme_name
    )
GROUP BY theme_name;