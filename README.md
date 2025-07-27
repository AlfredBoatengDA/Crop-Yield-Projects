# Crop Yield Analysis
![](https://github.com/AlfredBoatengDA/Agriculture-Projects/blob/main/crop%20yield%20analysis.jpg)


# Project Overview
This data analysis project aims to uncover key insights into crop production, environmental impact, and input efficiency across different regions and climatic conditions.
By analyzing historical agricultural data from 1993 to 2013, the project seeks to identify yield trends, regional performance,
and the relationship between climate variables and crop output. 
The ultimate goal is to provide data-driven recommendations that support climate-resilient agriculture, inform policy decisions, and guide investment in sustainable farming practices.

### Problem Statement
1)




# Data Structure Overview
| Column Name | Description |
|---------------------|------------------------------------------------------------------|
| Area | Name of the country or region where the crop is grown |
| Crop | Type of crop (e.g., Potato, Cassava, Maize, etc.) |
| Year | Year of record |
| Yield_Ton_Hectare | Yield per hectare in metric tons |
| Temperature_Celsius | Average annual temperature in Celsius |
| Rainfall_mm | Total annual rainfall in millimeters |
| Pesticides_Tonnes | Total pesticide usage in tonnes |  

&nbsp;


#### Data Source
- Kaggle
- CSV File


#### Tools
 - Python - Data Cleaning & Exploratory Data Analysis can be downloaded [here](https://github.com/AlfredBoatengDA/Agriculture-Projects/blob/main/Data%20Cleaning.ipynb)
 - SQL Server - Perform analysis,  utilized to inspect, perform quality checks
                and also target various business questions [here](https://github.com/AlfredBoatengDA/Agriculture-Projects/blob/main/SQL%20Analysis%20and%20Queries.sql)
 - Power BI - Creating reports & interacting with visuals can be downloaded  [here](https://github.com/AlfredBoatengDA/Agriculture-Projects/blob/main/Crop%20Yield%20Analysis%20Power%20BI%20Dashboard.pbix)


# Executive Summary

 

This analysis uncovers critical relationships between climate patterns, agricultural inputs, and crop performance, offering data-driven insights to optimize yield resilience and resource allocation.
 

### 💡 Overview of Findings 

- Our 20-year yield trend analysis reveals a steady increase in agricultural productivity, led primarily by Potato, Sweet Potato and Cassava contributing 39%, 16% and 14% respectivelyto yield.  

These crops have demonstrated not only high and consistent yield performance but also resilience under varying climate conditions. 

- Optimal yield zones are found in regions with moderate temperatures (15°C–23°C) and stable rainfall pattern(1000mm - 1999mm). 

- Potato is the most resilient crops under varying temperature and rainfall conditions followed by Sweet Potato and Cassava. 

- Excessive heat above 30°C leads to yield declines across all crops, highlighting the need for climate-smart planning. 

- High pesticide use does not always correlate with higher yields, indicating inefficiencies in input allocation.  

- Input optimization and crop-location alignment can significantly boost yield potential, even under suboptimal climate conditions. 


&nbsp;

&nbsp;


# 4. Insights Deep Dive 

 

### 🌱 Crop Overview Dashboard 

> ![Yield & Time Analysis](https://github.com/AlfredBoatengDA/Agriculture-Projects/blob/main/Yield%20and%20Time%20Analysis%20Image.jpeg)   

> *Potato, Sweet Potato, and Cassava lead in productivity over the years. Maize and Rice shows more volatility across temperature zones. Soybeans while lowest in yield, remains important in specific regions.* 

 

### 🌍 Environmental Impact Analysis Dashboard 

> ![Environmental Dashboard](#)   

“From our 20years yield analysis, total crop yield increased steadily alongside a gradual rise in average temperature. While temperature showed slight year-to-year fluctuations, the overall trend aligned with yield growth. This suggests a positive correlation between temperature and yield during this period but it does not prove that temperature caused yield to rise, possibly due to adaptation strategies, improved agricultural inputs, or resilient crop varieties.” 

Crop performance is highest under ideal temperature conditions, with potato, sweet potato, and cassava leading in yield. Warm and cool stress conditions reduce yield, though potato remains relatively resilient. However, under excessively hot temperatures, all crops show a sharp decline in productivity, highlighting the vulnerability of current crop varieties to extreme heat.” 

Potato shows high efficiency in rainfall utilization, leading in both water use and yield. Conversely, maize, rice, wheat, and soybean receive similar or more rainfall but deliver significantly lower yields, revealing inefficiencies. Sweet potato and cassava demonstrate stable or improved yield with less water, indicating resilience. Low yields in yam and plantain reflect likely water stress. 

While countries within the Optimal rainfall range (1000–1999 mm) generally achieve the highest agricultural productivity, our analysis shows that rainfall volume alone does not determine yield outcomes. In drought-prone regions, while countries recorded low yield, countries like Pakistan with rainfall pattern (494mm) outperform peers through irrigation and climate-smart practices. Similarly, Mexico and Australia thrive under moderate rainfall(500mm – 999mm) due to strong agricultural infrastructure, while Indonesia with rainfall pattern(2702mm) proves that high yields are still possible in flood-prone areas with the right crop selection and water management. This emphasizes that effective adaptation strategies are just as important as environmental conditions. 

 

 

> *Yield drops by 20–35% under cold stress (10°C–15°C). High rainfall (>1999mm) zones face yield decline due to poor drainage.  

 

### 🌎 Regional Analysis Dashboard 

> ![Regional Dashboard](#)   

🌍 Top Yield Contributors Drive Global Output 

India contributes the highest to global yield (≈38%), primarily due to its strong performance in Cassava, followed by Potato and Sweet Potato. 

Brazil and Mexico contributing 19% and 15% respectively also play key roles, with Brazil’s yield led by Potato, and Mexico showing balanced yield across Potato, Sweet Potato, and Cassava. 

Japan and Australia put up 14% and 13% respectively maintain strong productivity, especially in Potato and Sweet Potato. 

This suggest that countries in the Tropical and Temperate regions attain high productivity in crops. 

Countries like Namibia, Sudan, Montenegro, Eritrea, and Botswana show consistently low yields across most crops. The least producing countries are mostly located in Africa 

due to limited mechanization, input access or climatic political instability. 

 

 

### 💧 Input Usage & Efficiency Dashboard 

> ![Input Usage Dashboard](#)   

> Potato which accounted for the largest share of pesticide used at 13.13% showed a strong positive response to pesticide application, with higher pesticide use correlating with significantly higher yields. 
Sweet potato and cassava contributing 10.89% and 8.62% respectively also benefited, but their total yields remained moderate, suggesting limited productivity despite pesticide investment. 

Low Responsiveness in Cereals Despite High Pesticide Use. Cereal crops like Wheat, Maize, Sorghum and Rice putting up 13%, 12.9%, 10.6% and 11.95% respectively displayed little or no yield improvement with increased pesticide use. 
Despite receiving moderate to high pesticide applications, these crops delivered stagnant yield patterns. 

Overuse of pesticides and fertilizer in low-yield zones suggests input misallocation.  

But there is an untapped yield potential in Plantain since it received the lowest pesticide input at just 0.40% and also recorded the lowest yield. 

 

### 🌿 Crop Recommendation & Climate Planning Dashboard 

> ![Crop Recommendation Dashboard](#)   

> - **Optimal Rainfall Zones:** Promote Potato, Sweet Potato, and Cassava. 

> - **Drought/Heat-Stressed Areas:** Focus on Sweet Potato & Cassava with mulching & drip systems. 

> - **Flood Zones:** Promote rice and flood-tolerant varieties of Potato and Sweet Potato. 

> - **General:** Recommend heat-tolerant crop breeding and calendar shifts for temperature-exposed areas. 

 

# Data Analysis
Include some interesting code/features worked wih:
```SQL

























