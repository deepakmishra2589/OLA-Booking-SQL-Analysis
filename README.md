# 🚖 OLA Booking Data Analysis using SQL Server

## 📌 Project Overview

This project analyzes an **OLA Booking Dataset** using **Microsoft SQL Server** to generate business insights related to booking performance, customer behavior, revenue, cancellations, payment methods, and driver performance.

The analysis was performed using SQL queries, Views, Aggregate Functions, CTEs, and Window Functions to answer real-world business questions.

---

# 📊 Dataset Information

| Property | Details |
|-----------|----------|
| Database | OlaCab |
| Table | Bookings |
| Total Records | 100,000+ |
| Tool Used | SQL Server Management Studio (SSMS) |
| Language | SQL |

---

# 📋 Dataset Columns

| Column Name | Description |
|--------------|------------|
| Date | Booking Date |
| Time | Booking Time |
| Booking_ID | Unique Booking ID |
| Booking_Status | Ride Status |
| Customer_ID | Customer Identifier |
| Vehicle_Type | Vehicle Category |
| Pickup_Location | Pickup Location |
| Drop_Location | Drop Location |
| V_TAT | Vehicle Turn Around Time |
| C_TAT | Customer Turn Around Time |
| Canceled_Rides_by_Customer | Customer Cancellation Reason |
| Canceled_Rides_by_Driver | Driver Cancellation Reason |
| Incomplete_Rides | Incomplete Ride Status |
| Incomplete_Rides_Reason | Incomplete Ride Reason |
| Booking_Value | Ride Fare |
| Payment_Method | Payment Method |
| Ride_Distance | Ride Distance |
| Driver_Ratings | Driver Rating |
| Customer_Rating | Customer Rating |
| Vehicle_Images | Vehicle Image |

---

# 🛠 Tools & Technologies

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- GitHub

---

# 📚 SQL Concepts Used

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- TOP
- Aggregate Functions
- CASE WHEN
- CAST
- Views
- Common Table Expressions (CTE)
- Window Functions
- DENSE_RANK()
- OVER()
- SUM(SUM()) OVER()

---

# 📈 Business Problems Solved

- Retrieve all successful bookings
- Calculate average ride distance by vehicle type
- Count cancelled rides by customers
- Find Top 5 customers by total bookings
- Analyze driver cancellation reasons
- Find maximum and minimum driver ratings
- Retrieve rides paid using UPI
- Calculate average customer rating by vehicle type
- Calculate total successful booking revenue
- Identify incomplete rides with reasons
- Calculate revenue by vehicle type
- Calculate booking success rate
- Calculate booking cancellation rate
- Identify highest revenue customers
- Find the most popular payment method
- Calculate average booking value
- Identify top pickup locations
- Identify top drop locations
- Find the best-rated vehicle type
- Calculate revenue contribution by vehicle type

---

# 📊 Key Business Insights

- Prime Sedan generated the highest revenue.
- Overall booking success rate was over 60%.
- Revenue contribution was calculated for every vehicle category.
- Customer and driver cancellation trends were analyzed.
- Most preferred payment method was identified.
- High-demand pickup and drop locations were identified.
- Vehicle performance was evaluated using average driver ratings.

---

# 📷 Project Screenshots

## 📂 Dataset Preview

![Dataset Preview](database-preview.png)

---

## 💰 Revenue by Vehicle Type

![Revenue by Vehicle Type](revenue-by-vehicle.png)

---

## 📈 Booking Success Rate

![Booking Success Rate](screenshots/booking-success-rate.png)

---

## ⭐ Best Rated Vehicle Type

![Best Rated Vehicle](best-rated-vehicle.png)

---

## 📊 Revenue Contribution

![Revenue Contribution](revenue-contribution.png)

---

## 👥 Top Customers

![Top Customers](top-customers.png)

---

## ⭐ Customer Rating

![Customer Rating](customer-rating.png)

---

# 📁 Repository Structure

```
OLA-Booking-SQL-Analysis
│
├── README.md
├── OLA_SQL_Project.sql
├── OLA_Booking_Dataset.csv
├── LICENSE
│
└── screenshots
    ├── database-preview.png
    ├── booking-success-rate.png
    ├── revenue-by-vehicle.png
    ├── revenue-contribution.png
    ├── best-rated-vehicle.png
    ├── customer-rating.png
    └── top-customers.png
```

---

# 🚀 Future Improvements

- Develop an interactive Power BI dashboard using the same dataset.
- Perform monthly and yearly trend analysis.
- Create stored procedures for reusable business reports.
- Optimize SQL queries using indexes.
- Add customer segmentation analysis.
- Build a complete end-to-end analytics dashboard.

---

# 👨‍💻 Author

**Deepak Mishra**
**https://www.linkedin.com/in/deepak-mishra2589**
Aspiring Data Analyst passionate about SQL, Power BI, Excel, and Business Intelligence.

📌 Feel free to connect with me on LinkedIn and explore my projects.
