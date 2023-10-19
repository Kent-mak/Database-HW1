\encoding UTF-8

COPY colors(id, name, rgb, is_trans)
FROM 'C:\Users\DELL\OneDrive\Desktop\NYCU\Database\HW1\csvs\colors.csv'
DELIMITER ','
CSV HEADER;

COPY sets(set_num,name,year,theme_id,num_parts)
FROM 'C:\Users\DELL\OneDrive\Desktop\NYCU\Database\HW1\csvs\sets.csv'
DELIMITER ','
CSV HEADER;

COPY themes(id,name,parent_id)
FROM 'C:\Users\DELL\OneDrive\Desktop\NYCU\Database\HW1\csvs\themes.csv'
DELIMITER ','
CSV HEADER;

COPY part_categories(id, name)
FROM 'C:\Users\DELL\OneDrive\Desktop\NYCU\Database\HW1\csvs\part_categories.csv'
DELIMITER ','
CSV HEADER;

COPY inventories(id, version, set_num)
FROM 'C:\Users\DELL\OneDrive\Desktop\NYCU\Database\HW1\csvs\inventories.csv'
DELIMITER ','
CSV HEADER;

COPY parts(part_num, name, part_cat_id)
FROM 'C:\Users\DELL\OneDrive\Desktop\NYCU\Database\HW1\csvs\parts.csv'
DELIMITER ','
CSV HEADER;

COPY inventory_parts(inventory_id, part_num, color_id, quantity, is_spare)
FROM 'C:\Users\DELL\OneDrive\Desktop\NYCU\Database\HW1\csvs\inventory_parts.csv'
DELIMITER ','
CSV HEADER;

COPY inventory_sets(inventory_id, set_num, quantity)
FROM 'C:\Users\DELL\OneDrive\Desktop\NYCU\Database\HW1\csvs\inventory_sets.csv'
DELIMITER ','
CSV HEADER;





