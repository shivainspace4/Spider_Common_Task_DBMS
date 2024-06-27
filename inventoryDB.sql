create database inventoryDB;
use inventoryDB;

CREATE TABLE PRODUCTS(
    Name Varchar(20),
    description Varchar(20),
    price DECIMAL(10,2),
    quantity INT,
    category Varchar(20)
);

INSERT INTO PRODUCTS VALUES('Samsung Desktop','Wireless and Wired', 60780.66, 50,'Electronics');
INSERT INTO PRODUCTS VALUES('Painting','Ancient Masterpiece', 900500.60, 2,'Art');
INSERT INTO PRODUCTS VALUES('Li Ning 65X','Strongest Carbon fibre induced badminton bat', 15600.90, 8,'Sports');
INSERT INTO PRODUCTS VALUES('LG TV','65" TV with OLED display', 95999.00, 20,'Electronics');
INSERT INTO PRODUCTS VALUES('Yamaha Keyboard','Professional keyboard', 35000.55, 60,'Music Instruments');

--select_all_products
select * from PRODUCTS

--select_products_lesser_than_a_speified_price:
SELECT * FROM PRODUCTS WHERE price < 35000 ;

--select_product_more_than_a_specified_quantity:
SELECT * FROM PRODUCTS WHERE quantity > 8;

--update_price_of_a_specified_product:
SET SQL_SAFE_UPDATES = 0;
UPDATE PRODUCTS 
SET price = 900000
WHERE quantity = 2;

--delete_a_product
DELETE FROM PRODUCTS WHERE Name = 'Painting';