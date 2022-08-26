/*CREATE SCHEMA homework1
DEFAULT CHARACTER SET utf8mb3;*/

USE homework1;

-- create the queries for creating all the tables

CREATE TABLE `Customers` (
    `Customer_id` INT NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(45) NOT NULL,
    `Address` VARCHAR(45) DEFAULT NULL,
    `Email` VARCHAR(45) DEFAULT NULL,
    `Phone` VARCHAR(45) NOT NULL,
    `CreatedAt` DATETIME NOT NULL,
    PRIMARY KEY (`Customer_id`)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8MB3;

CREATE TABLE `Categories` (
    `Category_id` INT NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(45) DEFAULT NULL,
    PRIMARY KEY (`Category_id`)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8MB3;

CREATE TABLE `Products` (
    `Product_id` INT NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(45) DEFAULT NULL,
    `Description` VARCHAR(45) DEFAULT NULL,
    `Price` FLOAT NOT NULL,
    `PromoPrice` FLOAT NOT NULL,
    `Category_id` INT NOT NULL,
    `CreatedAt` DATETIME NOT NULL,
    PRIMARY KEY (`Product_id`)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8MB3;

CREATE TABLE `Orders` (
    `Order_id` INT NOT NULL AUTO_INCREMENT,
    `Customer_id` INT NOT NULL,
    `CreatedAt` DATETIME NOT NULL,
    PRIMARY KEY (`Order_id`)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8MB3;

CREATE TABLE `Order_products` (
    `OrderProduct_id` INT NOT NULL AUTO_INCREMENT,
    `Order_id` INT NOT NULL,
    `Product_id` INT NOT NULL,
    `Quantity` FLOAT NOT NULL,
    PRIMARY KEY (`OrderProduct_id`)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8MB3;


-- create queries that will insert data in all tables (10 customers, 30 products, 5 categories, 20 orders with at least 2 products each)

INSERT INTO Customers 
(name,
address,
email,
phone,
createdAt)
VALUES ('Anna', 'Odessa', 'AnnaM@ukr.net', '0625896532', '1993-05-01'),
       ('Nikolai', 'Kharkiv', 'NikM@ukr.net', '0635698525', '1986-06-01'),
       ('Sergei', 'Kyiv', 'Ser7M@ukr.net', '0628541256', '1975-05-23'),
       ('Lidiya', 'Odessa', 'LiUsM@ukr.net', '0678526584', '1988-08-20'),
       ('Alice', 'Ivano-Frankovsk', 'AliM@ukr.net', '0509658127', '1990-12-12'),
       ('Svetlana', 'Odessa', 'LanaM@ukr.net', '0635297458', '1997-12-20'),
       ('Oleg', 'Odessa', 'OlGoM@ukr.net', '0669548456', '1981-11-01'),
       ('Alyona', 'Nikolaev', 'Alyona1993M@ukr.net', '0678477878', '1998-10-01'),
       ('Denis', 'Odessa', 'DenisBabichM@ukr.net', '0636261488', '1984-08-01'),
       ('Kristina', 'Kherson', 'KrisM@ukr.net', '0695642105', '1983-03-01');
       
	INSERT INTO Categories
(name)
VALUES ('Laptops'),
       ('Smartphones'),
       ('Tablets'),
       ('Headphones'),
       ('Monitors');
       
INSERT INTO  Products
(name,
description,
price,
PromoPrice,
Category_id,
createdAt)
VALUES ('Apple MacBook Air', '13" M1 256GB 2020 (MGND3) Gold', 1100, 1000, 1, '2022-01-01'),
       ('ASUS TUF Gaming A17', 'AMD Ryzen5/RAM 16ГБ/SSD 512ГБ/GeForce GTX1650', 950, 900, 1,'2022-01-01'),
       ('ASUS Laptop X515JA-EJ1814', 'Intel Pentium Gold 6805 /RAM 8ГБ /SSD 256ГБ', 500, 450, 1, '2022-01-01'),
       ('Lenovo V14 G2 ITL', 'Intel i3-1115G4/8/128F/int/W10Pro', 450, 400, 1, '2022-01-01'),
       ('HP Pavilion Gaming', '15-ec2024ua (5A0U9EA) Shadow Black', 1200, 1100, 1, '2022-01-01'),
       ('Acer Aspire 7', 'A715-42G-R8BL (NH.QDLEU.008) Charcoal Black', 950, 900, 1, '2022-01-01');
	
       
INSERT INTO  Products
(name,
description,
price,
PromoPrice,
Category_id,
createdAt)
VALUES ('Samsung Galaxy A32', '4/128GB Lavender', 270, 250, 2, '2022-01-01'),
       ('Apple iPhone 11', '128GB Black Slim Box', 640, 690, 2,'2022-01-01'),
       ('Samsung Galaxy M52', '5G 6/128GB White', 370, 350, 2, '2022-01-01'),
       ('Xiaomi Redmi Note 11', '4/64GB Twilight Blue', 205, 200, 2, '2022-01-01'),
       ('Apple iPhone 13 Pro', '128GB Sierra Blue', 1150, 1100, 2, '2022-01-01'),
       ('Samsung Galaxy A53', '5G 6/128GB Black', 450, 430, 2, '2022-01-01');
       
       INSERT INTO  Products
(name,
description,
price,
PromoPrice,
Category_id,
createdAt)
VALUES ('Lenovo Tab M10', 'FHD Plus (2nd Gen) 4G 64GB Platinum Grey', 225, 220, 3, '2022-01-01'),
       ('Samsung Galaxy Tab A8', '10.5 LTE 32GB Grey', 230, 225, 3,'2022-01-01'),
       ('Prestigio Node A8', '32GB Slate Grey', 80, 78, 3, '2022-01-01'),
       ('Apple iPad 10.2', 'Wi-Fi 64GB Space Gray', 400, 380, 3, '2022-01-01'),
       ('Xiaomi Mi Pad 5', 'Wi-Fi 6/128GB Cosmic Gray', 360, 350, 3, '2022-01-01'),
       ('Huawei Matepad 10.4', '2nd Gen 4+128 WIFI with Keyboard', 320, 310, 3, '2022-01-01');
       
       INSERT INTO  Products
(name,
description,
price,
PromoPrice,
Category_id,
createdAt)
VALUES ('Defunc', 'TWS Black', 25, 23, 4, '2022-01-01'),
       ('Hator', 'Hypergang EVO Black HTA-810', 50, 47, 4,'2022-01-01'),
       ('Razer', 'Opus X Green ', 102, 100, 4, '2022-01-01'),
       ('Razer', 'Barracuda X', 115, 110, 4, '2022-01-01'),
       ('RZTK', 'MS300 Black', 31, 30, 4, '2022-01-01'),
       ('Samsung', 'Buds2 Black', 115, 100, 4, '2022-01-01');
       
		INSERT INTO  Products
(name,
description,
price,
PromoPrice,
Category_id,
createdAt)
VALUES ('27" Dell', '8-Bit+FRC/USB Type-C Power Delivery 65W', 460, 450, 5, '2022-01-01'),
       ('27" Samsung', 'Odyssey G5 LC27G55T Black', 300, 295, 5,'2022-01-01'),
       ('24.5" Asus', 'Gaming VG259QR 8-Bit / 165Hz', 250, 230, 5, '2022-01-01'),
       ('23.5" Samsung', 'Gaming C24RG50', 180, 178, 5, '2022-01-01'),
       ('23.8" Asus', 'VG249Q Adaptive-Sync / FreeSync', 237, 235, 5, '2022-01-01'),
       ('34" Xiaomi', 'Mi Curved Gaming', 423, 420, 5, '2022-01-01');
       
INSERT INTO  Orders
(Customer_id,
createdAt)
VALUES 
(5, '2021-01-01'),
(5, '2021-04-28'),
(4, '2021-11-11'),
(4, '2021-05-05'),
(7, '2021-07-04'),
(7, '2021-12-26'),
(9, '2021-10-17'),
(9, '2021-05-15'),
(6, '2021-03-10'),
(6, '2021-02-09'),
(3, '2021-01-07'),
(3, '2021-08-23'),
(2, '2021-11-21'),
(2, '2021-09-02'),
(10, '2021-12-27'),
(10, '2021-11-20'),
(1, '2021-03-19'),
(1, '2021-04-05'),
(8, '2021-01-21'),
(8, '2021-02-10');

 INSERT INTO  Order_products
(Order_id,
Product_id,
Quantity)
VALUES 
(1, 30, 2),
(2, 15, 2),
(3, 22, 2),
(4, 7, 2),
(5, 6, 2),
(6, 11, 2),
(7, 15, 2),
(8, 5, 2),
(9, 27, 2),
(10, 23, 2),
(11, 13, 2),
(12, 28, 2),
(13, 2, 2),
(14, 4, 2),
(15, 26, 2),
(16, 18, 2),
(17, 19, 2),
(18, 1, 2),
(19, 3, 2),
(20, 16, 2);


ALTER TABLE Products
ADD CONSTRAINT fk_Products_on_Categories
FOREIGN KEY (Category_id)
REFERENCES Categories (Category_id);

ALTER TABLE Orders
ADD CONSTRAINT fk_Orders_on_Customers
FOREIGN KEY (Customer_id)
REFERENCES Customers (Customer_id);

ALTER TABLE Order_products
ADD CONSTRAINT fk_Order_products_on_Orders
FOREIGN KEY (Order_id)
REFERENCES Orders (Order_id),
ADD CONSTRAINT fk_Order_products_on_Products
FOREIGN KEY (Product_id)
REFERENCES Products (Product_id);


-- Create a query that will return the total amount of money spent by a customer for all orders

SELECT
Customer_id,
Order_id,
Price
FROM Orders o
JOIN Products p
	ON o.Customer_id=p.Product_id
WHERE Customer_id=9;


-- Create a query that returns all the products that have promo_price bigger than price

SELECT *
FROM Products
WHERE PromoPrice>Price;



-- Create a query that returns the discount (percent from price) offered by the promo_price. for example, 15% or -15% if promo_price is bigger

SELECT Product_id, Name, Price, PromoPrice,
ROUND((Price-PromoPrice)/Price*100) AS 'Discount %'
FROM Products
WHERE PromoPrice<Price;
    
    
-- Create a query that returns the total quantities of products ordered

SELECT 
OrderProduct_id,
Quantity
FROM Order_products;


-- Create a query that retrieves the most sold categories

SELECT
OrderProduct_id,
Quantity
FROM Order_products
ORDER BY OrderProduct_id ASC, Quantity DESC;

