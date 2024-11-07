# U.S Household Income Data Cleaning

Select *
FROM US_Project.us_household_income;

Select *
FROM US_Project.us_household_income_statistics;

Select count(id)
FROM US_Project.us_household_income;

Select count(id)
FROM US_Project.us_household_income_statistics;

Select id, count(id)
FROM US_Project.us_household_income
GROUP BY id
HAVING COUNT(ID)> 1;

SELECT *
FROM(
SELECT row_id,
id,
ROW_NUMBER () OVER(Partition BY id ORDER BY id) row_num
FROM US_Project.us_household_income
)duplicates
Where ROW_num >1
;

Delete From US_Project.us_household_income
Where row_id IN (
	SELECT Row_id
	FROM(
		SELECT row_id,
		id,
	ROW_NUMBER () OVER(Partition BY id ORDER BY id) row_num
	FROM US_Project.us_household_income
	)duplicates
	Where ROW_num >1)
;

Select id, count(id)
FROM US_Project.us_household_income_statistics
GROUP BY id
HAVING COUNT(ID)> 1;


SELECT Distinct State_Name
From US_Project.us_household_income
Order BY 1
;


UPDATE US_Project.us_household_income
SET State_Name = 'Georgia'
Where State_Name = 'georia'
;


UPDATE US_Project.us_household_income
SET State_Name = 'Alabama'
Where State_Name = 'alabama'
;


SELECT Distinct State_ab
From US_Project.us_household_income
Order BY 1
;

SELECT *
From US_Project.us_household_income
Where Place = ''
Order BY 1
;

SELECT *
From US_Project.us_household_income
Where County = 'Autauga County'
Order BY 1
;

Update US_Project.us_household_income
Set Place = 'Autaugaville'
Where County = 'Autauga County'
AND City = 'Vinemont'
;


SELECT Type, Count(Type)
From US_Project.us_household_income
Group BY Type
;

Update US_Project.us_household_income
Set Type = 'Borough'
Where Type = 'Boroughs'
;

Select ALand, AWater
FROM US_Project.us_household_income
Where (AWater = 0 OR AWater = '' OR AWater IS NULL)
AND (ALand = 0 OR ALand = '' OR ALand IS NULL)
;
