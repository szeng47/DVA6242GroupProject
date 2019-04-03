
— CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';
CREATE USER IF NOT EXISTS gatechUser@localhost IDENTIFIED BY 'gatech123';

DROP DATABASE IF EXISTS `cse6242_sp19_team127`; 
SET default_storage_engine=InnoDB;
SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE DATABASE IF NOT EXISTS cs6400_fa18_team056 
    DEFAULT CHARACTER SET utf8mb4 
    DEFAULT COLLATE utf8mb4_unicode_ci;
USE cs6400_fa18_team056;

GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON *.* TO 'gatechUser'@'localhost';
GRANT ALL PRIVILEGES ON `gatechuser`.* TO 'gatechUser'@'localhost';
GRANT ALL PRIVILEGES ON `cse6242_sp19_team127`.* TO 'gatechUser'@'localhost';
FLUSH PRIVILEGES;

-- Tables 

CREATE TABLE Bus (
  id varchar(250) NOT NULL,
  name varchar(100) NOT NULL,
  latitude varchar(100) NOT NULL,
  longitude varchar(250) NOT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE Subway (
  id varchar(250) NOT NULL,
  latitude varchar(100) NOT NULL,
  longitude varchar(250) NOT NULL,
  stop_weight varchar(100) NOT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE Tree (
  num varchar(50) NOT NULL,
  zipcode varchar(100) NOT NULL,
  zip_city varchar(100) NOT NULL,
  cb_num varchar(100) NOT NULL,
  boroname varchar(100) NOT NULL,
  nta_name varchar(100) NOT NULL,
  boro_ct varchar(100) NOT NULL,
  Latitude varchar(100) NOT NULL,
  longitude varchar(100) NOT NULL,
  PRIMARY KEY (num)
);

CREATE TABLE Rat (
  num varchar(50) NOT NULL,
  Zip varchar(50) NOT NULL,
  City varchar(100) NOT NULL,
  Borough varchar(100) NOT NULL,
  Latitude varchar(100) NOT NULL,
  Longitude varchar(100) NOT NULL,
  PRIMARY KEY (num)
);


CREATE TABLE HighSchool (
  num int(16) NOT NULL,
  Name varchar(200) NOT NULL,
  Zip varchar(50) NOT NULL,
  Latitude varchar(100) NOT NULL,
  Longitude varchar(100) NOT NULL,
  score double(16) NOT NULL,
  PRIMARY KEY (num)

);

CREATE TABLE MiddleSchool (
  num int(16) NOT NULL,
  Name varchar(200) NOT NULL,
  Zip varchar(50) NOT NULL,
  Latitude varchar(100) NOT NULL,
  Longitude varchar(100) NOT NULL,
  score double(16) NOT NULL,
  PRIMARY KEY (num)
);

CREATE TABLE Prek (
  num int(16) NOT NULL,
  Name varchar(200) NOT NULL,
  address varchar(200) NOT NULL,
  Zip varchar(50) NOT NULL,
  Latitude varchar(100) NOT NULL,
  Longitude varchar(100) NOT NULL,
  PRIMARY KEY (num)
);

CREATE TABLE Crime(

);

