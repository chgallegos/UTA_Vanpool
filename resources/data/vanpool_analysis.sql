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

-- Most Frequent Start City
SELECT	
		ServiceDate,
		VehicleId,
        VehicleType,
		StartCity,
		COUNT(StartCity) as Start_City_Frequency

FROM vanpool_data

GROUP BY StartCity
ORDER BY Start_City_Frequency DESC;

-- Most Frequent End City

SELECT	
		ServiceDate,
		VehicleId,
        VehicleType,
		StartCity,
		COUNT(EndCity) as End_City_Frequency

FROM vanpool_data

GROUP BY EndCity
ORDER BY End_City_Frequency DESC;

