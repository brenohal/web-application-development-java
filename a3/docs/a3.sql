DROP DATABASE IF EXISTS bmo22a;  
CREATE DATABASE IF NOT EXISTS bmo22a;  
USE bmo22a;  

-- Table: petstore
CREATE TABLE petstore (
    pst_id SMALLINT PRIMARY KEY,
    pst_name VARCHAR(30),
    pst_street VARCHAR(30),
    pst_city VARCHAR(30),
    pst_state CHAR(2),
    pst_zip INT(9),
    pst_phone BIGINT,
    pst_email VARCHAR(100),
    pst_url VARCHAR(100),
    pst_ytd_sales DECIMAL(10,2),
    pst_notes VARCHAR(255)
);

-- Table: customer
CREATE TABLE customer (
    cus_id SMALLINT PRIMARY KEY,
    cus_fname VARCHAR(15),
    cus_lname VARCHAR(30),
    cus_street VARCHAR(30),
    cus_city VARCHAR(30),
    cus_state CHAR(2),
    cus_zip INT,
    cus_phone BIGINT,
    cus_email VARCHAR(100),
    cus_balance DECIMAL(6,2),
    cus_total_sales DECIMAL(6,2),
    cus_notes VARCHAR(255)
);

-- Table: pet
CREATE TABLE pet (
    pet_id SMALLINT PRIMARY KEY,
    pst_id SMALLINT,
    cus_id SMALLINT NULL,
    pet_type VARCHAR(45),
    pet_sex ENUM('m', 'f'),
    pet_cost DECIMAL(6,2),
    pet_price DECIMAL(6,2),
    pet_age TINYINT,
    pet_color VARCHAR(30),
    pet_sale_date DATE,
    pet_vaccine ENUM('y', 'n'),
    pet_neuter ENUM('y', 'n'),
    pet_notes VARCHAR(255),
    FOREIGN KEY (pst_id) REFERENCES petstore(pst_id) ON DELETE CASCADE,
    FOREIGN KEY (cus_id) REFERENCES customer(cus_id) ON DELETE SET NULL
);

use bmo22a;
select * from pet;
select * from petstore;
select * from customer;

