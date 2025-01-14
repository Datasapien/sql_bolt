-- https://sqlbolt.com/lesson/deleting_rows

DELETE FROM mytable
WHERE condition;

-- To avoid mistakes; write WHERE statement FIRST
-- Test your query with a SELECT first, to check you are going to be updated only the desired rows

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

-- This database is getting too big, lets remove all movies that were released before 2005. ✓
DELETE FROM Movies
WHERE Year < 2005;

-- Andrew Stanton has also left the studio, so please remove all movies directed by him.
DELETE FROM Movies
WHERE Director IS "Andrew Stanton";