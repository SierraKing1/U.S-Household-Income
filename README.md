The U.S. Household Income data analysis project involves an exploration of household income trends across the United States at both state and county levels. It focuses on understanding patterns in income distribution and comparing economic characteristics across different geographic regions. This analysis utilizes two primary datasets: us_household_income, which contains household income data categorized by state, county, and region types (e.g., rural, urban, suburban), and us_household_income_statistics, which provides statistical metrics, such as the mean and median household income for each entry.

**Key queries used in the project include:**

1. General Data Exploration:
 * Queries pull full data from both datasets and perform an initial inspection of the fields available, including state, county, land and water area, income type, and income statistics.

2. Geographic Insights:
  *Aggregations calculate the total land and water area by state, identifying states with the largest land or water coverage, which can relate to population density and potentially impact income distribution.

3. Income Join Analysis:
 *Several joins between the two datasets allow for comprehensive analysis on household income. For instance, using an inner join on household income entries with non-zero means to compare mean and median incomes by geographic and demographic categories.
State and City Income Trends:

Calculations of average income at the state and city levels (both mean and median) facilitate the identification of the top 10 states or cities with the highest and lowest average household incomes, offering insights into areas with significant wealth or income disparities.
Income Comparison by Area Type:

Summarizing mean and median incomes by area type (urban, rural, suburban, community) enables an understanding of how income varies across different environments and lifestyle settings. Grouped averages and counts for each type are used to rank income levels and assess the representation of each type in the dataset.
Detailed Community-Level Analysis:

A specific examination of community-type areas provides a view of income patterns in these smaller, often less populated regions, which can highlight income contrasts in localized communities.
City-Level Income Comparison:

The project delves into income by cities within each state, identifying the cities with the highest average incomes. These insights can be vital for examining wealth concentration in urban centers versus more spread-out income in rural areas.
