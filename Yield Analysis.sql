USE Agriculture

-- We decided to showcase the table we have.
SELECT *
FROM Yield

--Total Yield
SELECT CAST(SUM(Yield_Ton_Hectare) AS DECIMAL(10, 2))
FROM Yield

--Average Yield
SELECT CAST(AVG(Yield_Ton_Hectare) AS DECIMAL(10, 2))
FROM Yield

--Average Temperature
SELECT CAST(AVG(Average_Temp) AS DECIMAL(10, 2))
FROM Yield

--Average Rainfall
SELECT CAST(AVG(Rainfall_mm) AS DECIMAL(10, 2))
FROM Yield


--Yield Category
SELECT Area, Crop, CAST(Yield_Ton_Hectare AS DECIMAL(10, 2)) AS Yield,
	CASE
		WHEN Yield_Ton_Hectare <= 2.5 THEN 'Very_Low'
		WHEN Yield_Ton_Hectare <= 10.0 THEN 'Low'
		WHEN Yield_Ton_Hectare <= 20.0 THEN 'Moderate'
		WHEN Yield_Ton_Hectare <= 30.0 THEN 'High'
		ELSE 'Extremely_High'
	END AS Yield_Category
FROM Yield

--Temperature Category
SELECT Area, Crop, CAST(Average_Temp AS DECIMAL(10, 1)) AS Average_Temperature,
    CASE
	   WHEN Average_Temp < 12 THEN 'Cold_Stress'
	   WHEN Average_Temp <= 26 THEN 'Ideal'
	   WHEN Average_Temp <= 30 THEN 'Warm'
	   ELSE 'Too_Hot'
	END AS Temperature_Category
FROM Yield

-- Pesticides Category
SELECT Area, Crop, CAST(Pesticides_Tonnes AS DECIMAL(10, 1)) AS Pesticides_Used,
    CASE
	    WHEN Pesticides_Tonnes <= 5000 THEN 'Very Low'
        WHEN Pesticides_Tonnes <= 25000 THEN 'Low'
        WHEN Pesticides_Tonnes <= 100000 THEN 'Moderate'
        WHEN Pesticides_Tonnes <= 250000 THEN 'High'
        ELSE 'Extremely_High'
	END AS Pesticides_Used_Category
FROM Yield

 
 --Rainfall_Category
SELECT Area, Crop, CAST(Rainfall_mm AS DECIMAL(10, 1)) AS Rainfall,
    CASE
	  WHEN Rainfall_mm <= 500 THEN 'Drought_Risk'
      WHEN Rainfall_mm <= 1000 THEN 'Moderate'
      WHEN Rainfall_mm <= 2000 THEN 'Optimal'
      ELSE 'Flood_Risk'
	END AS Rainfall_Category
FROM Yield
