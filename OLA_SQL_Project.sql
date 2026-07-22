--Retrieve all succesfull bookings;
create view vw_Success_Bookings as
select * from Bookings where Booking_Status = 'Success'

select * from vw_Success_Bookings

--Find the average ride distance for each vehicle type
create view vw_VehicleType_RideDistance as
select Vehicle_Type, AVG(Ride_Distance) as avg_rade_distance from Bookings group by Vehicle_Type

select * from vw_VehicleType_RideDistance


--Get the total number of cancelled ride by customer
create view vw_Cancelled_by_Customer as
select count(*) as canclled_ride_count from Bookings where Booking_Status like '%Canceled by Customer%';

select * from vw_Cancelled_by_Customer


--List top 5 customers who booked highest number of rides
create view vw_Top5_Customer_Bookings as
select top 5 Customer_ID,
count(Booking_ID) as Total_Bookings 
from Bookings 
group by Customer_ID 
order by Total_Bookings desc

select * from vw_Top5_Customer_Bookings


select * from Bookings

--Get the number of ride canceled by driver due to personal and car-related issues
create view vw_Cancel_by_Drive_PC_Issues as
select count(*) as Cancel_Count from Bookings 
where Booking_Status = 'Canceled by Driver' 
and Canceled_Rides_by_Driver = 'Personal & Car related issue';


select * from vw_Cancel_by_Drive_PC_Issues



--Find the maximum and minimum driver rating for prime sedan bookings
create view vw_Driver_Ratings as
select MAX(Driver_Ratings) as Maximum_Rating , 
MIN(Driver_Ratings) as Minimum_Rating 
from Bookings 
where Vehicle_Type = 'Prime Sedan'


select * from vw_Driver_Ratings;


--Retrieve all rides where payment made using upi
create view vw_Payment_UPI as
select * from bookings where Payment_Method='UPI';


select * from vw_Payment_UPI;


--Find the average customer rating per vehicl type
create view vw_VehicleType_CustomerRating as
select Vehicle_Type, 
cast(AVG(Customer_Rating) as decimal(4,2)) as Customer_Rating 
from Bookings 
group by Vehicle_Type;


select * from vw_VehicleType_CustomerRating order by Customer_Rating desc



--Calculate the total booking value of rides completed successfully
create view vw_Successfull_Booking_Value as
select cast(sum(Booking_Value) as decimal(10,2)) as Total_Booking_Value 
from bookings 
where Booking_Status = 'Success'


select * from vw_Successfull_Booking_Value



--List all incomeplete ride along with reason
create view vw_Incomplete_Rides as
select Booking_ID,Incomplete_Rides_Reason from Bookings where Incomplete_Rides = 1;


select * from vw_Incomplete_Rides;




--Revenue by Vehicle Type
create view vw_VehicleType_TotalRevenue as
select Vehicle_Type,
sum(Booking_Value) as Total_Revenue 
from Bookings 
where Booking_Status='Success' 
group by Vehicle_Type


select * from vw_VehicleType_TotalRevenue order by total_revenue desc


--Booking Success Rate
create view vw_Booking_SuccessRate as
SELECT CAST(100.0 * SUM(CASE WHEN Booking_Status='Success' THEN 1 ELSE 0 END) / COUNT(*) AS DECIMAL(5,2)) AS SuccessRate from Bookings;


select * from vw_Booking_SuccessRate



--Cancellation Rate
create view vw_Cancellation_rate as
select cast(100.0 * sum(case when Booking_Status like 'Canceled%' then 1 else 0 end) / COUNT(*) as decimal(10,2)) as Cancellation_Rate
from Bookings


select * from vw_Cancellation_rate


--Highest Revenue Customer
create view vw_Customer_HighestRevenue as
select top 10 Customer_ID,sum(Booking_Value) as Highest_revenue 
from Bookings 
where Booking_Status='Success' 
group by Customer_ID 


select * from vw_Customer_HighestRevenue order by Highest_revenue desc


--Most Popular Payment Method
create view vw_Popular_PaymentMethod as
select top 1 Payment_Method,
COUNT(*) as Payment_method_Count 
from Bookings 
where Booking_Status='Success' 
group by Payment_Method 
order by Payment_method_Count desc


select * from vw_Popular_PaymentMethod


--Average Booking Value by Vehicle
create view vw_Vehicle_AvgBookingValue as
select Vehicle_Type,AVG(Booking_Value) as Avg_Booking_Value from Bookings group by Vehicle_Type

select * from vw_Vehicle_AvgBookingValue order by Avg_Booking_Value desc


--Top Pickup Locations
alter view vw_Top_Pickup_Locations as
select top 10 Pickup_Location, 
count(*) as Total_bookings 
from Bookings 
group by Pickup_Location order by Total_bookings desc


select * from vw_Top_Pickup_Locations


--Top Drop Locations
alter view vw_Top_Drop_Locations as
select top 10 Drop_Location, 
count(*) as Total_bookings 
from Bookings 
group by Drop_Location  order by Total_bookings desc



select * from vw_Top_Drop_Locations 


--Best Rated Vehicle Type
create view vw_Vehicle_BestRated as
with cte as 
(select Vehicle_Type,
cast(avg(Driver_Ratings) as decimal(4,2)) as Bet_Rated_Vehicle,
DENSE_RANK() over(order by avg(driver_ratings) desc) as rnk
from Bookings group by Vehicle_Type)
select * from cte where rnk = 1

select * from vw_Vehicle_BestRated


--Revenue Contribution
create view vw_Revenue_Contribution as
SELECT Vehicle_Type,
SUM(Booking_Value) Revenue,
cast(100.0*SUM(Booking_Value) / SUM(SUM(Booking_Value)) OVER() as decimal(5,2)) AS RevenuePercent
FROM Bookings
GROUP BY Vehicle_Type;

select * from vw_Revenue_Contribution;