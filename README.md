# Patient Survey Data

## Project Overview

This project aims to answer the question "How Happy Are Patients With Their Hospital in The United States in 2022". 
However, this project was carried out in two part:
- Data Cleaning: Patient Survey Data
- Dashboard Reporting: Patient Satisfaction scores

### Data Sources

HCAHPS: "Hospital Beds.csv" and "v1 HCAHPS 2022.csv", containing number of hospital beds, and patient survey response.

#### Tools

- Excel | Data Viewing
- SQL | Data Cleaning & Analysis
- Tableau | Data Reporting

### Data Cleaning; Patient Survey Data

In the initial preparation phase, I performed the following tasks:
1. Opened data into Excel - viewed data format that needed to be changed
2. Loaded and Inspected data in SQL
4. Data cleaning and formatting in SQL
5. Combined "Hospital Beds.csv" and "v1 HCAHPS 2022.csv" into a single data extract "Tableau_File.csv" in SQL

![scr](https://github.com/user-attachments/assets/3d4ed45a-8740-4d8c-a757-e426cadae0ec)

### Data Analysis

Total no. of rows - 55501
Total no. of columns - 15
```sql
SELECT lpad(cast(provider_ccn AS text),6,'0') AS provider_ccn,
        provider_ccn,
        hospital_name,
        to_date(fiscal_year_begin_date,'MM/DD/YYYY") AS fiscal_year_begin_date,
        to_date(fiscal_year_end_date,"MM/DD/YYYY') AS fiscal_year_end_date,
        number_of_beds
from "prostgres"."Hospital_Data".hospital beds
```

### Results / Findings

![Dashboard 2](https://github.com/user-attachments/assets/9bc9597a-509c-4825-94c7-03c3baa4f62f)

1. For the state of Washington (WA)

   Large size hospitals
   - University of Washington Medical CTR with 77% patient rating and 4,140 completed surveys
   - Provident Regional Medical Center Everett with 57% patient rating and 315 completed surveys

    Medium size hospitals
    - Swedish Medical Center / Cherry Hills with 75% patient rating and 386 completed surveys
    - Multicare Urban Medical Center with 52% patient rating and 610 completed surveys

    Small Size hospitals
    - Pullman Regional Hospital with 87% patient rating and 274 completed surveys
    - Astria Sunnyside Hospital with 58% patient rating and 197 completed surveys

 ### Recommendations

 Based on the analysis, I recommend the following:
 1. Encourage more patients to take part in the surveys
 2. Regular education of non-clinical staff on the importance of rapid patient response
 3. Reinforcement of hospital policies and procedures to improve patient experience


