-- https://sqlbolt.com/lesson/creating_tables

CREATE TABLE IF NOT EXISTS mytable (
    column DataType TableConstraint DEFAULT default_value,
    another_column DataType TableConstraint DEFAULT default_value,
    …
);

-- Defined by 'table schema' - column names, data type allowed, optional constaints and optional defaults
-- common data types: VARCHAR, INT, BOOL, FLOAT, DOUBLE, DATE etc
-- common constraints: PRIMARY KEY, AUTOINCREMENT, UNIQUE, NOT NULL, CHECK(exp), FOREIGN KEY

CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    title TEXT,
    director TEXT,
    year INTEGER, 
    length_minutes INTEGER
);

-- Create a new table named Database with the following columns:
-- – Name A string (text) describing the name of the database
-- – Version A number (floating point) of the latest version of this database
-- – Download_count An integer count of the number of times this database was downloaded
-- This table has no constraints.
CREATE TABLE Database (
    Name TEXT,
    Version FLOAT,
    Download_count INTEGER
);