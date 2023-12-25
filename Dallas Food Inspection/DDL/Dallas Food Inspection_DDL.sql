CREATE DATABASE `dallas`;
CREATE TABLE `Diminspection` (
`Inspection_id` int NOT NULL,
 `sor_key` int NOT NULL,
 `Inspection Type` char(9) ,
 `Inspection Date` char(10) ,
 `Inspection Month` char(8) ,
 `Inspection Year` char(6),
 PRIMARY KEY (Inspection_id)
);
CREATE TABLE `Dimlocation` (
 `Location_id` int NOT NULL,
 `sor_key` int NOT NULL,
 `Street Number` int ,
 `Street Name` varchar(25) ,
 `Street Direction` char(1) ,
 `Street Type` char(4) ,
 `Street Unit` char(5) ,
 `Street Address` varchar(36) ,
 `Zip Code` char(10) ,
 `Lat Long Location` varchar(59),
 PRIMARY KEY (Location_id)
) ;
CREATE TABLE `Dimrestaurent` (
 `Restaurent_id` int NOT NULL,
 `sor_key` int NOT NULL,
 `Restaurant Name` varchar(65),
 PRIMARY KEY (Restaurent_id)
);
CREATE TABLE `Dimviolation` (
 `Violation_id ` int NOT NULL,
 `sor_key` int NOT NULL,
 `Violation Description - 1` varchar(100) ,
 `Violation Detail - 1` varchar(254) ,
 `Violation Memo - 1` varchar(254) ,
 `Violation Description - 2` varchar(100) ,
 `Violation Detail - 2` char(254) ,
 `Violation Memo - 2` varchar(254) ,
 `Violation Description - 3` varchar(100) ,
 `Violation Detail - 3` char(254) ,
 `Violation Memo - 3` varchar(254) ,
 `Violation Description - 4` varchar(100) ,
 `Violation Detail - 4` char(254) ,
 `Violation Memo - 4` varchar(254) ,
 `Violation Description - 5` varchar(100) ,
 `Violation Detail - 5` char(254) ,
 `Violation Memo - 5` varchar(254) ,
 `Violation Description - 6` varchar(100) ,
 `Violation Detail - 6` char(254) ,
 `Violation Memo - 6` varchar(254) ,
 `Violation Description - 7` varchar(100) ,
 `Violation Detail - 7` char(254) ,
 `Violation Memo - 7` varchar(254) ,
 `Violation Description - 8` varchar(100) ,
 `Violation Detail - 8` char(254) ,
 `Violation Memo - 8` varchar(254) ,
 `Violation Description - 9` varchar(100) ,
 `Violation Detail - 9` char(254) ,
 `Violation Memo - 9` varchar(254) ,
 `Violation Description - 10` varchar(100),
 `Violation Detail - 10` char(254) ,
 `Violation Memo - 10` varchar(254) ,
 `Violation Description - 11` varchar(100) ,
 `Violation Detail - 11` char(254) ,
 `Violation Memo - 11` varchar(254) ,
 `Violation Description - 12` varchar(100) ,
 `Violation Detail - 12` char(254) ,
 `Violation Memo - 12` varchar(254) ,
 `Violation Description - 13` varchar(100) ,
 `Violation Detail - 13` char(254) ,
 `Violation Memo - 13` varchar(254) ,
 `Violation Description - 14` varchar(100) ,
 `Violation Detail - 14` char(254) ,
 `Violation Memo - 14` varchar(254) ,
 `Violation Description - 15` varchar(100) ,
 `Violation Detail - 15` varchar(254) ,
 `Violation Memo - 15` varchar(254) ,
 `Violation Description - 16` varchar(100) ,
 `Violation Detail - 16` varchar(254) ,
 `Violation Memo - 16` varchar(254) ,
 `Violation Description - 17` varchar(100) ,
 `Violation Detail - 17` char(254) ,
 `Violation Memo - 17` varchar(212) ,
 `Violation Description - 18` varchar(100) ,
 `Violation Detail - 18` char(254) ,
 `Violation Memo - 18` varchar(230) ,
 `Violation Description - 19` varchar(100) ,
 `Violation Detail - 19` char(254) ,
 `Violation Memo - 19` varchar(245) ,
 `Violation Description - 20` varchar(100) ,
 `Violation Detail - 20` char(254) ,
 `Violation Memo - 20` varchar(247) ,
 `Violation Description - 21` varchar(100),
 `Violation Detail - 21` char(254) ,
 `Violation Memo - 21` varchar(211) ,
 `Violation Description - 22` varchar(100) ,
 `Violation Detail - 22` varchar(254) ,
 `Violation Memo - 22` varchar(254) ,
 `Violation Description - 23` varchar(100) ,
 `Violation Detail - 23` char(254) ,
 `Violation Memo - 23` varchar(103) ,
 `Violation Description - 24` varchar(59) ,
 `Violation Detail - 24` varchar(254) ,
 `Violation Memo - 24` varchar(186) ,
 `Violation Description - 25` varchar(50) ,
 `Violation Detail - 25` varchar(254) ,
 `Violation Memo - 25` varchar(107) ,
 PRIMARY KEY (Violation_id)
);
CREATE TABLE `Factdallas` (
 `Restaurent_id` int NOT NULL,
 `Inspection_id` int NOT NULL,
 `Location_id` int NOT NULL,
 `Violation_id` int NOT NULL,
 `Fact_id` int NOT NULL,
 `Inspection Score` tinyint ,
 `Violation Points - 1` tinyint ,
 `Violation Points - 2` tinyint,
 `Violation Points - 3` tinyint ,
 `Violation Points - 4` tinyint ,
 `Violation Points - 5` tinyint ,
 `Violation Points - 6` tinyint ,
 `Violation Points - 7` tinyint ,
 `Violation Points - 8` tinyint ,
 `Violation Points - 9` tinyint ,
 `Violation Points - 10` tinyint ,
 `Violation Points - 11` tinyint ,
 `Violation Points - 12` tinyint ,
 `Violation Points - 13` tinyint ,
 `Violation Points - 14` tinyint ,
 `Violation Points - 15` tinyint ,
 `Violation Points - 16` tinyint ,
 `Violation Points - 17` tinyint ,
 `Violation Points - 18` tinyint ,
 `Violation Points - 19` tinyint ,
 `Violation Points - 20` tinyint ,
 `Violation Points - 21` tinyint ,
 `Violation Points - 22` tinyint ,
 `Violation Points - 23` tinyint ,
 `Violation Points - 24` tinyint ,
 `Violation Points - 25` tinyint,
 PRIMARY KEY (Inspection_id, Location_id, Restaurent_id, Violation_id, Fact_id )
);
--
-- TABLE: FactDallas
--
ALTER TABLE FactDallas ADD CONSTRAINT RefDimLocation1
 FOREIGN KEY (Location_id)
 REFERENCES DimLocation(Location_id)
;
ALTER TABLE FactDallas ADD CONSTRAINT RefDimViolation2
 FOREIGN KEY (Violation_id)
 REFERENCES DimViolation(Violation_id)
;
ALTER TABLE FactDallas ADD CONSTRAINT RefDimInspection3
 FOREIGN KEY (Inspection_id)
 REFERENCES DimInspection(Inspection_id)
;
ALTER TABLE FactDallas ADD CONSTRAINT RefDimRestaurent4
 FOREIGN KEY (Restaurent_id)
 REFERENCES DimRestaurent(Restaurent_id)
;