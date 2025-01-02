-- https://sqlbolt.com/lesson/filtering_sorting_query_results

-- Movies
id,title,director,year,length_minutes
1,Toy Story,John Lasseter,1995,81
2,A Bugs Life,John Lasseter,1998,95
3,Toy Story 2,John Lasseter,1999,93
4,Monsters, Inc.,Pete Docter,2001,92
5,Finding Nemo,Andrew Stanton,2003,107
6,The Incredibles,Brad Bird,2004,116
7,Cars,John Lasseter,2006,117
8,Ratatouille,Brad Bird,2007,115
9,WALL-E,Andrew Stanton,2008,104
10,Up,Pete Docter,2009,101
11,Toy Story 3,Lee Unkrich,2010,103
12,Cars 2,John Lasseter,2011,120
13,Brave,Brenda Chapman,2012,102
14,Monsters University,Dan Scanlon,2013,110

-- List all directors of Pixar movies (alphabetically), without duplicates
SELECT DISTINCT Director FROM movies ORDER BY Director;

-- List the last four Pixar movies released (ordered from most recent to least)
SELECT Title, Year 
FROM movies
ORDER BY Year Desc
Limit 4;

-- List the first five Pixar movies sorted alphabetically
SELECT Title FROM movies
ORDER BY Title Asc
LIMIT 5;

-- List the next five Pixar movies sorted alphabetically
SELECT Title FROM movies
ORDER BY Title Asc
LIMIT 5
OFFSET 5;
