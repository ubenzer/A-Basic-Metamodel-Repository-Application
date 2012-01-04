-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 04, 2012 at 06:55 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `metamodel_repository`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

DROP TABLE IF EXISTS `attribute`;
CREATE TABLE `attribute` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `entityFK` int(11) NOT NULL,
  `isPartOfKeyAttib` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'is this attribute part of an primary identifier?',
  `attributetypeFK` int(11) DEFAULT NULL COMMENT 'Ya bu ya domainFK bilgi icerecek',
  `domainFK` int(11) DEFAULT NULL COMMENT 'Ya bu ya domainFK bilgi icerecek',
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK7839CA7C253BE3EF` (`entityFK`),
  KEY `FK7839CA7C5AFA4E6D` (`attributetypeFK`),
  KEY `FK7839CA7CE42F1171` (`domainFK`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=111 ;

--
-- Dumping data for table `attribute`
--

INSERT INTO `attribute` (`ID`, `entityFK`, `isPartOfKeyAttib`, `attributetypeFK`, `domainFK`, `name`) VALUES
(1, 1, 1, 1, NULL, 'applicationID'),
(2, 1, 0, 2, NULL, 'applicationDescription'),
(3, 1, 0, 2, NULL, 'softwareSupplierFK'),
(5, 1, 0, 3, NULL, 'firstIntalledDate'),
(6, 1, 0, 2, NULL, 'status'),
(7, 1, 0, 4, NULL, 'applicationOwner'),
(8, 1, 0, 4, NULL, 'applicationManager'),
(9, 2, 1, 1, NULL, 'softwareSupplierID'),
(10, 2, 0, 2, NULL, 'softwareSupplierdescription'),
(11, 3, 1, 1, NULL, 'applicationInstalliationID'),
(12, 3, 1, 1, NULL, 'applicationFK'),
(13, 3, 0, 1, NULL, 'applicationReleaseFK'),
(14, 3, 0, 2, NULL, 'applicationInstalliationDescription'),
(15, 3, 0, 3, NULL, 'applicationInstalliationDate'),
(16, 4, 1, 1, NULL, 'applicationReleaseID'),
(17, 4, 1, 1, NULL, 'applicationFK'),
(18, 4, 0, 2, NULL, 'applicationReleaseDescription'),
(19, 5, 1, 1, NULL, 'applicationModuleID'),
(20, 5, 0, 2, NULL, 'applicationModuleDescription'),
(21, 5, 1, 1, NULL, 'applicationFK'),
(22, 5, 0, 4, NULL, 'applicationModuleCoordinator'),
(24, 8, 1, 1, NULL, 'applicationFK'),
(25, 8, 1, 1, NULL, 'applicationModuleFK'),
(26, 8, 1, 1, NULL, 'applicationModuleReleaseID'),
(27, 8, 0, 2, NULL, 'applcationReleaseDescription'),
(28, 8, 0, 3, NULL, 'applicationModuleReleasePlannedDeploymentDate'),
(29, 8, 0, 3, NULL, 'applicationModuleReleaseActualDeploymentDate'),
(30, 9, 1, 1, NULL, 'applicationFK'),
(31, 9, 1, 1, NULL, 'applicationModuleFK'),
(32, 9, 1, 1, NULL, 'applicationModuleReleaseFK'),
(33, 10, 1, 1, NULL, 'applicationUserID'),
(34, 10, 0, 3, NULL, 'validFrom'),
(35, 10, 0, 3, NULL, 'validTo'),
(36, 11, 1, 1, NULL, 'applicationUserFK'),
(37, 11, 1, 1, NULL, 'applicationInstalliationFK'),
(38, 11, 1, 1, NULL, 'applicationFK'),
(39, 12, 1, 1, NULL, 'businessEventID'),
(40, 12, 0, 2, NULL, 'businessEventDescription'),
(41, 13, 1, 1, NULL, 'processID'),
(42, 13, 0, 2, NULL, 'processDescription'),
(43, 13, 0, 1, NULL, 'triggeringEventFK'),
(44, 14, 1, 1, NULL, 'parentProcessFK'),
(45, 14, 1, 1, NULL, 'childProcessFK'),
(46, 15, 1, 1, NULL, 'individualFK'),
(47, 15, 1, 1, NULL, 'jobRoleFK'),
(48, 15, 0, 2, NULL, 'assignmentDescription'),
(49, 15, 0, 3, NULL, 'actualStartDate'),
(50, 15, 0, 3, NULL, 'plannedStartDate'),
(51, 15, 0, 3, NULL, 'actualEndDate'),
(52, 15, 0, 3, NULL, 'plannedEndDate'),
(53, 16, 1, 1, NULL, 'jobRoleID'),
(54, 16, 0, 2, NULL, 'jobRoleDescription'),
(55, 16, 0, 1, NULL, 'projectFK'),
(56, 16, 0, 1, NULL, 'supervizorFK'),
(57, 16, 0, 3, NULL, 'jobRoleSpecificationDate'),
(58, 16, 0, 3, NULL, 'jobRoleAmendmentDate'),
(59, 17, 1, 1, NULL, 'individualID'),
(60, 17, 0, 1, NULL, 'supervizorFK'),
(61, 17, 0, 5, NULL, 'isSupervizor'),
(62, 5, 0, 1, NULL, 'moduleType'),
(63, 18, 0, 2, NULL, 'supervizorRoleDescription'),
(64, 20, 1, 1, NULL, 'projectID'),
(65, 20, 0, 2, NULL, 'projectDescription'),
(66, 20, 0, 1, NULL, 'projectPlanIdentifierFK'),
(67, 20, 0, 3, NULL, 'projectPlannedStartDate'),
(68, 20, 0, 3, NULL, 'projectActualStartDate'),
(69, 20, 0, 3, NULL, 'projectPlannedEndDate'),
(70, 20, 0, 3, NULL, 'projectActualEndDate'),
(71, 21, 1, 1, NULL, 'projectIdentifierFK'),
(72, 21, 1, 1, NULL, 'projectPlanRevisionIdentifier'),
(73, 21, 0, 1, NULL, 'plannedBudget'),
(74, 21, 0, 3, NULL, 'plannedStartDate'),
(75, 21, 0, 3, NULL, 'plannedEndDate'),
(76, 22, 1, 1, NULL, 'projectIdentifierFK'),
(77, 22, 1, 1, NULL, 'projectPhaseID'),
(78, 22, 0, 2, NULL, 'projectPhasePlannedStartDate'),
(79, 22, 0, 3, NULL, 'projectPhasePlannedEndDate'),
(80, 22, 0, 3, NULL, 'projectPhaseActualStartDate'),
(81, 22, 0, 3, NULL, 'projectPhaseActualEndDate'),
(82, 23, 1, 1, NULL, 'responsibiltyID'),
(83, 23, 0, 1, NULL, 'jobRoleFK'),
(84, 23, 0, 2, NULL, 'responsibiltyDescription'),
(85, 23, 0, 1, NULL, 'supervizorFK'),
(86, 24, 1, 1, NULL, 'taskID'),
(87, 24, 0, 1, NULL, 'jobRoleFK'),
(88, 24, 0, 2, NULL, 'taskDescription'),
(89, 24, 0, 1, NULL, 'individualFK'),
(90, 24, 0, 1, NULL, 'supervizorFK'),
(91, 25, 1, 1, NULL, 'computerID'),
(92, 25, 0, 2, NULL, 'serialNumber'),
(93, 25, 0, 2, NULL, 'computerDescription'),
(94, 25, 0, 5, NULL, 'isServer'),
(95, 25, 0, 1, NULL, 'locationFK'),
(96, 27, 1, 1, NULL, 'locationID'),
(97, 27, 0, 2, NULL, 'locationDescription'),
(98, 27, 0, 4, NULL, 'physicalAdressIdentifierReference'),
(99, 28, 1, 1, NULL, 'networkID'),
(100, 28, 0, 2, NULL, 'networkDescription'),
(101, 28, 0, 1, NULL, 'controllerServerFK'),
(102, 29, 1, 1, NULL, 'networkNodeID'),
(103, 29, 0, 2, NULL, 'networkNodeDescription'),
(104, 29, 0, 1, NULL, 'locationFK'),
(105, 29, 0, 1, NULL, 'networkFK'),
(106, 29, 0, 1, NULL, 'computerFK'),
(107, 30, 1, 1, NULL, 'deviceID'),
(108, 30, 0, 2, NULL, 'deviceDescription'),
(109, 30, 0, 4, NULL, 'hardwareDeviceSupplier'),
(110, 3, 0, 1, NULL, 'networkNodeFK');

-- --------------------------------------------------------

--
-- Table structure for table `attributetype`
--

DROP TABLE IF EXISTS `attributetype`;
CREATE TABLE `attributetype` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `attributetype`
--

INSERT INTO `attributetype` (`ID`, `name`) VALUES
(1, 'INT'),
(2, 'TEXT'),
(3, 'DATETIME'),
(4, 'OTHER_METAMODEL_REFERENCE'),
(5, 'BOOLEAN');

-- --------------------------------------------------------

--
-- Table structure for table `datamodel`
--

DROP TABLE IF EXISTS `datamodel`;
CREATE TABLE `datamodel` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `datamodel`
--

INSERT INTO `datamodel` (`ID`, `name`) VALUES
(1, 'The Application Management Metamodel'),
(2, 'The Activity Management Metamodel'),
(3, 'The Infrastructure Management Metamodel');

-- --------------------------------------------------------

--
-- Table structure for table `datamodelattribute`
--

DROP TABLE IF EXISTS `datamodelattribute`;
CREATE TABLE `datamodelattribute` (
  `datamodelFK` int(11) NOT NULL,
  `attributeFK` int(11) NOT NULL,
  PRIMARY KEY (`datamodelFK`,`attributeFK`),
  KEY `FK1366BBDC2348C59` (`attributeFK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datamodelattribute`
--

INSERT INTO `datamodelattribute` (`datamodelFK`, `attributeFK`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(2, 46),
(2, 47),
(2, 48),
(2, 49),
(2, 50),
(2, 51),
(2, 52),
(2, 53),
(2, 54),
(2, 55),
(2, 56),
(2, 57),
(2, 58),
(2, 59),
(2, 60),
(2, 61),
(1, 62),
(2, 63),
(2, 64),
(2, 65),
(2, 66),
(2, 67),
(2, 68),
(2, 69),
(2, 70),
(2, 71),
(2, 72),
(2, 73),
(2, 74),
(2, 75),
(2, 76),
(2, 77),
(2, 78),
(2, 79),
(2, 80),
(2, 81),
(2, 82),
(2, 83),
(2, 84),
(2, 85),
(2, 86),
(2, 87),
(2, 88),
(2, 89),
(2, 90),
(3, 91),
(3, 92),
(3, 93),
(3, 94),
(3, 95),
(3, 96),
(3, 97),
(3, 98),
(3, 99),
(3, 100),
(3, 101),
(3, 102),
(3, 103),
(3, 104),
(3, 105),
(3, 106),
(3, 107),
(3, 108),
(3, 109),
(1, 110);

-- --------------------------------------------------------

--
-- Table structure for table `datamodelentity`
--

DROP TABLE IF EXISTS `datamodelentity`;
CREATE TABLE `datamodelentity` (
  `datamodelFK` int(11) NOT NULL,
  `entityFK` int(11) NOT NULL,
  PRIMARY KEY (`datamodelFK`,`entityFK`),
  KEY `FKE7F69E624ADC95BF` (`datamodelFK`),
  KEY `FKE7F69E62253BE3EF` (`entityFK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datamodelentity`
--

INSERT INTO `datamodelentity` (`datamodelFK`, `entityFK`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(3, 25),
(3, 26),
(3, 27),
(3, 28),
(3, 29),
(3, 30);

-- --------------------------------------------------------

--
-- Table structure for table `datamodelrelationship`
--

DROP TABLE IF EXISTS `datamodelrelationship`;
CREATE TABLE `datamodelrelationship` (
  `datamodelFK` int(11) NOT NULL,
  `relationshipFK` int(11) NOT NULL,
  PRIMARY KEY (`datamodelFK`,`relationshipFK`),
  KEY `FK49011577EBC11C59` (`relationshipFK`),
  KEY `FK490115774ADC95BF` (`datamodelFK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datamodelrelationship`
--

INSERT INTO `datamodelrelationship` (`datamodelFK`, `relationshipFK`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(3, 35),
(3, 36),
(3, 37),
(3, 38),
(3, 39);

-- --------------------------------------------------------

--
-- Table structure for table `datamodelsubtyping`
--

DROP TABLE IF EXISTS `datamodelsubtyping`;
CREATE TABLE `datamodelsubtyping` (
  `datamodelFK` int(11) NOT NULL,
  `subtypingFK` int(11) NOT NULL,
  PRIMARY KEY (`datamodelFK`,`subtypingFK`),
  KEY `FK220894D84ADC95BF` (`datamodelFK`),
  KEY `FK220894D817F303CF` (`subtypingFK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datamodelsubtyping`
--

INSERT INTO `datamodelsubtyping` (`datamodelFK`, `subtypingFK`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `domain`
--

DROP TABLE IF EXISTS `domain`;
CREATE TABLE `domain` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `constraintExpression` longtext NOT NULL,
  `attributetypeFK` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK7A58C0E45AFA4E6D` (`attributetypeFK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `entity`
--

DROP TABLE IF EXISTS `entity`;
CREATE TABLE `entity` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `entityName` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `entity`
--

INSERT INTO `entity` (`ID`, `entityName`) VALUES
(1, 'application'),
(2, 'softwareSupplier'),
(3, 'applicationInstalliation'),
(4, 'applicationRelease'),
(5, 'applicationModule'),
(6, 'applicationDevelopmentModule'),
(7, 'applicationSecurityModule'),
(8, 'applicationDevelopmentModuleRelease'),
(9, 'applicationModuleRelease_ApplicationRelease'),
(10, 'applicationUser'),
(11, 'applicationUser_applicationInstalliation'),
(12, 'businessEvent'),
(13, 'businessProcess'),
(14, 'processDecomposition'),
(15, 'assignment'),
(16, 'jobRole'),
(17, 'individual'),
(18, 'supervizor'),
(19, 'IT employee'),
(20, 'project'),
(21, 'projectPlan'),
(22, 'projectPhase'),
(23, 'responsibility'),
(24, 'task'),
(25, 'computer'),
(26, 'server'),
(27, 'location'),
(28, 'network'),
(29, 'networkNode'),
(30, 'peripheralDevice');

-- --------------------------------------------------------

--
-- Table structure for table `instance`
--

DROP TABLE IF EXISTS `instance`;
CREATE TABLE `instance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `entityFK` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK24F0F8B5253BE3EF` (`entityFK`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='instance' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `instance`
--

INSERT INTO `instance` (`ID`, `entityFK`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `instance_attribute`
--

DROP TABLE IF EXISTS `instance_attribute`;
CREATE TABLE `instance_attribute` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `instanceFK` int(11) NOT NULL,
  `attributeFK` int(11) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UQ` (`instanceFK`,`attributeFK`),
  KEY `FKC6124372C2348C59` (`attributeFK`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Attribute Value karşılığı' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `instance_attribute`
--

INSERT INTO `instance_attribute` (`ID`, `instanceFK`, `attributeFK`, `value`) VALUES
(1, 1, 1, '12'),
(2, 1, 2, 'Microsoft Office 2010'),
(3, 1, 3, '1'),
(4, 1, 5, '12 Mon 2011'),
(5, 1, 6, 'RELEASE_VERSION'),
(6, 1, 7, 'Ege Universitesi'),
(7, 1, 8, 'UMUT BENZER'),
(8, 2, 9, '1'),
(9, 2, 10, 'Microsoft is a software developer.');

-- --------------------------------------------------------

--
-- Table structure for table `relationship`
--

DROP TABLE IF EXISTS `relationship`;
CREATE TABLE `relationship` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `entityIdentifierAttributeFK` int(11) NOT NULL,
  `entityForeignIdentifierAttributeFK` int(11) NOT NULL COMMENT 'primaryKeyAttributeReference',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UQ` (`entityIdentifierAttributeFK`,`entityForeignIdentifierAttributeFK`),
  KEY `FKFA2FCA5826F4991F` (`entityForeignIdentifierAttributeFK`),
  KEY `FKFA2FCA58EBA1040D` (`entityIdentifierAttributeFK`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `relationship`
--

INSERT INTO `relationship` (`ID`, `entityIdentifierAttributeFK`, `entityForeignIdentifierAttributeFK`) VALUES
(2, 1, 12),
(3, 1, 17),
(4, 1, 21),
(5, 9, 3),
(6, 11, 37),
(7, 12, 38),
(8, 16, 13),
(9, 17, 12),
(10, 19, 25),
(11, 19, 31),
(12, 21, 9),
(13, 21, 17),
(14, 21, 24),
(15, 24, 9),
(16, 25, 31),
(17, 26, 32),
(18, 36, 33),
(19, 43, 39),
(20, 44, 41),
(21, 45, 41),
(22, 53, 47),
(23, 53, 83),
(24, 53, 87),
(25, 59, 46),
(26, 59, 56),
(27, 59, 60),
(28, 59, 85),
(29, 59, 89),
(30, 59, 90),
(31, 64, 55),
(32, 64, 71),
(33, 64, 76),
(34, 72, 66),
(35, 91, 101),
(36, 91, 106),
(37, 96, 95),
(38, 96, 104),
(39, 99, 105),
(40, 102, 110);

-- --------------------------------------------------------

--
-- Table structure for table `subtyping`
--

DROP TABLE IF EXISTS `subtyping`;
CREATE TABLE `subtyping` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `supertypeEntityFK` int(11) NOT NULL,
  `subtypeEntityFK` int(11) NOT NULL,
  `categorizingAttributeID` int(11) NOT NULL,
  `categorizingValue` longtext NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UQ` (`supertypeEntityFK`,`subtypeEntityFK`),
  KEY `FK990BF39757C5A824` (`supertypeEntityFK`),
  KEY `FK990BF397470AF769` (`subtypeEntityFK`),
  KEY `FK990BF397FACD3FD9` (`categorizingAttributeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `subtyping`
--

INSERT INTO `subtyping` (`ID`, `supertypeEntityFK`, `subtypeEntityFK`, `categorizingAttributeID`, `categorizingValue`) VALUES
(1, 5, 6, 62, '0'),
(2, 5, 7, 62, '1'),
(3, 17, 18, 61, '1'),
(4, 17, 19, 61, '0'),
(5, 25, 26, 94, '1');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute`
--
ALTER TABLE `attribute`
  ADD CONSTRAINT `FK7839CA7C253BE3EF` FOREIGN KEY (`entityFK`) REFERENCES `entity` (`ID`),
  ADD CONSTRAINT `FK7839CA7C5AFA4E6D` FOREIGN KEY (`attributetypeFK`) REFERENCES `attributetype` (`ID`),
  ADD CONSTRAINT `FK7839CA7CE42F1171` FOREIGN KEY (`domainFK`) REFERENCES `domain` (`ID`);

--
-- Constraints for table `datamodelattribute`
--
ALTER TABLE `datamodelattribute`
  ADD CONSTRAINT `FK1366BBD4ADC95BF` FOREIGN KEY (`datamodelFK`) REFERENCES `datamodel` (`ID`),
  ADD CONSTRAINT `FK1366BBDC2348C59` FOREIGN KEY (`attributeFK`) REFERENCES `attribute` (`ID`);

--
-- Constraints for table `datamodelentity`
--
ALTER TABLE `datamodelentity`
  ADD CONSTRAINT `FKE7F69E62253BE3EF` FOREIGN KEY (`entityFK`) REFERENCES `entity` (`ID`),
  ADD CONSTRAINT `FKE7F69E624ADC95BF` FOREIGN KEY (`datamodelFK`) REFERENCES `datamodel` (`ID`);

--
-- Constraints for table `datamodelrelationship`
--
ALTER TABLE `datamodelrelationship`
  ADD CONSTRAINT `FK490115774ADC95BF` FOREIGN KEY (`datamodelFK`) REFERENCES `datamodel` (`ID`),
  ADD CONSTRAINT `FK49011577EBC11C59` FOREIGN KEY (`relationshipFK`) REFERENCES `relationship` (`ID`);

--
-- Constraints for table `datamodelsubtyping`
--
ALTER TABLE `datamodelsubtyping`
  ADD CONSTRAINT `FK220894D817F303CF` FOREIGN KEY (`subtypingFK`) REFERENCES `subtyping` (`ID`),
  ADD CONSTRAINT `FK220894D84ADC95BF` FOREIGN KEY (`datamodelFK`) REFERENCES `datamodel` (`ID`);

--
-- Constraints for table `domain`
--
ALTER TABLE `domain`
  ADD CONSTRAINT `FK7A58C0E45AFA4E6D` FOREIGN KEY (`attributetypeFK`) REFERENCES `attributetype` (`ID`);

--
-- Constraints for table `instance`
--
ALTER TABLE `instance`
  ADD CONSTRAINT `FK24F0F8B5253BE3EF` FOREIGN KEY (`entityFK`) REFERENCES `entity` (`ID`);

--
-- Constraints for table `instance_attribute`
--
ALTER TABLE `instance_attribute`
  ADD CONSTRAINT `FKC61243725F58A2FD` FOREIGN KEY (`instanceFK`) REFERENCES `instance_attribute` (`ID`),
  ADD CONSTRAINT `FKC6124372C2348C59` FOREIGN KEY (`attributeFK`) REFERENCES `attribute` (`ID`),
  ADD CONSTRAINT `FKC6124372F25567D3` FOREIGN KEY (`instanceFK`) REFERENCES `instance` (`ID`);

--
-- Constraints for table `relationship`
--
ALTER TABLE `relationship`
  ADD CONSTRAINT `FKFA2FCA5826F4991F` FOREIGN KEY (`entityForeignIdentifierAttributeFK`) REFERENCES `attribute` (`ID`),
  ADD CONSTRAINT `FKFA2FCA58EBA1040D` FOREIGN KEY (`entityIdentifierAttributeFK`) REFERENCES `attribute` (`ID`);

--
-- Constraints for table `subtyping`
--
ALTER TABLE `subtyping`
  ADD CONSTRAINT `FK990BF397470AF769` FOREIGN KEY (`subtypeEntityFK`) REFERENCES `entity` (`ID`),
  ADD CONSTRAINT `FK990BF39757C5A824` FOREIGN KEY (`supertypeEntityFK`) REFERENCES `entity` (`ID`),
  ADD CONSTRAINT `FK990BF397FACD3FD9` FOREIGN KEY (`categorizingAttributeID`) REFERENCES `attribute` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
