-- https://sqlbolt.com/lesson/dropping_tables

-- Remove entire table and all related data completely (including table schema, which DELETE doesn't do)
DROP TABLE IF EXISTS mytable;

-- Throws error if table doesn't exist, hence IF EXISTS clause
-- If other tables depend on it (ie have FOREIGN KEYS pointing to it) may need to edit them first

-- We've sadly reached the end of our lessons, lets clean up by removing the Movies table
DROP TABLE Movies;

-- And drop the BoxOffice table as well
DROP TABLE Boxoffice;