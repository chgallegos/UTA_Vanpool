# UTA_Vanpool Analysis
----
## Overview

The purpose of this analysis was to apply Business intelligence concepts in order to extract, merge, export, analyze and visualize information provided by Vanpool's Executive team which would allow to better understand the needs of  customers and help UTA improve the service.

The following steps were determined in order to complete the full analysis:

- ETL data into SQL database using MySQL workbench
- Create tables of interest based on recognition of patterns of relevant data
- Load tables into Pandas Dataframe for further analysis using python libraries
- Create graphs for visual representation of Dataframe findings
- Run a Machine Learning linear regression model in order to determine usage growh and based on selected criteria
- Load findings and create a Tableau dashboard in order to present to executive team

----
## Results
### PART 1 ETL With MySQL Workbench

The first step of this part was to convert the provided .xlsx file into a .csv file as for it to allow the import into MySql Workbench. Upon import, the program gave me an error showing that vehicle year could not be imported as it was finding null values and did not allow for the import to complete. This led me to either complete the null values with "NULL" on the csv or it could have been a good opportunity to request more data for this table from the pertinent department. 

Given the nature of the request as well as the assignment, I decided to drop the column for vehicle year since the final analysis wants to focus on customer use instead of current operational status of the vehicles.

This finally allowed for the Vanpool table to be imported into a database called UTA_Vanpool




![Screenshot]()



### PART 2 


----
## Summary 

