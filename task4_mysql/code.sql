select * from car_sales_data;
select Manufacturer,Price from car_sales_data;
select * from car_sales_data where Price >5000;
SELECT * FROM car_sales_data ORDER BY Model;
select * from car_sales_data limit 5;
select * from car_sales_data where Manufacturer like 'F%';
select * from car_Sales_data where Mileage between 20000 and 20200;
SELECT COUNT(*) FROM car_sales_data;
SELECT AVG(salary) FROM car_sales_data;
SELECT SUM(salary) FROM car_sales_data;
SELECT MAX(salary) FROM car_sales_data;
SELECT MIN(salary) FROM car_sales_data;
desc car_sales_data;
SELECT Manufacturer, AVG(Price) AS AvgPrice
FROM car_sales_data
GROUP BY Manufacturer;
SELECT `Fuel type`, COUNT(*) AS TotalCars
FROM car_sales_data
GROUP BY `Fuel type`;
SELECT `Year of manufacture`, COUNT(*) AS TotalCars
FROM car_sales_data
GROUP BY `Year of manufacture`
ORDER BY `Year of manufacture`;
SELECT Manufacturer, AVG(Mileage) AS AvgMileage
FROM car_sales_data
GROUP BY Manufacturer;
SELECT Manufacturer, `Year of manufacture`, COUNT(*) AS CarsSold
FROM car_sales_data
GROUP BY Manufacturer, `Year of manufacture`
ORDER BY Manufacturer, `Year of manufacture`;
SELECT `fuel type`, `year of manufacture`
FROM car_sales_data
ORDER BY Price ASC;
SELECT c.Manufacturer, c.Model, c.Engine_size, c.Fuel_type, c.Year_of_manufacture, c.Mileage, c.Price, m.Country
FROM car_sales_data c
INNER JOIN Manufacturer m
ON c.Manufacturer = m.Manufacturer;
SELECT c.Manufacturer, c.Model, c.Engine_size, c.Fuel_type, c.Year_of_manufacture, c.Mileage, c.Price, m.Country
FROM car_sales_data c
LEFT JOIN car_manufacturer_data m
ON c.Manufacturer = m.Manufacturer;
SELECT c.Manufacturer, c.Model, c.Engine_size, c.Fuel_type, c.Year_of_manufacture, c.Mileage, c.Price, m.Country
FROM car_sales_data c
RIGHT JOIN car_manufacturer_data m
ON c.Manufacturer = m.Manufacturer;
SELECT c.Manufacturer, c.Model, c.Engine_size, c.Fuel_type, c.Year_of_manufacture, c.Mileage, c.Price, m.Country
FROM car_sales_data;
 SELECT Manufacturer, Model, Price
FROM car_sales_data
WHERE Price > (SELECT AVG(Price) FROM car_sales_data);
SELECT Manufacturer, Model, Mileage, Fuel_type
FROM car_sales_data
WHERE Mileage < (
    SELECT AVG(Mileage)
    FROM car_sales_data AS sub
    WHERE sub.Fuel_type = car_sales_data.Fuel_type
);








