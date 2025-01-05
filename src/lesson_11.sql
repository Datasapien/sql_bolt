-- https://sqlbolt.com/lesson/select_queries_with_aggregates_pt_2

-- Employees
role,name,building,years_employed
Engineer,Becky A.,1e,4
Engineer,Dan B.,1e,2
Engineer,Sharon F.,1e,6
Engineer,Dan M.,1e,4
Engineer,Malcom S.,1e,1
Artist,Tylar S.,2w,2
Artist,Sherman D.,2w,8
Artist,Jakob J.,2w,6
Artist,Lillia A.,2w,7
Artist,Brandon J.,2w,7
Manager,Scott K.,1e,9
Manager,Shirlee M.,1e,3
Manager,Daria O.,2w,6

-- Find the number of Artists in the studio (without a HAVING clause)
SELECT Role, COUNT(Role) 
FROM employees
WHERE Role IS "Artist";

-- Find the number of Employees of each role in the studio
SELECT Role, COUNT(Role) 
FROM employees
GROUP BY Role;

-- Find the total number of years employed by all Engineers
SELECT Role, SUM(Years_employed) AS Total_years
FROM employees
WHERE Role IS "Engineer";
