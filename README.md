# Labour Market Dynamics in Canada (2024–2025)  
A year-over-year analysis of labour force indicators using R, tidyverse, and Statistics Canada data.

---

## Overview  
This project analyzes year-over-year (YoY) labour market changes between **October 2024 and October 2025** across Canadian provinces, focusing on the **25–54 core working-age population**. Using publicly available data from Statistics Canada, the analysis computes growth rates for:

- **Population (25–54 age group)**  
- **Unemployment rate**  
- **Employment rate**

The goal is to identify **regional labour market strengths, emerging trends, and potential employment opportunities** across Canada.

---

## Dataset  
**Source:** [Statistics Canada: Labour force characteristics by province, monthly, seasonally adjusted (Table 14-10-0287-03)](https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=1410028703)  
**Platform:** RStudio  
**Language:** R  
**Libraries:** tidyverse  

---

## Project Files

### **All source code and project files are available in the repository’s Code section.**

---

## Data Preparation Workflow  
1. **Loaded and merged datasets** for October 2024 and October 2025.  
2. **Removed missing values** to ensure accurate comparisons.  
3. **Identified and renamed labour characteristic column** using dynamic column detection.  
4. **Filtered key indicators:**  
   - Population  
   - Employment rate  
   - Unemployment rate  
5. **Standardized REF_DATE formats** (YYYY-MM, textual months, YYYY-MM-DD).  
6. **Created a Year field** to classify 2024 vs 2025 data.  
7. **Joined datasets** by province and labour characteristic.  
8. **Calculated YoY growth rates** for each variable.  
9. **Reshaped results** into a wide-format summary table.

---

## Variable Definitions  
| Variable | Description |
|---------|-------------|
| **REF_DATE** | Time period of the observation (month-year). |
| **GEO** | Geographic region (Canada, province). |
| **DGUID** | Statistics Canada geographic identifier. |
| **Labour force characteristics** | Indicator measured (population, unemployment rate, etc.). |
| **Gender** | Gender classification (Male, Female, Total). |
| **Age group** | Population age category (e.g., 25–54). |
| **Statistics** | Type of statistic (level, % change, etc.). |
| **Data type** | Additional statistic classification. |
| **UOM** | Unit of measure. |
| **SCALAR_FACTOR** | Scaling factor applied to VALUE. |
| **VALUE** | Numerical value of the measurement. |
| **STATUS / SYMBOL** | Data quality or suppression flags. |
| **DECIMALS** | Decimal precision of VALUE. |

---

## Formula  
Growth Rate (%) = (NewValue – OldValue) / OldValue × 100

---
## Output Table (Year-over-Year Growth, %)

| GEO | Growth (%) Population | Growth (%) Unemployment Rate | Growth (%) Employment Rate |
|------|-------------------------|-------------------------------|------------------------------|
| Alberta | 2.88 | 3.08 | 0.36 |
| British Columbia | 1.21 | 21.74 | 1.20 |
| Canada | 1.71 | 0.00 | 0.36 |
| Manitoba | 2.76 | -4.00 | -0.71 |
| New Brunswick | 1.37 | -1.69 | 0.00 |
| Newfoundland and Labrador | 0.62 | -3.61 | -1.37 |
| Nova Scotia | 1.52 | 7.41 | -2.53 |
| Ontario | 1.59 | 1.56 | 0.00 |
| Prince Edward Island | 2.91 | -35.00 | 1.82 |
| Quebec | 1.43 | -8.00 | 0.58 |
| Saskatchewan | 2.04 | -5.88 | 0.00 |


# Key Findings (with Employment Opportunity Insights)

## 1️⃣ Population Growth (25–54 Core Working Age)

- **Highest growth:** Prince Edward Island (+2.91%), Alberta (+2.88%), Manitoba (+2.76%), Saskatchewan (+2.04%)  
- **Lowest growth:** Newfoundland & Labrador (+0.62%), British Columbia (+1.21%)  
- **Canada overall:** +1.71%  

**Employment Opportunity Insight:**  
Provinces with strong population growth may see **expanding labour supply and increased economic activity**, supporting more job creation.

---

## 2️⃣ Unemployment Rate Changes

- **Largest declines (improved labour market):**  
  - Prince Edward Island (-35%)  
  - Quebec (-8%)  
  - Saskatchewan (-5.88%)  
  - Manitoba (-4%)  

- **Increases (labour market stress):**  
  - British Columbia (+21.74%)  
  - Nova Scotia (+7.41%)  
  - Alberta (+3.08%)  
  - Ontario (+1.56%)  

**Employment Opportunity Insight:**  
Declining unemployment suggests **stronger hiring conditions**.

---

## 3️⃣ Employment Rate Growth

- **Positive growth:** PEI (+1.82%), BC (+1.20%), Quebec (+0.58%), Alberta (+0.36%)  
- **Stable:** Saskatchewan, Ontario, New Brunswick  
- **Negative growth:** Nova Scotia (-2.53%), Newfoundland & Labrador (-1.37%), Manitoba (-0.71%)  

**Employment Opportunity Insight:**  
Rising employment rates indicate **higher job absorption and stronger job creation**.

---

# Overall Summary: Provincial Employment Opportunities

### **Strongest Employment Opportunities**
- Prince Edward Island  
- Quebec  
- Saskatchewan  
- Manitoba  

### **Moderate or Mixed Opportunities**
- Alberta  
- Ontario  
- New Brunswick  

### **Regions Facing Employment Challenges**
- British Columbia  
- Nova Scotia  
- Newfoundland & Labrador  



