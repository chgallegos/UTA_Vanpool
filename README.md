# UTA_Vanpool Analysis
----
## Overview

The purpose of this analysis was to apply Business intelligence concepts in order to extract, merge, export, analyze and visualize information provided by Vanpool's Executive team which would allow to better understand the needs of  customers and help UTA improve the service.

The following steps were determined in order to complete the full analysis:

- ETL data into SQL database using MySQL workbench
- Create tables of interest based on recognition of patterns of relevant data
- Load findings and create a Tableau dashboard in order to present to executive team

----
## Results
### PART 1 ETL With MySQL Workbench

The first step of this part was to convert the provided .xlsx file into a .csv file as for it to allow the import into MySql Workbench. Upon import, the program gave me an error showing that vehicle year could not be imported as it was finding emplty values and did not allow for the import to complete. This led me to complete the null values with "NULL" on the csv.
This finally allowed for the Vanpool table to be imported into a database called UTA_Vanpool.

Given the nature of the request as well as the assignment, I decided to also include an analysis on the usage of the vehicles based on year, miles scheduled and usage time scheduled.


### PART 2 Analysis With MySQL Workbench

As I began to manipulate the data, a few questions arose which I decided were going to be the fundamental blocks of my analysis, the questions were the following:

- Determine how many vehicles are in service ![Screenshot](SQL Statement for total number and result)

- Find which vehicles are the most popular by scheduled miles
- Locate most frequent start city
- Locate most frequent end city
- Service date frequecy
- Vehicle usage by vehicle year

I produced SQL statements that provided me with the necessary tables to be processed into visualization.

![Screenshot]()

### PART 3 Visualization on Tableau

I decided to use Tableau as a way to visualize the elements of the analysis due to the allowance of filters and dashboard. This would allow for a more comprehensive way to present the information to the executive team.

The visualizations developed are the following:

- Vehicle Type by Most Scheduled Miles: This aims to communicate the most utilized types of vehicles per customer preference on a "Miles Scheduled basis"

- City Usage (Geo): The calculation for the city usage comes from a Tableau query that sums the service dates of the entire range of data provided, at the same time grouping them by city. Subsequently, geolocation data was extracted in order to create a visualizaiton on a map for better reference.


- City Usage (Bar Graph): The same data utilized in the previous display, with the difference that this is set up on a horizontal bar graph schema in order to have a different perspective on how to find most usage cities.

- Usage Frequency: This represents the frequency of usage per day within the two months of data provided. The idea is to compare the trends of usage within a weekly basis compared monthly.

- Total Miles Scheduled: As a way to keep an eye on the status of the fleet, I considered important to rank each vehicle ID by how much it has been scheduled to drive in terms of miles. This can provide a good reference on the need for maintenance/upgrading of units. This also contains the type of vehicle as to cross reference from the first visualization.

- Total Minutes Scheduled: Similar to the previous visualization. A way to keep an eye on the status of the fleet, by how much it has been scheduled to drive in terms of minutes.

- Overload: This shows vehicles being boarded over the capacity listed for the vehicle. There are instances that really stand out that could be seen as problematic.

The visualization can be found in the followin link:

https://public.tableau.com/shared/28DB5794X?:display_count=n&:origin=viz_share_link

### PART 4 Powerpoint Presentation

Once all the data was analyzed and visualized on Tableau, the next step was to put everything together in a powerpoint presentation. I looked at designs with the colors that UTA has in order to show consistency. Finally, I decided to break down the flow of the presentation into the following slides

- Introduction: What the presentation is about, outline next steps

- Tech Strategy: How to appoprach the case study
- First Step: ETL (SQL)
- Second Step: Analyze (SQL)
- Third Step: Visualize (Tableau)
- Recommendations
- Conclusion


----
## Summary 

