USE UTA_Vanpool;

-- How many vehicles are in service?
SELECT 
COUNT(DISTINCT VehicleId) as Number_of_vehicles
FROM vanpool_data;


-- What are the most driven types of vehicles?
SELECT
		VehicleID,
        VehicleType,
        ROUND(SUM(ScheduleDistanceMiles),2) as total_miles
FROM vanpool_data
GROUP BY VehicleID
ORDER BY ScheduleDistanceMiles DESC;

-- Vans being over boarded per trip? Safety concern? Data accuracy?
SELECT	
		ServiceDate,
		VehicleId,
        VehicleType,
        VanCapacity,
        Boarding,
		(VanCapacity - Boarding) as empty_seats,
        TripDirection
FROM vanpool_data
WHERE TripDirection = "OUT"
ORDER BY empty_seats ASC;

-- City Usage Frequency
SELECT	
		StartCity as City_Used,
		COUNT(StartCity) as Usage_Per_City_for_Data_Provided
FROM vanpool_data
GROUP BY StartCity
ORDER BY Usage_Per_City_for_Data_Provided DESC;

-- Service Date Frequency
SELECT
	ServiceDate,
    COUNT(ServiceDate) as Service_Date_Frequency
FROM vanpool_data
GROUP BY ServiceDate
ORDER BY ServiceDate DESC;

-- Vehicle Usage by vehicle year
SELECT 
	VehicleId,
    VehicleType,
    VehicleYear,
    ROUND(SUM(ScheduleDistanceMiles),0) as Total_Miles_Scheduled,
    ROUND(SUM(ScheduleMinutes),0) as Total_Minutes_Scheduled
FROM
	vanpool_data
GROUP BY vehicleId
ORDER BY VehicleYear, Total_Miles_Scheduled ASC;    
