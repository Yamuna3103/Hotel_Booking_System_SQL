create database HotelBookingsystem;
use HotelBookingsystem;
create table Hotels(Hotel_id int primary key auto_increment,H_name varchar(100),Location varchar(100),Rating decimal(10,2));
insert into Hotels(H_name,Location,Rating)values
("sunset inn","chennai",4.2),
("sea view resort","goa",4.5),
("mountain lodge","ooty",4.5),
("Nestly","chennai",3.3),
("red stone","chennai",4.9);
select * from Hotels;
create table customer(customer_id int primary key auto_increment,c_name varchar(100),c_email varchar(100),c_phone varchar(100));
insert into customer(c_name,c_email,c_phone)values
("john doe","johndeo@34gamail.com",1235456667),
("jane smith","janesmith@gmail.com",98765432),
("james","jamesdevid",456789321),
("sherlock","sherlockkom@gmail.com",678954321),
("devid","thomsandavid@gmail.com",987654321);
select * from customer;
create table Rooms(room_id int primary key auto_increment,Hotel_id int,room_typr varchar(100),price decimal(10,2),R_status varchar(20),foreign key(Hotel_id) references Hotels(Hotel_id));
insert into Rooms(Hotel_id,room_typr,price,R_status)values
(1, 'Single', 1500.00, 'Available'),
(2, 'Double', 2500.00, 'Booked'),
(3, 'Suite', 4000.00, 'Available'),
(4, 'Suite', 4000.00, 'Available'),
(5, 'Single', 1800.00, 'Available');
create table Bookings(booking_id INT AUTO_INCREMENT PRIMARY KEY,customer_id INT,room_id INT,check_in DATE,check_out DATE,booking_date DATE,FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),FOREIGN KEY (room_id) REFERENCES Rooms(room_id));
insert into Bookings(customer_id,room_id,check_in,check_out,booking_date)values
(1,1, '2025-05-01', '2025-05-05', '2025-04-15'),
(2,2, '2025-05-10', '2025-05-12', '2025-04-18'),
(3,3,'2025-04-10','2025-05-20','2025-03-31'),
(4,4,'2025-06-03','2025-06-16','2025-06-01'),
(5,5,'2025-07-11','2025-07-12','2025-07-10');
select * from Bookings;

Alter table Rooms ADD COLUMN Amenities TEXT;

update Rooms
 set status = 'Booked' 
 where room_id = 1;
 
Select
    B.booking_id,
    C.name AS customer_name,
    H.name AS hotel_name,
    R.room_type,
    B.check_in,
    B.check_out
FROM Bookings B
JOIN Customers C ON B.customer_id = C.customer_id
JOIN Rooms R ON B.room_id = R.room_id
JOIN Hotels H ON R.hotel_id = H.hotel_id
ORDER BY B.check_in;


SELECT 
    H.name AS hotel_name,
    COUNT(B.booking_id) AS total_bookings
from Bookings B
join Rooms R ON B.room_id = R.room_id
join Hotels H ON R.hotel_id = H.hotel_id
Group by H.name
Having COUNT(B.booking_id) > 1;

SELECT * FROM Rooms ORDER BY price DESC LIMIT 2;

Select name, email, phone FROM Customers
union
select 'Prospect User', 'prospect@example.com', '0000000000';

Select name, email, phone FROM Customers
union
Select 'Prospect User', 'prospect@example.com', '0000000000';

Select
    R.price AS Room_Price,
    H.name AS Hotel_Name
from Rooms R
join Hotels H ON R.hotel_id = H.hotel_id;






