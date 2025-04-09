create database uber;
use uber;

create view successful_booking as
select * from booking where Booking_Status ="Completed";

select * from successful_booking;


create view Ride_Distance_for_each_Vehicle as
select Vehicle_Type ,avg(Ride_Distance) from booking
group by Vehicle_Type;

select * from Ride_Distance_for_each_Vehicle;



create view Cancelled_Rides_by_Customers as
select count(Cancelled_Rides_by_Customer) from booking
where Booking_Status ="Cancelled";

select *from Cancelled_Rides_by_Customers ;



create view Top_5_Customers_MaxRides as
select Customer_Id ,count(Booking_id) from booking
group by Customer_Id
order by count(Booking_id) desc
limit 5;

select * from Top_5_Customers_MaxRides;



create view Cancelled_by_Driver_P_andCRI as
select count(Cancelled_Rides_by_Driver) from booking
where Reason_for_Cancelling_by_driver ="Personal & Car Related Issues";

select * from Cancelled_by_Driver_P_andCRI ;



create view MAX_MIN_RATING_PRIMESEDAN as
select max(Driver_Ratings),min(Driver_Ratings) from booking
where Vehicle_Type ="Prime Sedan";

select * from MAX_MIN_RATING_PRIMESEDAN ;



create view Customer_Rating_Vehicle_Type as
select Vehicle_Type ,avg(Customer_Rating) from booking
group by Vehicle_Type;


select * from Customer_Rating_Vehicle_Type ;


create view Total_Booking_Val_Success as
select Booking_Status,sum(Booking_Value) from booking
where Booking_Status ="completed";

select * from Total_Booking_Val_Success ;


create view Incomplete_Rides_Reason as 
select Booking_Id ,Incomplete_Rides_Reason from booking
where Incomplete_Rides ="1";

select * from Incomplete_Rides_Reason;






















