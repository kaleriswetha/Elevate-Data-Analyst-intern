# ✈️ Flight Delay & Cancellation Analysis (SQL Project)

## 📘 **Project Overview**

This project performs an **end-to-end SQL-based data analytics pipeline** on U.S. flight data.
It includes **data ingestion, cleaning, transformation, integration, and exploratory analysis** to uncover key insights about **flight delays and cancellations**.

The analysis provides a foundation for building **BI dashboards** and **data-driven airline performance insights**.

---

## 🎯 **Objectives**

* Integrate multiple datasets (**flights, airlines, airports**) into a unified analytical table.
* Identify key performance metrics such as **On-Time Performance (OTP)**, **average delays**, and **cancellation rates**.
* Analyze **delay causes**, **seasonal patterns**, and **airport/airline efficiency**.
* Prepare a **clean dataset** suitable for reporting or visualization tools like Tableau or Power BI.

---

## ⚙️ **Methodology**

### 1. **Data Ingestion**

* Imported `flights`, `airlines`, and `airports` tables.
* Verified record counts to confirm successful loading.

### 2. **Data Cleaning & Transformation**

* Created `scheduled_departure_dt` and `FLIGHT_DATE` using date columns.
* Added flags:

  * `cancelled_flag` → 1 if flight cancelled.
  * `delayed_flag` → 1 if delay > 15 minutes.
* Introduced `CANCELLATION_REASON_DESC` for descriptive text.
* Checked and filled missing values using `COALESCE`.

### 3. **Data Integration**

Created unified analytical view:

```sql
CREATE VIEW unified_flights_data AS
SELECT f.*, al.AIRLINE_NAME, 
       ao.AIRPORT AS ORIGIN_AIRPORT_NAME, ad.AIRPORT AS DESTINATION_AIRPORT_NAME,
       ao.CITY AS ORIGIN_CITY, ad.CITY AS DESTINATION_CITY
FROM flights f
JOIN airlines al ON f.AIRLINE = al.IATA_CODE
JOIN airports ao ON f.ORIGIN_AIRPORT = ao.IATA_CODE
JOIN airports ad ON f.DESTINATION_AIRPORT = ad.IATA_CODE;
```

This merges all relevant details — airlines, airports, delays, and cancellations — into one dataset.

### 4. **Exploratory Analysis**

* Flight volume by airline and airport.
* Delay statistics (avg, min, max) by airline.
* Cancellations by reason.
* Delay cause breakdown: **Air System**, **Security**, **Airline**, **Late Aircraft**, **Weather**.
* Time-based trends: month, day of week, and hour.

---

## 📊 **Key Performance Indicators (KPIs)**

| KPI                           | Description                            |
| ----------------------------- | -------------------------------------- |
| **On-Time Performance (OTP)** | % of flights with `ARRIVAL_DELAY ≤ 15` |
| **Avg Departure Delay**       | Mean delay minutes at departure        |
| **Avg Arrival Delay**         | Mean delay minutes at arrival          |
| **Cancellation Rate**         | % of flights cancelled                 |
| **Delay Contribution (%)**    | Share of total delay by cause type     |

---

## 🧮 **Segmented Insights**

* **By Airline:** Compare performance, average delay, and cancellation rate.
* **By Airport:** Identify most efficient or delayed airports.
* **By Month:** Detect seasonal delay patterns.
* **By Time of Day:** Analyze hourly peaks of delay frequency.

---

## 📈 **Business Insights**

| Category                | Key Findings                                                                |
| ----------------------- | --------------------------------------------------------------------------- |
| **Overall Performance** | Tracks total flights, delays, and cancellations across major U.S. carriers. |
| **On-Time Rate**        | Measures airline reliability using 15-min threshold.                        |
| **Delay Drivers**       | Airline operations, late aircraft, and weather dominate delay causes.       |
| **Cancellations**       | Mostly caused by weather and carrier issues.                                |
| **Temporal Patterns**   | Morning flights perform better; evening delays are higher.                  |
| **Seasonal Variations** | Winter months show higher delays and cancellations.                         |

---

## 💡 **Visualization Ideas (For Tableau/Power BI)**

* **Bar Chart:** Total flights by airline
* **Donut Chart:** Cancellation reasons
* **Line Chart:** Monthly On-Time Performance
* **Heatmap:** Average delay by day of week & hour
* **Map:** Delay intensity by airport (latitude/longitude)
* **KPI Cards:** OTP %, Avg Delay, Cancellation %

---

## 🧩 **Deliverables**

* ✅ `unified_flights_data` – Final clean analytical view
* ✅ `unified_flights_table2` – With unique IDs and imputed values
* ✅ `unified_flights_filled_data` – Ready for BI dashboard integration
* ✅ SQL Script: `labmentix_project2.sql`

---

## 🏁 **Conclusion**

This project demonstrates a **complete SQL-driven data analytics pipeline**, transforming raw flight data into actionable business insights.
It helps airlines, airports, and analysts understand **delay behavior, cancellation trends, and performance KPIs**, forming the backbone for **data visualization and decision-making**.



Would you like me to make this **README more visually appealing** for GitHub — with emojis, markdown tables, and a navigation index (like Table of Contents and badges)?

