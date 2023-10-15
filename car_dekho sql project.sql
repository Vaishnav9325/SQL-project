create schema cars;
use cars;

----- red cars------

select* from car_dekho;
--- total cars: to get a count of total record----
select count(*) from car_dekho;

--- the manager asked the employee how many  cars will be avallable in 2023?----

select count(*) from car_dekho where year=2023;

--- the manager asked the employee how many cars will be available in 2020,2021,2022?---
select count(*) from car_dekho where year=2020;
select count(*) from car_dekho where year=2021;
select count(*) from car_dekho where year=2022;
----- in function-----
select count(*) from car_dekho where year in(2020,2021,2022);
----- group by function-----
select count(*) from car_dekho where year in(2020,2021,2022) group by year;

---- clint asked me to print the total of all cars by year i dot see all the details.----

select year,count(*)from car_dekho group by year;

--- clint asked to car dealer agent how many diesel cars will there be in 2020-----
select count(*) from car_dekho where year =2020 and fuel ='diesel';

--- clint requested a car dealer agent how many petrol cars will there be in 2020?---

select count(*) from car_dekho where year =2020 and fuel ='petrol';

---- the manager told the employee to give a print all the fule cars(petrol,diesel,and cng ) come by all year?----

select year,count(*) from car_dekho where fuel='petrol' group by year;
select year,count(*) from car_dekho where fuel='diesel' group by year;
select year,count(*) from car_dekho where fuel='cng' group by year;
select year,fuel,count(*) from car_dekho where fuel in ('petrol','diesel','cng')group by year and fuel;


----- manager said there were than 100 cars in agiven year which year had more than 100 cars?---

select year,count(*) from car_dekho group by year having count(*)>100;

select year,count(*) from car_dekho group by year;
----- the manager said to the emplyee all cars count detail between 2015 and 2023; we need s complet list----

select count(*) from car_dekho where year between 2015 and 2023;

----- the manager said to the employee all cars details between 2015 to 2023 we need complete list------------
select * from car_dekho where year between 2015 and 2023;

----- thanks-----

