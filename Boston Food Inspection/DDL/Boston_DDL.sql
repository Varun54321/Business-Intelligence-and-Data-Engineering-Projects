
-- ER/Studio Data Architect SQL Code Generation
-- Project :      Boston_Final.DM1
--
-- Date Created : Saturday, February 26, 2022 23:14:35
-- Target DBMS : MySQL 8.x

CREATE DATABASE `boston_final`;

CREATE TABLE `dimbusiness` (
  `Business_id` bigint DEFAULT NULL,
  `BusinessName` varchar(56) DEFAULT NULL,
  `DBAName` varchar(36) DEFAULT NULL,
  `legalowner` varchar(45) DEFAULT NULL,
  `namelast` varchar(48) DEFAULT NULL,
  `namefirst` varchar(34) DEFAULT NULL,
  `Descript` varchar(29) DEFAULT NULL
);

CREATE TABLE `dimdate_time` (
  `Date_Time_id` int DEFAULT NULL,
  `issdttm` char(19) DEFAULT NULL,
  `expdttm` char(19) DEFAULT NULL,
  `resultdttm` char(19) DEFAULT NULL,
  `violdttm` char(19) DEFAULT NULL,
  `statusdate` char(19) DEFAULT NULL
) ;

CREATE TABLE `dimgeo` (
  `Geo_id` int DEFAULT NULL,
  `Address` varchar(28) DEFAULT NULL,
  `City` varchar(27) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  `Zip` char(5) DEFAULT NULL,
  `Latitude` double DEFAULT NULL,
  `Longitude` double DEFAULT NULL
) ;

CREATE TABLE `dimlicense` (
  `License_id` int DEFAULT NULL,
  `Licenseno` int DEFAULT NULL,
  `Licensecat` char(3) DEFAULT NULL
) ;

CREATE TABLE `dimproperty` (
  `Property_Key` int DEFAULT NULL,
  `LicenseAddDtTm` datetime DEFAULT NULL,
  `dayphn` bigint DEFAULT NULL,
  `Property_id` int DEFAULT NULL
) ;

CREATE TABLE `dimviolation` (
  `Violation_id` int DEFAULT NULL,
  `violation` varchar(24) DEFAULT NULL,
  `violdesc` varchar(141) DEFAULT NULL,
  `comments` varchar(254) DEFAULT NULL
) ;

CREATE TABLE `factboston` (
  `Business_id` bigint DEFAULT NULL,
  `Date_Time_id` int DEFAULT NULL,
  `Violation_id` int DEFAULT NULL,
  `License_id` int DEFAULT NULL,
  `Geo_id` int DEFAULT NULL,
  `Property_Key` int DEFAULT NULL,
  `Fact_id` int DEFAULT NULL,
  `licstatus` char(8) DEFAULT NULL,
  `result` char(10) DEFAULT NULL,
  `viollevel` char(4) DEFAULT NULL,
  `violstatus` char(4) DEFAULT NULL
) ;