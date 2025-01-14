-- https://sqlbolt.com/lesson/select_queries_with_outer_joins

-- Buildings
building_name,capacity
1e,24
1w,32
2e,16
2w,20


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


-- Find the list of all buildings that have employees
SELECT DISTINCT Building 
FROM employees
JOIN Buildings ON Buildings.Building_name = Employees.Building;

-- Find the list of all buildings and their capacity
SELECT * FROM Buildings;

-- List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT DISTINCT Role, Building_name FROM Buildings
LEFT JOIN Employees ON Buildings.Building_name = Employees.Building;