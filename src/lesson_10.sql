-- https://sqlbolt.com/lesson/select_queries_with_aggregates

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

-- Find the longest time that an employee has been at the studio
SELECT Max(Years_employed) FROM employees;

-- For each role, find the average number of years employed by employees in that role
SELECT Role, AVG(Years_employed) AS Ave_Length
FROM employees
GROUP BY Role;

-- Find the total number of employee years worked in each building
SELECT Building, SUM(Years_employed) AS Years_per_building
FROM employees
GROUP BY Building;