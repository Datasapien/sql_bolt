-- https://sqlbolt.com/lesson/updating_rows

UPDATE mytable
SET column = value_or_expr, 
    other_column = another_value_or_expr, 
    …
WHERE condition;

-- UPDATE can cause issues when mistakes are made (WHICH WILL OCCUR!)
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

-- Boxoffice
movie_id,rating,domestic_sales,international_sales
5,8.2,380843261,555900000
14,7.4,268492764,475066843
8,8,206445654,417277164
12,6.4,191452396,368400000
3,7.9,245852179,239163000
6,8,261441092,370001000
9,8.5,223808164,297503696
11,8.4,415004880,648167031
1,8.3,191796233,170162503
7,7.2,244082982,217900167
10,8.3,293004164,438338580
4,8.1,289916256,272900000
2,7.2,162798565,200600000
13,7.2,237283207,301700000

-- The director for A Bug's Life is incorrect, it was actually directed by John Lasseter
UPDATE movies
SET Director = "John Lasseter"
WHERE Title IS "A Bug's Life";

-- The year that Toy Story 2 was released is incorrect, it was actually released in 1999
UPDATE movies
SET Year = 1999
WHERE Title IS "Toy Story 2";

-- Both the title and director for Toy Story 8 is incorrect! The title should be "Toy Story 3" and it was directed by Lee Unkrich
UPDATE movies
SET Director = "Lee Unkrich",
    Title = "Toy Story 3"
WHERE Title IS "Toy Story 8";