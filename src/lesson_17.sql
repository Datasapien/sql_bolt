-- https://sqlbolt.com/lesson/altering_tables

-- Use ALTER TABLE to add/remove/modify columns and table constraints

-- Adding cols
ALTER TABLE mytable
ADD column DataType OptionalTableConstraint 
    DEFAULT default_value;

-- Removing cols
ALTER TABLE mytable
DROP column_to_be_deleted;

-- Renaming table
ALTER TABLE mytable
RENAME TO new_table_name;

-- Add a column named Aspect_ratio with a FLOAT data type to store the aspect-ratio each movie was released in.
ALTER TABLE Movies
ADD Aspect_ratio FLOAT;

-- Add another column named Language with a TEXT data type to store the language that the movie was released in. Ensure that the default for this language is English.
ALTER TABLE Movies
ADD Language TEXT
DEFAULT "English";