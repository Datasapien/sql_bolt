-- https://sqlbolt.com/lesson/inserting_rows

-- Database schema describes structure of each table and datatypes each column can contain

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

-- Add the studio's new production, Toy Story 4 to the list of movies (you can use any director)
INSERT INTO movies
(Title, Director, Year, Length_minutes)
VALUES ('Toy Story 4', 'Brad Bird', 2009, 80);

-- Toy Story 4 has a rating of 8.7, and made 340 million domestically and 270 million internationally. Add the record to the BoxOffice table.
INSERT INTO Boxoffice
(Movie_id, Rating, Domestic_sales, International_sales)
VALUES (15, 8.7, 340000000, 270000000);