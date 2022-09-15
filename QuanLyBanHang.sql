CREATE DATABASE QuanLyBanHang;

USE QuanLyBanHang;

CREATE TABLE Customer (
    cId VARCHAR(20) PRIMARY KEY,
    cName VARCHAR(50),
    cAge INT
);

CREATE TABLE Oder (
    oId VARCHAR(20) PRIMARY KEY,
    cId VARCHAR(20),
    oDate DATETIME,
    oTotalPrice INT,
    FOREIGN KEY (cID) REFERENCES Customer(cID)
);

CREATE TABLE Product (
    pId VARCHAR(20) PRIMARY KEY,
    pName VARCHAR(50),
    pPrice INT
);

CREATE TABLE OrderDetail (
    oId VARCHAR(20) PRIMARY KEY,
    pId VARCHAR(20),
    odQTY INT,
    FOREIGN KEY (oID) REFERENCES Oder(oID),
    FOREIGN KEY (pID) REFERENCES Product(pID)
);