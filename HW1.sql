/* Создайте таблицу с мобильными телефонами (mobile_phones), используя графический интерфейс. 
-- Заполните БД данными. Добавьте скриншот на платформу в качестве ответа на ДЗ 
Необходимые поля таблицы:
    product_name (название товара),
    manufacturer (производитель),
    product_count (количество),
    price (цена).
  Заполните БД произвольными данными
 */
-- CREATE SCHEMA  hw_1;
 -- Use hw_1; 
drop Table hw_1.mobilt__phones ;
  CREATE TABLE hw_1.mobilt__phones (
  id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(45) NOT NULL,
  manufacturer VARCHAR(45) NOT NULL,
  product_count INT  NOT NULL,
  price Float  NOT NULL,
  PRIMARY KEY (id));
  
 -- Наполнение таблицы
 INSERT mobilt__phones ( product_name, manufacturer, product_count, price)
  VALUES 
  ( "IphoneX", "Apple", 3, 76000), 
  ( "Iphone8", "Apple", 2, 51000),
  ( "GalaxyS9", "Samsung", 2, 56000),
  ( "GalaxyS8", "Samsung", 1, 41000), 
  ("P20Pro", "Huawei", 5, 36000); 
  -- Выведите название, производителя и цену для товаров, количество которых превышает 2 
  Select * from mobilt__phones 
  Where product_count >=2 ;
  -- Выведите весь ассортимент товаров марки “Samsung”
Select * from mobilt__phones 
  Where manufacturer = "Samsung" ;
  -- 4. (по желанию)* С помощью регулярных выражений найти:
 --	4.1. Товары, в которых есть упоминание "Iphone"
Select * from mobilt__phones 
  Where product_name like "%Iphone%" ;
  -- Товары, в которых есть упоминание "Samsung"
  Select * from mobilt__phones 
  Where manufacturer like "%Samsung%" ;
  -- Товары, в которых есть ЦИФРЫ
  Select * from mobilt__phones
  Where product_name REGEXP '[0-9]' ;
 -- Товары, в которых есть ЦИФРА "8"  
  Select * from mobilt__phones
  Where product_name like "%8%" ;
  
