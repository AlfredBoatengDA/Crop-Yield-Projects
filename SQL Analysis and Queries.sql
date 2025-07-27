USE Agriculture


-- PERFORM CHECKS(Data Exploration & Validation)

-- We decided to showcase the table we have.
SELECT *
FROM Yield

--Total Yield
SELECT CAST(SUM(Yield_Ton_Hectare) AS DECIMAL(10, 2)) AS Total_Yield
FROM Yield

--Average Yield
SELECT CAST(AVG(Yield_Ton_Hectare) AS DECIMAL(10, 2)) AS Average_Yield
FROM Yield

--Average Temperature
SELECT CAST(AVG(Average_Temp) AS DECIMAL(10, 2)) AS Average_Temperature
FROM Yield

--Average Rainfall
SELECT CAST(AVG(Rainfall_mm) AS DECIMAL(10, 2)) AS Average_Rainfall
FROM Yield





-- DATA EXTRACTION FOR ANALYSIS

-- Crop Category
SELECT Area,
	   Crop,
	CASE
		WHEN Crop IN ('Potatoes', 'Sweet Potatoes', 'Cassava', 'Yams') THEN 'Root & Tubers'
		WHEN Crop IN ('Wheat', 'Sorghum', 'Rice', 'Maize') THEN 'Grains'
		WHEN Crop IN ('Soybeans') THEN 'Legumes'
		WHEN Crop IN ('Plantains') THEN 'Starchy Fruit'
        ELSE 'Others'
	END AS Crop_Category
FROM Yield


--Yield Category
SELECT  CAST(Yield_Ton_Hectare AS DECIMAL(10, 2)) AS Yield,
	Area, 
	Crop,
	CASE
		WHEN Yield_Ton_Hectare <= 2.5 THEN 'Very_Low'
		WHEN Yield_Ton_Hectare <= 10.0 THEN 'Low'
		WHEN Yield_Ton_Hectare <= 20.0 THEN 'Moderate'
		WHEN Yield_Ton_Hectare <= 30.0 THEN 'High'
		ELSE 'Extremely_High'
	END AS Yield_Category
FROM Yield


--Temperature Category
SELECT CAST(Average_Temp AS DECIMAL(10, 1)) AS Average_Temperature,
	Area,
	Crop, 
    CASE
	   WHEN Average_Temp < 12 THEN 'Cold_Stress'
	   WHEN Average_Temp <= 26 THEN 'Ideal'
	   WHEN Average_Temp <= 30 THEN 'Warm'
	   ELSE 'Too_Hot'
	END AS Temperature_Category
FROM Yield

 
 --Rainfall_Category
SELECT CAST(Rainfall_mm AS DECIMAL(10, 1)) AS Rainfall,
        Crop,
		Area, 
		CASE
		  WHEN Rainfall_mm <= 500 THEN 'Drought_Risk'
		  WHEN Rainfall_mm <= 1000 THEN 'Moderate'
		  WHEN Rainfall_mm <= 2000 THEN 'Optimal'
		  ELSE 'Flood_Risk'
		END AS Rainfall_Category
FROM Yield


-- Pesticides Category
SELECT CAST(Pesticides_Tonnes AS DECIMAL(10, 1)) AS Pesticides_Used, 
	Area, 
	Crop, 
    CASE
	    WHEN Pesticides_Tonnes <= 5000 THEN 'Very Low'
        WHEN Pesticides_Tonnes <= 25000 THEN 'Low'
        WHEN Pesticides_Tonnes <= 100000 THEN 'Moderate'
        WHEN Pesticides_Tonnes <= 250000 THEN 'High'
        ELSE 'Extremely_High'
	END AS Pesticides_Used_Category
FROM Yield




-- BUSINESS QUESTIONS(Strategic Insight)

-- Identify the Top Highest Yielding Countries
SELECT TOP 5 Area, SUM(Yield_Ton_Hectare) AS Total_Yield
FROM Yield
GROUP BY Area
ORDER BY Total_Yield DESC


-- Identify the Top Lowest Yielding Countries
SELECT TOP 5 Area, SUM(Yield_Ton_Hectare) AS Total_Yield
FROM Yield
GROUP BY Area
ORDER BY Total_Yield ASC


SELECT * 
FROM Yield



-- Compare Crop Yield Responsiveness to Pesticide Use
SELECT Crop,
			CAST(SUM(Yield_Ton_Hectare) AS DECIMAL(10, 2)) AS Total_Yield, 
			SUM(Pesticides_Tonnes) AS Pesticides_Used,
			CAST(SUM(Yield_Ton_Hectare) / (SUM(Pesticides_Tonnes)) * 10000 AS DECIMAL(10, 2)) AS Pesticides_Efficiency
FROM Yield
GROUP BY Crop
ORDER BY Pesticides_Used DESC



-- Regional Yield Distribution by Crop Category
SELECT Area, 
	   Crop,
	   SUM(Yield_Ton_Hectare) AS Total_Yield
FROM Yield
GROUP BY Area, Crop
ORDER BY Total_Yield DESC



-- Year Over Year Yield Trend For Specific Crop
SELECT Year,
	   CAST(SUM(Yield_Ton_Hectare) AS DECIMAL(10, 2)) Total_Yield
FROM Yield
WHERE Crop = 'Rice'
GROUP BY Year
ORDER BY Year


SELECT Year,
	   CAST(SUM(Yield_Ton_Hectare) AS DECIMAL(10, 2)) Total_Yield
FROM Yield
WHERE Crop = 'Cassava'
GROUP BY Year
ORDER BY Year


SELECT Year,
	   CAST(SUM(Yield_Ton_Hectare) AS DECIMAL(10, 2)) Total_Yield
FROM Yield
WHERE Crop = 'Potatoes'
GROUP BY Year
ORDER BY Year


SELECT Year,
	   CAST(SUM(Yield_Ton_Hectare) AS DECIMAL(10, 2)) Total_Yield
FROM Yield
WHERE Crop = 'Plantains'
GROUP BY Year
ORDER BY Year









