DROP DATABASE IF EXISTS Ecommerce;

CREATE DATABASE Ecommerce;

USE Ecommerce;

CREATE TABLE ACTIVITY_STATE(
Id_State INTEGER PRIMARY KEY ,
Name VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS USER(
Id INTEGER PRIMARY KEY AUTO_INCREMENT,
Firts_Name VARCHAR(30) NOT NULL,
Last_Name VARCHAR(30) NOT NULL,
Email VARCHAR(40) NOT NULL,
Address VARCHAR(150) NOT NULL,
Password VARCHAR(30) NOT NULL,
Check_Email BOOLEAN DEFAULT false NOT NULL,
Id_State INT DEFAULT 1, FOREIGN KEY(Id_State) REFERENCES ACTIVITY_STATE(Id_State) 
);


CREATE TABLE IF NOt EXISTS USER_TYPE(
Id_User_Type INTEGER PRIMARY KEY,
Name VARCHAR(30) NOT NULL,
Description VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS USER_USER_TYPE(
Id INTEGER PRIMARY KEY AUTO_INCREMENT,
Id_User_FK INTEGER , FOREIGN KEY (Id_User_FK) REFERENCES USER(Id),
Id_User_Type_FK INTEGER, FOREIGN KEY (Id_User_Type_FK) REFERENCES USER_TYPE(Id_User_Type)
);


CREATE TABLE IF NOT EXISTS DEPARTMENT(
Id INTEGER PRIMARY KEY,
Name VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS CATEGORY(
Id INTEGER PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(30) NOT NULL,
Description VARCHAR(100) NOT NULL,
Status INT DEFAULT 1 ,
Image VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS STATE(
Id INTEGER PRIMARY KEY,
Name VARCHAR(45)
);


CREATE TABLE IF NOT EXISTS PRODUCT(
Id INTEGER PRIMARY KEY,
Name VARCHAR(30) NOT NULL,
Brand VARCHAR(30) NOT NULL,
Cost DECIMAL,
Description VARCHAR(50) NOT NULL,
Id_Category_FK INT , FOREIGN KEY (Id_Category_FK) REFERENCES CATEGORY(Id),
Id_User_FK INT ,FOREIGN KEY (Id_User_FK) REFERENCES USER(Id),
Image VARCHAR (200) NOT NULL ,
Date_Product DATE ,
Id_State_FK INT , FOREIGN KEY (Id_State_FK) REFERENCES STATE(Id),
Id_Department_FK Int ,FOREIGN KEY (Id_Department_FK) REFERENCES DEPARTMENT(Id),
Id_State INT DEFAULT 1, FOREIGN KEY(Id_State) REFERENCES ACTIVITY_STATE(Id_State) 
);



CREATE TABLE COMMENT (
Id_Comment INT PRIMARY KEY AUTO_INCREMENT,
Comment TEXT,
Date_Comment DATE,
Id_User_FK INT, FOREIGN KEY(Id_User_FK) REFERENCES USER (Id)
);

CREATE TABLE SELLER_COMMENT (
Id INTEGER PRIMARY KEY AUTO_INCREMENT,
Id_Comment_FK INT , FOREIGN KEY (Id_Comment_FK) REFERENCES COMMENT(Id_Comment),
Id_Seller_FK INT, FOREIGN KEY (Id_Seller_FK) REFERENCES USER(Id),
Qualification INT NOT NULL
);



CREATE TABLE PRODUCT_COMMENT (
Id INTEGER PRIMARY KEY AUTO_INCREMENT,
Id_Comment_FK INT , FOREIGN KEY (Id_Comment_FK) REFERENCES COMMENT(Id_Comment),
Id_Product_FK INT, FOREIGN KEY (Id_Product_FK) REFERENCES PRODUCT(Id)
);




CREATE TABLE COMPLAINT_TYPE(
Id_Complaint_Type INTEGER PRIMARY KEY,
Name_Complaint_Type VARCHAR(40)
);


CREATE TABLE COMPLAINTS(
Id_Complaints INT PRIMARY KEY AUTO_INCREMENT ,
Id_Whistleblower INT , FOREIGN KEY (Id_Whistleblower) REFERENCES USER(Id),
Id_Denounced INT,FOREIGN KEY (Id_Denounced) REFERENCES USER(Id),
Id_ComplaintType INT, FOREIGN KEY (Id_ComplaintType) REFERENCES  COMPLAINT_TYPE (Id_Complaint_Type),
Optional_Comment VARCHAR(45),
Date_Complaints TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);




CREATE TABLE WISH_LIST_USER(
Id INT PRIMARY KEY AUTO_INCREMENT,
Id_Product_FK INT , FOREIGN KEY (Id_Product_Fk) REFERENCES PRODUCT(Id),
Id_User_FK INT , FOREIGN KEY (Id_User_FK) REFERENCES USER (Id)
);

CREATE TABLE SUSCRIPTION (
Id_Suscription INT PRIMARY KEY AUTO_INCREMENT,
Id_User_FK INT ,FOREIGN KEY (Id_User_FK) REFERENCES USER (Id),
Id_Category_FK INT , FOREIGN KEY (Id_Category_FK) REFERENCES CATEGORY (Id)
);

CREATE TABLE TimePost(
    Id TINYINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    timePost INT NOT NULL DEFAULT 90
);












