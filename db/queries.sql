-- DROP DATABASE IF EXISTS db_php;

CREATE DATABASE IF NOT EXISTS db_php;

USE db_php;

-- DROP TABLE IF EXISTS Brands;
-- DROP TABLE IF EXISTS Clothing;
-- DROP TABLE IF EXISTS clothes_crud;

CREATE TABLE IF NOT EXISTS Brands(
  id SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  brand_name VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO Brands (brand_name) VALUES (UPPER("nike")),(UPPER("adidas")),(UPPER("puma")),(UPPER("under armourd")),(UPPER("new balance")),(UPPER("asics"));

CREATE TABLE IF NOT EXISTS Clothing(
  id SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  clothing_name VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO Clothing (clothing_name) VALUES (UPPER("jersey")),(UPPER("jacket")),(UPPER("blouse")),(UPPER("shirt")),(UPPER("vest")),(UPPER("scarf")),(UPPER("gloves"));

CREATE TABLE IF NOT EXISTS clothes_crud (
  id INT AUTO_INCREMENT PRIMARY KEY,
  brand_id SMALLINT UNSIGNED NOT NULL,
  clothing_id SMALLINT UNSIGNED NOT NULL,
  releasing YEAR NOT NULL,
  register_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  CONSTRAINT FK_brand FOREIGN KEY (brand_id) REFERENCES Brands(id) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT FK_clothing FOREIGN KEY (clothing_id) REFERENCES Clothing(id) ON DELETE NO ACTION ON UPDATE CASCADE
);

INSERT INTO clothes_crud (brand_id,clothing_id,releasing) VALUES 
( FLOOR(RAND()*6 + 1) , FLOOR(RAND()*7 + 1) , FLOOR(RAND()*60 + 1950) ),
( FLOOR(RAND()*6 + 1) , FLOOR(RAND()*7 + 1) , FLOOR(RAND()*60 + 1950) ),
( FLOOR(RAND()*6 + 1) , FLOOR(RAND()*7 + 1) , FLOOR(RAND()*60 + 1950) ),
( FLOOR(RAND()*6 + 1) , FLOOR(RAND()*7 + 1) , FLOOR(RAND()*60 + 1950) ),
( FLOOR(RAND()*6 + 1) , FLOOR(RAND()*7 + 1) , FLOOR(RAND()*60 + 1950) ),
( FLOOR(RAND()*6 + 1) , FLOOR(RAND()*7 + 1) , FLOOR(RAND()*60 + 1950) ),
( FLOOR(RAND()*6 + 1) , FLOOR(RAND()*7 + 1) , FLOOR(RAND()*60 + 1950) ),
( FLOOR(RAND()*6 + 1) , FLOOR(RAND()*7 + 1) , FLOOR(RAND()*60 + 1950) ),
( FLOOR(RAND()*6 + 1) , FLOOR(RAND()*7 + 1) , FLOOR(RAND()*60 + 1950) ),
( FLOOR(RAND()*6 + 1) , FLOOR(RAND()*7 + 1) , FLOOR(RAND()*60 + 1950) )