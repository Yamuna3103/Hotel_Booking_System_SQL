# Hotel_Booking_System_SQL
SQL-based Hotel Booking System to manage room allocation, customer details, and billing with automated availability tracking and booking confirmations.
# 🏨 Hotel Booking System (SQL Project)

## 📌 Overview
The **Hotel Booking Management System** is a relational database project built using **MySQL**.  
It manages **hotels, rooms, customers, and bookings** efficiently and generates **insights** using SQL queries.  

---

## 📊 Database Design
The system includes the following entities:

- **Hotels** → Hotel details (*name, location, rating*)  
- **Customers** → Customer details (*name, email, phone*)  
- **Rooms** → Room types, prices, and availability  
- **Bookings** → Reservation details (*check-in, check-out, booking date*)  

**Relationships:**
- One **Hotel** → Many **Rooms**  
- One **Customer** → Many **Bookings**  
- One **Room** → Many **Bookings** (over time)  

---

## 🛠️ Features Implemented
✔️ Relational schema with primary & foreign key relationships  
✔️ Inserted sample data for testing  
✔️ Automated availability tracking with `status` field in Rooms  
✔️ Complex SQL queries (joins, subqueries, aggregations, UNION)  
✔️ Reports for bookings, availability, and revenue  

---

## 📂 Files in Repository
- `Hotel_Booking_System.sql` → Database schema + queries  
- `README.md` → Project documentation  

---

## 🚀 Key Queries / Insights
- **Room Availability** → Track available vs booked rooms  
- **Customer Bookings** → Show customer, hotel, and room info  
- **Top Hotels** → Find hotels with most bookings  
- **Revenue Insights** → Identify most expensive rooms & revenue trends  
- **Union Queries** → Merge customer and prospect data  

---

## 📸 Sample Query
```sql
SELECT
    B.booking_id,
    C.c_name AS customer_name,
    H.H_name AS hotel_name,
    R.room_type AS room_type,
    B.check_in,
    B.check_out
FROM Bookings B
JOIN Customer C ON B.customer_id = C.customer_id
JOIN Rooms R ON B.room_id = R.room_id
JOIN Hotels H ON R.Hotel_id = H.Hotel_id
ORDER BY B.check_in;
```
##🎯 Results 

✅ Automated room allocation & booking confirmations
✅ Reduced manual errors with SQL-driven queries
✅ Improved booking efficiency & reporting

##🌟 Future Enhancements

🔹 Loyalty program for frequent customers
🔹 Dynamic pricing based on demand
🔹 Extend system for multi-city hotel chains
---
✨ This project demonstrates SQL database design, normalization, and analytics for real-world hotel management.
