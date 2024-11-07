# Household Income Data Income Exploratory Data Analysis


Select *
From US_Project.us_household_income;

Select *
From US_Project.us_household_income_statistics;


Select state_name, Sum(ALand), Sum(AWater)
From US_Project.us_household_income
Group By State_name
Order by 2 DESC
Limit 10;

Select state_name, Sum(ALand), Sum(AWater)
From US_Project.us_household_income
Group By State_name
Order by 3 DESC
Limit 10;

Select *
From US_Project.us_household_income u
Join US_Project.us_household_income_statistics us
	ON u.id = us.id;

Select *
From US_Project.us_household_income u
INNER Join US_Project.us_household_income_statistics us
	ON u.id = us.id
Where MEAN <> 0;

Select u.state_name,County,Type,`Primary`,Mean,Median
From US_Project.us_household_income u
INNER Join US_Project.us_household_income_statistics us
	ON u.id = us.id
Where MEAN <> 0;

Select u.state_name, Round(AVG(Mean),1), Round(AVG(Median),1)
From US_Project.us_household_income u
INNER Join US_Project.us_household_income_statistics us
	ON u.id = us.id
Where MEAN <> 0
Group By u.state_name
Order by 2 ASC
Limit 10;

Select u.state_name, Round(AVG(Mean),1), Round(AVG(Median),1)
From US_Project.us_household_income u
INNER Join US_Project.us_household_income_statistics us
	ON u.id = us.id
Where MEAN <> 0
Group By u.state_name
Order by 2 DESC
Limit 10;

Select u.state_name, Round(AVG(Mean),1), Round(AVG(Median),1)
From US_Project.us_household_income u
INNER Join US_Project.us_household_income_statistics us
	ON u.id = us.id
Where MEAN <> 0
Group By u.state_name
Order by 3 ASC
Limit 10;

Select u.state_name, Round(AVG(Mean),1), Round(AVG(Median),1)
From US_Project.us_household_income u
INNER Join US_Project.us_household_income_statistics us
	ON u.id = us.id
Where MEAN <> 0
Group By u.state_name
Order by 3 DESC
Limit 10;

Select Type,Round(AVG(Mean),1), Round(AVG(Median),1)
From US_Project.us_household_income u
INNER Join US_Project.us_household_income_statistics us
	ON u.id = us.id
Where MEAN <> 0
Group By Type
Order by 2 DESC
Limit 10;

Select Type,Count(Type),Round(AVG(Mean),1), Round(AVG(Median),1)
From US_Project.us_household_income u
INNER Join US_Project.us_household_income_statistics us
	ON u.id = us.id
Where MEAN <> 0
Group By Type
Order by 1 DESC;

Select Type,Count(Type),Round(AVG(Mean),1), Round(AVG(Median),1)
From US_Project.us_household_income u
INNER Join US_Project.us_household_income_statistics us
	ON u.id = us.id
Where MEAN <> 0
Group By Type
Order by 3 DESC;

Select Type,Count(Type),Round(AVG(Mean),1), Round(AVG(Median),1)
From US_Project.us_household_income u
INNER Join US_Project.us_household_income_statistics us
	ON u.id = us.id
Where MEAN <> 0
Group By Type
Order by 4 DESC;

Select *
From US_Project.us_household_income
Where Type = 'Community';

Select Type,Count(Type),Round(AVG(Mean),1), Round(AVG(Median),1)
From US_Project.us_household_income u
INNER Join US_Project.us_household_income_statistics us
	ON u.id = us.id
Where MEAN <> 0
Group By Type
Having Count(Type) > 100
Order by 4 DESC;

Select u.state_name, City, Round(AVG(Mean),1)
From US_Project.us_household_income u
Join US_Project.us_household_income_statistics us
	ON u.id = us.id
Group By u.State_Name, City
Order By Round(AVG(Mean),1) DESC;


Select u.state_name, City, Round(AVG(Mean),1), Round(AVG(Median),1)
From US_Project.us_household_income u
Join US_Project.us_household_income_statistics us
	ON u.id = us.id
Group By u.State_Name, City
Order By Round(AVG(Mean),1) DESC;