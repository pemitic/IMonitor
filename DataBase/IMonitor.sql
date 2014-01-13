---------------------------------------------------------------------
-- Create Database
---------------------------------------------------------------------
USE master;

CREATE DATABASE IMonitor;
GO

USE IMonitor;
GO

---------------------------------------------------------------------
-- Create Tables
---------------------------------------------------------------------

-- Create table StoreInformation
CREATE TABLE StoreInformation
(
	storeNo			nvarchar(50)	primary key,
	storeRegion		nvarchar(50),
	storeType		nvarchar(50),
	printerIP		nvarchar(50),
	routerIP		nvarchar(50),
	laptopIP1		nvarchar(50),
	laptopIP2		nvarchar(50),
	emailAddress	nvarchar(200),
	printerType		nvarchar(100),
	tonerType		nvarchar(100),
	routerType		nvarchar(100)
)

-- Create table PrinterInformation
CREATE TABLE PrinterInformation
(
	storeNo			nvarchar(50),
	printerNetwork	nvarchar(50),
	printerStatus	nvarchar(200),
	tonerStatus		nvarchar(200),
	date			datetime
)

-- Create table FacilityInformation
CREATE TABLE FacilityInformation
(
	storeNo			nvarchar(50),
	routerNetwork	nvarchar(50),
	printerNetwork	nvarchar(50),
	laptopNetwork	nvarchar(50),
	printerService	nvarchar(50),
	date			datetime
)

-- Create table SendEmail
CREATE TABLE SendEmail
(
	storeNo			nvarchar(50),
	isSend			bit,
	date			datetime,
	tonerCount		int
)