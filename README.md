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

The visualization can be found in the followin link:

https://public.tableau.com/views/UTA_Vanloop/TotalMinutesScheduled?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link





----
## Summary 

