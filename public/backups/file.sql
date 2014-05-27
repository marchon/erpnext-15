-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: erpnext
-- ------------------------------------------------------
-- Server version	5.5.31-0+wheezy1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `__Auth`
--

DROP TABLE IF EXISTS `__Auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__Auth` (
  `user` varchar(180) NOT NULL,
  `password` varchar(180) NOT NULL,
  PRIMARY KEY (`user`),
  KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__Auth`
--

LOCK TABLES `__Auth` WRITE;
/*!40000 ALTER TABLE `__Auth` DISABLE KEYS */;
INSERT INTO `__Auth` VALUES ('Administrator','*4ACFE3202A5FF5CF467898FC58AAB1D615029441'),('cswaroop@gmail.com','*6260AD0114EA0D40D08B8726D34E07DB6AE4B428');
/*!40000 ALTER TABLE `__Auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabAbout Us Team Member`
--

DROP TABLE IF EXISTS `tabAbout Us Team Member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabAbout Us Team Member` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `image_link` varchar(180) DEFAULT NULL,
  `bio` text,
  `full_name` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabAbout Us Team Member`
--

LOCK TABLES `tabAbout Us Team Member` WRITE;
/*!40000 ALTER TABLE `tabAbout Us Team Member` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabAbout Us Team Member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabAccount`
--

DROP TABLE IF EXISTS `tabAccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabAccount` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `allow_negative_balance` int(1) DEFAULT '1',
  `master_type` varchar(180) DEFAULT NULL,
  `parent_account` varchar(180) DEFAULT NULL,
  `credit_limit` decimal(18,6) DEFAULT NULL,
  `account_type` varchar(180) DEFAULT NULL,
  `debit_or_credit` varchar(180) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `master_name` varchar(180) DEFAULT NULL,
  `group_or_ledger` varchar(180) DEFAULT 'Ledger',
  `old_parent` varchar(180) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `is_pl_account` varchar(180) DEFAULT NULL,
  `tax_rate` decimal(18,6) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `credit_days` int(11) DEFAULT NULL,
  `freeze_account` varchar(180) DEFAULT NULL,
  `account_name` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabAccount`
--

LOCK TABLES `tabAccount` WRITE;
/*!40000 ALTER TABLE `tabAccount` DISABLE KEYS */;
INSERT INTO `tabAccount` VALUES ('Accounts Payable - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Current Liabilities - PFL',NULL,NULL,'Credit',NULL,'Pinnacle Foods Limited',NULL,'Group','Current Liabilities - PFL',127,'No',NULL,128,NULL,'No','Accounts Payable'),('Accounts Receivable - PFL','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Current Assets - PFL',NULL,NULL,'Debit',NULL,'Pinnacle Foods Limited',NULL,'Group','Current Assets - PFL',3,'No',NULL,4,NULL,'No','Accounts Receivable'),('Advertising and Publicity - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Chargeable','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',59,'Yes',NULL,60,NULL,'No','Advertising and Publicity'),('Application of Funds (Assets) - PFL','2014-03-25 08:13:34','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Debit',NULL,'Pinnacle Foods Limited',NULL,'Group','',1,'No',NULL,46,NULL,'No','Application of Funds (Assets)'),('Bad Debts Written Off - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',61,'Yes',NULL,62,NULL,'No','Bad Debts Written Off'),('Bank Accounts - PFL','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Current Assets - PFL',NULL,'Bank or Cash','Debit',NULL,'Pinnacle Foods Limited',NULL,'Group','Current Assets - PFL',5,'No',NULL,6,NULL,'No','Bank Accounts'),('Bank Charges - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',63,'Yes',NULL,64,NULL,'No','Bank Charges'),('Bank Overdraft Account - PFL','2014-03-25 08:13:36','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Loans (Liabilities) - PFL',NULL,NULL,'Credit',NULL,'Pinnacle Foods Limited',NULL,'Group','Loans (Liabilities) - PFL',140,'No',NULL,141,NULL,'No','Bank Overdraft Account'),('Books and Periodicals - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',65,'Yes',NULL,66,NULL,'No','Books and Periodicals'),('Capital Account - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Source of Funds (Liabilities) - PFL',NULL,NULL,'Credit',NULL,'Pinnacle Foods Limited',NULL,'Group','Source of Funds (Liabilities) - PFL',120,'No',NULL,125,NULL,'No','Capital Account'),('Capital Equipments - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Fixed Assets - PFL',NULL,'Fixed Asset Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Fixed Assets - PFL',29,'No',NULL,30,NULL,'No','Capital Equipments'),('Cash - PFL','2014-03-25 08:13:35','2014-03-25 08:13:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Cash In Hand - PFL',NULL,'Bank or Cash','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Cash In Hand - PFL',8,'No',NULL,9,NULL,'No','Cash'),('Cash In Hand - PFL','2014-03-25 08:13:34','2014-03-25 08:13:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Current Assets - PFL',NULL,'Bank or Cash','Debit',NULL,'Pinnacle Foods Limited',NULL,'Group','Current Assets - PFL',7,'No',NULL,10,NULL,'No','Cash In Hand'),('Charity and Donations - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',67,'Yes',NULL,68,NULL,'No','Charity and Donations'),('Commission on Sales - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',69,'Yes',NULL,70,NULL,'No','Commission on Sales'),('Computers - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Fixed Assets - PFL',NULL,'Fixed Asset Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Fixed Assets - PFL',31,'No',NULL,32,NULL,'No','Computers'),('Conveyance Expenses - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',71,'Yes',NULL,72,NULL,'No','Conveyance Expenses'),('Cost of Goods Sold - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Stock Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Stock Expenses - PFL',50,'Yes',NULL,51,NULL,'No','Cost of Goods Sold'),('Current Assets - PFL','2014-03-25 08:13:34','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Application of Funds (Assets) - PFL',NULL,NULL,'Debit',NULL,'Pinnacle Foods Limited',NULL,'Group','Application of Funds (Assets) - PFL',2,'No',NULL,27,NULL,'No','Current Assets'),('Current Liabilities - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Source of Funds (Liabilities) - PFL',NULL,NULL,'Credit',NULL,'Pinnacle Foods Limited',NULL,'Group','Source of Funds (Liabilities) - PFL',126,'No',NULL,143,NULL,'No','Current Liabilities'),('Customer Entertainment Expenses - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',73,'Yes',NULL,74,NULL,'No','Customer Entertainment Expenses'),('Depreciation Account - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',75,'Yes',NULL,76,NULL,'No','Depreciation Account'),('Direct Expenses - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Group','Expenses - PFL',48,'Yes',NULL,57,NULL,'No','Direct Expenses'),('Direct Income - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Income - PFL',NULL,'Income Account','Credit',NULL,'Pinnacle Foods Limited',NULL,'Group','Income - PFL',110,'Yes',NULL,115,NULL,'No','Direct Income'),('Duties and Taxes - PFL','2014-03-25 08:13:36','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Current Liabilities - PFL',NULL,NULL,'Credit',NULL,'Pinnacle Foods Limited',NULL,'Group','Current Liabilities - PFL',133,'No',NULL,134,NULL,'No','Duties and Taxes'),('Earnest Money - PFL','2014-03-25 08:13:35','2014-03-25 08:13:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Securities and Deposits - PFL',NULL,NULL,'Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Securities and Deposits - PFL',14,'No',NULL,15,NULL,'No','Earnest Money'),('Expenses - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Group','',47,'Yes',NULL,108,NULL,'No','Expenses'),('Expenses Included In Valuation - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Stock Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Stock Expenses - PFL',54,'Yes',NULL,55,NULL,'No','Expenses Included In Valuation'),('Finished Goods - PFL','2014-03-25 08:13:38','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Stock Assets - PFL',NULL,'Warehouse','Debit',NULL,'Pinnacle Foods Limited','Finished Goods - PFL','Ledger','Stock Assets - PFL',18,'No',NULL,19,NULL,'No','Finished Goods'),('Fixed Assets - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Application of Funds (Assets) - PFL',NULL,NULL,'Debit',NULL,'Pinnacle Foods Limited',NULL,'Group','Application of Funds (Assets) - PFL',28,'No',NULL,39,NULL,'No','Fixed Assets'),('Freight and Forwarding Charges - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Chargeable','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',77,'Yes',NULL,78,NULL,'No','Freight and Forwarding Charges'),('Furniture and Fixture - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Fixed Assets - PFL',NULL,'Fixed Asset Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Fixed Assets - PFL',33,'No',NULL,34,NULL,'No','Furniture and Fixture'),('Income - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Credit',NULL,'Pinnacle Foods Limited',NULL,'Group','',109,'Yes',NULL,118,NULL,'No','Income'),('Indirect Expenses - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Group','Expenses - PFL',58,'Yes',NULL,107,NULL,'No','Indirect Expenses'),('Indirect Income - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Income - PFL',NULL,'Income Account','Credit',NULL,'Pinnacle Foods Limited',NULL,'Group','Income - PFL',116,'Yes',NULL,117,NULL,'No','Indirect Income'),('Investments - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Application of Funds (Assets) - PFL',NULL,NULL,'Debit',NULL,'Pinnacle Foods Limited',NULL,'Group','Application of Funds (Assets) - PFL',40,'No',NULL,41,NULL,'No','Investments'),('Legal Expenses - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',79,'Yes',NULL,80,NULL,'No','Legal Expenses'),('Loans (Liabilities) - PFL','2014-03-25 08:13:36','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Current Liabilities - PFL',NULL,NULL,'Credit',NULL,'Pinnacle Foods Limited',NULL,'Group','Current Liabilities - PFL',135,'No',NULL,142,NULL,'No','Loans (Liabilities)'),('Loans and Advances (Assets) - PFL','2014-03-25 08:13:35','2014-03-25 08:13:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Current Assets - PFL',NULL,NULL,'Debit',NULL,'Pinnacle Foods Limited',NULL,'Group','Current Assets - PFL',11,'No',NULL,12,NULL,'No','Loans and Advances (Assets)'),('Miscellaneous Expenses - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Chargeable','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',81,'Yes',NULL,82,NULL,'No','Miscellaneous Expenses'),('Office Equipments - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Fixed Assets - PFL',NULL,'Fixed Asset Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Fixed Assets - PFL',35,'No',NULL,36,NULL,'No','Office Equipments'),('Office Maintenance Expenses - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',83,'Yes',NULL,84,NULL,'No','Office Maintenance Expenses'),('Office Rent - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',85,'Yes',NULL,86,NULL,'No','Office Rent'),('Plant and Machinery - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Fixed Assets - PFL',NULL,'Fixed Asset Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Fixed Assets - PFL',37,'No',NULL,38,NULL,'No','Plant and Machinery'),('Postal Expenses - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',87,'Yes',NULL,88,NULL,'No','Postal Expenses'),('Print and Stationary - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',89,'Yes',NULL,90,NULL,'No','Print and Stationary'),('Reserves and Surplus - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Capital Account - PFL',NULL,NULL,'Credit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Capital Account - PFL',121,'No',NULL,122,NULL,'No','Reserves and Surplus'),('Rounded Off - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',91,'Yes',NULL,92,NULL,'No','Rounded Off'),('Salary - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',93,'Yes',NULL,94,NULL,'No','Salary'),('Sales - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Direct Income - PFL',NULL,'Income Account','Credit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Direct Income - PFL',111,'Yes',NULL,112,NULL,'No','Sales'),('Sales Promotion Expenses - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Chargeable','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',95,'Yes',NULL,96,NULL,'No','Sales Promotion Expenses'),('Secured Loans - PFL','2014-03-25 08:13:36','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Loans (Liabilities) - PFL',NULL,NULL,'Credit',NULL,'Pinnacle Foods Limited',NULL,'Group','Loans (Liabilities) - PFL',136,'No',NULL,137,NULL,'No','Secured Loans'),('Securities and Deposits - PFL','2014-03-25 08:13:35','2014-03-25 08:13:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Current Assets - PFL',NULL,NULL,'Debit',NULL,'Pinnacle Foods Limited',NULL,'Group','Current Assets - PFL',13,'No',NULL,16,NULL,'No','Securities and Deposits'),('Service - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Direct Income - PFL',NULL,'Income Account','Credit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Direct Income - PFL',113,'Yes',NULL,114,NULL,'No','Service'),('Service Charges Paid - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',97,'Yes',NULL,98,NULL,'No','Service Charges Paid'),('Shareholders Funds - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Capital Account - PFL',NULL,NULL,'Credit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Capital Account - PFL',123,'No',NULL,124,NULL,'No','Shareholders Funds'),('Source of Funds (Liabilities) - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Credit',NULL,'Pinnacle Foods Limited',NULL,'Group','',119,'No',NULL,148,NULL,'No','Source of Funds (Liabilities)'),('Staff Welfare Expenses - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',99,'Yes',NULL,100,NULL,'No','Staff Welfare Expenses'),('Stock Adjustment - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Stock Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Stock Expenses - PFL',52,'Yes',NULL,53,NULL,'No','Stock Adjustment'),('Stock Assets - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Current Assets - PFL',NULL,NULL,'Debit',NULL,'Pinnacle Foods Limited',NULL,'Group','Current Assets - PFL',17,'No',NULL,24,NULL,'No','Stock Assets'),('Stock Expenses - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Direct Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Group','Direct Expenses - PFL',49,'Yes',NULL,56,NULL,'No','Stock Expenses'),('Stock Liabilities - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Current Liabilities - PFL',NULL,NULL,'Credit',NULL,'Pinnacle Foods Limited',NULL,'Group','Current Liabilities - PFL',129,'No',NULL,132,NULL,'No','Stock Liabilities'),('Stock Received But Not Billed - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Stock Liabilities - PFL',NULL,NULL,'Credit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Stock Liabilities - PFL',130,'No',NULL,131,NULL,'No','Stock Received But Not Billed'),('Stores - PFL','2014-03-25 08:13:38','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Stock Assets - PFL',NULL,'Warehouse','Debit',NULL,'Pinnacle Foods Limited','Stores - PFL','Ledger','Stock Assets - PFL',20,'No',NULL,21,NULL,'No','Stores'),('Tax Assets - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Current Assets - PFL',NULL,NULL,'Debit',NULL,'Pinnacle Foods Limited',NULL,'Group','Current Assets - PFL',25,'No',NULL,26,NULL,'No','Tax Assets'),('Telephone Expenses - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',101,'Yes',NULL,102,NULL,'No','Telephone Expenses'),('Temporary Account (Assets) - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Temporary Accounts (Assets) - PFL',NULL,NULL,'Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Temporary Accounts (Assets) - PFL',43,'No',NULL,44,NULL,'No','Temporary Account (Assets)'),('Temporary Account (Liabilities) - PFL','2014-03-25 08:13:36','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Temporary Accounts (Liabilities) - PFL',NULL,NULL,'Credit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Temporary Accounts (Liabilities) - PFL',145,'No',NULL,146,NULL,'No','Temporary Account (Liabilities)'),('Temporary Accounts (Assets) - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Application of Funds (Assets) - PFL',NULL,NULL,'Debit',NULL,'Pinnacle Foods Limited',NULL,'Group','Application of Funds (Assets) - PFL',42,'No',NULL,45,NULL,'No','Temporary Accounts (Assets)'),('Temporary Accounts (Liabilities) - PFL','2014-03-25 08:13:36','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Source of Funds (Liabilities) - PFL',NULL,NULL,'Credit',NULL,'Pinnacle Foods Limited',NULL,'Group','Source of Funds (Liabilities) - PFL',144,'No',NULL,147,NULL,'No','Temporary Accounts (Liabilities)'),('Travelling Expenses - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',103,'Yes',NULL,104,NULL,'No','Travelling Expenses'),('Unsecured Loans - PFL','2014-03-25 08:13:36','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Loans (Liabilities) - PFL',NULL,NULL,'Credit',NULL,'Pinnacle Foods Limited',NULL,'Group','Loans (Liabilities) - PFL',138,'No',NULL,139,NULL,'No','Unsecured Loans'),('Water and Electricity Expenses - PFL','2014-03-25 08:13:35','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Indirect Expenses - PFL',NULL,'Expense Account','Debit',NULL,'Pinnacle Foods Limited',NULL,'Ledger','Indirect Expenses - PFL',105,'Yes',NULL,106,NULL,'No','Water and Electricity Expenses'),('Work In Progress - PFL','2014-03-25 08:13:38','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,'Stock Assets - PFL',NULL,'Warehouse','Debit',NULL,'Pinnacle Foods Limited','Work In Progress - PFL','Ledger','Stock Assets - PFL',22,'No',NULL,23,NULL,'No','Work In Progress');
/*!40000 ALTER TABLE `tabAccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabActivity Type`
--

DROP TABLE IF EXISTS `tabActivity Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabActivity Type` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `activity_type` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabActivity Type`
--

LOCK TABLES `tabActivity Type` WRITE;
/*!40000 ALTER TABLE `tabActivity Type` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabActivity Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabAddress`
--

DROP TABLE IF EXISTS `tabAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabAddress` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `email_id` varchar(180) DEFAULT NULL,
  `pincode` varchar(180) DEFAULT NULL,
  `lead_name` varchar(180) DEFAULT NULL,
  `customer_name` varchar(180) DEFAULT NULL,
  `address_line2` varchar(180) DEFAULT NULL,
  `city` varchar(180) DEFAULT NULL,
  `address_line1` varchar(180) DEFAULT NULL,
  `lead` varchar(180) DEFAULT NULL,
  `is_primary_address` int(1) DEFAULT '0',
  `state` varchar(180) DEFAULT NULL,
  `supplier` varchar(180) DEFAULT NULL,
  `address_type` varchar(180) DEFAULT NULL,
  `sales_partner` varchar(180) DEFAULT NULL,
  `fax` varchar(180) DEFAULT NULL,
  `address_title` varchar(180) DEFAULT NULL,
  `phone` varchar(180) DEFAULT NULL,
  `supplier_name` varchar(180) DEFAULT NULL,
  `customer` varchar(180) DEFAULT NULL,
  `country` varchar(180) DEFAULT NULL,
  `is_shipping_address` int(1) DEFAULT '0',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabAddress`
--

LOCK TABLES `tabAddress` WRITE;
/*!40000 ALTER TABLE `tabAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabApplicable Territory`
--

DROP TABLE IF EXISTS `tabApplicable Territory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabApplicable Territory` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `territory` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabApplicable Territory`
--

LOCK TABLES `tabApplicable Territory` WRITE;
/*!40000 ALTER TABLE `tabApplicable Territory` DISABLE KEYS */;
INSERT INTO `tabApplicable Territory` VALUES ('000000168','2014-03-25 08:13:42','2014-03-25 08:13:42','Administrator','Administrator',0,'Standard Selling','valid_for_territories','Price List',1,'All Territories'),('000000169','2014-03-25 08:13:42','2014-03-25 08:13:42','Administrator','Administrator',0,'Standard Buying','valid_for_territories','Price List',1,'All Territories');
/*!40000 ALTER TABLE `tabApplicable Territory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabAppraisal`
--

DROP TABLE IF EXISTS `tabAppraisal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabAppraisal` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `status` varchar(180) DEFAULT 'Draft',
  `kra_template` varchar(180) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `total_score` decimal(18,6) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `comments` text,
  `employee_name` varchar(180) DEFAULT NULL,
  `employee` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabAppraisal`
--

LOCK TABLES `tabAppraisal` WRITE;
/*!40000 ALTER TABLE `tabAppraisal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabAppraisal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabAppraisal Goal`
--

DROP TABLE IF EXISTS `tabAppraisal Goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabAppraisal Goal` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `score_earned` decimal(18,6) DEFAULT NULL,
  `kra` text,
  `per_weightage` decimal(18,6) DEFAULT NULL,
  `score` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabAppraisal Goal`
--

LOCK TABLES `tabAppraisal Goal` WRITE;
/*!40000 ALTER TABLE `tabAppraisal Goal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabAppraisal Goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabAppraisal Template`
--

DROP TABLE IF EXISTS `tabAppraisal Template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabAppraisal Template` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `total_points` int(11) DEFAULT NULL,
  `kra_title` varchar(180) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabAppraisal Template`
--

LOCK TABLES `tabAppraisal Template` WRITE;
/*!40000 ALTER TABLE `tabAppraisal Template` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabAppraisal Template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabAppraisal Template Goal`
--

DROP TABLE IF EXISTS `tabAppraisal Template Goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabAppraisal Template Goal` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `kra` text,
  `per_weightage` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabAppraisal Template Goal`
--

LOCK TABLES `tabAppraisal Template Goal` WRITE;
/*!40000 ALTER TABLE `tabAppraisal Template Goal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabAppraisal Template Goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabAttendance`
--

DROP TABLE IF EXISTS `tabAttendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabAttendance` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `status` varchar(180) DEFAULT 'Present',
  `att_date` date DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `leave_type` varchar(180) DEFAULT NULL,
  `employee_name` varchar(180) DEFAULT NULL,
  `employee` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `status` (`status`),
  KEY `employee` (`employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabAttendance`
--

LOCK TABLES `tabAttendance` WRITE;
/*!40000 ALTER TABLE `tabAttendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabAttendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabAuthorization Rule`
--

DROP TABLE IF EXISTS `tabAuthorization Rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabAuthorization Rule` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `value` decimal(18,6) DEFAULT NULL,
  `approving_user` varchar(180) DEFAULT NULL,
  `transaction` varchar(180) DEFAULT NULL,
  `system_user` varchar(180) DEFAULT NULL,
  `trash_reason` text,
  `company` varchar(180) DEFAULT NULL,
  `master_name` varchar(180) DEFAULT NULL,
  `to_emp` varchar(180) DEFAULT NULL,
  `system_role` varchar(180) DEFAULT NULL,
  `based_on` varchar(180) DEFAULT NULL,
  `approving_role` varchar(180) DEFAULT NULL,
  `to_designation` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabAuthorization Rule`
--

LOCK TABLES `tabAuthorization Rule` WRITE;
/*!40000 ALTER TABLE `tabAuthorization Rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabAuthorization Rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBOM`
--

DROP TABLE IF EXISTS `tabBOM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBOM` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `operating_cost` decimal(18,6) DEFAULT NULL,
  `total_cost` decimal(18,6) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `buying_price_list` varchar(180) DEFAULT NULL,
  `uom` varchar(180) DEFAULT NULL,
  `project_name` varchar(180) DEFAULT NULL,
  `description` text,
  `with_operations` int(1) DEFAULT NULL,
  `raw_material_cost` decimal(18,6) DEFAULT NULL,
  `is_active` int(1) DEFAULT '1',
  `is_default` int(1) DEFAULT '1',
  `rm_cost_as_per` varchar(180) DEFAULT NULL,
  `item` varchar(180) DEFAULT NULL,
  `quantity` decimal(18,6) DEFAULT '1.000000',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `item` (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBOM`
--

LOCK TABLES `tabBOM` WRITE;
/*!40000 ALTER TABLE `tabBOM` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBOM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBOM Explosion Item`
--

DROP TABLE IF EXISTS `tabBOM Explosion Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBOM Explosion Item` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `description` text,
  `qty_consumed_per_unit` decimal(18,6) DEFAULT NULL,
  `rate` decimal(18,6) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `qty` decimal(18,6) DEFAULT NULL,
  `amount` decimal(18,6) DEFAULT NULL,
  `stock_uom` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBOM Explosion Item`
--

LOCK TABLES `tabBOM Explosion Item` WRITE;
/*!40000 ALTER TABLE `tabBOM Explosion Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBOM Explosion Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBOM Item`
--

DROP TABLE IF EXISTS `tabBOM Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBOM Item` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `bom_no` varchar(180) DEFAULT NULL,
  `description` text,
  `scrap` decimal(18,6) DEFAULT NULL,
  `qty_consumed_per_unit` decimal(18,6) DEFAULT NULL,
  `amount` decimal(18,6) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `qty` decimal(18,6) DEFAULT NULL,
  `rate` decimal(18,6) DEFAULT NULL,
  `stock_uom` varchar(180) DEFAULT NULL,
  `operation_no` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBOM Item`
--

LOCK TABLES `tabBOM Item` WRITE;
/*!40000 ALTER TABLE `tabBOM Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBOM Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBOM Operation`
--

DROP TABLE IF EXISTS `tabBOM Operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBOM Operation` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `operating_cost` decimal(18,6) DEFAULT NULL,
  `workstation` varchar(180) DEFAULT NULL,
  `opn_description` text,
  `hour_rate` decimal(18,6) DEFAULT NULL,
  `operation_no` varchar(180) DEFAULT NULL,
  `time_in_mins` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBOM Operation`
--

LOCK TABLES `tabBOM Operation` WRITE;
/*!40000 ALTER TABLE `tabBOM Operation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBOM Operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBank Reconciliation Detail`
--

DROP TABLE IF EXISTS `tabBank Reconciliation Detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBank Reconciliation Detail` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `cheque_date` date DEFAULT NULL,
  `clearance_date` date DEFAULT NULL,
  `credit` decimal(18,6) DEFAULT NULL,
  `debit` decimal(18,6) DEFAULT NULL,
  `voucher_id` varchar(180) DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `cheque_number` varchar(180) DEFAULT NULL,
  `against_account` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBank Reconciliation Detail`
--

LOCK TABLES `tabBank Reconciliation Detail` WRITE;
/*!40000 ALTER TABLE `tabBank Reconciliation Detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBank Reconciliation Detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBatch`
--

DROP TABLE IF EXISTS `tabBatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBatch` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `finished_date` date DEFAULT NULL,
  `description` text,
  `item` varchar(180) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `batch_id` varchar(180) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBatch`
--

LOCK TABLES `tabBatch` WRITE;
/*!40000 ALTER TABLE `tabBatch` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBin`
--

DROP TABLE IF EXISTS `tabBin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBin` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `fcfs_rate` decimal(18,6) DEFAULT NULL,
  `indented_qty` decimal(18,6) DEFAULT '0.000000',
  `reserved_qty` decimal(18,6) DEFAULT '0.000000',
  `planned_qty` decimal(18,6) DEFAULT NULL,
  `valuation_rate` decimal(18,6) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `projected_qty` decimal(18,6) DEFAULT NULL,
  `ma_rate` decimal(18,6) DEFAULT NULL,
  `stock_uom` varchar(180) DEFAULT NULL,
  `ordered_qty` decimal(18,6) DEFAULT '0.000000',
  `warehouse` varchar(180) DEFAULT NULL,
  `stock_value` decimal(18,6) DEFAULT NULL,
  `actual_qty` decimal(18,6) DEFAULT '0.000000',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBin`
--

LOCK TABLES `tabBin` WRITE;
/*!40000 ALTER TABLE `tabBin` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBlog Category`
--

DROP TABLE IF EXISTS `tabBlog Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBlog Category` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `category_name` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBlog Category`
--

LOCK TABLES `tabBlog Category` WRITE;
/*!40000 ALTER TABLE `tabBlog Category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBlog Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBlog Post`
--

DROP TABLE IF EXISTS `tabBlog Post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBlog Post` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `published_on` date DEFAULT NULL,
  `title` varchar(180) DEFAULT NULL,
  `blogger` varchar(180) DEFAULT NULL,
  `email_sent` int(1) DEFAULT NULL,
  `content` text,
  `page_name` varchar(180) DEFAULT NULL,
  `published` int(1) DEFAULT NULL,
  `blog_category` varchar(180) DEFAULT NULL,
  `blog_intro` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBlog Post`
--

LOCK TABLES `tabBlog Post` WRITE;
/*!40000 ALTER TABLE `tabBlog Post` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBlog Post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBlogger`
--

DROP TABLE IF EXISTS `tabBlogger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBlogger` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `profile` varchar(180) DEFAULT NULL,
  `bio` text,
  `short_name` varchar(180) DEFAULT NULL,
  `posts` int(11) DEFAULT NULL,
  `disabled` int(1) DEFAULT NULL,
  `avatar` varchar(180) DEFAULT NULL,
  `full_name` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBlogger`
--

LOCK TABLES `tabBlogger` WRITE;
/*!40000 ALTER TABLE `tabBlogger` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBlogger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBranch`
--

DROP TABLE IF EXISTS `tabBranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBranch` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `trash_reason` text,
  `branch` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBranch`
--

LOCK TABLES `tabBranch` WRITE;
/*!40000 ALTER TABLE `tabBranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBrand`
--

DROP TABLE IF EXISTS `tabBrand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBrand` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `brand` varchar(180) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBrand`
--

LOCK TABLES `tabBrand` WRITE;
/*!40000 ALTER TABLE `tabBrand` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBrand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBudget Detail`
--

DROP TABLE IF EXISTS `tabBudget Detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBudget Detail` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `account` varchar(180) DEFAULT NULL,
  `budget_allocated` decimal(18,6) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBudget Detail`
--

LOCK TABLES `tabBudget Detail` WRITE;
/*!40000 ALTER TABLE `tabBudget Detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBudget Detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBudget Distribution`
--

DROP TABLE IF EXISTS `tabBudget Distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBudget Distribution` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `distribution_id` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `trash_reason` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBudget Distribution`
--

LOCK TABLES `tabBudget Distribution` WRITE;
/*!40000 ALTER TABLE `tabBudget Distribution` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBudget Distribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBudget Distribution Detail`
--

DROP TABLE IF EXISTS `tabBudget Distribution Detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBudget Distribution Detail` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `percentage_allocation` decimal(18,6) DEFAULT NULL,
  `month` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBudget Distribution Detail`
--

LOCK TABLES `tabBudget Distribution Detail` WRITE;
/*!40000 ALTER TABLE `tabBudget Distribution Detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBudget Distribution Detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabBulk Email`
--

DROP TABLE IF EXISTS `tabBulk Email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabBulk Email` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `status` varchar(180) DEFAULT NULL,
  `sender` varchar(180) DEFAULT NULL,
  `ref_doctype` varchar(180) DEFAULT NULL,
  `ref_docname` varchar(180) DEFAULT NULL,
  `error` text,
  `message` text,
  `recipient` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabBulk Email`
--

LOCK TABLES `tabBulk Email` WRITE;
/*!40000 ALTER TABLE `tabBulk Email` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabBulk Email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabC-Form`
--

DROP TABLE IF EXISTS `tabC-Form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabC-Form` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `customer` varchar(180) DEFAULT NULL,
  `total_amount` decimal(18,6) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `c_form_no` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `state` varchar(180) DEFAULT NULL,
  `received_date` date DEFAULT NULL,
  `total_invoiced_amount` decimal(18,6) DEFAULT NULL,
  `quarter` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabC-Form`
--

LOCK TABLES `tabC-Form` WRITE;
/*!40000 ALTER TABLE `tabC-Form` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabC-Form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabC-Form Invoice Detail`
--

DROP TABLE IF EXISTS `tabC-Form Invoice Detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabC-Form Invoice Detail` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `territory` varchar(180) DEFAULT NULL,
  `grand_total` decimal(18,6) DEFAULT NULL,
  `invoice_no` varchar(180) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `net_total` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabC-Form Invoice Detail`
--

LOCK TABLES `tabC-Form Invoice Detail` WRITE;
/*!40000 ALTER TABLE `tabC-Form Invoice Detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabC-Form Invoice Detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCampaign`
--

DROP TABLE IF EXISTS `tabCampaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCampaign` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `campaign_name` varchar(180) DEFAULT NULL,
  `trash_reason` text,
  `description` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCampaign`
--

LOCK TABLES `tabCampaign` WRITE;
/*!40000 ALTER TABLE `tabCampaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCampaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabComment`
--

DROP TABLE IF EXISTS `tabComment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabComment` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `comment` text,
  `comment_date` date DEFAULT NULL,
  `comment_by` varchar(180) DEFAULT NULL,
  `post_topic` varchar(180) DEFAULT NULL,
  `comment_docname` varchar(180) DEFAULT NULL,
  `comment_time` varchar(180) DEFAULT NULL,
  `unsubscribed` int(1) DEFAULT NULL,
  `comment_doctype` varchar(180) DEFAULT NULL,
  `comment_by_fullname` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabComment`
--

LOCK TABLES `tabComment` WRITE;
/*!40000 ALTER TABLE `tabComment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabComment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCommunication`
--

DROP TABLE IF EXISTS `tabCommunication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCommunication` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `category` varchar(180) DEFAULT NULL,
  `sender` varchar(180) DEFAULT NULL,
  `recipients` varchar(180) DEFAULT NULL,
  `sent_or_received` varchar(180) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT 'COMM-',
  `phone_no` varchar(180) DEFAULT NULL,
  `content` text,
  `action` varchar(180) DEFAULT NULL,
  `communication_medium` varchar(180) DEFAULT NULL,
  `user` varchar(180) DEFAULT NULL,
  `next_communication_date` date DEFAULT NULL,
  `communication_date` datetime DEFAULT NULL,
  `_user_tags` varchar(180) DEFAULT NULL,
  `subject` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCommunication`
--

LOCK TABLES `tabCommunication` WRITE;
/*!40000 ALTER TABLE `tabCommunication` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCommunication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCompany`
--

DROP TABLE IF EXISTS `tabCompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCompany` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `website` varchar(180) DEFAULT NULL,
  `domain` varchar(180) DEFAULT NULL,
  `default_income_account` varchar(180) DEFAULT NULL,
  `receivables_group` varchar(180) DEFAULT NULL,
  `cost_center` varchar(180) DEFAULT NULL,
  `registration_details` text,
  `default_currency` varchar(180) DEFAULT NULL,
  `trash_reason` text,
  `yearly_bgt_flag` varchar(180) DEFAULT NULL,
  `default_expense_account` varchar(180) DEFAULT NULL,
  `payables_group` varchar(180) DEFAULT NULL,
  `credit_days` int(11) DEFAULT NULL,
  `company_name` varchar(180) DEFAULT NULL,
  `expenses_included_in_valuation` varchar(180) DEFAULT NULL,
  `default_bank_account` varchar(180) DEFAULT NULL,
  `email` varchar(180) DEFAULT NULL,
  `fax` varchar(180) DEFAULT NULL,
  `stock_adjustment_account` varchar(180) DEFAULT NULL,
  `abbr` varchar(180) DEFAULT NULL,
  `monthly_bgt_flag` varchar(180) DEFAULT NULL,
  `address` text,
  `credit_limit` decimal(18,6) DEFAULT NULL,
  `stock_received_but_not_billed` varchar(180) DEFAULT NULL,
  `phone_no` varchar(180) DEFAULT NULL,
  `default_cash_account` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCompany`
--

LOCK TABLES `tabCompany` WRITE;
/*!40000 ALTER TABLE `tabCompany` DISABLE KEYS */;
INSERT INTO `tabCompany` VALUES ('Pinnacle Foods Limited','2014-03-25 08:13:34','2014-03-25 08:13:36','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,'Sales - PFL','Accounts Receivable - PFL','Main - PFL',NULL,'USD',NULL,NULL,'Cost of Goods Sold - PFL','Accounts Payable - PFL',NULL,'Pinnacle Foods Limited','Expenses Included In Valuation - PFL',NULL,NULL,NULL,'Stock Adjustment - PFL','PFL',NULL,NULL,NULL,'Stock Received But Not Billed - PFL',NULL,'Cash - PFL');
/*!40000 ALTER TABLE `tabCompany` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCompany History`
--

DROP TABLE IF EXISTS `tabCompany History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCompany History` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `highlight` text,
  `year` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCompany History`
--

LOCK TABLES `tabCompany History` WRITE;
/*!40000 ALTER TABLE `tabCompany History` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCompany History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabContact`
--

DROP TABLE IF EXISTS `tabContact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabContact` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `last_name` varchar(180) DEFAULT NULL,
  `email_id` varchar(180) DEFAULT NULL,
  `mobile_no` varchar(180) DEFAULT NULL,
  `supplier` varchar(180) DEFAULT NULL,
  `customer_name` varchar(180) DEFAULT NULL,
  `first_name` varchar(180) DEFAULT NULL,
  `trash_reason` text,
  `unsubscribed` int(1) DEFAULT NULL,
  `department` varchar(180) DEFAULT NULL,
  `sales_partner` varchar(180) DEFAULT NULL,
  `status` varchar(180) DEFAULT 'Passive',
  `phone` varchar(180) DEFAULT NULL,
  `supplier_name` varchar(180) DEFAULT NULL,
  `customer` varchar(180) DEFAULT NULL,
  `designation` varchar(180) DEFAULT NULL,
  `is_primary_contact` int(1) DEFAULT '0',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabContact`
--

LOCK TABLES `tabContact` WRITE;
/*!40000 ALTER TABLE `tabContact` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabContact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCost Center`
--

DROP TABLE IF EXISTS `tabCost Center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCost Center` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `trash_reason` text,
  `company` varchar(180) DEFAULT NULL,
  `group_or_ledger` varchar(180) DEFAULT NULL,
  `old_parent` varchar(180) DEFAULT NULL,
  `distribution_id` varchar(180) DEFAULT NULL,
  `parent_cost_center` varchar(180) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `cost_center_name` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCost Center`
--

LOCK TABLES `tabCost Center` WRITE;
/*!40000 ALTER TABLE `tabCost Center` DISABLE KEYS */;
INSERT INTO `tabCost Center` VALUES ('Main - PFL','2014-03-25 08:13:36','2014-03-25 08:13:36','Administrator','Administrator',0,NULL,NULL,NULL,NULL,3,NULL,'Pinnacle Foods Limited','Ledger','Pinnacle Foods Limited - PFL',NULL,'Pinnacle Foods Limited - PFL',2,'Main'),('Pinnacle Foods Limited - PFL','2014-03-25 08:13:36','2014-03-25 08:13:36','Administrator','Administrator',0,NULL,NULL,NULL,NULL,4,NULL,'Pinnacle Foods Limited','Group','',NULL,NULL,1,'Pinnacle Foods Limited');
/*!40000 ALTER TABLE `tabCost Center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCountry`
--

DROP TABLE IF EXISTS `tabCountry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCountry` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `country_name` varchar(180) DEFAULT NULL,
  `date_format` varchar(180) DEFAULT NULL,
  `time_zones` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCountry`
--

LOCK TABLES `tabCountry` WRITE;
/*!40000 ALTER TABLE `tabCountry` DISABLE KEYS */;
INSERT INTO `tabCountry` VALUES ('Afghanistan','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Afghanistan','dd-mm-yyyy','Asia/Kabul'),('Åland Islands','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Åland Islands','dd-mm-yyyy',NULL),('Albania','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Albania','dd-mm-yyyy','Europe/Tirane'),('Algeria','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Algeria','dd-mm-yyyy','Africa/Algiers'),('American Samoa','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'American Samoa','dd-mm-yyyy',NULL),('Andorra','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Andorra','dd-mm-yyyy','Europe/Andorra'),('Angola','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Angola','dd-mm-yyyy','Africa/Luanda'),('Anguilla','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Anguilla','dd-mm-yyyy','America/Anguilla'),('Antarctica','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Antarctica','dd-mm-yyyy','Antarctica/Casey\nAntarctica/Davis\nAntarctica/DumontDUrville\nAntarctica/Macquarie\nAntarctica/Mawson\nAntarctica/McMurdo\nAntarctica/Palmer\nAntarctica/Rothera\nAntarctica/South_Pole\nAntarctica/Syowa\nAntarctica/Vostok'),('Antigua and Barbuda','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Antigua and Barbuda','dd-mm-yyyy','America/Antigua'),('Argentina','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Argentina','dd-mm-yyyy','America/Argentina/Buenos_Aires\nAmerica/Argentina/Catamarca\nAmerica/Argentina/Cordoba\nAmerica/Argentina/Jujuy\nAmerica/Argentina/La_Rioja\nAmerica/Argentina/Mendoza\nAmerica/Argentina/Rio_Gallegos\nAmerica/Argentina/Salta\nAmerica/Argentina/San_Juan\nAmerica/Argentina/San_Luis\nAmerica/Argentina/Tucuman\nAmerica/Argentina/Ushuaia'),('Armenia','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Armenia','dd-mm-yyyy','Asia/Yerevan'),('Aruba','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Aruba','dd-mm-yyyy','America/Aruba'),('Australia','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Australia','dd-mm-yyyy','Australia/Adelaide\nAustralia/Brisbane\nAustralia/Broken_Hill\nAustralia/Currie\nAustralia/Darwin\nAustralia/Eucla\nAustralia/Hobart\nAustralia/Lindeman\nAustralia/Lord_Howe\nAustralia/Melbourne\nAustralia/Perth\nAustralia/Sydney'),('Austria','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Austria','dd-mm-yyyy','Europe/Vienna'),('Azerbaijan','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Azerbaijan','dd-mm-yyyy','Asia/Baku'),('Bahamas','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Bahamas','dd-mm-yyyy','America/Nassau'),('Bahrain','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Bahrain','dd-mm-yyyy','Asia/Bahrain'),('Bangladesh','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Bangladesh','dd-mm-yyyy','Asia/Dhaka'),('Barbados','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Barbados','dd-mm-yyyy','America/Barbados'),('Belarus','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Belarus','dd-mm-yyyy','Europe/Minsk'),('Belgium','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Belgium','dd-mm-yyyy','Europe/Brussels'),('Belize','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Belize','mm-dd-yyyy','America/Belize'),('Benin','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Benin','dd-mm-yyyy','Africa/Porto-Novo'),('Bermuda','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Bermuda','dd-mm-yyyy','Atlantic/Bermuda'),('Bhutan','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Bhutan','dd-mm-yyyy','Asia/Thimphu'),('Bolivia, Plurinational State of','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Bolivia, Plurinational State of','dd-mm-yyyy',NULL),('Bonaire, Sint Eustatius and Saba','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Bonaire, Sint Eustatius and Saba','dd-mm-yyyy',NULL),('Bosnia and Herzegovina','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Bosnia and Herzegovina','dd-mm-yyyy','Europe/Sarajevo'),('Botswana','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Botswana','dd-mm-yyyy','Africa/Gaborone'),('Bouvet Island','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Bouvet Island','dd-mm-yyyy',NULL),('Brazil','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Brazil','dd/mm/yyyy','America/Araguaina\nAmerica/Bahia\nAmerica/Belem\nAmerica/Boa_Vista\nAmerica/Campo_Grande\nAmerica/Cuiaba\nAmerica/Eirunepe\nAmerica/Fortaleza\nAmerica/Maceio\nAmerica/Manaus\nAmerica/Noronha\nAmerica/Porto_Velho\nAmerica/Recife\nAmerica/Rio_Branco\nAmerica/Santarem\nAmerica/Sao_Paulo'),('British Indian Ocean Territory','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'British Indian Ocean Territory','dd-mm-yyyy','Indian/Chagos'),('Brunei Darussalam','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Brunei Darussalam','dd-mm-yyyy','Asia/Brunei'),('Bulgaria','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Bulgaria','dd-mm-yyyy','Europe/Sofia'),('Burkina Faso','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Burkina Faso','dd-mm-yyyy','Africa/Ouagadougou'),('Burundi','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Burundi','dd-mm-yyyy','Africa/Bujumbura'),('Cambodia','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Cambodia','dd-mm-yyyy','Asia/Phnom_Penh'),('Cameroon','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Cameroon','dd-mm-yyyy','Africa/Douala'),('Canada','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Canada','mm-dd-yyyy','America/Atikokan\nAmerica/Blanc-Sablon\nAmerica/Cambridge_Bay\nAmerica/Creston\nAmerica/Dawson\nAmerica/Dawson_Creek\nAmerica/Edmonton\nAmerica/Glace_Bay\nAmerica/Goose_Bay\nAmerica/Halifax\nAmerica/Inuvik\nAmerica/Iqaluit\nAmerica/Moncton\nAmerica/Montreal\nAmerica/Nipigon\nAmerica/Pangnirtung\nAmerica/Rainy_River\nAmerica/Rankin_Inlet\nAmerica/Regina\nAmerica/Resolute\nAmerica/St_Johns\nAmerica/Swift_Current\nAmerica/Thunder_Bay\nAmerica/Toronto\nAmerica/Vancouver\nAmerica/Whitehorse\nAmerica/Winnipeg\nAmerica/Yellowknife'),('Cape Verde','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Cape Verde','dd-mm-yyyy','Atlantic/Cape_Verde'),('Cayman Islands','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Cayman Islands','dd-mm-yyyy','America/Cayman'),('Central African Republic','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Central African Republic','dd-mm-yyyy','Africa/Bangui'),('Chad','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Chad','dd-mm-yyyy','Africa/Ndjamena'),('Chile','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Chile','dd-mm-yyyy','America/Santiago\nPacific/Easter'),('China','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'China','yyyy-mm-dd','Asia/Chongqing\nAsia/Harbin\nAsia/Kashgar\nAsia/Shanghai\nAsia/Urumqi'),('Christmas Island','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Christmas Island','dd-mm-yyyy','Indian/Christmas'),('Cocos (Keeling) Islands','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Cocos (Keeling) Islands','dd-mm-yyyy','Indian/Cocos'),('Colombia','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Colombia','dd-mm-yyyy','America/Bogota'),('Comoros','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Comoros','dd-mm-yyyy','Indian/Comoro'),('Congo','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Congo','dd-mm-yyyy',NULL),('Congo, The Democratic Republic of the','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Congo, The Democratic Republic of the','dd-mm-yyyy',NULL),('Cook Islands','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Cook Islands','dd-mm-yyyy','Pacific/Rarotonga'),('Costa Rica','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Costa Rica','dd-mm-yyyy','America/Costa_Rica'),('Croatia','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Croatia','dd-mm-yyyy','Europe/Zagreb'),('Cuba','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Cuba','dd-mm-yyyy','America/Havana'),('Curaçao','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Curaçao','dd-mm-yyyy',NULL),('Cyprus','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Cyprus','dd-mm-yyyy','Asia/Nicosia'),('Czech Republic','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Czech Republic','dd-mm-yyyy','Europe/Prague'),('Denmark','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Denmark','dd-mm-yyyy','Europe/Copenhagen'),('Djibouti','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Djibouti','dd-mm-yyyy','Africa/Djibouti'),('Dominica','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Dominica','dd-mm-yyyy','America/Dominica'),('Dominican Republic','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Dominican Republic','dd-mm-yyyy','America/Santo_Domingo'),('Ecuador','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Ecuador','dd-mm-yyyy','America/Guayaquil\nPacific/Galapagos'),('Egypt','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Egypt','dd-mm-yyyy','Africa/Cairo'),('El Salvador','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'El Salvador','dd-mm-yyyy','America/El_Salvador'),('Equatorial Guinea','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Equatorial Guinea','dd-mm-yyyy','Africa/Malabo'),('Eritrea','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Eritrea','dd-mm-yyyy','Africa/Asmara\nAfrica/Asmera'),('Estonia','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Estonia','dd-mm-yyyy','Europe/Tallinn'),('Ethiopia','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Ethiopia','dd-mm-yyyy','Africa/Addis_Ababa'),('Falkland Islands (Malvinas)','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Falkland Islands (Malvinas)','dd-mm-yyyy',NULL),('Faroe Islands','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Faroe Islands','dd-mm-yyyy','Atlantic/Faroe'),('Fiji','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Fiji','dd-mm-yyyy','Pacific/Fiji'),('Finland','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Finland','dd-mm-yyyy','Europe/Helsinki'),('France','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'France','dd-mm-yyyy','Europe/Paris'),('French Guiana','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'French Guiana','dd-mm-yyyy','America/Cayenne'),('French Polynesia','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'French Polynesia','dd-mm-yyyy','Pacific/Gambier\nPacific/Marquesas\nPacific/Tahiti'),('French Southern Territories','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'French Southern Territories','dd-mm-yyyy',NULL),('Gabon','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Gabon','dd-mm-yyyy','Africa/Libreville'),('Gambia','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Gambia','dd-mm-yyyy','Africa/Banjul'),('Georgia','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Georgia','dd-mm-yyyy','Asia/Tbilisi'),('Germany','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Germany','dd-mm-yyyy','Europe/Berlin'),('Ghana','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Ghana','dd-mm-yyyy','Africa/Accra'),('Gibraltar','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Gibraltar','dd-mm-yyyy','Europe/Gibraltar'),('Greece','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Greece','dd-mm-yyyy','Europe/Athens'),('Greenland','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Greenland','dd-mm-yyyy','America/Danmarkshavn\nAmerica/Godthab\nAmerica/Scoresbysund\nAmerica/Thule'),('Grenada','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Grenada','dd-mm-yyyy','America/Grenada'),('Guadeloupe','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Guadeloupe','dd-mm-yyyy','America/Guadeloupe'),('Guam','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Guam','dd-mm-yyyy','Pacific/Guam'),('Guatemala','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Guatemala','dd-mm-yyyy','America/Guatemala'),('Guernsey','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Guernsey','dd-mm-yyyy','Europe/Guernsey'),('Guinea','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Guinea','dd-mm-yyyy','Africa/Conakry'),('Guinea-Bissau','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Guinea-Bissau','dd-mm-yyyy','Africa/Bissau'),('Guyana','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Guyana','dd-mm-yyyy','America/Guyana'),('Haiti','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Haiti','dd-mm-yyyy','America/Guatemala\nAmerica/Port-au-Prince'),('Heard Island and McDonald Islands','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Heard Island and McDonald Islands','dd-mm-yyyy',NULL),('Holy See (Vatican City State)','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Holy See (Vatican City State)','dd-mm-yyyy',NULL),('Honduras','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Honduras','dd-mm-yyyy','America/Tegucigalpa'),('Hong Kong','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Hong Kong','dd-mm-yyyy','Asia/Hong_Kong'),('Hungary','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Hungary','yyyy-mm-dd','Europe/Budapest'),('Iceland','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Iceland','dd-mm-yyyy','Atlantic/Reykjavik'),('India','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'India','dd-mm-yyyy','Asia/Calcutta\nAsia/Kolkata'),('Indonesia','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Indonesia','dd-mm-yyyy','Asia/Jakarta\nAsia/Jayapura\nAsia/Makassar\nAsia/Pontianak'),('Iran, Islamic Republic of','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Iran, Islamic Republic of','dd-mm-yyyy',NULL),('Iraq','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Iraq','dd-mm-yyyy','Asia/Baghdad'),('Ireland','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Ireland','dd-mm-yyyy','Europe/Dublin'),('Isle of Man','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Isle of Man','dd-mm-yyyy','Europe/Isle_of_Man'),('Israel','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Israel','dd-mm-yyyy','Asia/Jerusalem'),('Italy','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Italy','dd-mm-yyyy','Europe/Rome'),('Ivory Coast','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Ivory Coast','dd-mm-yyyy',NULL),('Jamaica','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Jamaica','dd-mm-yyyy','America/Jamaica'),('Japan','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Japan','dd-mm-yyyy','Asia/Tokyo'),('Jersey','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Jersey','dd-mm-yyyy','Europe/Jersey'),('Jordan','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Jordan','dd-mm-yyyy','Asia/Amman'),('Kazakhstan','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Kazakhstan','dd-mm-yyyy','Asia/Almaty\nAsia/Aqtau\nAsia/Aqtobe\nAsia/Oral\nAsia/Qyzylorda'),('Kenya','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Kenya','dd-mm-yyyy','Africa/Nairobi'),('Kiribati','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Kiribati','dd-mm-yyyy','Pacific/Enderbury\nPacific/Kiritimati\nPacific/Tarawa'),('Korea, Democratic Peoples Republic of','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Korea, Democratic Peoples Republic of','dd-mm-yyyy',NULL),('Korea, Republic of','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Korea, Republic of','dd-mm-yyyy',NULL),('Kuwait','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Kuwait','dd-mm-yyyy','Asia/Kuwait'),('Kyrgyzstan','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Kyrgyzstan','dd-mm-yyyy','Asia/Bishkek'),('Lao Peoples Democratic Republic','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Lao Peoples Democratic Republic','dd-mm-yyyy',NULL),('Latvia','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Latvia','dd-mm-yyyy','Europe/Riga'),('Lebanon','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Lebanon','dd-mm-yyyy','Asia/Beirut'),('Lesotho','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Lesotho','dd-mm-yyyy','Africa/Maseru'),('Liberia','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Liberia','dd-mm-yyyy','Africa/Monrovia'),('Libya','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Libya','dd-mm-yyyy','Africa/Tripoli'),('Liechtenstein','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Liechtenstein','dd-mm-yyyy','Europe/Vaduz'),('Lithuania','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Lithuania','yyyy-mm-dd','Europe/Vilnius'),('Luxembourg','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Luxembourg','dd-mm-yyyy','Europe/Luxembourg'),('Macao','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Macao','dd-mm-yyyy',NULL),('Macedonia, Republic of','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Macedonia, Republic of','dd-mm-yyyy',NULL),('Madagascar','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Madagascar','dd-mm-yyyy','Indian/Antananarivo'),('Malawi','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Malawi','dd-mm-yyyy','Africa/Blantyre'),('Malaysia','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Malaysia','dd-mm-yyyy','Asia/Kuala_Lumpur\nAsia/Kuching'),('Maldives','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Maldives','dd-mm-yyyy','Indian/Maldives'),('Mali','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Mali','dd-mm-yyyy','Africa/Bamako'),('Malta','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Malta','dd-mm-yyyy','Europe/Malta'),('Marshall Islands','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Marshall Islands','dd-mm-yyyy','Pacific/Kwajalein\nPacific/Majuro'),('Martinique','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Martinique','dd-mm-yyyy','America/Martinique'),('Mauritania','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Mauritania','dd-mm-yyyy','Africa/Nouakchott'),('Mauritius','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Mauritius','dd-mm-yyyy','Indian/Mauritius'),('Mayotte','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Mayotte','dd-mm-yyyy','Indian/Mayotte'),('Mexico','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Mexico','dd-mm-yyyy','America/Bahia_Banderas\nAmerica/Cancun\nAmerica/Chihuahua\nAmerica/Hermosillo\nAmerica/Matamoros\nAmerica/Mazatlan\nAmerica/Merida\nAmerica/Mexico_City\nAmerica/Monterrey\nAmerica/Ojinaga\nAmerica/Santa_Isabel\nAmerica/Tijuana'),('Micronesia, Federated States of','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Micronesia, Federated States of','dd-mm-yyyy',NULL),('Moldova, Republic of','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Moldova, Republic of','dd-mm-yyyy',NULL),('Monaco','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Monaco','dd-mm-yyyy','Europe/Monaco'),('Mongolia','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Mongolia','yyyy-mm-dd','Asia/Choibalsan\nAsia/Hovd\nAsia/Ulaanbaatar'),('Montenegro','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Montenegro','dd-mm-yyyy','Europe/Podgorica'),('Montserrat','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Montserrat','dd-mm-yyyy','America/Montserrat'),('Morocco','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Morocco','dd-mm-yyyy','Africa/Casablanca'),('Mozambique','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Mozambique','dd-mm-yyyy','Africa/Maputo'),('Myanmar','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Myanmar','dd-mm-yyyy','Asia/Rangoon'),('Namibia','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Namibia','dd-mm-yyyy','Africa/Windhoek'),('Nauru','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Nauru','dd-mm-yyyy','Pacific/Nauru'),('Nepal','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Nepal','dd-mm-yyyy','Asia/Kathmandu\nAsia/Katmandu'),('Netherlands','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Netherlands','dd-mm-yyyy','Europe/Amsterdam'),('New Caledonia','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'New Caledonia','dd-mm-yyyy','Pacific/Noumea'),('New Zealand','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'New Zealand','dd-mm-yyyy','Pacific/Auckland\nPacific/Chatham'),('Nicaragua','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Nicaragua','dd-mm-yyyy','America/Managua'),('Niger','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Niger','dd-mm-yyyy','Africa/Niamey'),('Nigeria','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Nigeria','dd-mm-yyyy','Africa/Lagos'),('Niue','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Niue','dd-mm-yyyy','Pacific/Niue'),('Norfolk Island','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Norfolk Island','dd-mm-yyyy','Pacific/Norfolk'),('Northern Mariana Islands','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Northern Mariana Islands','dd-mm-yyyy','Pacific/Saipan'),('Norway','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Norway','dd-mm-yyyy','Europe/Oslo'),('Oman','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Oman','dd-mm-yyyy','Asia/Muscat'),('Pakistan','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Pakistan','dd-mm-yyyy','Asia/Karachi'),('Palau','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Palau','mm-dd-yyyy','Pacific/Palau'),('Palestinian Territory, Occupied','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Palestinian Territory, Occupied','dd-mm-yyyy',NULL),('Panama','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Panama','dd-mm-yyyy','America/Panama'),('Papua New Guinea','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Papua New Guinea','dd-mm-yyyy','Pacific/Port_Moresby'),('Paraguay','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Paraguay','dd-mm-yyyy','America/Asuncion'),('Peru','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Peru','dd-mm-yyyy','America/Lima'),('Philippines','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Philippines','mm-dd-yyyy','Asia/Manila'),('Pitcairn','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Pitcairn','dd-mm-yyyy','Pacific/Pitcairn'),('Poland','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Poland','dd-mm-yyyy','Europe/Warsaw'),('Portugal','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Portugal','dd-mm-yyyy','Atlantic/Azores\nAtlantic/Madeira\nEurope/Lisbon'),('Puerto Rico','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Puerto Rico','dd-mm-yyyy','America/Puerto_Rico'),('Qatar','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Qatar','dd-mm-yyyy','Asia/Qatar'),('Réunion','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Réunion','dd-mm-yyyy',NULL),('Romania','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Romania','dd-mm-yyyy','Europe/Bucharest'),('Russian Federation','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Russian Federation','dd-mm-yyyy',NULL),('Rwanda','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Rwanda','dd-mm-yyyy','Africa/Kigali'),('Saint Barthélemy','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Saint Barthélemy','dd-mm-yyyy',NULL),('Saint Helena, Ascension and Tristan da Cunha','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Saint Helena, Ascension and Tristan da Cunha','dd-mm-yyyy',NULL),('Saint Kitts and Nevis','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Saint Kitts and Nevis','dd-mm-yyyy','America/St_Kitts'),('Saint Lucia','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Saint Lucia','dd-mm-yyyy','America/St_Lucia'),('Saint Martin (French part)','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Saint Martin (French part)','dd-mm-yyyy',NULL),('Saint Pierre and Miquelon','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Saint Pierre and Miquelon','dd-mm-yyyy',NULL),('Saint Vincent and the Grenadines','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Saint Vincent and the Grenadines','dd-mm-yyyy','America/St_Vincent'),('Samoa','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Samoa','dd-mm-yyyy','Pacific/Apia'),('San Marino','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'San Marino','dd-mm-yyyy','Europe/San_Marino'),('Sao Tome and Principe','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Sao Tome and Principe','dd-mm-yyyy',NULL),('Saudi Arabia','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Saudi Arabia','dd-mm-yyyy','Asia/Riyadh'),('Senegal','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Senegal','dd-mm-yyyy','Africa/Dakar'),('Serbia','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Serbia','dd-mm-yyyy','Europe/Belgrade'),('Seychelles','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Seychelles','dd-mm-yyyy','Indian/Mahe'),('Sierra Leone','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Sierra Leone','dd-mm-yyyy','Africa/Freetown'),('Singapore','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Singapore','dd-mm-yyyy','Asia/Singapore'),('Sint Maarten (Dutch part)','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Sint Maarten (Dutch part)','dd-mm-yyyy',NULL),('Slovakia','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Slovakia','dd-mm-yyyy','Europe/Bratislava'),('Slovenia','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Slovenia','dd-mm-yyyy','Europe/Ljubljana'),('Solomon Islands','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Solomon Islands','dd-mm-yyyy','Pacific/Guadalcanal'),('Somalia','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Somalia','dd-mm-yyyy','Africa/Mogadishu'),('South Africa','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'South Africa','yyyy-mm-dd','Africa/Johannesburg'),('South Georgia and the South Sandwich Islands','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'South Georgia and the South Sandwich Islands','dd-mm-yyyy',NULL),('South Sudan','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'South Sudan','dd-mm-yyyy','Africa/Juba'),('Spain','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Spain','dd-mm-yyyy','Africa/Ceuta\nAtlantic/Canary\nEurope/Madrid'),('Sri Lanka','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Sri Lanka','dd-mm-yyyy','Asia/Colombo'),('Sudan','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Sudan','dd-mm-yyyy','Africa/Khartoum'),('Suriname','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Suriname','dd-mm-yyyy','America/Paramaribo'),('Svalbard and Jan Mayen','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Svalbard and Jan Mayen','dd-mm-yyyy',NULL),('Swaziland','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Swaziland','dd-mm-yyyy','Africa/Mbabane'),('Sweden','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Sweden','dd-mm-yyyy','Europe/Stockholm'),('Switzerland','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Switzerland','dd-mm-yyyy','Europe/Zurich'),('Syrian Arab Republic','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Syrian Arab Republic','dd-mm-yyyy',NULL),('Taiwan, Province of China','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Taiwan, Province of China','yyyy-mm-dd',NULL),('Tajikistan','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Tajikistan','dd-mm-yyyy','Asia/Dushanbe'),('Tanzania, United Republic of','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Tanzania, United Republic of','dd-mm-yyyy',NULL),('Thailand','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Thailand','dd-mm-yyyy','Asia/Bangkok'),('Timor-Leste','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Timor-Leste','dd-mm-yyyy',NULL),('Togo','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Togo','dd-mm-yyyy','Africa/Lome'),('Tokelau','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Tokelau','dd-mm-yyyy','Pacific/Fakaofo'),('Tonga','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Tonga','dd-mm-yyyy','Pacific/Tongatapu'),('Trinidad and Tobago','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Trinidad and Tobago','dd-mm-yyyy','America/Port_of_Spain'),('Tunisia','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Tunisia','dd-mm-yyyy','Africa/Tunis'),('Turkey','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Turkey','dd-mm-yyyy','Europe/Istanbul'),('Turkmenistan','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Turkmenistan','dd-mm-yyyy','Asia/Ashgabat'),('Turks and Caicos Islands','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Turks and Caicos Islands','dd-mm-yyyy',NULL),('Tuvalu','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Tuvalu','dd-mm-yyyy','Pacific/Funafuti'),('Uganda','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Uganda','dd-mm-yyyy','Africa/Kampala'),('Ukraine','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Ukraine','dd-mm-yyyy','Europe/Kiev\nEurope/Simferopol\nEurope/Uzhgorod\nEurope/Zaporozhye'),('United Arab Emirates','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'United Arab Emirates','dd-mm-yyyy','Asia/Dubai'),('United Kingdom','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'United Kingdom','dd-mm-yyyy','Europe/London'),('United States','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'United States','mm-dd-yyyy','America/Adak\nAmerica/Anchorage\nAmerica/Boise\nAmerica/Chicago\nAmerica/Denver\nAmerica/Detroit\nAmerica/Indiana/Indianapolis\nAmerica/Indiana/Knox\nAmerica/Indiana/Marengo\nAmerica/Indiana/Petersburg\nAmerica/Indiana/Tell_City\nAmerica/Indiana/Vevay\nAmerica/Indiana/Vincennes\nAmerica/Indiana/Winamac\nAmerica/Juneau\nAmerica/Kentucky/Louisville\nAmerica/Kentucky/Monticello\nAmerica/Los_Angeles\nAmerica/Menominee\nAmerica/Metlakatla\nAmerica/New_York\nAmerica/Nome\nAmerica/North_Dakota/Beulah\nAmerica/North_Dakota/Center\nAmerica/North_Dakota/New_Salem\nAmerica/Phoenix\nAmerica/Shiprock\nAmerica/Sitka\nAmerica/Yakutat\nPacific/Honolulu'),('United States Minor Outlying Islands','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'United States Minor Outlying Islands','dd-mm-yyyy',NULL),('Uruguay','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Uruguay','dd-mm-yyyy','America/Montevideo'),('Uzbekistan','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Uzbekistan','dd-mm-yyyy','Asia/Samarkand\nAsia/Tashkent'),('Vanuatu','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Vanuatu','dd-mm-yyyy','Pacific/Efate'),('Venezuela, Bolivarian Republic of','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Venezuela, Bolivarian Republic of','dd-mm-yyyy',NULL),('Viet Nam','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Viet Nam','dd-mm-yyyy',NULL),('Virgin Islands, British','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Virgin Islands, British','dd-mm-yyyy',NULL),('Virgin Islands, U.S.','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Virgin Islands, U.S.','dd-mm-yyyy',NULL),('Wallis and Futuna','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Wallis and Futuna','dd-mm-yyyy',NULL),('Western Sahara','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Western Sahara','dd-mm-yyyy','Africa/El_Aaiun'),('Yemen','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Yemen','dd-mm-yyyy','Asia/Aden'),('Zambia','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Zambia','dd-mm-yyyy','Africa/Lusaka'),('Zimbabwe','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Zimbabwe','dd-mm-yyyy','Africa/Harare');
/*!40000 ALTER TABLE `tabCountry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCurrency`
--

DROP TABLE IF EXISTS `tabCurrency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCurrency` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `fraction_units` int(11) DEFAULT NULL,
  `symbol` varchar(180) DEFAULT NULL,
  `enabled` int(1) DEFAULT NULL,
  `currency_name` varchar(180) DEFAULT NULL,
  `fraction` varchar(180) DEFAULT NULL,
  `number_format` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCurrency`
--

LOCK TABLES `tabCurrency` WRITE;
/*!40000 ALTER TABLE `tabCurrency` DISABLE KEYS */;
INSERT INTO `tabCurrency` VALUES ('AED','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'د.إ',NULL,'AED','Fils','#,###.##'),('ALL','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'L',NULL,'ALL','Qindarkë','#,###.##'),('AMD','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'֏',NULL,'AMD','Luma','#,###.##'),('ARS','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'ARS','Centavo','#.###,##'),('AUD','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'AUD','Cent','# ###.##'),('AWG','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'Afl',NULL,'AWG','Cent','#,###.##'),('BBD','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'BBD','Cent','#,###.##'),('BDT','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'৳',NULL,'BDT','Paisa','#,###.##'),('BHD','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1000,'.د.ب',NULL,'BHD','Fils','#,###.###'),('BIF','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'Fr',NULL,'BIF','Centime','#,###.##'),('BMD','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'BMD','Cent','#,###.##'),('BND','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'BND',NULL,'#,###.##'),('BOB','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'BOB',NULL,'#,###.##'),('BSD','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'BSD',NULL,'#,###.##'),('BTN','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'Nu.',NULL,'BTN','Chetrum','#,###.##'),('BWP','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'P',NULL,'BWP','Thebe','#,###.##'),('BZD','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'BZD','Cent','#,###.##'),('CAD','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'CAD','Cent','#,###.##'),('CHF','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'Fr',NULL,'CHF','Rappen[K]','#\'###.##'),('CLP','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'CLP','Centavo','#.###'),('CNY','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CNY',NULL,'#,###.##'),('COP','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'COP','Centavo','#.###,##'),('CRC','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'₡',NULL,'CRC','Céntimo','#.###,##'),('CUP','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'CUP','Centavo','#,###.##'),('CVE','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'Esc or $',NULL,'CVE','Centavo','#,###.##'),('CYP','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'€',NULL,'CYP','Cent','#.###,##'),('CZK','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'Kč',NULL,'CZK','Haléř','#.###,##'),('DJF','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'Fr',NULL,'DJF','Centime','#,###.##'),('DKK','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'kr',NULL,'DKK','Øre','#.###,##'),('DOP','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'DOP','Centavo','#,###.##'),('DZD','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'د.ج',NULL,'DZD','Santeem','#,###.##'),('EEK','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'€',NULL,'EEK','Cent','#,###.##'),('EGP','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'£ or ج.م',NULL,'EGP','Piastre[F]','#,###.##'),('ERN','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'Nfk',NULL,'ERN','Cent','#,###.##'),('EUR','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'€',NULL,'EUR','Cent','#,###.##'),('FJD','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'FJD','Cent','#,###.##'),('FKP','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'FKP',NULL,'#,###.##'),('GBP','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'£',NULL,'GBP','Penny','#,###.##'),('GIP','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'£',NULL,'GIP','Penny','#,###.##'),('GMD','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'GMD',NULL,'#,###.##'),('GNF','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'Fr',NULL,'GNF','Centime','#,###.##'),('GTQ','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'Q',NULL,'GTQ','Centavo','#,###.##'),('GYD','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'GYD','Cent','#,###.##'),('HKD','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'HKD','Cent','#,###.##'),('HNL','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'L',NULL,'HNL','Centavo','#,###.##'),('HRK','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'kn',NULL,'HRK','Lipa','#.###,##'),('HTG','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'G',NULL,'HTG','Centime','#,###.##'),('HUF','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'Ft',NULL,'HUF','Fillér','#.###'),('IDR','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'Rp',NULL,'IDR','Sen','#.###,##'),('ILS','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'₪',NULL,'ILS','Agora','#,###.##'),('INR','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'₹',NULL,'INR','Paisa','#,##,###.##'),('IQD','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1000,'ع.د',NULL,'IQD','Fils','#,###.###'),('IRR','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IRR',NULL,'#,###.##'),('ISK','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'kr',NULL,'ISK','Eyrir','#.###'),('JMD','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'JMD','Cent','#,###.##'),('JOD','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'د.ا',NULL,'JOD','Piastre[H]','#,###.###'),('JPY','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'¥',NULL,'JPY','Sen[G]','#,###'),('KES','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'Sh',NULL,'KES','Cent','#,###.##'),('KGS','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'лв',NULL,'KGS','Tyiyn','#,###.##'),('KHR','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'៛',NULL,'KHR','Sen','#,###.##'),('KMF','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'Fr',NULL,'KMF','Centime','#,###.##'),('KPW','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'KPW',NULL,'#,###.##'),('KRW','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'KRW',NULL,'#,###'),('KWD','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1000,'د.ك',NULL,'KWD','Fils','#,###.###'),('KYD','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'KYD','Cent','#,###.##'),('KZT','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'₸',NULL,'KZT','Tïın','#,###.##'),('LAK','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'LAK',NULL,'#,###.##'),('LBP','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'ل.ل',NULL,'LBP','Piastre','#,###.##'),('LKR','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'Rs',NULL,'LKR','Cent','#,###.##'),('LRD','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'LRD','Cent','#,###.##'),('LSL','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'L',NULL,'LSL','Sente','#,###.##'),('LTL','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'Lt',NULL,'LTL','Centas','# ###,##'),('LVL','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'Ls',NULL,'LVL','Santīms','#,###.##'),('LYD','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1000,'ل.د',NULL,'LYD','Dirham','#,###.###'),('MAD','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'د.م.',NULL,'MAD','Centime','#,###.##'),('MDL','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MDL',NULL,'#,###.##'),('MKD','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'ден',NULL,'MKD','Deni','#,###.##'),('MMK','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MMK',NULL,'#,###.##'),('MNT','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'₮',NULL,'MNT','Möngö','#,###.##'),('MOP','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MOP',NULL,'#,###.##'),('MRO','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,5,'UM',NULL,'MRO','Khoums','#,###.##'),('MTL','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'€',NULL,'MTL','Cent','#,###.##'),('MUR','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'₨',NULL,'MUR','Cent','#,###'),('MVR','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'.ރ',NULL,'MVR','Laari','#,###.##'),('MWK','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'MK',NULL,'MWK','Tambala','#,###.##'),('MXN','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'MXN','Centavo','#,###.##'),('MYR','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'RM',NULL,'MYR','Sen','#,###.##'),('NAD','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'NAD','Cent','#,###.##'),('NGN','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'₦',NULL,'NGN','Kobo','#,###.##'),('NIO','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'C$',NULL,'NIO','Centavo','#,###.##'),('NOK','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'kr',NULL,'NOK','Øre','#.###,##'),('NPR','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'₨',NULL,'NPR','Paisa','#,###.##'),('NZD','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'NZD','Cent','#,###.##'),('OMR','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1000,'ر.ع.',NULL,'OMR','Baisa','#,###.###'),('PEN','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'S/.',NULL,'PEN','Céntimo','#,###.##'),('PGK','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'K',NULL,'PGK','Toea','#,###.##'),('PHP','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'₱',NULL,'PHP','Centavo','#,###.##'),('PKR','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'₨',NULL,'PKR','Paisa','#,###.##'),('PYG','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'₲',NULL,'PYG','Céntimo','#,###.##'),('QAR','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'ر.ق',NULL,'QAR','Dirham','#,###.##'),('RUB','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'RUB',NULL,'#.###,##'),('RWF','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'Fr',NULL,'RWF','Centime','#,###.##'),('SAR','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'ر.س',NULL,'SAR','Halala','#,###.##'),('SBD','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'SBD','Cent','#,###.##'),('SCR','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'₨',NULL,'SCR','Cent','#,###.##'),('SEK','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'kr',NULL,'SEK','Öre','#.###,##'),('SGD','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'SGD','Sen','#,###.##'),('SHP','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SHP',NULL,'#,###.##'),('SLL','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'Le',NULL,'SLL','Cent','#,###.##'),('SOS','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'Sh',NULL,'SOS','Cent','#,###.##'),('STD','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'STD',NULL,'#,###.##'),('SVC','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'₡',NULL,'SVC','Centavo','#,###.##'),('SYP','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SYP',NULL,'#,###.##'),('SZL','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'L',NULL,'SZL','Cent','#, ###.##'),('THB','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'฿',NULL,'THB','Satang','#,###.##'),('TMM','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'m',NULL,'TMM','Tennesi','#,###.##'),('TND','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1000,'د.ت',NULL,'TND','Millime','#,###.###'),('TOP','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'T$',NULL,'TOP','Seniti[L]','#,###.##'),('TTD','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'TTD','Cent','#,###.##'),('TZS','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TZS',NULL,'#,###.##'),('UGX','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'Sh',NULL,'UGX','Cent','#,###.##'),('USD','2013-11-07 11:16:34','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',1,'USD','Cent','#,###.##'),('UYU','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'$',NULL,'UYU','Centésimo','#.###,##'),('UZS','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'лв',NULL,'UZS','Tiyin','#,###.##'),('VND','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'VND',NULL,'#.###'),('VUV','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,0,'Vt',NULL,'VUV','None','#,###'),('WST','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'T',NULL,'WST','Sene','#,###.##'),('ZAR','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'R',NULL,'ZAR','Cent','# ###.##'),('ZMK','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'ZK',NULL,'ZMK','Ngwee','#,###.##'),('ZWD','2013-11-07 11:16:35','2013-11-07 11:16:35','Administrator','Administrator',0,NULL,NULL,NULL,NULL,100,'P',NULL,'ZWD','Thebe','# ###.##');
/*!40000 ALTER TABLE `tabCurrency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCurrency Exchange`
--

DROP TABLE IF EXISTS `tabCurrency Exchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCurrency Exchange` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `to_currency` varchar(180) DEFAULT NULL,
  `exchange_rate` decimal(18,6) DEFAULT NULL,
  `from_currency` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCurrency Exchange`
--

LOCK TABLES `tabCurrency Exchange` WRITE;
/*!40000 ALTER TABLE `tabCurrency Exchange` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCurrency Exchange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCustom Field`
--

DROP TABLE IF EXISTS `tabCustom Field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCustom Field` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `no_copy` int(1) DEFAULT NULL,
  `in_list_view` int(1) DEFAULT NULL,
  `reqd` int(1) DEFAULT NULL,
  `in_filter` int(1) DEFAULT NULL,
  `read_only` int(1) DEFAULT NULL,
  `print_hide` int(1) DEFAULT NULL,
  `trash_reason` text,
  `label` varchar(180) DEFAULT NULL,
  `width` varchar(180) DEFAULT NULL,
  `hidden` int(1) DEFAULT NULL,
  `permlevel` int(11) DEFAULT '0',
  `insert_after` varchar(180) DEFAULT NULL,
  `description` text,
  `allow_on_submit` int(1) DEFAULT NULL,
  `dt` varchar(180) DEFAULT NULL,
  `default` text,
  `fieldname` varchar(180) DEFAULT NULL,
  `fieldtype` varchar(180) DEFAULT NULL,
  `options` text,
  `report_hide` int(1) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCustom Field`
--

LOCK TABLES `tabCustom Field` WRITE;
/*!40000 ALTER TABLE `tabCustom Field` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCustom Field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCustom Script`
--

DROP TABLE IF EXISTS `tabCustom Script`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCustom Script` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `dt` varchar(180) DEFAULT NULL,
  `script` text,
  `script_type` varchar(180) DEFAULT 'Client',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCustom Script`
--

LOCK TABLES `tabCustom Script` WRITE;
/*!40000 ALTER TABLE `tabCustom Script` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCustom Script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCustomer`
--

DROP TABLE IF EXISTS `tabCustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCustomer` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `customer_details` text,
  `naming_series` varchar(180) DEFAULT NULL,
  `lead_name` varchar(180) DEFAULT NULL,
  `default_currency` varchar(180) DEFAULT NULL,
  `customer_type` varchar(180) DEFAULT NULL,
  `customer_name` varchar(180) DEFAULT NULL,
  `credit_days` int(11) DEFAULT NULL,
  `default_commission_rate` decimal(18,6) DEFAULT NULL,
  `territory` varchar(180) DEFAULT NULL,
  `website` varchar(180) DEFAULT NULL,
  `default_sales_partner` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `credit_limit` decimal(18,6) DEFAULT NULL,
  `customer_group` varchar(180) DEFAULT NULL,
  `default_price_list` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `customer_name` (`customer_name`),
  KEY `company` (`company`),
  KEY `customer_group` (`customer_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCustomer`
--

LOCK TABLES `tabCustomer` WRITE;
/*!40000 ALTER TABLE `tabCustomer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCustomer Discount`
--

DROP TABLE IF EXISTS `tabCustomer Discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCustomer Discount` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `discount` decimal(18,6) DEFAULT NULL,
  `item_group` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCustomer Discount`
--

LOCK TABLES `tabCustomer Discount` WRITE;
/*!40000 ALTER TABLE `tabCustomer Discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCustomer Discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCustomer Group`
--

DROP TABLE IF EXISTS `tabCustomer Group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCustomer Group` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `trash_reason` text,
  `parent_customer_group` varchar(180) DEFAULT NULL,
  `is_group` varchar(180) DEFAULT NULL,
  `default_price_list` varchar(180) DEFAULT NULL,
  `old_parent` varchar(180) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `customer_group_name` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `rgt` (`rgt`),
  KEY `lft` (`lft`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCustomer Group`
--

LOCK TABLES `tabCustomer Group` WRITE;
/*!40000 ALTER TABLE `tabCustomer Group` DISABLE KEYS */;
INSERT INTO `tabCustomer Group` VALUES ('All Customer Groups','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,10,NULL,NULL,'Yes',NULL,'',1,'All Customer Groups'),('Commercial','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,5,NULL,'All Customer Groups','No',NULL,'All Customer Groups',4,'Commercial'),('Government','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,9,NULL,'All Customer Groups','No',NULL,'All Customer Groups',8,'Government'),('Individual','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,3,NULL,'All Customer Groups','No',NULL,'All Customer Groups',2,'Individual'),('Non Profit','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,7,NULL,'All Customer Groups','No',NULL,'All Customer Groups',6,'Non Profit');
/*!40000 ALTER TABLE `tabCustomer Group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCustomer Issue`
--

DROP TABLE IF EXISTS `tabCustomer Issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCustomer Issue` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `address_display` text,
  `contact_email` varchar(180) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `serial_no` varchar(180) DEFAULT NULL,
  `service_address` text,
  `resolved_by` varchar(180) DEFAULT NULL,
  `warranty_amc_status` varchar(180) DEFAULT NULL,
  `customer_name` varchar(180) DEFAULT NULL,
  `amc_expiry_date` date DEFAULT NULL,
  `complaint_date` date DEFAULT NULL,
  `item_name` varchar(180) DEFAULT NULL,
  `from_company` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `contact_display` text,
  `territory` varchar(180) DEFAULT NULL,
  `status` varchar(180) DEFAULT 'Open',
  `complaint` text,
  `description` text,
  `complaint_raised_by` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `customer_address` varchar(180) DEFAULT NULL,
  `resolution_details` text,
  `resolution_date` datetime DEFAULT NULL,
  `customer` varchar(180) DEFAULT NULL,
  `contact_mobile` varchar(180) DEFAULT NULL,
  `customer_group` varchar(180) DEFAULT NULL,
  `warranty_expiry_date` date DEFAULT NULL,
  `contact_person` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `resolved_by` (`resolved_by`),
  KEY `complaint_date` (`complaint_date`),
  KEY `territory` (`territory`),
  KEY `status` (`status`),
  KEY `company` (`company`),
  KEY `item_code` (`item_code`),
  KEY `fiscal_year` (`fiscal_year`),
  KEY `resolution_date` (`resolution_date`),
  KEY `customer` (`customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCustomer Issue`
--

LOCK TABLES `tabCustomer Issue` WRITE;
/*!40000 ALTER TABLE `tabCustomer Issue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCustomer Issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabCustomize Form Field`
--

DROP TABLE IF EXISTS `tabCustomize Form Field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabCustomize Form Field` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `print_hide` int(1) DEFAULT NULL,
  `description` text,
  `print_width` varchar(180) DEFAULT NULL,
  `default` text,
  `depends_on` varchar(180) DEFAULT NULL,
  `allow_on_submit` int(1) DEFAULT NULL,
  `options` text,
  `width` varchar(180) DEFAULT NULL,
  `fieldname` varchar(180) DEFAULT NULL,
  `fieldtype` varchar(180) DEFAULT NULL,
  `reqd` int(1) DEFAULT NULL,
  `in_list_view` int(1) DEFAULT NULL,
  `hidden` int(1) DEFAULT NULL,
  `label` varchar(180) DEFAULT NULL,
  `permlevel` int(11) DEFAULT '0',
  `report_hide` int(1) DEFAULT NULL,
  `in_filter` int(1) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabCustomize Form Field`
--

LOCK TABLES `tabCustomize Form Field` WRITE;
/*!40000 ALTER TABLE `tabCustomize Form Field` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabCustomize Form Field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDeduction Type`
--

DROP TABLE IF EXISTS `tabDeduction Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDeduction Type` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `deduction_name` varchar(180) DEFAULT NULL,
  `trash_reason` text,
  `description` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDeduction Type`
--

LOCK TABLES `tabDeduction Type` WRITE;
/*!40000 ALTER TABLE `tabDeduction Type` DISABLE KEYS */;
INSERT INTO `tabDeduction Type` VALUES ('Income Tax','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Income Tax',NULL,'Income Tax'),('Professional Tax','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Professional Tax',NULL,'Professional Tax'),('Provident Fund','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Provident Fund',NULL,'Provident fund');
/*!40000 ALTER TABLE `tabDeduction Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDefault Home Page`
--

DROP TABLE IF EXISTS `tabDefault Home Page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDefault Home Page` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `home_page` varchar(180) DEFAULT NULL,
  `role` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDefault Home Page`
--

LOCK TABLES `tabDefault Home Page` WRITE;
/*!40000 ALTER TABLE `tabDefault Home Page` DISABLE KEYS */;
INSERT INTO `tabDefault Home Page` VALUES ('000000167','2014-03-25 08:13:36','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','default_home_pages','Control Panel',1,NULL,'Guest');
/*!40000 ALTER TABLE `tabDefault Home Page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDefaultValue`
--

DROP TABLE IF EXISTS `tabDefaultValue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDefaultValue` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `defvalue` text,
  `defkey` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `defaultvalue_parent_defkey_index` (`parent`,`defkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDefaultValue`
--

LOCK TABLES `tabDefaultValue` WRITE;
/*!40000 ALTER TABLE `tabDefaultValue` DISABLE KEYS */;
INSERT INTO `tabDefaultValue` VALUES ('DEF000001','2013-11-07 11:16:35','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',1,'1','fs_imports'),('DEF000002','2013-11-07 11:16:35','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',2,'1','fs_projects'),('DEF000003','2013-11-07 11:16:35','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',3,'1','fs_page_break'),('DEF000004','2013-11-07 11:16:35','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',4,'1','fs_recurring_invoice'),('DEF000005','2013-11-07 11:16:35','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',5,'1','fs_quality'),('DEF000006','2013-11-07 11:16:35','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',6,'1','fs_more_info'),('DEF000007','2013-11-07 11:16:35','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',7,'1','fs_pos_view'),('DEF000008','2013-11-07 11:16:35','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',8,'1','fs_packing_details'),('DEF000009','2013-11-07 11:16:36','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',9,'1','fs_brands'),('DEF000010','2013-11-07 11:16:36','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',10,'1','fs_sales_extras'),('DEF000011','2013-11-07 11:16:36','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',11,'1','fs_item_serial_nos'),('DEF000012','2013-11-07 11:16:36','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',12,'1','fs_manufacturing'),('DEF000013','2013-11-07 11:16:36','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',13,'1','fs_item_batch_nos'),('DEF000014','2013-11-07 11:16:36','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',14,'1','fs_exports'),('DEF000015','2013-11-07 11:16:36','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',15,'1','fs_after_sales_installations'),('DEF000016','2013-11-07 11:16:36','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',16,'1','fs_discounts'),('DEF000017','2013-11-07 11:16:36','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',17,'1','fs_item_group_in_details'),('DEF000018','2013-11-07 11:16:36','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',18,'1','fs_item_advanced'),('DEF000019','2013-11-07 11:16:36','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',19,'1','fs_pos'),('DEF000020','2013-11-07 11:16:37','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',20,'1','fs_purchase_discounts'),('DEF000021','2013-11-07 11:16:37','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',21,'1','fs_item_barcode'),('DEF000022','2013-11-07 16:44:36','2013-11-07 16:44:36','Administrator','Administrator',0,'__global','system_defaults','Control Panel',1,'2014-03-25 08:33:01','scheduler_last_event'),('DEF000023','2013-11-22 11:43:01','2013-11-22 11:43:01','Administrator','Administrator',0,'__global','system_defaults','Control Panel',2,NULL,'__session_status'),('DEF000024','2013-11-22 11:43:01','2013-11-22 11:43:01','Administrator','Administrator',0,'__global','system_defaults','Control Panel',3,NULL,'__session_status_message'),('DEF000025','2014-03-25 08:13:37','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',22,NULL,'session_expiry'),('DEF000026','2014-03-25 08:13:37','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',23,'3','float_precision'),('DEF000027','2014-03-25 08:13:37','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',24,'Pinnacle Foods Limited','company'),('DEF000028','2014-03-25 08:13:37','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',25,'0','disable_rounded_total'),('DEF000029','2014-03-25 08:13:37','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',26,'2014','fiscal_year'),('DEF000030','2014-03-25 08:13:37','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',27,'USD','currency'),('DEF000031','2014-03-25 08:13:37','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',28,NULL,'print_style'),('DEF000032','2014-03-25 08:13:37','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',29,NULL,'number_format'),('DEF000033','2014-03-25 08:13:37','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',30,'mm-dd-yyyy','date_format'),('DEF000034','2014-03-25 08:13:37','2014-03-25 08:13:37','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',31,NULL,'hide_currency_symbol'),('DEF000035','2014-03-25 08:13:38','2014-03-25 08:13:38','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',32,NULL,'account_url'),('DEF000036','2014-03-25 08:13:38','2014-03-25 08:13:38','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',33,'2014-01-01','year_start_date'),('DEF000037','2014-03-25 08:13:38','2014-03-25 08:13:38','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',34,'2014-12-31','year_end_date'),('DEF000038','2014-03-25 08:13:38','2014-03-25 08:13:38','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',35,'1','auto_accounting_for_stock'),('DEF000039','2014-03-25 08:13:38','2014-03-25 08:13:38','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',36,'Item Code','item_naming_by'),('DEF000040','2014-03-25 08:13:38','2014-03-25 08:13:38','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',37,NULL,'item_group'),('DEF000041','2014-03-25 08:13:39','2014-03-25 08:13:39','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',38,'Nos','stock_uom'),('DEF000042','2014-03-25 08:13:39','2014-03-25 08:13:39','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',39,'0','allow_negative_stock'),('DEF000043','2014-03-25 08:13:40','2014-03-25 08:13:40','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',40,'Customer Name','cust_master_name'),('DEF000044','2014-03-25 08:13:40','2014-03-25 08:13:40','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',41,'','customer_group'),('DEF000045','2014-03-25 08:13:40','2014-03-25 08:13:40','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',42,'','territory'),('DEF000046','2014-03-25 08:13:40','2014-03-25 08:13:40','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',43,'0','maintain_same_sales_rate'),('DEF000047','2014-03-25 08:13:40','2014-03-25 08:13:40','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',44,'0','editable_price_list_rate'),('DEF000048','2014-03-25 08:13:40','2014-03-25 08:13:40','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',45,'Standard Selling','selling_price_list'),('DEF000049','2014-03-25 08:13:40','2014-03-25 08:13:40','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',46,'','supplier_type'),('DEF000050','2014-03-25 08:13:40','2014-03-25 08:13:40','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',47,'Supplier Name','supp_master_name'),('DEF000051','2014-03-25 08:13:41','2014-03-25 08:13:41','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',48,'1','maintain_same_rate'),('DEF000052','2014-03-25 08:13:41','2014-03-25 08:13:41','Administrator','Administrator',0,'Control Panel','system_defaults','Control Panel',49,'Standard Buying','buying_price_list'),('DEF000053','2014-03-25 08:32:14','2014-03-25 08:32:14','Administrator','Administrator',0,'Administrator','system_defaults','Control Panel',1,'[\"Accounts\",\"Selling\",\"Activity\",\"Buying\",\"Calendar\",\"Finder\",\"HR\",\"Manufacturing\",\"Messages\",\"Notes\",\"Projects\",\"Stock\",\"Support\",\"To Do\",\"Website\",\"Setup\"]','_desktop_items');
/*!40000 ALTER TABLE `tabDefaultValue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDelivery Note`
--

DROP TABLE IF EXISTS `tabDelivery Note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDelivery Note` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `rounded_total_export` decimal(18,6) DEFAULT NULL,
  `lr_date` date DEFAULT NULL,
  `excise_page` varchar(180) DEFAULT NULL,
  `selling_price_list` varchar(180) DEFAULT NULL,
  `tc_name` varchar(180) DEFAULT NULL,
  `source` varchar(180) DEFAULT NULL,
  `charge` varchar(180) DEFAULT NULL,
  `address_display` text,
  `instructions` text,
  `select_print_heading` varchar(180) DEFAULT NULL,
  `net_total_export` decimal(18,6) DEFAULT NULL,
  `po_date` date DEFAULT NULL,
  `price_list_currency` varchar(180) DEFAULT NULL,
  `contact_display` text,
  `terms` text,
  `other_charges_total_export` decimal(18,6) DEFAULT NULL,
  `shipping_address` text,
  `customer_address` varchar(180) DEFAULT NULL,
  `total_commission` decimal(18,6) DEFAULT NULL,
  `contact_mobile` text,
  `rounded_total` decimal(18,6) DEFAULT NULL,
  `shipping_address_name` varchar(180) DEFAULT NULL,
  `po_no` varchar(180) DEFAULT NULL,
  `contact_person` varchar(180) DEFAULT NULL,
  `print_without_amount` int(1) DEFAULT NULL,
  `campaign` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `conversion_rate` decimal(18,6) DEFAULT NULL,
  `per_installed` decimal(18,6) DEFAULT NULL,
  `posting_time` time DEFAULT NULL,
  `customer_name` varchar(180) DEFAULT NULL,
  `commission_rate` decimal(18,6) DEFAULT NULL,
  `territory` varchar(180) DEFAULT NULL,
  `sales_partner` varchar(180) DEFAULT NULL,
  `project_name` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `lr_no` varchar(180) DEFAULT NULL,
  `contact_email` text,
  `customer` varchar(180) DEFAULT NULL,
  `grand_total` decimal(18,6) DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `customer_group` varchar(180) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `other_charges_total` decimal(18,6) DEFAULT NULL,
  `currency` varchar(180) DEFAULT NULL,
  `letter_head` varchar(180) DEFAULT NULL,
  `installation_status` varchar(180) DEFAULT NULL,
  `shipping_rule` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `to_warehouse` varchar(180) DEFAULT NULL,
  `grand_total_export` decimal(18,6) DEFAULT NULL,
  `status` varchar(180) DEFAULT 'Draft',
  `in_words_export` varchar(180) DEFAULT NULL,
  `transporter_name` varchar(180) DEFAULT NULL,
  `in_words` varchar(180) DEFAULT NULL,
  `plc_conversion_rate` decimal(18,6) DEFAULT NULL,
  `net_total` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `fiscal_year` (`fiscal_year`),
  KEY `per_installed` (`per_installed`),
  KEY `territory` (`territory`),
  KEY `project_name` (`project_name`),
  KEY `company` (`company`),
  KEY `customer` (`customer`),
  KEY `posting_date` (`posting_date`),
  KEY `customer_group` (`customer_group`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDelivery Note`
--

LOCK TABLES `tabDelivery Note` WRITE;
/*!40000 ALTER TABLE `tabDelivery Note` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabDelivery Note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDelivery Note Item`
--

DROP TABLE IF EXISTS `tabDelivery Note Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDelivery Note Item` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `serial_no` text,
  `expense_account` varchar(180) DEFAULT NULL,
  `item_tax_rate` text,
  `installed_qty` decimal(18,6) DEFAULT NULL,
  `adj_rate` decimal(18,6) DEFAULT NULL,
  `cost_center` varchar(180) DEFAULT NULL,
  `actual_qty` decimal(18,6) DEFAULT NULL,
  `page_break` int(1) DEFAULT NULL,
  `prevdoc_detail_docname` varchar(180) DEFAULT NULL,
  `item_name` varchar(180) DEFAULT NULL,
  `against_sales_invoice` varchar(180) DEFAULT NULL,
  `stock_uom` varchar(180) DEFAULT NULL,
  `warehouse` varchar(180) DEFAULT NULL,
  `against_sales_order` varchar(180) DEFAULT NULL,
  `basic_rate` decimal(18,6) DEFAULT NULL,
  `ref_rate` decimal(18,6) DEFAULT NULL,
  `description` text,
  `brand` varchar(180) DEFAULT NULL,
  `barcode` varchar(180) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `buying_amount` decimal(18,6) DEFAULT NULL,
  `qty` decimal(18,6) DEFAULT NULL,
  `export_rate` decimal(18,6) DEFAULT NULL,
  `item_group` varchar(180) DEFAULT NULL,
  `export_amount` decimal(18,6) DEFAULT NULL,
  `amount` decimal(18,6) DEFAULT NULL,
  `customer_item_code` varchar(180) DEFAULT NULL,
  `batch_no` varchar(180) DEFAULT NULL,
  `base_ref_rate` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `item_code` (`item_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDelivery Note Item`
--

LOCK TABLES `tabDelivery Note Item` WRITE;
/*!40000 ALTER TABLE `tabDelivery Note Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabDelivery Note Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDepartment`
--

DROP TABLE IF EXISTS `tabDepartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDepartment` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `leave_block_list` varchar(180) DEFAULT NULL,
  `trash_reason` text,
  `department_name` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDepartment`
--

LOCK TABLES `tabDepartment` WRITE;
/*!40000 ALTER TABLE `tabDepartment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabDepartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDesignation`
--

DROP TABLE IF EXISTS `tabDesignation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDesignation` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `designation_name` varchar(180) DEFAULT NULL,
  `trash_reason` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDesignation`
--

LOCK TABLES `tabDesignation` WRITE;
/*!40000 ALTER TABLE `tabDesignation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabDesignation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDocField`
--

DROP TABLE IF EXISTS `tabDocField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDocField` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `fieldname` varchar(180) DEFAULT NULL,
  `label` varchar(180) DEFAULT NULL,
  `oldfieldname` varchar(180) DEFAULT NULL,
  `fieldtype` varchar(180) DEFAULT NULL,
  `oldfieldtype` varchar(180) DEFAULT NULL,
  `options` text,
  `search_index` int(1) DEFAULT NULL,
  `hidden` int(1) DEFAULT NULL,
  `print_hide` int(1) DEFAULT NULL,
  `report_hide` int(1) DEFAULT NULL,
  `reqd` int(1) DEFAULT NULL,
  `no_copy` int(1) DEFAULT NULL,
  `allow_on_submit` int(1) DEFAULT NULL,
  `trigger` varchar(180) DEFAULT NULL,
  `depends_on` varchar(180) DEFAULT NULL,
  `permlevel` int(11) DEFAULT '0',
  `width` varchar(180) DEFAULT NULL,
  `print_width` varchar(180) DEFAULT NULL,
  `default` text,
  `description` text,
  `in_filter` int(1) DEFAULT NULL,
  `in_list_view` int(1) DEFAULT NULL,
  `no_column` int(1) DEFAULT NULL,
  `read_only` int(1) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `label` (`label`),
  KEY `fieldtype` (`fieldtype`),
  KEY `fieldname` (`fieldname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDocField`
--

LOCK TABLES `tabDocField` WRITE;
/*!40000 ALTER TABLE `tabDocField` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabDocField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDocPerm`
--

DROP TABLE IF EXISTS `tabDocPerm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDocPerm` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `permlevel` int(11) DEFAULT '0',
  `role` varchar(180) DEFAULT NULL,
  `match` varchar(180) DEFAULT NULL,
  `read` int(1) DEFAULT NULL,
  `write` int(1) DEFAULT NULL,
  `create` int(1) DEFAULT NULL,
  `submit` int(1) DEFAULT NULL,
  `cancel` int(1) DEFAULT NULL,
  `amend` int(1) DEFAULT NULL,
  `report` int(1) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDocPerm`
--

LOCK TABLES `tabDocPerm` WRITE;
/*!40000 ALTER TABLE `tabDocPerm` DISABLE KEYS */;
INSERT INTO `tabDocPerm` VALUES ('000000008','2012-08-02 15:17:28','2013-11-07 11:16:16','Administrator','Administrator',0,'Bulk Email','permissions','DocType',1,0,'System Manager',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),('000000018','2012-08-08 10:40:11','2013-11-07 11:16:16','Administrator','Administrator',0,'Comment','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,1,NULL,1),('000000039','2013-01-29 10:47:14','2013-11-07 11:16:16','Administrator','Administrator',0,'Communication','permissions','DocType',1,0,'Support Team',NULL,1,1,1,0,1,0,1),('000000040','2013-01-29 10:47:14','2013-11-07 11:16:16','Administrator','Administrator',0,'Communication','permissions','DocType',2,0,'Sales Manager',NULL,1,1,1,0,1,0,1),('000000041','2013-01-29 10:47:14','2013-11-07 11:16:16','Administrator','Administrator',0,'Communication','permissions','DocType',3,0,'Sales User',NULL,1,1,1,0,1,0,1),('000000042','2013-01-29 10:47:14','2013-11-07 11:16:16','Administrator','Administrator',0,'Communication','permissions','DocType',4,0,'Support Manager',NULL,1,1,1,0,1,NULL,1),('000000043','2013-01-29 10:47:14','2013-11-07 11:16:16','Administrator','Administrator',0,'Communication','permissions','DocType',5,0,'System Manager',NULL,1,1,1,0,1,NULL,1),('000000071','2013-01-10 16:34:01','2013-11-07 11:16:16','Administrator','Administrator',0,'Control Panel','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,0,NULL,1),('000000096','2013-01-10 16:34:01','2013-11-07 11:16:16','Administrator','Administrator',0,'Custom Field','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,1,NULL,1),('000000097','2013-01-10 16:34:01','2013-11-07 11:16:17','Administrator','Administrator',0,'Custom Field','permissions','DocType',2,0,'System Manager',NULL,1,1,1,0,1,NULL,1),('000000101','2013-01-10 16:34:01','2013-11-07 11:16:17','Administrator','Administrator',0,'Custom Script','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,1,NULL,1),('000000102','2013-01-10 16:34:01','2013-11-07 11:16:17','Administrator','Administrator',0,'Custom Script','permissions','DocType',2,0,'Administrator',NULL,1,1,1,0,1,NULL,1),('000000117','2013-01-29 17:54:08','2013-11-07 11:16:17','Administrator','Administrator',0,'Customize Form','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,NULL,NULL,0),('PERM00001','2013-02-18 13:36:19','2013-11-07 11:16:17','Administrator','Administrator',0,'DocType','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,0,NULL,1),('PERM00002','2013-02-18 13:36:19','2013-11-07 11:16:17','Administrator','Administrator',0,'DocType','permissions','DocType',2,0,'System Manager',NULL,1,NULL,NULL,0,NULL,NULL,1),('PERM00003','2013-06-20 10:40:02','2013-11-07 11:16:17','Administrator','Administrator',0,'Documentation Tool','permissions','DocType',1,0,'Administrator',NULL,1,1,1,NULL,NULL,NULL,NULL),('PERM00004','2013-06-10 13:17:47','2013-11-07 11:16:17','Administrator','Administrator',0,'Event','permissions','DocType',1,0,'All',NULL,1,1,1,0,NULL,NULL,1),('PERM00005','2013-06-10 13:17:47','2013-11-07 11:16:17','Administrator','Administrator',0,'Event','permissions','DocType',2,0,'System Manager',NULL,1,1,1,0,1,NULL,1),('PERM00006','2012-12-12 11:19:22','2013-11-07 11:16:17','Administrator','Administrator',0,'File Data','permissions','DocType',1,0,'System Manager',NULL,1,1,NULL,NULL,1,NULL,NULL),('PERM00007','2012-11-22 17:45:46','2013-11-07 11:16:17','Administrator','Administrator',0,'Letter Head','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,1,NULL,1),('PERM00008','2012-11-22 17:45:46','2013-11-07 11:16:17','Administrator','Administrator',0,'Letter Head','permissions','DocType',2,0,'All',NULL,1,NULL,NULL,NULL,NULL,NULL,1),('PERM00009','2013-01-10 16:34:03','2013-11-07 11:16:17','Administrator','Administrator',0,'Module Def','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,1,0,1),('PERM00010','2012-12-20 17:16:49','2013-11-07 11:16:17','Administrator','Administrator',0,'Page','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,0,NULL,NULL),('PERM00011','2013-01-17 11:36:45','2013-11-07 11:16:17','Administrator','Administrator',0,'Patch Log','permissions','DocType',1,0,'Administrator',NULL,1,NULL,NULL,NULL,NULL,NULL,1),('PERM00012','2013-01-23 19:54:43','2013-11-07 11:16:17','Administrator','Administrator',0,'Print Format','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,1,0,1),('PERM00013','2013-01-23 19:54:43','2013-11-07 11:16:17','Administrator','Administrator',0,'Print Format','permissions','DocType',2,0,'System Manager',NULL,1,1,1,0,1,0,1),('PERM00014','2013-01-23 19:54:43','2013-11-07 11:16:17','Administrator','Administrator',0,'Print Format','permissions','DocType',3,1,'System Manager',NULL,1,NULL,0,0,0,0,1),('PERM00015','2013-01-23 19:54:43','2013-11-07 11:16:17','Administrator','Administrator',0,'Print Format','permissions','DocType',4,1,'Administrator',NULL,1,1,0,0,0,0,1),('PERM00016','2013-03-07 11:54:44','2013-11-07 11:16:18','Administrator','Administrator',0,'Profile','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,1,NULL,1),('PERM00017','2013-03-07 11:54:44','2013-11-07 11:16:18','Administrator','Administrator',0,'Profile','permissions','DocType',2,0,'All',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),('PERM00018','2013-03-07 11:54:44','2013-11-07 11:16:18','Administrator','Administrator',0,'Profile','permissions','DocType',3,0,'All','owner',1,1,NULL,0,NULL,NULL,1),('PERM00019','2013-03-07 11:54:44','2013-11-07 11:16:18','Administrator','Administrator',0,'Profile','permissions','DocType',4,1,'System Manager',NULL,1,1,0,0,0,0,1),('PERM00020','2013-01-10 16:34:04','2013-11-07 11:16:18','Administrator','Administrator',0,'Property Setter','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,1,NULL,1),('PERM00021','2013-01-10 16:34:04','2013-11-07 11:16:18','Administrator','Administrator',0,'Property Setter','permissions','DocType',2,0,'System Manager',NULL,1,1,1,0,1,NULL,1),('PERM00022','2013-03-09 15:45:57','2013-11-07 11:16:18','Administrator','Administrator',0,'Report','permissions','DocType',1,0,'Administrator',NULL,1,1,1,0,1,NULL,1),('PERM00023','2013-03-09 15:45:57','2013-11-07 11:16:18','Administrator','Administrator',0,'Report','permissions','DocType',2,0,'System Manager',NULL,1,1,NULL,0,1,NULL,1),('PERM00024','2013-03-09 15:45:57','2013-11-07 11:16:18','Administrator','Administrator',0,'Report','permissions','DocType',3,0,'Report Manager',NULL,1,1,NULL,0,1,NULL,1),('PERM00025','2013-03-09 15:45:57','2013-11-07 11:16:18','Administrator','Administrator',0,'Report','permissions','DocType',4,0,'All',NULL,1,NULL,NULL,0,NULL,NULL,1),('PERM00026','2013-01-08 15:50:01','2013-11-07 11:16:18','Administrator','Administrator',0,'Role','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,0,1),('PERM00027','2013-01-08 15:50:01','2013-11-07 11:16:18','Administrator','Administrator',0,'Role','permissions','DocType',2,0,'Administrator',NULL,1,1,1,0,0,NULL,1),('PERM00028','2013-01-16 13:09:40','2013-11-07 11:16:18','Administrator','Administrator',0,'Scheduler Log','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,1,NULL,1),('PERM00029','2012-07-09 11:17:17','2013-11-07 11:16:18','Administrator','Administrator',0,'Tag','permissions','DocType',1,0,'System Manager',NULL,1,1,1,NULL,NULL,NULL,NULL),('PERM00030','2012-07-03 13:30:35','2013-11-07 11:16:18','Administrator','Administrator',0,'ToDo','permissions','DocType',1,0,'All',NULL,1,NULL,1,0,NULL,NULL,0),('PERM00031','2012-07-03 13:30:35','2013-11-07 11:16:18','Administrator','Administrator',0,'ToDo','permissions','DocType',2,0,'System Manager',NULL,1,NULL,1,NULL,NULL,NULL,1),('PERM00032','2012-12-28 10:49:55','2013-11-07 11:16:18','Administrator','Administrator',0,'Workflow','permissions','DocType',1,0,'System Manager',NULL,1,1,1,NULL,1,NULL,NULL),('PERM00033','2012-12-28 10:49:56','2013-11-07 11:16:18','Administrator','Administrator',0,'Workflow Action','permissions','DocType',1,0,'System Manager',NULL,1,1,1,NULL,1,NULL,NULL),('PERM00034','2012-12-28 10:49:56','2013-11-07 11:16:18','Administrator','Administrator',0,'Workflow State','permissions','DocType',1,0,'System Manager',NULL,1,1,1,NULL,1,NULL,NULL),('PERM00035','2013-03-19 12:02:15','2013-11-07 11:16:18','Administrator','Administrator',0,'About Us Settings','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,NULL,NULL,0),('PERM00036','2013-03-08 09:41:11','2013-11-07 11:16:18','Administrator','Administrator',0,'Blog Category','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,NULL,1,NULL,NULL),('PERM00037','2013-03-08 09:41:11','2013-11-07 11:16:18','Administrator','Administrator',0,'Blog Category','permissions','DocType',2,0,'Blogger',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),('PERM00038','2013-03-28 10:35:30','2013-11-07 11:16:18','Administrator','Administrator',0,'Blog Post','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,NULL,NULL,1),('PERM00039','2013-03-28 10:35:30','2013-11-07 11:16:18','Administrator','Administrator',0,'Blog Post','permissions','DocType',2,0,'Blogger',NULL,1,1,1,0,NULL,NULL,1),('PERM00040','2013-03-28 10:35:30','2013-11-07 11:16:18','Administrator','Administrator',0,'Blog Post','permissions','DocType',3,0,'Guest',NULL,1,0,NULL,0,NULL,NULL,1),('PERM00041','2013-03-11 17:48:16','2013-11-07 11:16:18','Administrator','Administrator',0,'Blog Settings','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,NULL,NULL,NULL,NULL),('PERM00042','2013-03-25 16:00:51','2013-11-07 11:16:18','Administrator','Administrator',0,'Blogger','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,NULL,NULL,NULL,NULL),('PERM00043','2013-03-25 16:00:51','2013-11-07 11:16:18','Administrator','Administrator',0,'Blogger','permissions','DocType',2,0,'Blogger','owner:profile',1,1,NULL,NULL,NULL,NULL,NULL),('PERM00044','2013-02-21 20:12:42','2013-11-07 11:16:18','Administrator','Administrator',0,'Contact Us Settings','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,NULL,NULL,0),('PERM00045','2013-03-25 16:01:33','2013-11-07 11:16:18','Administrator','Administrator',0,'Style Settings','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,NULL,NULL,0),('PERM00046','2013-03-25 16:01:33','2013-11-07 11:16:18','Administrator','Administrator',0,'Style Settings','permissions','DocType',2,1,'Website Manager',NULL,1,NULL,0,0,0,0,0),('PERM00047','2013-03-28 10:35:30','2013-11-07 11:16:19','Administrator','Administrator',0,'Web Page','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,NULL,NULL,1),('PERM00048','2013-03-28 10:35:30','2013-11-07 11:16:19','Administrator','Administrator',0,'Web Page','permissions','DocType',2,1,'Website Manager',NULL,1,NULL,0,0,0,0,NULL),('PERM00049','2012-12-27 11:51:24','2013-11-07 11:16:19','Administrator','Administrator',0,'Website Script','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,NULL,NULL,NULL,NULL),('PERM00050','2013-04-30 12:58:46','2013-11-07 11:16:19','Administrator','Administrator',0,'Website Settings','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,NULL,NULL,0),('PERM00051','2013-04-30 12:58:46','2013-11-07 11:16:19','Administrator','Administrator',0,'Website Settings','permissions','DocType',2,1,'All',NULL,1,NULL,0,0,0,0,0),('PERM00052','2013-03-07 15:53:15','2013-11-07 11:16:19','Administrator','Administrator',0,'Website Slideshow','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,0,1,NULL,1),('PERM00053','2013-01-30 12:49:46','2013-11-07 11:16:19','Administrator','Administrator',0,'Account','permissions','DocType',1,0,'Accounts User',NULL,1,1,1,0,1,0,1),('PERM00054','2013-01-30 12:49:46','2013-11-07 11:16:19','Administrator','Administrator',0,'Account','permissions','DocType',2,0,'Auditor',NULL,1,0,0,0,0,0,1),('PERM00055','2013-01-30 12:49:46','2013-11-07 11:16:19','Administrator','Administrator',0,'Account','permissions','DocType',3,0,'Sales User',NULL,1,0,0,0,0,0,1),('PERM00056','2013-01-30 12:49:46','2013-11-07 11:16:19','Administrator','Administrator',0,'Account','permissions','DocType',4,0,'Purchase User',NULL,1,0,0,0,0,0,1),('PERM00057','2013-01-30 12:49:46','2013-11-07 11:16:19','Administrator','Administrator',0,'Account','permissions','DocType',5,2,'Auditor',NULL,1,0,0,0,0,0,1),('PERM00058','2013-01-30 12:49:46','2013-11-07 11:16:19','Administrator','Administrator',0,'Account','permissions','DocType',6,0,'Accounts Manager',NULL,1,1,1,0,1,0,1),('PERM00059','2013-01-30 12:49:46','2013-11-07 11:16:19','Administrator','Administrator',0,'Account','permissions','DocType',7,2,'Accounts Manager',NULL,1,1,0,0,0,0,1),('PERM00060','2013-01-30 12:49:46','2013-11-07 11:16:19','Administrator','Administrator',0,'Account','permissions','DocType',8,2,'Accounts User',NULL,1,0,0,0,0,0,1),('PERM00061','2013-06-24 15:49:57','2013-11-07 11:16:19','Administrator','Administrator',0,'Accounts Settings','permissions','DocType',1,0,'Accounts Manager',NULL,1,1,1,NULL,NULL,NULL,NULL),('PERM00062','2013-01-10 16:34:05','2013-11-07 11:16:19','Administrator','Administrator',0,'Bank Reconciliation','permissions','DocType',1,0,'Accounts User',NULL,1,1,1,0,0,0,0),('PERM00063','2013-01-10 16:34:05','2013-11-07 11:16:19','Administrator','Administrator',0,'Budget Distribution','permissions','DocType',1,0,'Accounts Manager',NULL,1,1,1,0,1,0,1),('PERM00064','2013-01-10 16:34:05','2013-11-07 11:16:19','Administrator','Administrator',0,'Budget Distribution','permissions','DocType',2,2,'Accounts Manager',NULL,1,NULL,NULL,0,NULL,NULL,1),('PERM00065','2013-03-07 11:55:06','2013-11-07 11:16:19','Administrator','Administrator',0,'C-Form','permissions','DocType',1,0,'Accounts User',NULL,1,1,1,0,NULL,NULL,1),('PERM00066','2013-03-07 11:55:06','2013-11-07 11:16:19','Administrator','Administrator',0,'C-Form','permissions','DocType',2,0,'Accounts Manager',NULL,1,1,1,0,NULL,NULL,1),('PERM00067','2013-03-07 11:55:06','2013-11-07 11:16:19','Administrator','Administrator',0,'C-Form','permissions','DocType',3,1,'All',NULL,1,NULL,0,0,0,0,1),('PERM00068','2013-01-23 19:57:17','2013-11-07 11:16:19','Administrator','Administrator',0,'Cost Center','permissions','DocType',1,0,'Accounts Manager',NULL,1,1,1,0,1,0,1),('PERM00069','2013-01-23 19:57:17','2013-11-07 11:16:19','Administrator','Administrator',0,'Cost Center','permissions','DocType',2,0,'Accounts User',NULL,1,0,0,0,0,0,1),('PERM00070','2013-01-22 16:50:25','2013-11-07 11:16:19','Administrator','Administrator',0,'Fiscal Year','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,1,NULL,1),('PERM00071','2013-01-22 16:50:25','2013-11-07 11:16:19','Administrator','Administrator',0,'Fiscal Year','permissions','DocType',2,0,'All',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),('PERM00072','2013-01-10 16:34:06','2013-11-07 11:16:20','Administrator','Administrator',0,'GL Entry','permissions','DocType',1,0,'Accounts User',NULL,1,0,0,0,0,0,1),('PERM00073','2013-01-10 16:34:06','2013-11-07 11:16:20','Administrator','Administrator',0,'GL Entry','permissions','DocType',2,0,'Accounts Manager',NULL,1,0,0,0,0,0,1),('PERM00074','2013-01-10 16:34:06','2013-11-07 11:16:20','Administrator','Administrator',0,'GL Entry','permissions','DocType',3,0,'System Manager',NULL,1,0,0,0,NULL,NULL,1),('PERM00075','2013-03-25 10:53:52','2013-11-07 11:16:20','Administrator','Administrator',0,'Journal Voucher','permissions','DocType',1,0,'Accounts User',NULL,1,1,1,1,1,1,1),('PERM00076','2013-03-25 10:53:52','2013-11-07 11:16:20','Administrator','Administrator',0,'Journal Voucher','permissions','DocType',2,0,'Accounts Manager',NULL,1,1,1,1,1,1,1),('PERM00077','2013-03-25 10:53:52','2013-11-07 11:16:20','Administrator','Administrator',0,'Journal Voucher','permissions','DocType',3,0,'Auditor',NULL,1,0,0,0,0,0,1),('PERM00078','2012-12-04 17:49:20','2013-11-07 11:16:20','Administrator','harshada@webnotestech.com',0,'Mode of Payment','permissions','DocType',1,0,'Accounts Manager',NULL,1,1,1,0,NULL,NULL,1),('PERM00079','2013-01-30 12:49:46','2013-11-07 11:16:20','Administrator','Administrator',0,'Payment to Invoice Matching Tool','permissions','DocType',1,0,'Accounts Manager',NULL,1,1,1,0,NULL,NULL,0),('PERM00080','2013-01-30 12:49:46','2013-11-07 11:16:20','Administrator','Administrator',0,'Payment to Invoice Matching Tool','permissions','DocType',2,0,'Accounts User',NULL,1,1,1,0,NULL,NULL,0),('PERM00081','2013-01-10 16:34:07','2013-11-07 11:16:20','Administrator','jai@webnotestech.com',0,'Period Closing Voucher','permissions','DocType',1,0,'System Manager',NULL,1,1,1,1,1,1,1),('PERM00082','2013-01-10 16:34:07','2013-11-07 11:16:20','Administrator','jai@webnotestech.com',0,'Period Closing Voucher','permissions','DocType',2,0,'Accounts Manager',NULL,1,1,1,1,1,1,1),('PERM00083','2013-05-24 12:15:51','2013-11-07 11:16:20','Administrator','Administrator',0,'POS Setting','permissions','DocType',1,0,'Accounts Manager',NULL,1,1,1,0,NULL,NULL,1),('PERM00084','2013-05-24 12:15:51','2013-11-07 11:16:20','Administrator','Administrator',0,'POS Setting','permissions','DocType',2,0,'Accounts User',NULL,1,NULL,NULL,0,NULL,NULL,1),('PERM00085','2013-05-21 16:16:39','2013-11-07 11:16:20','Administrator','Administrator',0,'Purchase Invoice','permissions','DocType',1,0,'Accounts User',NULL,1,0,0,0,0,0,1),('PERM00086','2013-05-21 16:16:39','2013-11-07 11:16:20','Administrator','Administrator',0,'Purchase Invoice','permissions','DocType',2,0,'Purchase User',NULL,1,0,0,0,0,0,1),('PERM00087','2013-05-21 16:16:39','2013-11-07 11:16:20','Administrator','Administrator',0,'Purchase Invoice','permissions','DocType',3,0,'Supplier','supplier',1,0,0,0,0,0,1),('PERM00088','2013-05-21 16:16:39','2013-11-07 11:16:20','Administrator','Administrator',0,'Purchase Invoice','permissions','DocType',4,0,'Accounts Manager',NULL,1,1,1,1,1,1,1),('PERM00089','2013-05-21 16:16:39','2013-11-07 11:16:20','Administrator','Administrator',0,'Purchase Invoice','permissions','DocType',5,0,'Auditor',NULL,1,0,0,0,0,0,1),('PERM00090','2013-01-10 16:34:08','2013-11-07 11:16:21','Administrator','wasim@webnotestech.com',0,'Purchase Taxes and Charges Master','permissions','DocType',1,0,'Purchase Manager',NULL,1,0,0,0,0,0,1),('PERM00091','2013-01-10 16:34:08','2013-11-07 11:16:21','Administrator','wasim@webnotestech.com',0,'Purchase Taxes and Charges Master','permissions','DocType',2,0,'Purchase Master Manager',NULL,1,1,1,0,1,NULL,1),('PERM00092','2013-05-24 19:29:05','2013-11-07 11:16:21','Administrator','Administrator',0,'Sales Invoice','permissions','DocType',1,0,'Accounts Manager',NULL,1,1,1,1,1,1,1),('PERM00093','2013-05-24 19:29:05','2013-11-07 11:16:21','Administrator','Administrator',0,'Sales Invoice','permissions','DocType',2,0,'Accounts User',NULL,1,1,1,1,0,1,1),('PERM00094','2013-05-24 19:29:05','2013-11-07 11:16:21','Administrator','Administrator',0,'Sales Invoice','permissions','DocType',3,0,'Customer','customer',1,NULL,NULL,NULL,NULL,NULL,1),('PERM00095','2013-01-10 16:34:09','2013-11-07 11:16:21','Administrator','Administrator',0,'Sales Taxes and Charges Master','permissions','DocType',1,0,'Sales User',NULL,1,0,0,0,0,0,1),('PERM00096','2013-01-10 16:34:09','2013-11-07 11:16:21','Administrator','Administrator',0,'Sales Taxes and Charges Master','permissions','DocType',2,0,'Accounts Manager',NULL,1,1,1,0,1,0,1),('PERM00097','2013-01-10 16:34:09','2013-11-07 11:16:21','Administrator','Administrator',0,'Sales Taxes and Charges Master','permissions','DocType',3,0,'Sales Master Manager',NULL,1,1,1,0,1,0,1),('PERM00098','2013-06-25 11:48:03','2013-11-07 11:16:21','Administrator','Administrator',0,'Shipping Rule','permissions','DocType',1,0,'Accounts User',NULL,1,NULL,NULL,NULL,NULL,NULL,1),('PERM00099','2013-06-25 11:48:03','2013-11-07 11:16:21','Administrator','Administrator',0,'Shipping Rule','permissions','DocType',2,0,'Sales User',NULL,1,NULL,NULL,NULL,NULL,NULL,1),('PERM00100','2013-06-25 11:48:03','2013-11-07 11:16:21','Administrator','Administrator',0,'Shipping Rule','permissions','DocType',3,0,'Accounts Manager',NULL,1,1,1,NULL,1,NULL,1),('PERM00101','2013-06-25 11:48:03','2013-11-07 11:16:21','Administrator','Administrator',0,'Shipping Rule','permissions','DocType',4,0,'Sales Master Manager',NULL,1,1,1,NULL,1,NULL,1),('PERM00102','2013-06-25 11:04:03','2013-11-07 11:16:22','Administrator','Administrator',0,'Buying Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,NULL,NULL,NULL,NULL),('PERM00103','2013-05-21 16:16:39','2013-11-07 11:16:22','Administrator','Administrator',0,'Purchase Order','permissions','DocType',1,0,'Material User',NULL,1,0,0,0,0,0,1),('PERM00104','2013-05-21 16:16:39','2013-11-07 11:16:22','Administrator','Administrator',0,'Purchase Order','permissions','DocType',2,0,'Purchase Manager',NULL,1,1,1,1,1,1,1),('PERM00105','2013-05-21 16:16:39','2013-11-07 11:16:22','Administrator','Administrator',0,'Purchase Order','permissions','DocType',3,0,'Purchase User',NULL,1,1,1,1,1,1,1),('PERM00106','2013-05-21 16:16:39','2013-11-07 11:16:22','Administrator','Administrator',0,'Purchase Order','permissions','DocType',4,0,'Supplier','supplier',1,NULL,NULL,NULL,NULL,NULL,1),('PERM00107','2013-04-30 13:13:03','2013-11-07 11:16:22','Administrator','Administrator',0,'Quality Inspection','permissions','DocType',1,0,'Quality Manager',NULL,1,1,1,1,1,1,1),('PERM00108','2013-01-10 16:34:11','2013-11-07 11:16:22','Administrator','Administrator',0,'Supplier','permissions','DocType',1,0,'Purchase Manager',NULL,1,0,0,0,0,0,1),('PERM00109','2013-01-10 16:34:11','2013-11-07 11:16:22','Administrator','Administrator',0,'Supplier','permissions','DocType',2,0,'Purchase Master Manager',NULL,1,1,1,0,1,0,1),('PERM00110','2013-05-21 16:16:45','2013-11-07 11:16:22','Administrator','Administrator',0,'Supplier Quotation','permissions','DocType',1,0,'Manufacturing Manager',NULL,1,1,1,1,1,1,1),('PERM00111','2013-05-21 16:16:45','2013-11-07 11:16:22','Administrator','Administrator',0,'Supplier Quotation','permissions','DocType',2,0,'Purchase Manager',NULL,1,1,1,1,1,1,1),('PERM00112','2013-05-21 16:16:45','2013-11-07 11:16:22','Administrator','Administrator',0,'Supplier Quotation','permissions','DocType',3,0,'Purchase User',NULL,1,1,1,0,0,1,1),('PERM00113','2013-05-21 16:16:45','2013-11-07 11:16:22','Administrator','Administrator',0,'Supplier Quotation','permissions','DocType',4,0,'Material User',NULL,1,0,0,0,0,0,1),('PERM00114','2013-05-21 16:16:45','2013-11-07 11:16:22','Administrator','Administrator',0,'Supplier Quotation','permissions','DocType',5,0,'Supplier',NULL,1,0,0,0,0,0,1),('PERM00115','2012-07-03 13:29:42','2013-11-07 11:16:23','Administrator','Administrator',0,'Feed','permissions','DocType',1,0,'System Manager',NULL,1,NULL,NULL,NULL,NULL,NULL,1),('PERM00116','2013-01-10 16:34:12','2013-11-07 11:16:23','Administrator','ashwini@webnotestech.com',0,'Appraisal','permissions','DocType',1,0,'Employee','owner',1,1,1,0,NULL,NULL,1),('PERM00117','2013-01-10 16:34:12','2013-11-07 11:16:23','Administrator','ashwini@webnotestech.com',0,'Appraisal','permissions','DocType',2,0,'System Manager',NULL,1,1,1,1,1,1,1),('PERM00118','2013-01-10 16:34:12','2013-11-07 11:16:23','Administrator','ashwini@webnotestech.com',0,'Appraisal','permissions','DocType',3,0,'HR User',NULL,1,1,1,1,1,1,1),('PERM00119','2012-07-03 13:30:39','2013-11-07 11:16:23','Administrator','ashwini@webnotestech.com',0,'Appraisal Template','permissions','DocType',1,0,'HR User',NULL,1,1,1,NULL,NULL,NULL,1),('PERM00120','2013-01-10 16:34:13','2013-11-07 11:16:23','Administrator','ashwini@webnotestech.com',0,'Attendance','permissions','DocType',1,0,'System Manager',NULL,1,1,1,1,1,NULL,1),('PERM00121','2013-01-10 16:34:13','2013-11-07 11:16:23','Administrator','ashwini@webnotestech.com',0,'Attendance','permissions','DocType',2,0,'HR User',NULL,1,1,1,1,1,NULL,1),('PERM00122','2013-01-10 16:34:13','2013-11-07 11:16:23','Administrator','ashwini@webnotestech.com',0,'Attendance','permissions','DocType',3,0,'HR Manager',NULL,1,1,1,1,1,NULL,1),('PERM00123','2013-01-10 16:34:13','2013-11-07 11:16:23','Administrator','Administrator',0,'Branch','permissions','DocType',1,0,'HR User',NULL,1,1,1,0,1,NULL,1),('PERM00124','2013-01-10 16:34:13','2013-11-07 11:16:23','Administrator','Administrator',0,'Branch','permissions','DocType',2,0,'HR Manager',NULL,1,1,1,0,1,NULL,1),('PERM00125','2013-01-22 16:50:30','2013-11-07 11:16:23','Administrator','Administrator',0,'Deduction Type','permissions','DocType',1,0,'HR User',NULL,1,1,1,0,1,NULL,1),('PERM00126','2013-02-05 11:48:26','2013-11-07 11:16:23','Administrator','Administrator',0,'Department','permissions','DocType',1,0,'HR User',NULL,1,1,1,0,1,NULL,1),('PERM00127','2013-01-10 16:34:13','2013-11-07 11:16:23','Administrator','Administrator',0,'Designation','permissions','DocType',1,0,'HR User',NULL,1,1,1,0,1,NULL,1),('PERM00128','2013-01-24 11:03:32','2013-11-07 11:16:23','Administrator','Administrator',0,'Earning Type','permissions','DocType',1,0,'HR User',NULL,1,1,1,0,1,NULL,1),('PERM00129','2013-03-07 09:04:18','2013-11-07 11:16:23','Administrator','Administrator',0,'Employee','permissions','DocType',1,0,'Employee','employee',1,0,0,0,0,0,1),('PERM00130','2013-03-07 09:04:18','2013-11-07 11:16:23','Administrator','Administrator',0,'Employee','permissions','DocType',2,0,'HR User','company',1,1,1,0,1,0,1),('PERM00131','2013-03-07 09:04:18','2013-11-07 11:16:23','Administrator','Administrator',0,'Employee','permissions','DocType',3,0,'HR Manager',NULL,1,1,1,0,1,0,1),('PERM00132','2013-01-10 16:34:14','2013-11-07 11:16:24','Administrator','Administrator',0,'Employment Type','permissions','DocType',1,0,'HR User',NULL,1,1,1,0,1,NULL,1),('PERM00133','2013-01-10 16:34:14','2013-11-07 11:16:24','Administrator','Administrator',0,'Employment Type','permissions','DocType',2,0,'HR Manager',NULL,1,1,1,0,1,NULL,1),('PERM00134','2013-01-10 16:34:14','2013-11-07 11:16:24','Administrator','harshada@webnotestech.com',0,'Expense Claim','permissions','DocType',1,0,'Employee','owner',1,1,1,NULL,NULL,NULL,1),('PERM00135','2013-01-10 16:34:14','2013-11-07 11:16:24','Administrator','harshada@webnotestech.com',0,'Expense Claim','permissions','DocType',2,0,'Expense Approver','exp_approver:user',1,1,1,1,1,1,1),('PERM00136','2013-01-10 16:34:14','2013-11-07 11:16:24','Administrator','harshada@webnotestech.com',0,'Expense Claim','permissions','DocType',3,0,'HR User',NULL,1,1,1,1,1,1,1),('PERM00137','2012-03-27 14:35:55','2013-11-07 11:16:24','Administrator','harshada@webnotestech.com',0,'Expense Claim Type','permissions','DocType',1,0,'HR Manager',NULL,1,1,1,NULL,NULL,NULL,1),('PERM00138','2013-01-10 16:34:14','2013-11-07 11:16:24','Administrator','Administrator',0,'Grade','permissions','DocType',1,0,'HR User',NULL,1,1,1,0,1,NULL,1),('PERM00139','2013-01-10 16:34:14','2013-11-07 11:16:24','Administrator','Administrator',0,'Holiday List','permissions','DocType',1,0,'HR Manager',NULL,1,1,1,0,1,NULL,1),('PERM00140','2013-08-02 13:45:23','2013-11-07 11:16:24','Administrator','Administrator',0,'HR Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,NULL,NULL,NULL,NULL),('PERM00141','2013-01-29 19:25:37','2013-11-07 11:16:24','Administrator','Administrator',0,'Job Applicant','permissions','DocType',1,0,'HR User',NULL,1,1,1,NULL,1,NULL,1),('PERM00142','2013-01-15 16:13:36','2013-11-07 11:16:24','Administrator','Administrator',0,'Job Opening','permissions','DocType',1,0,'HR User',NULL,1,1,1,NULL,1,NULL,1),('PERM00143','2013-02-20 19:10:38','2013-11-07 11:16:24','Administrator','Administrator',0,'Leave Allocation','permissions','DocType',1,0,'HR User','owner',1,1,1,1,1,1,1),('PERM00144','2013-02-20 19:10:38','2013-11-07 11:16:24','Administrator','Administrator',0,'Leave Allocation','permissions','DocType',2,0,'HR Manager',NULL,1,1,1,1,1,1,1),('PERM00145','2013-02-20 11:18:11','2013-11-07 11:16:24','Administrator','Administrator',0,'Leave Application','permissions','DocType',1,0,'Employee','employee',1,1,1,NULL,NULL,NULL,1),('PERM00146','2013-02-20 11:18:11','2013-11-07 11:16:24','Administrator','Administrator',0,'Leave Application','permissions','DocType',2,1,'All',NULL,1,NULL,0,0,0,0,NULL),('PERM00147','2013-02-20 11:18:11','2013-11-07 11:16:24','Administrator','Administrator',0,'Leave Application','permissions','DocType',3,0,'HR User',NULL,1,1,1,1,1,1,1),('PERM00148','2013-02-20 11:18:11','2013-11-07 11:16:24','Administrator','Administrator',0,'Leave Application','permissions','DocType',4,0,'Leave Approver','leave_approver:user',1,1,0,1,0,1,1),('PERM00149','2013-02-20 11:18:11','2013-11-07 11:16:24','Administrator','Administrator',0,'Leave Application','permissions','DocType',5,1,'HR User',NULL,1,1,0,0,0,0,1),('PERM00150','2013-02-20 11:18:11','2013-11-07 11:16:24','Administrator','Administrator',0,'Leave Application','permissions','DocType',6,1,'Leave Approver',NULL,1,1,0,0,0,0,1),('PERM00151','2013-02-18 17:43:12','2013-11-07 11:16:24','Administrator','Administrator',0,'Leave Block List','permissions','DocType',1,0,'HR User',NULL,1,1,1,NULL,NULL,NULL,NULL),('PERM00152','2013-01-10 16:34:15','2013-11-07 11:16:24','Administrator','Administrator',0,'Leave Control Panel','permissions','DocType',1,0,'HR User',NULL,1,1,1,0,NULL,NULL,0),('PERM00153','2013-02-21 09:55:58','2013-11-07 11:16:24','Administrator','Administrator',0,'Leave Type','permissions','DocType',1,0,'HR User',NULL,1,1,1,0,1,NULL,1),('PERM00154','2013-02-21 09:55:58','2013-11-07 11:16:24','Administrator','Administrator',0,'Leave Type','permissions','DocType',2,0,'HR Manager',NULL,1,1,1,0,1,NULL,1),('PERM00155','2012-03-27 14:35:59','2013-11-07 11:16:24','Administrator','Administrator',0,'Salary Manager','permissions','DocType',1,0,'HR Manager',NULL,1,1,1,NULL,NULL,NULL,NULL),('PERM00156','2013-01-10 16:34:15','2013-11-07 11:16:24','Administrator','Administrator',0,'Salary Slip','permissions','DocType',1,0,'HR User',NULL,1,1,1,1,NULL,0,1),('PERM00157','2013-01-10 16:34:15','2013-11-07 11:16:24','Administrator','Administrator',0,'Salary Slip','permissions','DocType',2,0,'HR Manager',NULL,1,1,1,1,1,1,1),('PERM00158','2013-03-07 18:50:29','2013-11-07 11:16:25','Administrator','Administrator',0,'Salary Structure','permissions','DocType',1,0,'HR User',NULL,1,1,1,0,NULL,0,1),('PERM00159','2013-03-07 18:50:29','2013-11-07 11:16:25','Administrator','Administrator',0,'Salary Structure','permissions','DocType',2,0,'HR Manager',NULL,1,1,1,0,NULL,0,1),('PERM00160','2013-01-25 11:34:53','2013-11-07 11:16:25','Administrator','harshada@webnotestech.com',0,'Upload Attendance','permissions','DocType',1,0,'HR User',NULL,1,1,1,0,NULL,NULL,0),('PERM00161','2013-01-25 11:34:53','2013-11-07 11:16:25','Administrator','harshada@webnotestech.com',0,'Upload Attendance','permissions','DocType',2,0,'HR Manager',NULL,1,1,1,0,NULL,NULL,0),('PERM00162','2013-01-22 15:11:38','2013-11-07 11:16:25','Administrator','Administrator',0,'BOM','permissions','DocType',1,0,'Manufacturing Manager',NULL,1,1,1,1,1,NULL,1),('PERM00163','2013-01-22 15:11:38','2013-11-07 11:16:25','Administrator','Administrator',0,'BOM','permissions','DocType',2,0,'Manufacturing User',NULL,1,1,1,1,1,NULL,1),('PERM00164','2012-12-06 12:10:10','2013-11-07 11:16:25','Administrator','Administrator',0,'BOM Replace Tool','permissions','DocType',1,0,'Manufacturing Manager',NULL,1,1,1,0,NULL,NULL,0),('PERM00165','2013-01-10 16:34:16','2013-11-07 11:16:25','Administrator','Administrator',0,'Production Order','permissions','DocType',1,0,'Manufacturing User',NULL,1,1,1,1,1,1,1),('PERM00166','2013-01-21 12:03:47','2013-11-07 11:16:25','Administrator','jai@webnotestech.com',0,'Production Planning Tool','permissions','DocType',1,0,'Manufacturing User',NULL,1,1,1,0,NULL,NULL,0),('PERM00167','2013-01-10 16:34:17','2013-11-07 11:16:25','Administrator','Administrator',0,'Workstation','permissions','DocType',1,0,'Manufacturing User',NULL,1,1,1,0,1,NULL,1),('PERM00168','2013-03-05 10:14:59','2013-11-07 11:16:25','Administrator','Administrator',0,'Activity Type','permissions','DocType',1,0,'System Manager',NULL,1,1,1,NULL,NULL,NULL,1),('PERM00169','2013-03-05 10:14:59','2013-11-07 11:16:25','Administrator','Administrator',0,'Activity Type','permissions','DocType',2,0,'Projects User',NULL,1,1,1,NULL,NULL,NULL,1),('PERM00170','2013-03-07 11:55:07','2013-11-07 11:16:25','Administrator','Administrator',0,'Project','permissions','DocType',1,0,'Projects User',NULL,1,1,1,0,1,0,1),('PERM00171','2013-03-07 11:55:07','2013-11-07 11:16:25','Administrator','Administrator',0,'Project','permissions','DocType',2,1,'All',NULL,1,NULL,0,0,0,0,1),('PERM00172','2013-01-29 19:25:50','2013-11-07 11:16:25','Administrator','Administrator',0,'Task','permissions','DocType',1,0,'Projects User',NULL,1,1,1,0,1,NULL,1),('PERM00173','2013-04-03 16:38:41','2013-11-07 11:16:25','Administrator','Administrator',0,'Time Log','permissions','DocType',1,0,'Projects User','owner',1,1,1,1,1,1,1),('PERM00174','2013-04-03 16:38:41','2013-11-07 11:16:25','Administrator','Administrator',0,'Time Log','permissions','DocType',2,0,'Projects Manager',NULL,1,1,NULL,1,1,1,1),('PERM00175','2013-02-28 17:57:33','2013-11-07 11:16:26','Administrator','Administrator',0,'Time Log Batch','permissions','DocType',1,0,'Projects User',NULL,1,1,1,1,1,1,1),('PERM00176','2013-01-10 16:34:18','2013-11-07 11:16:26','Administrator','Administrator',0,'Campaign','permissions','DocType',1,0,'Sales Manager',NULL,1,0,0,0,0,0,1),('PERM00177','2013-01-10 16:34:18','2013-11-07 11:16:26','Administrator','Administrator',0,'Campaign','permissions','DocType',2,0,'Sales User',NULL,1,0,0,0,0,0,1),('PERM00178','2013-01-10 16:34:18','2013-11-07 11:16:26','Administrator','Administrator',0,'Campaign','permissions','DocType',3,0,'Sales Master Manager',NULL,1,1,1,0,1,0,1),('PERM00179','2013-06-11 14:26:44','2013-11-07 11:16:26','Administrator','Administrator',0,'Customer','permissions','DocType',1,0,'Sales User',NULL,1,1,1,0,0,0,1),('PERM00180','2013-06-11 14:26:44','2013-11-07 11:16:26','Administrator','Administrator',0,'Customer','permissions','DocType',2,1,'Sales User',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),('PERM00181','2013-06-11 14:26:44','2013-11-07 11:16:26','Administrator','Administrator',0,'Customer','permissions','DocType',3,0,'Sales Master Manager',NULL,1,1,1,0,1,0,1),('PERM00182','2013-06-11 14:26:44','2013-11-07 11:16:26','Administrator','Administrator',0,'Customer','permissions','DocType',4,1,'Sales Master Manager',NULL,1,1,NULL,NULL,NULL,NULL,NULL),('PERM00183','2012-03-27 14:36:09','2013-11-07 11:16:26','Administrator','harshada@webnotestech.com',0,'Industry Type','permissions','DocType',1,0,'Sales Manager',NULL,1,1,1,NULL,NULL,NULL,1),('PERM00184','2012-03-27 14:36:09','2013-11-07 11:16:26','Administrator','harshada@webnotestech.com',0,'Industry Type','permissions','DocType',2,0,'Sales User',NULL,1,NULL,NULL,NULL,NULL,NULL,1),('PERM00185','2012-03-27 14:36:09','2013-11-07 11:16:26','Administrator','harshada@webnotestech.com',0,'Industry Type','permissions','DocType',3,0,'Sales Master Manager',NULL,1,1,1,NULL,NULL,NULL,1),('PERM00186','2013-04-30 13:13:06','2013-11-07 11:16:26','Administrator','Administrator',0,'Installation Note','permissions','DocType',1,0,'Sales User',NULL,1,1,1,1,1,1,1),('PERM00187','2013-04-30 13:13:06','2013-11-07 11:16:26','Administrator','Administrator',0,'Installation Note','permissions','DocType',2,1,'Sales User',NULL,1,NULL,0,0,0,0,1),('PERM00188','2013-04-10 11:45:37','2013-11-07 11:16:26','Administrator','Administrator',0,'Lead','permissions','DocType',1,0,'Sales Manager',NULL,1,1,1,0,1,0,1),('PERM00189','2013-04-10 11:45:37','2013-11-07 11:16:26','Administrator','Administrator',0,'Lead','permissions','DocType',2,0,'Sales User',NULL,1,1,1,0,0,0,1),('PERM00190','2013-03-07 18:50:30','2013-11-07 11:16:27','Administrator','Administrator',0,'Opportunity','permissions','DocType',1,0,'Sales User',NULL,1,1,1,1,1,1,1),('PERM00191','2013-03-07 18:50:30','2013-11-07 11:16:27','Administrator','Administrator',0,'Opportunity','permissions','DocType',2,0,'Sales Manager',NULL,1,1,1,1,1,1,1),('PERM00192','2013-05-24 19:29:08','2013-11-07 11:16:27','Administrator','Administrator',0,'Quotation','permissions','DocType',1,0,'Sales Manager',NULL,1,1,1,1,1,1,1),('PERM00193','2013-05-24 19:29:08','2013-11-07 11:16:27','Administrator','Administrator',0,'Quotation','permissions','DocType',2,0,'Sales User',NULL,1,1,1,1,1,1,1),('PERM00194','2013-05-24 19:29:08','2013-11-07 11:16:27','Administrator','Administrator',0,'Quotation','permissions','DocType',3,0,'Customer',NULL,1,0,0,0,0,0,1),('PERM00195','2013-05-24 19:29:08','2013-11-07 11:16:27','Administrator','Administrator',0,'Quotation','permissions','DocType',4,0,'Maintenance Manager',NULL,1,1,1,1,1,1,1),('PERM00196','2013-05-24 19:29:08','2013-11-07 11:16:27','Administrator','Administrator',0,'Quotation','permissions','DocType',5,0,'Maintenance User',NULL,1,1,1,1,1,1,1),('PERM00197','2013-06-20 11:53:21','2013-11-07 11:16:27','Administrator','Administrator',0,'Sales BOM','permissions','DocType',1,0,'Material Manager',NULL,1,1,1,0,1,0,1),('PERM00198','2013-06-20 11:53:21','2013-11-07 11:16:27','Administrator','Administrator',0,'Sales BOM','permissions','DocType',2,0,'Material User',NULL,1,0,0,0,0,0,1),('PERM00199','2013-06-20 11:53:21','2013-11-07 11:16:27','Administrator','Administrator',0,'Sales BOM','permissions','DocType',3,0,'Sales User',NULL,1,1,1,0,1,0,1),('PERM00200','2013-06-18 12:39:59','2013-11-07 11:16:27','Administrator','Administrator',0,'Sales Order','permissions','DocType',1,0,'Sales User',NULL,1,1,1,1,1,1,1),('PERM00201','2013-06-18 12:39:59','2013-11-07 11:16:27','Administrator','Administrator',0,'Sales Order','permissions','DocType',2,0,'Maintenance User',NULL,1,1,1,1,1,1,1),('PERM00202','2013-06-18 12:39:59','2013-11-07 11:16:27','Administrator','Administrator',0,'Sales Order','permissions','DocType',3,0,'Accounts User',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),('PERM00203','2013-06-18 12:39:59','2013-11-07 11:16:27','Administrator','Administrator',0,'Sales Order','permissions','DocType',4,0,'Customer','customer',1,NULL,NULL,NULL,NULL,NULL,NULL),('PERM00204','2013-06-25 10:25:16','2013-11-07 11:16:28','Administrator','Administrator',0,'Selling Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,NULL,NULL,NULL,NULL),('PERM00205','2013-06-19 15:57:32','2013-11-07 11:16:28','Administrator','Administrator',0,'Shopping Cart Settings','permissions','DocType',1,0,'Website Manager',NULL,1,1,1,NULL,NULL,NULL,NULL),('PERM00206','2013-01-10 16:34:22','2013-11-07 11:16:28','Administrator','Administrator',0,'SMS Center','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,NULL,NULL,1),('PERM00207','2013-01-10 16:34:22','2013-11-07 11:16:28','Administrator','Administrator',0,'Authorization Rule','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,1,NULL,1),('PERM00208','2013-04-30 12:58:38','2013-11-07 11:16:28','Administrator','Administrator',0,'Backup Manager','permissions','DocType',1,0,'System Manager',NULL,1,1,1,NULL,NULL,NULL,NULL),('PERM00209','2013-02-22 01:27:54','2013-11-07 11:16:28','Administrator','Administrator',0,'Brand','permissions','DocType',1,0,'Material Master Manager',NULL,1,1,1,NULL,1,NULL,1),('PERM00210','2013-02-22 01:27:54','2013-11-07 11:16:28','Administrator','Administrator',0,'Brand','permissions','DocType',2,0,'Material User',NULL,1,0,0,0,0,0,1),('PERM00211','2013-02-22 01:27:54','2013-11-07 11:16:28','Administrator','Administrator',0,'Brand','permissions','DocType',3,0,'Sales User',NULL,1,NULL,NULL,NULL,NULL,NULL,1),('PERM00212','2013-02-22 01:27:54','2013-11-07 11:16:28','Administrator','Administrator',0,'Brand','permissions','DocType',4,0,'Purchase User',NULL,1,NULL,NULL,NULL,NULL,NULL,1),('PERM00213','2013-02-22 01:27:54','2013-11-07 11:16:28','Administrator','Administrator',0,'Brand','permissions','DocType',5,0,'Accounts User',NULL,1,NULL,NULL,NULL,NULL,NULL,1),('PERM00214','2013-04-10 08:35:39','2013-11-07 11:16:28','Administrator','Administrator',0,'Company','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,1,0,1),('PERM00215','2013-04-10 08:35:39','2013-11-07 11:16:28','Administrator','Administrator',0,'Company','permissions','DocType',2,0,'All',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),('PERM00216','2012-03-27 14:36:19','2013-11-07 11:16:28','Administrator','Administrator',0,'Contact Control','permissions','DocType',1,0,'System Manager',NULL,1,1,0,NULL,NULL,NULL,NULL),('PERM00217','2013-01-19 10:23:30','2013-11-07 11:16:28','Administrator','Administrator',0,'Country','permissions','DocType',1,0,'Sales Master Manager',NULL,1,1,1,0,0,0,1),('PERM00218','2013-01-19 10:23:30','2013-11-07 11:16:28','Administrator','Administrator',0,'Country','permissions','DocType',2,0,'Purchase Master Manager',NULL,1,1,1,0,NULL,NULL,1),('PERM00219','2013-01-19 10:23:30','2013-11-07 11:16:28','Administrator','Administrator',0,'Country','permissions','DocType',3,0,'HR User',NULL,1,1,1,0,NULL,NULL,1),('PERM00220','2013-01-19 10:23:30','2013-11-07 11:16:28','Administrator','Administrator',0,'Country','permissions','DocType',4,0,'HR Manager',NULL,1,1,1,0,NULL,NULL,1),('PERM00221','2013-01-19 10:23:30','2013-11-07 11:16:28','Administrator','Administrator',0,'Country','permissions','DocType',5,0,'All',NULL,1,NULL,NULL,NULL,NULL,NULL,1),('PERM00222','2013-01-28 10:06:02','2013-11-07 11:16:28','Administrator','Administrator',0,'Currency','permissions','DocType',1,0,'Accounts Manager',NULL,1,1,1,0,1,NULL,1),('PERM00223','2013-01-28 10:06:02','2013-11-07 11:16:28','Administrator','Administrator',0,'Currency','permissions','DocType',2,0,'Sales Master Manager',NULL,1,1,1,0,1,0,1),('PERM00224','2013-01-28 10:06:02','2013-11-07 11:16:28','Administrator','Administrator',0,'Currency','permissions','DocType',3,0,'Purchase Master Manager',NULL,1,1,1,0,0,0,1),('PERM00225','2013-01-28 10:06:02','2013-11-07 11:16:28','Administrator','Administrator',0,'Currency','permissions','DocType',4,0,'All',NULL,1,NULL,NULL,NULL,NULL,NULL,1),('PERM00226','2013-06-20 15:40:29','2013-11-07 11:16:28','Administrator','Administrator',0,'Currency Exchange','permissions','DocType',1,0,'Accounts Manager',NULL,1,1,1,NULL,1,NULL,1),('PERM00227','2013-06-20 15:40:29','2013-11-07 11:16:28','Administrator','Administrator',0,'Currency Exchange','permissions','DocType',2,0,'Accounts User',NULL,1,NULL,NULL,NULL,NULL,NULL,1),('PERM00228','2013-06-20 15:40:29','2013-11-07 11:16:28','Administrator','Administrator',0,'Currency Exchange','permissions','DocType',3,0,'Sales User',NULL,1,NULL,NULL,NULL,NULL,NULL,1),('PERM00229','2013-06-20 15:40:29','2013-11-07 11:16:28','Administrator','Administrator',0,'Currency Exchange','permissions','DocType',4,0,'Purchase User',NULL,1,NULL,NULL,NULL,NULL,NULL,1),('PERM00230','2013-01-10 16:34:23','2013-11-07 11:16:28','Administrator','Administrator',0,'Customer Group','permissions','DocType',1,0,'Sales Manager',NULL,1,0,0,0,0,0,1),('PERM00231','2013-01-10 16:34:23','2013-11-07 11:16:28','Administrator','Administrator',0,'Customer Group','permissions','DocType',2,0,'Sales User',NULL,1,0,0,0,0,0,1),('PERM00232','2013-01-10 16:34:23','2013-11-07 11:16:28','Administrator','Administrator',0,'Customer Group','permissions','DocType',3,0,'Sales Master Manager',NULL,1,1,1,0,1,0,1),('PERM00233','2013-02-21 14:15:31','2013-11-07 11:16:28','Administrator','Administrator',0,'Email Digest','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,1,NULL,1),('PERM00234','2013-02-21 14:15:31','2013-11-07 11:16:28','Administrator','Administrator',0,'Email Digest','permissions','DocType',2,1,'System Manager',NULL,1,NULL,0,0,0,0,NULL),('PERM00235','2013-03-25 17:53:21','2013-11-07 11:16:29','Administrator','Administrator',0,'Email Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,NULL,NULL,NULL,NULL),('PERM00236','2012-12-20 12:50:49','2013-11-07 11:16:29','Administrator','Administrator',0,'Features Setup','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,NULL,NULL,0),('PERM00237','2012-12-20 12:50:49','2013-11-07 11:16:29','Administrator','Administrator',0,'Features Setup','permissions','DocType',2,0,'Administrator',NULL,1,1,1,0,NULL,NULL,0),('PERM00238','2013-05-02 17:53:24','2013-11-07 11:16:29','Administrator','Administrator',0,'Global Defaults','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,0,0,0),('PERM00239','2013-03-28 10:35:29','2013-11-07 11:16:29','Administrator','Administrator',0,'Item Group','permissions','DocType',1,0,'Material Manager',NULL,1,0,0,0,0,0,1),('PERM00240','2013-03-28 10:35:29','2013-11-07 11:16:29','Administrator','Administrator',0,'Item Group','permissions','DocType',2,0,'Material User',NULL,1,0,0,0,0,0,1),('PERM00241','2013-03-28 10:35:29','2013-11-07 11:16:29','Administrator','Administrator',0,'Item Group','permissions','DocType',3,0,'Material Master Manager',NULL,1,1,1,0,1,NULL,1),('PERM00242','2013-03-28 10:35:29','2013-11-07 11:16:29','Administrator','Administrator',0,'Item Group','permissions','DocType',4,0,'Sales User',NULL,1,NULL,NULL,NULL,NULL,NULL,1),('PERM00243','2013-03-28 10:35:29','2013-11-07 11:16:29','Administrator','Administrator',0,'Item Group','permissions','DocType',5,0,'Purchase User',NULL,1,NULL,NULL,NULL,NULL,NULL,1),('PERM00244','2013-03-28 10:35:29','2013-11-07 11:16:29','Administrator','Administrator',0,'Item Group','permissions','DocType',6,0,'Accounts User',NULL,1,NULL,NULL,NULL,NULL,NULL,1),('PERM00245','2013-01-15 16:50:01','2013-11-07 11:16:29','Administrator','Administrator',0,'Jobs Email Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,NULL,NULL,NULL,NULL),('PERM00246','2013-01-25 11:35:08','2013-11-07 11:16:29','Administrator','Administrator',0,'Naming Series','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,NULL,NULL,0),('PERM00247','2012-07-12 23:29:45','2013-11-07 11:16:29','Administrator','Administrator',0,'Notification Control','permissions','DocType',1,0,'Guest',NULL,1,0,0,NULL,NULL,NULL,NULL),('PERM00248','2012-07-12 23:29:45','2013-11-07 11:16:29','Administrator','Administrator',0,'Notification Control','permissions','DocType',2,0,'System Manager',NULL,1,1,1,NULL,NULL,NULL,NULL),('PERM00249','2013-01-10 16:34:24','2013-11-07 11:16:29','Administrator','Administrator',0,'Print Heading','permissions','DocType',1,0,'All',NULL,1,1,1,0,1,NULL,1),('PERM00250','2013-01-10 16:34:24','2013-11-07 11:16:29','Administrator','Administrator',0,'Quotation Lost Reason','permissions','DocType',1,0,'Sales Master Manager',NULL,1,1,1,0,1,0,1),('PERM00251','2013-01-16 10:25:26','2013-11-07 11:16:29','Administrator','Administrator',0,'Sales Email Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,NULL,NULL,NULL,NULL),('PERM00252','2013-04-12 15:34:06','2013-11-07 11:16:29','Administrator','Administrator',0,'Sales Partner','permissions','DocType',1,0,'Sales Manager',NULL,1,0,0,0,0,0,1),('PERM00253','2013-04-12 15:34:06','2013-11-07 11:16:29','Administrator','Administrator',0,'Sales Partner','permissions','DocType',2,0,'Sales User',NULL,1,0,0,0,0,0,1),('PERM00254','2013-04-12 15:34:06','2013-11-07 11:16:29','Administrator','Administrator',0,'Sales Partner','permissions','DocType',3,0,'Sales Master Manager',NULL,1,1,1,0,1,0,1),('PERM00255','2013-01-10 16:34:24','2013-11-07 11:16:29','Administrator','Administrator',0,'Sales Person','permissions','DocType',1,0,'Sales Manager',NULL,1,0,0,0,0,0,1),('PERM00256','2013-01-10 16:34:24','2013-11-07 11:16:29','Administrator','Administrator',0,'Sales Person','permissions','DocType',2,0,'Sales User',NULL,1,0,0,0,0,0,1),('PERM00257','2013-01-10 16:34:24','2013-11-07 11:16:29','Administrator','Administrator',0,'Sales Person','permissions','DocType',3,0,'Sales Master Manager',NULL,1,1,1,0,1,0,1),('PERM00258','2013-01-10 16:34:24','2013-11-07 11:16:29','Administrator','Administrator',0,'SMS Settings','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,NULL,NULL,0),('PERM00259','2013-01-10 16:34:24','2013-11-07 11:16:29','Administrator','Administrator',0,'Supplier Type','permissions','DocType',1,0,'Purchase Manager',NULL,1,0,0,0,0,0,1),('PERM00260','2013-01-10 16:34:24','2013-11-07 11:16:29','Administrator','Administrator',0,'Supplier Type','permissions','DocType',2,0,'Purchase User',NULL,1,0,0,0,0,0,1),('PERM00261','2013-01-10 16:34:24','2013-11-07 11:16:29','Administrator','Administrator',0,'Supplier Type','permissions','DocType',3,0,'Purchase Master Manager',NULL,1,1,1,0,1,0,1),('PERM00262','2013-01-10 16:34:24','2013-11-07 11:16:29','Administrator','Administrator',0,'Terms and Conditions','permissions','DocType',1,0,'Sales Master Manager',NULL,1,1,1,0,1,0,1),('PERM00263','2013-01-10 16:34:24','2013-11-07 11:16:29','Administrator','Administrator',0,'Terms and Conditions','permissions','DocType',2,0,'Sales User',NULL,1,0,0,0,0,0,1),('PERM00264','2013-01-10 16:34:24','2013-11-07 11:16:29','Administrator','Administrator',0,'Terms and Conditions','permissions','DocType',3,0,'System Manager',NULL,1,1,1,0,1,NULL,1),('PERM00265','2013-01-10 16:34:24','2013-11-07 11:16:29','Administrator','Administrator',0,'Terms and Conditions','permissions','DocType',4,0,'Accounts User',NULL,1,1,1,0,1,NULL,1),('PERM00266','2013-01-10 16:34:24','2013-11-07 11:16:29','Administrator','Administrator',0,'Territory','permissions','DocType',1,0,'Sales Manager',NULL,1,0,0,0,0,0,1),('PERM00267','2013-01-10 16:34:24','2013-11-07 11:16:29','Administrator','Administrator',0,'Territory','permissions','DocType',2,0,'Sales User',NULL,1,0,0,0,0,0,1),('PERM00268','2013-01-10 16:34:24','2013-11-07 11:16:29','Administrator','Administrator',0,'Territory','permissions','DocType',3,0,'Sales Master Manager',NULL,1,1,1,0,1,0,1),('PERM00269','2013-01-10 16:34:24','2013-11-07 11:16:29','Administrator','Administrator',0,'UOM','permissions','DocType',1,0,'Material Master Manager',NULL,1,1,1,0,1,0,1),('PERM00270','2013-01-10 16:34:24','2013-11-07 11:16:29','Administrator','Administrator',0,'UOM','permissions','DocType',2,0,'Material Manager',NULL,1,0,0,0,0,0,1),('PERM00271','2013-01-10 16:34:24','2013-11-07 11:16:29','Administrator','Administrator',0,'UOM','permissions','DocType',3,0,'Material User',NULL,1,0,0,0,0,0,1),('PERM00272','2013-03-05 14:50:38','2013-11-07 11:16:29','Administrator','harshada@webnotestech.com',0,'Batch','permissions','DocType',1,0,'Material Master Manager',NULL,1,1,1,0,1,NULL,1),('PERM00273','2013-01-10 16:34:25','2013-11-07 11:16:30','Administrator','Administrator',0,'Bin','permissions','DocType',1,0,'Sales User',NULL,1,NULL,NULL,0,NULL,NULL,1),('PERM00274','2013-01-10 16:34:25','2013-11-07 11:16:30','Administrator','Administrator',0,'Bin','permissions','DocType',2,0,'Purchase User',NULL,1,NULL,NULL,0,NULL,NULL,1),('PERM00275','2013-01-10 16:34:25','2013-11-07 11:16:30','Administrator','Administrator',0,'Bin','permissions','DocType',3,0,'Material User',NULL,1,0,0,0,0,0,1),('PERM00276','2013-05-24 19:29:09','2013-11-07 11:16:30','Administrator','Administrator',0,'Delivery Note','permissions','DocType',1,0,'Material User',NULL,1,1,1,1,1,1,1),('PERM00277','2013-05-24 19:29:09','2013-11-07 11:16:30','Administrator','Administrator',0,'Delivery Note','permissions','DocType',2,0,'Material Manager',NULL,1,1,1,1,1,1,1),('PERM00278','2013-05-24 19:29:09','2013-11-07 11:16:30','Administrator','Administrator',0,'Delivery Note','permissions','DocType',3,0,'Sales User',NULL,1,1,1,1,1,1,1),('PERM00279','2013-05-24 19:29:09','2013-11-07 11:16:30','Administrator','Administrator',0,'Delivery Note','permissions','DocType',4,0,'Accounts User',NULL,1,0,0,0,0,NULL,1),('PERM00280','2013-05-24 19:29:09','2013-11-07 11:16:30','Administrator','Administrator',0,'Delivery Note','permissions','DocType',5,0,'Customer','customer_name',1,NULL,NULL,NULL,NULL,NULL,1),('PERM00281','2013-05-03 10:45:46','2013-11-07 11:16:30','Administrator','Administrator',0,'Item','permissions','DocType',1,0,'Material Master Manager',NULL,1,1,1,0,1,NULL,1),('PERM00282','2013-05-03 10:45:46','2013-11-07 11:16:30','Administrator','Administrator',0,'Item','permissions','DocType',2,0,'Material Manager',NULL,1,0,0,0,0,0,1),('PERM00283','2013-05-03 10:45:46','2013-11-07 11:16:30','Administrator','Administrator',0,'Item','permissions','DocType',3,0,'Material User',NULL,1,0,0,0,0,0,1),('PERM00284','2013-05-02 16:29:48','2013-11-07 11:16:30','Administrator','Administrator',0,'Item Price','permissions','DocType',1,0,'Sales Master Manager',NULL,1,1,1,NULL,1,NULL,1),('PERM00285','2013-05-02 16:29:48','2013-11-07 11:16:30','Administrator','Administrator',0,'Item Price','permissions','DocType',2,0,'Purchase Master Manager',NULL,1,1,1,NULL,1,NULL,1),('PERM00286','2013-01-22 16:50:39','2013-11-07 11:16:31','Administrator','wasim@webnotestech.com',0,'Landed Cost Wizard','permissions','DocType',1,0,'Purchase Manager',NULL,1,1,1,0,0,0,0),('PERM00287','2013-01-22 16:50:39','2013-11-07 11:16:31','Administrator','wasim@webnotestech.com',0,'Landed Cost Wizard','permissions','DocType',2,0,'Purchase User',NULL,1,1,1,0,NULL,NULL,0),('PERM00288','2013-03-07 14:48:38','2013-11-07 11:16:31','Administrator','Administrator',0,'Material Request','permissions','DocType',1,0,'Purchase Manager',NULL,1,1,1,1,1,1,1),('PERM00289','2013-03-07 14:48:38','2013-11-07 11:16:31','Administrator','Administrator',0,'Material Request','permissions','DocType',2,0,'Material Manager',NULL,1,1,1,1,1,1,1),('PERM00290','2013-03-07 14:48:38','2013-11-07 11:16:31','Administrator','Administrator',0,'Material Request','permissions','DocType',3,0,'Material User',NULL,1,1,1,1,1,1,1),('PERM00291','2013-03-07 14:48:38','2013-11-07 11:16:31','Administrator','Administrator',0,'Material Request','permissions','DocType',4,0,'Purchase User',NULL,1,1,1,1,1,1,1),('PERM00292','2013-04-11 15:32:24','2013-11-07 11:16:31','Administrator','Administrator',0,'Packing Slip','permissions','DocType',1,0,'Material User',NULL,1,1,1,1,1,1,1),('PERM00293','2013-04-11 15:32:24','2013-11-07 11:16:31','Administrator','Administrator',0,'Packing Slip','permissions','DocType',2,0,'Sales User',NULL,1,1,1,1,1,1,1),('PERM00294','2013-04-11 15:32:24','2013-11-07 11:16:31','Administrator','Administrator',0,'Packing Slip','permissions','DocType',3,0,'Material Master Manager',NULL,1,1,1,1,1,1,1),('PERM00295','2013-04-11 15:32:24','2013-11-07 11:16:31','Administrator','Administrator',0,'Packing Slip','permissions','DocType',4,0,'Material Manager',NULL,1,1,1,1,1,1,1),('PERM00296','2013-04-11 15:32:24','2013-11-07 11:16:31','Administrator','Administrator',0,'Packing Slip','permissions','DocType',5,0,'Sales Manager',NULL,1,1,1,1,1,1,1),('PERM00297','2013-01-25 11:35:09','2013-11-07 11:16:31','Administrator','Administrator',0,'Price List','permissions','DocType',1,0,'Sales User',NULL,1,0,0,0,0,0,1),('PERM00298','2013-01-25 11:35:09','2013-11-07 11:16:31','Administrator','Administrator',0,'Price List','permissions','DocType',2,0,'Sales Master Manager',NULL,1,1,1,0,1,0,1),('PERM00299','2013-01-25 11:35:09','2013-11-07 11:16:31','Administrator','Administrator',0,'Price List','permissions','DocType',3,0,'Purchase User',NULL,1,NULL,NULL,NULL,NULL,NULL,1),('PERM00300','2013-01-25 11:35:09','2013-11-07 11:16:31','Administrator','Administrator',0,'Price List','permissions','DocType',4,0,'Purchase Master Manager',NULL,1,1,1,NULL,1,NULL,1),('PERM00301','2013-05-21 16:16:39','2013-11-07 11:16:31','Administrator','Administrator',0,'Purchase Receipt','permissions','DocType',1,0,'Material Manager',NULL,1,1,1,1,1,1,1),('PERM00302','2013-05-21 16:16:39','2013-11-07 11:16:31','Administrator','Administrator',0,'Purchase Receipt','permissions','DocType',2,0,'Material User',NULL,1,1,1,1,1,1,1),('PERM00303','2013-05-21 16:16:39','2013-11-07 11:16:31','Administrator','Administrator',0,'Purchase Receipt','permissions','DocType',3,0,'Purchase User',NULL,1,1,1,1,1,1,1),('PERM00304','2013-05-21 16:16:39','2013-11-07 11:16:31','Administrator','Administrator',0,'Purchase Receipt','permissions','DocType',4,0,'Supplier','supplier',1,NULL,NULL,NULL,NULL,NULL,1),('PERM00305','2013-05-16 10:59:15','2013-11-07 11:16:32','Administrator','Administrator',0,'Serial No','permissions','DocType',1,0,'Material Master Manager',NULL,1,1,1,0,1,NULL,1),('PERM00306','2013-05-16 10:59:15','2013-11-07 11:16:32','Administrator','Administrator',0,'Serial No','permissions','DocType',2,0,'Material Manager',NULL,1,0,0,0,0,0,1),('PERM00307','2013-05-16 10:59:15','2013-11-07 11:16:32','Administrator','Administrator',0,'Serial No','permissions','DocType',3,0,'Material User',NULL,1,0,0,0,0,0,1),('PERM00308','2013-04-09 11:43:55','2013-11-07 11:16:32','Administrator','Administrator',0,'Stock Entry','permissions','DocType',1,0,'Material User',NULL,1,1,1,1,1,1,1),('PERM00309','2013-04-09 11:43:55','2013-11-07 11:16:32','Administrator','Administrator',0,'Stock Entry','permissions','DocType',2,0,'Manufacturing User',NULL,1,1,1,1,1,1,1),('PERM00310','2013-04-09 11:43:55','2013-11-07 11:16:32','Administrator','Administrator',0,'Stock Entry','permissions','DocType',3,0,'Manufacturing Manager',NULL,1,1,1,1,1,1,1),('PERM00311','2013-04-09 11:43:55','2013-11-07 11:16:32','Administrator','Administrator',0,'Stock Entry','permissions','DocType',4,0,'Material Manager',NULL,1,1,1,1,1,1,1),('PERM00312','2013-01-29 19:25:42','2013-11-07 11:16:32','Administrator','Administrator',0,'Stock Ledger Entry','permissions','DocType',1,0,'Material User',NULL,1,0,0,0,0,0,1),('PERM00313','2013-01-29 19:25:42','2013-11-07 11:16:32','Administrator','Administrator',0,'Stock Ledger Entry','permissions','DocType',2,0,'Accounts Manager',NULL,1,NULL,NULL,0,NULL,NULL,1),('PERM00314','2013-03-28 10:35:31','2013-11-07 11:16:32','Administrator','Administrator',0,'Stock Reconciliation','permissions','DocType',1,0,'Material Manager',NULL,1,1,1,1,1,0,1),('PERM00315','2013-06-24 16:37:54','2013-11-07 11:16:32','Administrator','Administrator',0,'Stock Settings','permissions','DocType',1,0,'Material Manager',NULL,1,1,1,NULL,NULL,NULL,NULL),('PERM00316','2013-01-10 16:34:30','2013-11-07 11:16:32','Administrator','Administrator',0,'Stock UOM Replace Utility','permissions','DocType',1,0,'Material Master Manager',NULL,1,1,1,0,NULL,NULL,0),('PERM00317','2013-01-10 16:34:30','2013-11-07 11:16:32','Administrator','Administrator',0,'Stock UOM Replace Utility','permissions','DocType',2,0,'Material Manager',NULL,1,1,1,0,NULL,NULL,0),('PERM00318','2013-03-07 18:50:32','2013-11-07 11:16:32','Administrator','Administrator',0,'Warehouse','permissions','DocType',1,0,'Material Master Manager',NULL,1,1,1,0,1,0,1),('PERM00319','2013-03-07 18:50:32','2013-11-07 11:16:32','Administrator','Administrator',0,'Warehouse','permissions','DocType',2,0,'Material User',NULL,1,0,0,0,0,0,1),('PERM00320','2013-03-07 18:50:32','2013-11-07 11:16:32','Administrator','Administrator',0,'Warehouse','permissions','DocType',3,0,'Sales User',NULL,1,NULL,NULL,NULL,NULL,NULL,1),('PERM00321','2013-03-07 18:50:32','2013-11-07 11:16:32','Administrator','Administrator',0,'Warehouse','permissions','DocType',4,0,'Purchase User',NULL,1,NULL,NULL,NULL,NULL,NULL,1),('PERM00322','2013-03-07 18:50:32','2013-11-07 11:16:32','Administrator','Administrator',0,'Warehouse','permissions','DocType',5,0,'Accounts User',NULL,1,NULL,NULL,NULL,NULL,NULL,1),('PERM00323','2013-01-10 16:34:30','2013-11-07 11:16:33','Administrator','harshada@webnotestech.com',0,'Customer Issue','permissions','DocType',1,0,'Maintenance User',NULL,1,1,1,0,1,0,1),('PERM00324','2013-01-10 16:34:30','2013-11-07 11:16:33','Administrator','Administrator',0,'Maintenance Schedule','permissions','DocType',1,0,'Maintenance Manager',NULL,1,1,1,1,1,1,1),('PERM00325','2013-01-10 16:34:31','2013-11-07 11:16:33','Administrator','ashwini@webnotestech.com',0,'Maintenance Visit','permissions','DocType',1,0,'Maintenance User',NULL,1,1,1,1,1,1,1),('PERM00326','2013-01-10 16:34:31','2013-11-07 11:16:33','Administrator','Administrator',0,'Newsletter','permissions','DocType',1,0,'Sales Manager',NULL,1,1,1,0,1,NULL,1),('PERM00327','2013-01-10 16:34:31','2013-11-07 11:16:33','Administrator','Administrator',0,'Newsletter','permissions','DocType',2,0,'Support Manager',NULL,1,1,1,0,1,NULL,1),('PERM00328','2013-02-01 10:36:25','2013-11-07 11:16:33','Administrator','Administrator',0,'Support Ticket','permissions','DocType',1,0,'Guest',NULL,1,1,1,0,0,0,1),('PERM00329','2013-02-01 10:36:25','2013-11-07 11:16:33','Administrator','Administrator',0,'Support Ticket','permissions','DocType',2,0,'Customer',NULL,1,1,1,0,0,0,1),('PERM00330','2013-02-01 10:36:25','2013-11-07 11:16:33','Administrator','Administrator',0,'Support Ticket','permissions','DocType',3,0,'Support Team',NULL,1,1,1,0,1,0,1),('PERM00331','2013-01-10 16:34:32','2013-11-07 11:16:33','Administrator','Administrator',0,'Address','permissions','DocType',1,0,'Sales User',NULL,1,1,1,0,NULL,NULL,1),('PERM00332','2013-01-10 16:34:32','2013-11-07 11:16:33','Administrator','Administrator',0,'Address','permissions','DocType',2,0,'Purchase User',NULL,1,1,1,0,NULL,NULL,1),('PERM00333','2013-01-10 16:34:32','2013-11-07 11:16:33','Administrator','Administrator',0,'Address','permissions','DocType',3,0,'Maintenance User',NULL,1,1,1,0,NULL,NULL,1),('PERM00334','2013-01-10 16:34:32','2013-11-07 11:16:33','Administrator','Administrator',0,'Address','permissions','DocType',4,0,'Accounts User',NULL,1,1,1,0,NULL,NULL,1),('PERM00335','2013-01-10 16:34:32','2013-11-07 11:16:33','Administrator','Administrator',0,'Contact','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,1,NULL,1),('PERM00336','2013-01-10 16:34:32','2013-11-07 11:16:33','Administrator','Administrator',0,'Contact','permissions','DocType',2,0,'Sales Master Manager',NULL,1,1,1,0,1,0,1),('PERM00337','2013-01-10 16:34:32','2013-11-07 11:16:33','Administrator','Administrator',0,'Contact','permissions','DocType',3,0,'Purchase Master Manager',NULL,1,1,1,0,1,NULL,1),('PERM00338','2013-01-10 16:34:32','2013-11-07 11:16:33','Administrator','Administrator',0,'Contact','permissions','DocType',4,0,'Sales Manager',NULL,1,1,1,0,NULL,NULL,1),('PERM00339','2013-01-10 16:34:32','2013-11-07 11:16:33','Administrator','Administrator',0,'Contact','permissions','DocType',5,0,'Purchase Manager',NULL,1,1,1,0,NULL,NULL,1),('PERM00340','2013-01-10 16:34:32','2013-11-07 11:16:33','Administrator','Administrator',0,'Contact','permissions','DocType',6,0,'Maintenance Manager',NULL,1,1,1,0,NULL,NULL,1),('PERM00341','2013-01-10 16:34:32','2013-11-07 11:16:33','Administrator','Administrator',0,'Contact','permissions','DocType',7,0,'Accounts Manager',NULL,1,1,1,0,NULL,NULL,1),('PERM00342','2013-01-10 16:34:32','2013-11-07 11:16:33','Administrator','Administrator',0,'Contact','permissions','DocType',8,0,'Sales User',NULL,1,1,1,0,NULL,NULL,1),('PERM00343','2013-01-10 16:34:32','2013-11-07 11:16:33','Administrator','Administrator',0,'Contact','permissions','DocType',9,0,'Purchase User',NULL,1,1,1,0,NULL,NULL,1),('PERM00344','2013-01-10 16:34:32','2013-11-07 11:16:33','Administrator','Administrator',0,'Contact','permissions','DocType',10,0,'Maintenance User',NULL,1,1,1,0,NULL,NULL,1),('PERM00345','2013-01-10 16:34:32','2013-11-07 11:16:33','Administrator','Administrator',0,'Contact','permissions','DocType',11,0,'Accounts User',NULL,1,1,1,0,NULL,NULL,1),('PERM00346','2013-05-24 13:41:00','2013-11-07 11:16:33','Administrator','Administrator',0,'Note','permissions','DocType',1,0,'All',NULL,1,1,1,NULL,1,NULL,NULL),('PERM00347','2012-12-03 10:25:59','2013-11-07 11:16:33','Administrator','Administrator',0,'Rename Tool','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,NULL,NULL,0),('PERM00348','2013-01-10 16:34:32','2013-11-07 11:16:33','Administrator','Administrator',0,'SMS Control','permissions','DocType',1,0,'System Manager',NULL,1,1,1,0,NULL,NULL,1),('PERM00349','2012-03-27 14:36:47','2013-11-07 11:16:33','Administrator','Administrator',0,'SMS Log','permissions','DocType',1,0,'System Manager',NULL,1,0,0,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tabDocPerm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabDocType`
--

DROP TABLE IF EXISTS `tabDocType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabDocType` (
  `name` varchar(180) NOT NULL DEFAULT '',
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(180) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `search_fields` varchar(180) DEFAULT NULL,
  `issingle` int(1) DEFAULT NULL,
  `istable` int(1) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `module` varchar(180) DEFAULT NULL,
  `plugin` varchar(180) DEFAULT NULL,
  `autoname` varchar(180) DEFAULT NULL,
  `name_case` varchar(180) DEFAULT NULL,
  `description` text,
  `colour` varchar(180) DEFAULT NULL,
  `read_only` int(1) DEFAULT NULL,
  `in_create` int(1) DEFAULT NULL,
  `show_in_menu` int(1) DEFAULT NULL,
  `menu_index` int(11) DEFAULT NULL,
  `parent_node` varchar(180) DEFAULT NULL,
  `smallicon` varchar(180) DEFAULT NULL,
  `allow_print` int(1) DEFAULT NULL,
  `allow_email` int(1) DEFAULT NULL,
  `allow_copy` int(1) DEFAULT NULL,
  `allow_rename` int(1) DEFAULT NULL,
  `allow_import` int(1) DEFAULT NULL,
  `hide_toolbar` int(1) DEFAULT NULL,
  `hide_heading` int(1) DEFAULT NULL,
  `allow_attach` int(1) DEFAULT NULL,
  `use_template` int(1) DEFAULT NULL,
  `max_attachments` int(11) DEFAULT NULL,
  `section_style` varchar(180) DEFAULT NULL,
  `client_script` mediumtext,
  `client_script_core` mediumtext,
  `server_code` mediumtext,
  `server_code_core` mediumtext,
  `server_code_compiled` mediumtext,
  `client_string` mediumtext,
  `server_code_error` varchar(180) DEFAULT NULL,
  `print_outline` varchar(180) DEFAULT NULL,
  `dt_template` mediumtext,
  `is_transaction_doc` int(1) DEFAULT NULL,
  `change_log` mediumtext,
  `read_only_onload` int(1) DEFAULT NULL,
  `allow_trash` int(1) DEFAULT NULL,
  `in_dialog` int(1) DEFAULT NULL,
  `document_type` varchar(180) DEFAULT NULL,
  `icon` varchar(180) DEFAULT NULL,
  `tag_fields` varchar(180) DEFAULT NULL,
  `subject` varchar(180) DEFAULT NULL,
  `_last_update` varchar(32) DEFAULT NULL,
  `default_print_format` varchar(180) DEFAULT NULL,
  `is_submittable` int(1) DEFAULT NULL,
  `_user_tags` varchar(180) DEFAULT NULL,
  `custom` int(1) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabDocType`
--

LOCK TABLES `tabDocType` WRITE;
/*!40000 ALTER TABLE `tabDocType` DISABLE KEYS */;
INSERT INTO `tabDocType` VALUES ('About Us Settings','2013-03-19 12:02:15','2013-10-28 15:33:19','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Website',NULL,NULL,NULL,'Settings for the About Us Page',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Other','icon-group',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('About Us Team Member','2013-03-07 11:55:11','2013-07-10 14:54:03','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Account','2013-01-30 12:49:46','2013-09-24 11:22:18','Administrator','Administrator',0,NULL,NULL,NULL,1,'debit_or_credit, group_or_ledger',NULL,NULL,NULL,'Accounts',NULL,NULL,NULL,'Heads (or groups) against which Accounting Entries are made and balances are maintained.',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-money',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Accounts Settings','2013-06-24 15:49:57','2013-09-24 11:52:58','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Accounts',NULL,NULL,NULL,'Settings for Accounts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-cog',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Activity Type','2013-03-05 10:14:59','2013-07-05 14:23:55','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Projects',NULL,'field:activity_type',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Master','icon-flag',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Address','2013-01-10 16:34:32','2013-07-11 17:02:12','Administrator','Administrator',0,NULL,NULL,NULL,1,'customer, supplier, sales_partner, country, state',NULL,NULL,NULL,'Utilities',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Master','icon-map-marker',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Applicable Territory','2013-06-20 12:48:38','2013-11-02 16:58:57','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Setup',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Appraisal','2013-01-10 16:34:12','2013-07-05 14:24:59','Administrator','ashwini@webnotestech.com',0,NULL,NULL,NULL,1,'status, employee, employee_name',NULL,NULL,NULL,'HR',NULL,'APRSL.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-thumbs-up',NULL,NULL,NULL,NULL,1,NULL,NULL),('Appraisal Goal','2013-02-22 01:27:44','2013-07-10 14:54:03','Administrator','ashwini@webnotestech.com',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'HR',NULL,'APRSLD.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Appraisal Template','2012-07-03 13:30:39','2013-07-05 14:25:14','Administrator','ashwini@webnotestech.com',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'HR',NULL,'field:kra_title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-file-text',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Appraisal Template Goal','2013-02-22 01:27:44','2013-07-10 14:54:03','Administrator','ashwini@webnotestech.com',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'HR',NULL,'KSHEET.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Attendance','2013-01-10 16:34:13','2013-11-02 14:05:42','Administrator','ashwini@webnotestech.com',0,NULL,NULL,NULL,1,'employee, employee_name, att_date, status',NULL,NULL,NULL,'HR',NULL,'naming_series:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-ok',NULL,NULL,NULL,NULL,1,NULL,NULL),('Authorization Control','2012-03-27 14:36:18','2013-07-10 14:54:03','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Setup',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Authorization Rule','2013-01-10 16:34:22','2013-08-07 14:44:52','Administrator','Administrator',0,NULL,NULL,NULL,1,'transaction,based_on,system_user,system_role,approving_user,approving_role',NULL,NULL,NULL,'Setup',NULL,'AR.####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-shield',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Backup Manager','2013-04-30 12:58:38','2013-07-05 14:26:02','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Setup',NULL,NULL,NULL,'System for managing Backups',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'System','icon-cloud-upload',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Bank Reconciliation','2013-01-10 16:34:05','2013-07-05 14:26:22','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Accounts',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-check',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Bank Reconciliation Detail','2013-02-22 01:27:37','2013-11-03 14:11:31','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Accounts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Batch','2013-03-05 14:50:38','2013-07-05 14:26:48','Administrator','harshada@webnotestech.com',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Stock',NULL,'field:batch_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-archive',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Bin','2013-01-10 16:34:25','2013-08-07 14:45:48','Administrator','Administrator',0,NULL,NULL,NULL,1,'item_code,warehouse',NULL,NULL,NULL,'Stock',NULL,'BIN/.#######',NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Blog Category','2013-03-08 09:41:11','2013-07-05 14:27:02','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Website',NULL,'field:category_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-tag',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Blog Post','2013-03-28 10:35:30','2013-10-10 15:07:21','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,1,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-quote-left',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Blog Settings','2013-03-11 17:48:16','2013-07-05 14:27:31','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Website',NULL,NULL,NULL,'Blog Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-cog',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Blogger','2013-03-25 16:00:51','2013-08-30 16:35:24','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Website',NULL,'field:short_name',NULL,'Profile of a Blogger',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-user',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('BOM','2013-01-22 15:11:38','2013-11-02 14:23:28','Administrator','Administrator',0,NULL,NULL,NULL,1,'item',0,0,NULL,'Manufacturing',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,0,0,0,0,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-sitemap',NULL,NULL,NULL,NULL,1,NULL,NULL),('BOM Explosion Item','2013-03-07 11:42:57','2013-07-10 14:54:04','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Manufacturing',NULL,'FBD/.######',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Standard',NULL,NULL,NULL),('BOM Item','2013-02-22 01:27:49','2013-07-25 16:34:42','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Manufacturing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('BOM Operation','2013-02-22 01:27:49','2013-07-22 15:28:28','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Manufacturing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('BOM Replace Tool','2012-12-06 12:10:10','2013-07-05 14:27:52','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Manufacturing',NULL,NULL,NULL,'Replace a particular BOM in all other BOMs where it is used. It will replace the old BOM link, update cost and regenerate \"BOM Explosion Item\" table as per new BOM',NULL,1,1,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Other','icon-magic',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Branch','2013-01-10 16:34:13','2013-07-22 15:30:08','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'HR',NULL,'field:branch',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-code-fork',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Brand','2013-02-22 01:27:54','2013-07-23 12:06:41','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Setup',NULL,'field:brand',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Master','icon-certificate',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Budget Detail','2013-03-07 11:55:04','2013-08-22 17:27:59','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Accounts',NULL,'CBD/.######',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Budget Distribution','2013-01-10 16:34:05','2013-07-22 15:30:37','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Accounts',NULL,'field:distribution_id','Title Case','**Budget Distribution** helps you distribute your budget across months if you have seasonality in your business.\n\nTo distribute a budget using this distribution, set this **Budget Distribution** in the **Cost Center**',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-bar-chart',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Budget Distribution Detail','2013-02-22 01:27:38','2013-07-10 14:54:06','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Accounts',NULL,'BDD/.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Bulk Email','2012-08-02 15:17:28','2013-08-06 15:36:00','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Core',NULL,NULL,NULL,'Bulk Email records.',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'System','icon-envelope',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Buying Settings','2013-06-25 11:04:03','2013-08-09 14:38:46','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Buying',NULL,NULL,NULL,'Settings for Buying Module',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Other','icon-cog',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('C-Form','2013-03-07 11:55:06','2013-11-02 14:05:25','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Accounts',NULL,'naming_series:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-file-text',NULL,NULL,NULL,NULL,1,NULL,NULL),('C-Form Invoice Detail','2013-02-22 01:27:38','2013-11-02 16:58:31','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Accounts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Campaign','2013-01-10 16:34:18','2013-07-05 14:29:57','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Selling',NULL,'field:campaign_name',NULL,'Keep Track of Sales Campaigns. Keep track of Leads, Quotations, Sales Order etc from Campaigns to gauge Return on Investment. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-bullhorn',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Comment','2012-08-08 10:40:11','2013-07-05 14:30:01','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,NULL,NULL,'Core',NULL,'CWR/.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-comments',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Communication','2013-01-29 10:47:14','2013-11-20 11:57:55','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,NULL,NULL,'Core',NULL,'naming_series:',NULL,'Keep a track of all communications',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Master','icon-comment',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Company','2013-04-10 08:35:39','2013-11-02 14:24:11','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Setup',NULL,'field:company_name',NULL,'Legal Entity / Subsidiary with a separate Chart of Accounts belonging to the Organization.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-building',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Company History','2013-02-22 01:28:08','2013-07-10 14:54:06','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Contact','2013-01-10 16:34:32','2013-10-08 16:48:50','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Utilities',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Master','icon-user',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Contact Control','2012-03-27 14:36:19','2013-07-10 14:54:06','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Setup',NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Contact Us Settings','2013-02-21 20:12:42','2013-09-11 18:43:20','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Website',NULL,NULL,NULL,'Settings for Contact Us Page',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-cog',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Control Panel','2013-01-10 16:34:01','2013-11-03 11:04:45','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,0,NULL,'Core',NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Cost Center','2013-01-23 19:57:17','2013-07-22 15:23:10','Administrator','Administrator',0,NULL,NULL,NULL,1,'name,parent_cost_center',NULL,NULL,NULL,'Accounts',NULL,'field:cost_center_name',NULL,'Track separate Income and Expense for product verticals or divisions.',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-money',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Country','2013-01-19 10:23:30','2013-07-23 12:05:08','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Setup',NULL,'field:country_name',NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-globe',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Currency','2013-01-28 10:06:02','2013-07-23 12:05:26','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Setup',NULL,'field:currency_name',NULL,'**Currency** Master',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-bitcoin',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Currency Exchange','2013-06-20 15:40:29','2013-07-05 16:26:11','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Setup',NULL,NULL,NULL,'Specify Exchange Rate to convert one currency into another',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-exchange',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Custom Field','2013-01-10 16:34:01','2013-11-05 20:11:18','Administrator','Administrator',0,NULL,NULL,NULL,1,'dt,label,fieldtype,options',NULL,NULL,NULL,'Core',NULL,NULL,NULL,'Adds a custom field to a DocType',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-glass',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Custom Script','2013-01-10 16:34:01','2013-10-16 16:56:41','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Core',NULL,'CustomScript.####',NULL,'Adds a custom script (client or server) to a DocType',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-glass',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Customer','2013-06-11 14:26:44','2013-11-03 14:01:33','Administrator','Administrator',0,NULL,NULL,NULL,1,'customer_name,customer_group,country,territory',NULL,NULL,NULL,'Selling',NULL,'naming_series:',NULL,'Buyer of Goods and Services.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-user',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Customer Discount','2013-07-22 12:43:40','2013-11-02 19:41:31','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Selling',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Customer Group','2013-01-10 16:34:23','2013-11-02 16:52:51','Administrator','Administrator',0,NULL,NULL,NULL,1,'name,parent_customer_group',NULL,NULL,NULL,'Setup',NULL,'field:customer_group_name',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-sitemap',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Customer Issue','2013-01-10 16:34:30','2013-11-02 16:59:22','Administrator','harshada@webnotestech.com',0,NULL,NULL,NULL,1,'status,customer,customer_name,allocated_to,allocated_on, territory',NULL,NULL,NULL,'Support',NULL,'naming_series:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-bug',NULL,NULL,NULL,NULL,0,NULL,NULL),('Customize Form','2013-01-29 17:54:08','2013-11-03 11:06:11','Administrator','Administrator',0,NULL,NULL,NULL,1,'doc_type',1,NULL,NULL,'Core',NULL,'DL.####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-glass',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Customize Form Field','2013-02-22 01:27:32','2013-10-16 15:38:55','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,NULL,'Core',NULL,'DLF.#####',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Deduction Type','2013-01-22 16:50:30','2013-07-22 15:25:14','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'HR',NULL,'field:deduction_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-flag',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Default Home Page','2013-02-22 01:27:32','2013-07-10 14:54:07','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Core',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('DefaultValue','2013-02-22 01:27:32','2013-11-15 10:16:30','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,NULL,'Core',NULL,'DEF.######',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Delivery Note','2013-05-24 19:29:09','2013-11-03 14:20:19','Administrator','Administrator',0,NULL,NULL,NULL,1,'status,customer,customer_name, territory,grand_total',NULL,NULL,NULL,'Stock',NULL,'naming_series:',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'Transaction','icon-truck',NULL,NULL,NULL,NULL,1,NULL,NULL),('Delivery Note Item','2013-04-22 13:15:44','2013-11-02 19:41:38','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Stock',NULL,'DND/.#######',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Department','2013-02-05 11:48:26','2013-07-22 15:25:03','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'HR',NULL,'field:department_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-sitemap',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Designation','2013-01-10 16:34:13','2013-07-05 14:35:42','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'HR',NULL,'field:designation_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-bookmark',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('DocField','2013-02-22 01:27:33','2013-07-10 14:54:08','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,NULL,'Core',NULL,'FL.#####',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('DocPerm','2013-02-22 01:27:33','2013-07-22 17:01:58','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,NULL,'Core',NULL,'PERM.#####',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('DocType','2013-02-18 13:36:19','2013-11-05 20:09:08','Administrator','Administrator',0,NULL,NULL,NULL,1,'autoname',0,0,NULL,'Core',NULL,'Prompt',NULL,'DocType is a Table / Form in the application.',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-bolt',NULL,NULL,NULL,NULL,NULL,NULL,0),('Documentation Tool','2013-06-20 10:40:02','2013-07-05 14:36:00','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Core',NULL,NULL,NULL,'Documentation Generator Console',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-book',NULL,NULL,NULL,NULL,NULL,NULL,0),('Earning Type','2013-01-24 11:03:32','2013-07-22 15:25:26','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'HR',NULL,'field:earning_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-flag',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Email Digest','2013-02-21 14:15:31','2013-07-05 14:36:13','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Setup',NULL,'Prompt',NULL,'Send regular summary reports via Email.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'System','icon-envelope',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Email Settings','2013-03-25 17:53:21','2013-07-09 10:41:38','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Setup',NULL,NULL,NULL,'Email Settings for Outgoing and Incoming Emails.',NULL,NULL,1,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-cog',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Employee','2013-03-07 09:04:18','2013-11-03 11:19:10','Administrator','Administrator',0,NULL,NULL,NULL,1,'employee_name',NULL,NULL,NULL,'HR',NULL,'naming_series:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-user',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Employee Education','2013-02-22 01:27:45','2013-07-10 14:54:08','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'HR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Employee External Work History','2013-02-22 01:27:45','2013-07-10 14:54:08','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'HR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Employee Internal Work History','2013-02-22 01:27:45','2013-07-10 14:54:08','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'HR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Employee Leave Approver','2013-04-12 06:56:15','2013-08-05 14:15:44','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'HR',NULL,'LAPPR-/.#####',NULL,'Users who can approve a specific employee\'s leave applications',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Employment Type','2013-01-10 16:34:14','2013-07-22 15:31:58','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'HR',NULL,'field:employee_type_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-flag',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Event','2013-06-10 13:17:47','2013-11-20 12:45:15','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Core',NULL,'EV.#####',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-calendar',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Event Role','2013-02-22 01:27:33','2013-07-10 14:54:08','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Core',NULL,'__EVR.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Event User','2013-02-22 01:27:33','2013-07-10 14:54:08','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Core',NULL,'EVP.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Expense Claim','2013-01-10 16:34:14','2013-09-25 11:36:11','Administrator','harshada@webnotestech.com',0,NULL,NULL,NULL,1,'approval_status,employee,employee_name',NULL,NULL,NULL,'HR',NULL,'EXP.######',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-money',NULL,NULL,NULL,NULL,1,NULL,NULL),('Expense Claim Detail','2013-02-22 01:27:46','2013-07-10 14:54:09','Administrator','harshada@webnotestech.com',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'HR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Expense Claim Type','2012-03-27 14:35:55','2013-07-05 14:37:47','Administrator','harshada@webnotestech.com',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'HR',NULL,'field:expense_type',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-flag',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Features Setup','2012-12-20 12:50:49','2013-11-03 14:20:18','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Setup',NULL,NULL,'Title Case',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-glass',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Feed','2012-07-03 13:29:42','2013-11-15 10:16:00','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Home',NULL,'_FEED.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-rss',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('File Data','2012-12-12 11:19:22','2013-07-05 14:38:16','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Core',NULL,'File.######',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-file',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Fiscal Year','2013-01-22 16:50:25','2013-07-23 11:59:11','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Accounts',NULL,'field:year',NULL,'**Fiscal Year** represents a Financial Year. All accounting entries and other major transactions are tracked against **Fiscal Year**.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-calendar',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('GL Entry','2013-01-10 16:34:06','2013-11-03 14:14:09','Administrator','Administrator',0,NULL,NULL,NULL,1,'voucher_no,account,posting_date,against_voucher',NULL,NULL,NULL,'Accounts',NULL,'GL.#######',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-list',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Global Defaults','2013-05-02 17:53:24','2013-10-23 18:06:04','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Setup',NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-cog',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Grade','2013-01-10 16:34:14','2013-07-26 15:24:31','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'HR',NULL,'field:grade_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-star-half-empty',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Holiday','2013-02-22 01:27:46','2013-07-10 14:54:09','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'HR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Holiday List','2013-01-10 16:34:14','2013-07-05 14:40:02','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'HR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-calendar',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('HR Settings','2013-08-02 13:45:23','2013-10-02 15:44:38','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'HR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Other','icon-cog',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Industry Type','2012-03-27 14:36:09','2013-07-05 14:40:42','Administrator','harshada@webnotestech.com',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Selling',NULL,'field:industry',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-flag',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Installation Note','2013-04-30 13:13:06','2013-11-02 16:58:44','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Selling',NULL,'naming_series:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-wrench',NULL,NULL,NULL,NULL,1,NULL,NULL),('Installation Note Item','2013-02-22 01:27:51','2013-10-10 17:02:31','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Selling',NULL,'IID/.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Item','2013-05-03 10:45:46','2013-11-02 19:41:40','Administrator','Administrator',0,NULL,NULL,NULL,1,'item_name,description,item_group,customer_code',NULL,NULL,NULL,'Stock',NULL,'field:item_code',NULL,'A Product or a Service that is bought, sold or kept in stock.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-tag',NULL,NULL,NULL,'Standard',NULL,NULL,NULL),('Item Customer Detail','2013-03-08 15:37:16','2013-07-10 14:54:09','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Stock',NULL,'ITEMCUST/.#####',NULL,'For the convenience of customers, these codes can be used in print formats like Invoices and Delivery Notes',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Item Group','2013-03-28 10:35:29','2013-11-02 19:41:37','Administrator','Administrator',0,NULL,NULL,NULL,1,'parent_item_group',0,NULL,NULL,'Setup',NULL,'field:item_group_name',NULL,'Item Classification',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-sitemap',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Item Price','2013-05-02 16:29:48','2013-10-31 12:59:02','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,0,NULL,'Stock',NULL,'RFD/.#####',NULL,'Multiple Item prices.',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-flag',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Item Quality Inspection Parameter','2013-02-22 01:28:01','2013-07-10 14:54:09','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Stock',NULL,'IISD/.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Item Reorder','2013-03-07 11:42:59','2013-07-10 14:54:09','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Stock',NULL,'REORD-.#####',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Item Supplier','2013-02-22 01:28:01','2013-07-10 14:54:09','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Stock',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Item Tax','2013-02-22 01:28:01','2013-07-10 14:54:09','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Stock',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Item Website Specification','2013-02-22 01:28:01','2013-07-10 14:54:10','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Stock',NULL,NULL,NULL,'Table for Item that will be shown in Web Site',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Job Applicant','2013-01-29 19:25:37','2013-09-10 10:51:51','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'HR',NULL,'field:applicant_name',NULL,'Applicant for a Job',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Transaction','icon-user',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Job Opening','2013-01-15 16:13:36','2013-07-05 14:43:35','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'HR',NULL,'field:job_title',NULL,'Description of a Job Opening',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Transaction','icon-bookmark',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Jobs Email Settings','2013-01-15 16:50:01','2013-07-05 14:43:39','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Setup',NULL,NULL,NULL,'Email settings for jobs email id \"jobs@example.com\"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-cog',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Journal Voucher','2013-03-25 10:53:52','2013-11-03 14:11:33','Administrator','Administrator',0,NULL,NULL,NULL,1,'voucher_type,posting_date, due_date, cheque_no',NULL,NULL,NULL,'Accounts',NULL,'naming_series:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'icon-file-text',NULL,NULL,NULL,NULL,1,NULL,NULL),('Journal Voucher Detail','2013-02-22 01:27:39','2013-08-02 18:15:56','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Accounts',NULL,'JVD.######',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Landed Cost Item','2013-02-22 01:28:02','2013-09-02 17:36:19','Administrator','wasim@webnotestech.com',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Stock',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Landed Cost Purchase Receipt','2013-02-22 01:28:02','2013-09-02 13:44:28','Administrator','wasim@webnotestech.com',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Stock',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Landed Cost Wizard','2013-01-22 16:50:39','2013-09-02 19:13:09','Administrator','wasim@webnotestech.com',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Stock',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-magic',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Lead','2013-04-10 11:45:37','2013-11-18 15:12:07','Administrator','Administrator',0,NULL,NULL,NULL,1,'lead_name,lead_owner,status',NULL,NULL,NULL,'Selling',NULL,'naming_series:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-user',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Leave Allocation','2013-02-20 19:10:38','2013-07-05 14:44:19','Administrator','Administrator',0,NULL,NULL,NULL,1,'employee,employee_name,leave_type,total_leaves_allocated,fiscal_year',NULL,NULL,NULL,'HR',NULL,'LAL/.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-ok',NULL,NULL,NULL,NULL,1,NULL,NULL),('Leave Application','2013-02-20 11:18:11','2013-07-05 14:44:37','Administrator','Administrator',0,NULL,NULL,NULL,1,'employee,employee_name,leave_type,from_date,to_date,total_leave_days,fiscal_year',NULL,NULL,NULL,'HR',NULL,'LAP/.#####',NULL,'Apply / Approve Leaves',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Transaction','icon-calendar',NULL,NULL,NULL,NULL,1,NULL,NULL),('Leave Block List','2013-02-18 17:43:12','2013-07-05 14:44:45','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'HR',NULL,'field:leave_block_list_name',NULL,'Block Holidays on important days.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-calendar',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Leave Block List Allow','2013-02-22 01:27:47','2013-07-10 14:54:10','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'HR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Leave Block List Date','2013-02-22 01:27:47','2013-07-10 14:54:10','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'HR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Leave Control Panel','2013-01-10 16:34:15','2013-07-05 14:44:50','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'HR',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-cog',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Leave Type','2013-02-21 09:55:58','2013-07-22 15:32:07','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'HR',NULL,'field:leave_type_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-flag',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Letter Head','2012-11-22 17:45:46','2013-11-03 11:09:55','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Core',NULL,'field:letter_head_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-font',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Maintenance Schedule','2013-01-10 16:34:30','2013-11-02 16:59:23','Administrator','Administrator',0,NULL,NULL,NULL,1,'status,customer,customer_name, sales_order_no',NULL,NULL,NULL,'Support',NULL,'MS.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-calendar',NULL,NULL,NULL,NULL,1,NULL,NULL),('Maintenance Schedule Detail','2013-02-22 01:28:05','2013-07-10 14:54:10','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Support',NULL,'MSD.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Maintenance Schedule Item','2013-02-22 01:28:05','2013-07-10 14:54:10','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Support',NULL,'IMD.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Maintenance Visit','2013-01-10 16:34:31','2013-11-02 16:59:24','Administrator','ashwini@webnotestech.com',0,NULL,NULL,NULL,1,'status,maintenance_type,customer,customer_name, address,mntc_date,company,fiscal_year',NULL,NULL,NULL,'Support',NULL,'MV.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-file-text',NULL,NULL,NULL,NULL,1,NULL,NULL),('Maintenance Visit Purpose','2013-02-22 01:28:06','2013-07-10 14:54:10','Administrator','ashwini@webnotestech.com',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Support',NULL,'MVD.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Material Request','2013-03-07 14:48:38','2013-11-03 15:29:49','Administrator','Administrator',0,NULL,NULL,NULL,1,'status,transaction_date',NULL,NULL,NULL,'Stock',NULL,'naming_series:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'icon-ticket',NULL,NULL,NULL,NULL,1,NULL,NULL),('Material Request Item','2013-02-22 01:28:02','2013-11-03 20:36:45','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Stock',NULL,'MREQD-.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('MIS Control','2012-03-27 14:35:49','2013-07-10 14:54:11','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Accounts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Mode of Payment','2012-12-04 17:49:20','2013-07-05 14:46:28','Administrator','harshada@webnotestech.com',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Accounts',NULL,'field:mode_of_payment',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-credit-card',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Module Def','2013-01-10 16:34:03','2013-07-05 14:46:33','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Core',NULL,'field:module_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-sitemap',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Naming Series','2013-01-25 11:35:08','2013-07-05 14:46:46','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Setup',NULL,NULL,NULL,'Set prefix for numbering series on your transactions',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-sort-by-order',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Newsletter','2013-01-10 16:34:31','2013-11-02 14:06:04','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Support',NULL,'naming_series:',NULL,'Create and Send Newsletters',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Other','icon-envelope',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Note','2013-05-24 13:41:00','2013-07-05 14:47:11','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Utilities',NULL,NULL,NULL,'Note is a free page where users can share documents / notes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'Transaction','icon-file-text',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Note User','2013-05-24 14:24:48','2013-07-10 14:54:11','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Utilities',NULL,NULL,NULL,'List of users who can edit a particular Note',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Other',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Notification Control','2012-07-12 23:29:45','2013-07-10 19:24:07','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Setup',NULL,NULL,NULL,'Send automatic emails to Contacts on Submitting transactions.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-envelope',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Notification Count','2013-11-18 05:31:03','2013-11-18 06:26:35','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Core',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Other',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Opportunity','2013-03-07 18:50:30','2013-11-03 14:20:14','Administrator','Administrator',0,NULL,NULL,NULL,1,'status,transaction_date,customer,lead,enquiry_type,territory,company',NULL,NULL,NULL,'Selling',NULL,'naming_series:',NULL,'Potential Sales Deal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Transaction','icon-info-sign',NULL,NULL,NULL,NULL,1,NULL,NULL),('Opportunity Item','2013-02-22 01:27:51','2013-11-02 19:41:31','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Selling',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Packed Item','2013-02-22 01:28:00','2013-10-16 16:37:31','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Stock',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Packing Slip','2013-04-11 15:32:24','2013-11-02 14:05:59','Administrator','Administrator',0,NULL,NULL,NULL,1,'delivery_note',NULL,NULL,NULL,'Stock',NULL,'PS.#######',NULL,'Generate packing slips for packages to be delivered. Used to notify package number, package contents and its weight.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'Transaction','icon-suitcase',NULL,NULL,NULL,NULL,1,NULL,NULL),('Packing Slip Item','2013-04-08 13:10:16','2013-07-25 16:37:30','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Stock',NULL,'PSD/.#######',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Page','2012-12-20 17:16:49','2013-07-11 14:37:21','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,NULL,'Core',NULL,'field:page_name',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-file',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Page Role','2013-02-22 01:27:34','2013-07-10 14:54:11','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,NULL,'Core',NULL,'PR.######',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Patch Log','2013-01-17 11:36:45','2013-10-03 17:39:09','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Core',NULL,'PATCHLOG.#####',NULL,'List of patches executed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'System','icon-cog',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Payment to Invoice Matching Tool','2013-01-30 12:49:46','2013-07-22 15:31:00','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Accounts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Other','icon-magic',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Payment to Invoice Matching Tool Detail','2013-02-22 01:27:39','2013-07-10 14:54:11','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Accounts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Period Closing Voucher','2013-01-10 16:34:07','2013-08-12 17:13:23','Administrator','jai@webnotestech.com',0,NULL,NULL,NULL,1,'posting_date, fiscal_year',NULL,NULL,NULL,'Accounts',NULL,'PCE/.###',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-file-text',NULL,NULL,NULL,NULL,1,NULL,NULL),('POS Setting','2013-05-24 12:15:51','2013-11-02 16:58:38','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Accounts',NULL,'POS/.####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-cog',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Price List','2013-01-25 11:35:09','2013-10-31 19:24:33','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Stock',NULL,'field:price_list_name',NULL,'Price List Master',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-tags',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Print Format','2013-01-23 19:54:43','2013-11-03 11:10:24','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,NULL,'Core',NULL,'Prompt',NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,0,0,0,0,NULL,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'icon-print',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Print Heading','2013-01-10 16:34:24','2013-07-05 14:50:55','Administrator','Administrator',0,NULL,NULL,NULL,1,'print_heading',NULL,NULL,NULL,'Setup',NULL,'field:print_heading',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-font',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Production Order','2013-01-10 16:34:16','2013-11-02 14:05:44','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Manufacturing',NULL,'naming_series:',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-cogs',NULL,NULL,NULL,NULL,1,NULL,NULL),('Production Plan Item','2013-02-22 01:27:49','2013-08-08 12:12:27','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Manufacturing',NULL,'PPID/.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Production Plan Sales Order','2013-02-22 01:27:49','2013-07-22 15:26:23','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Manufacturing',NULL,'PP/.SO/.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Production Planning Tool','2013-01-21 12:03:47','2013-08-08 12:01:02','Administrator','jai@webnotestech.com',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Manufacturing',NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-calendar',NULL,NULL,NULL,'Standard',NULL,NULL,NULL),('Profile','2013-03-07 11:54:44','2013-11-03 11:10:54','Administrator','Administrator',0,NULL,NULL,NULL,1,'first_name, last_name',0,0,NULL,'Core',NULL,NULL,NULL,'Profile Represents a User in the system.',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL,0,0,1,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-user',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Project','2013-03-07 11:55:07','2013-11-06 15:13:55','Administrator','Administrator',0,NULL,NULL,NULL,1,'customer, status, priority, is_active',NULL,NULL,NULL,'Projects',NULL,'field:project_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,1,NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-puzzle-piece',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Project Milestone','2013-02-22 01:27:50','2013-07-10 14:54:12','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Projects',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Property Setter','2013-01-10 16:34:04','2013-07-05 14:51:46','Administrator','Administrator',0,NULL,NULL,NULL,1,'doc_name,property',NULL,NULL,NULL,'Core',NULL,NULL,NULL,'Property Setter overrides a standard DocType or Field property',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-glass',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Purchase Common','2012-03-27 14:35:51','2013-07-10 14:54:12','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Buying',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Purchase Invoice','2013-05-21 16:16:39','2013-11-05 23:09:38','Administrator','Administrator',0,NULL,NULL,NULL,1,'posting_date, credit_to, fiscal_year, bill_no, grand_total, outstanding_amount',NULL,NULL,NULL,'Accounts',NULL,'naming_series:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'icon-file-text',NULL,NULL,NULL,NULL,1,NULL,NULL),('Purchase Invoice Advance','2013-03-08 15:36:46','2013-07-10 14:54:12','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Accounts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Purchase Invoice Item','2013-05-22 12:43:10','2013-11-02 19:41:17','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Accounts',NULL,'EVD.######',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Purchase Order','2013-05-21 16:16:39','2013-11-05 23:09:58','Administrator','Administrator',0,NULL,NULL,NULL,1,'status, transaction_date, supplier,grand_total',NULL,NULL,NULL,'Buying',NULL,'naming_series:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'Transaction','icon-file-text',NULL,NULL,NULL,NULL,1,NULL,NULL),('Purchase Order Item','2013-05-24 19:29:06','2013-11-02 19:41:27','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Buying',NULL,'POD/.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Purchase Order Item Supplied','2013-02-22 01:27:42','2013-07-25 16:33:05','Administrator','dhanalekshmi@webnotestech.com',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Buying',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Purchase Receipt','2013-05-21 16:16:39','2013-11-03 14:20:21','Administrator','Administrator',0,NULL,NULL,NULL,1,'status, posting_date, supplier',NULL,NULL,NULL,'Stock',NULL,'naming_series:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'Transaction','icon-truck',NULL,NULL,NULL,NULL,1,NULL,NULL),('Purchase Receipt Item','2013-05-24 19:29:10','2013-11-02 19:41:45','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Stock',NULL,'GRND/.#######',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Purchase Receipt Item Supplied','2013-02-22 01:27:42','2013-07-25 16:34:11','Administrator','wasim@webnotestech.com',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Buying',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Purchase Taxes and Charges','2013-05-21 16:16:04','2013-07-10 14:54:18','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Accounts',NULL,'PVTD.######',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Purchase Taxes and Charges Master','2013-01-10 16:34:08','2013-07-22 15:22:25','Administrator','wasim@webnotestech.com',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Accounts',NULL,'field:title',NULL,'Standard tax template that can be applied to all Purchase Transactions. This template can contain list of tax heads and also other expense heads like \"Shipping\", \"Insurance\", \"Handling\" etc.\n\n#### Note\n\nThe tax rate you define here will be the standard tax rate for all **Items**. If there are **Items** that have different rates, they must be added in the **Item Tax** table in the **Item** master.\n\n#### Description of Columns\n\n1. Calculation Type: \n    - This can be on **Net Total** (that is the sum of basic amount).\n    - **On Previous Row Total / Amount** (for cumulative taxes or charges). If you select this option, the tax will be applied as a percentage of the previous row (in the tax table) amount or total.\n    - **Actual** (as mentioned).\n2. Account Head: The Account ledger under which this tax will be booked\n3. Cost Center: If the tax / charge is an income (like shipping) or expense it needs to be booked against a Cost Center.\n4. Description: Description of the tax (that will be printed in invoices / quotes).\n5. Rate: Tax rate.\n6. Amount: Tax amount.\n7. Total: Cumulative total to this point.\n8. Enter Row: If based on \"Previous Row Total\" you can select the row number which will be taken as a base for this calculation (default is the previous row).\n9. Consider Tax or Charge for: In this section you can specify if the tax / charge is only for valuation (not a part of total) or only for total (does not add value to the item) or for both.\n10. Add or Deduct: Whether you want to add or deduct the tax.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-money',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Quality Inspection','2013-04-30 13:13:03','2013-11-02 14:05:38','Administrator','Administrator',0,NULL,NULL,NULL,1,'item_code, report_date, purchase_receipt_no, delivery_note_no',NULL,NULL,NULL,'Buying',NULL,'naming_series:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-search',NULL,NULL,NULL,NULL,1,NULL,NULL),('Quality Inspection Reading','2013-02-22 01:27:43','2013-07-10 14:54:18','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Buying',NULL,'QASD/.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Quotation','2013-05-24 19:29:08','2013-11-03 14:20:15','Administrator','Administrator',0,NULL,NULL,NULL,1,'status,transaction_date,customer,lead,order_type',NULL,NULL,NULL,'Selling',NULL,'naming_series:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,0,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'Transaction','icon-shopping-cart',NULL,NULL,NULL,NULL,1,NULL,NULL),('Quotation Item','2013-03-07 11:42:57','2013-11-02 19:41:32','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Selling',NULL,'QUOD/.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Quotation Lost Reason','2013-01-10 16:34:24','2013-07-22 15:29:22','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Setup',NULL,'field:order_lost_reason',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-flag',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Rename Tool','2012-12-03 10:25:59','2013-07-05 14:52:51','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Utilities',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,1,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-magic',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Report','2013-03-09 15:45:57','2013-08-13 19:31:25','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Core',NULL,'field:report_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'System','icon-table',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Role','2013-01-08 15:50:01','2013-07-05 14:53:26','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,0,NULL,'Core',NULL,'field:role_name',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-bookmark',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Salary Manager','2012-03-27 14:35:59','2013-07-22 15:22:58','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'HR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Other','icon-cog',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Salary Slip','2013-01-10 16:34:15','2013-08-02 19:23:13','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'HR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-file-text',NULL,NULL,NULL,NULL,1,NULL,NULL),('Salary Slip Deduction','2013-02-22 01:27:48','2013-07-22 15:27:44','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'HR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Salary Slip Earning','2013-02-22 01:27:48','2013-07-22 15:27:56','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'HR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Salary Structure','2013-03-07 18:50:29','2013-08-06 17:15:53','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'HR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-file-text',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Salary Structure Deduction','2013-02-22 01:27:48','2013-08-06 17:11:40','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'HR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Salary Structure Earning','2013-02-22 01:27:48','2013-08-06 17:11:31','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'HR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Sales BOM','2013-06-20 11:53:21','2013-07-05 14:54:08','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Selling',NULL,NULL,NULL,'Aggregate group of **Items** into another **Item**. This is useful if you are bundling a certain **Items** into a package and you maintain stock of the packed **Items** and not the aggregate **Item**. \n\nThe package **Item** will have \"Is Stock Item\" as \"No\" and \"Is Sales Item\" as \"Yes\".\n\nFor Example: If you are selling Laptops and Backpacks separately and have a special price if the customer buys both, then the Laptop + Backpack will be a new Sales BOM Item.\n\nNote: BOM = Bill of Materials',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-sitemap',NULL,NULL,NULL,NULL,0,NULL,NULL),('Sales BOM Item','2013-05-23 16:55:51','2013-09-09 15:47:56','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Selling',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Sales Email Settings','2013-01-16 10:25:26','2013-07-05 14:54:14','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Setup',NULL,NULL,NULL,'Email settings to extract Leads from sales email id e.g. \"sales@example.com\"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-cog',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Sales Invoice','2013-05-24 19:29:05','2013-11-18 15:16:50','Administrator','Administrator',0,NULL,NULL,NULL,1,'posting_date, due_date, debit_to, fiscal_year, grand_total, outstanding_amount',NULL,NULL,NULL,'Accounts',NULL,'naming_series:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'Transaction','icon-file-text',NULL,NULL,NULL,'Standard',1,NULL,NULL),('Sales Invoice Advance','2013-02-22 01:27:41','2013-07-10 14:54:19','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Accounts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Sales Invoice Item','2013-06-04 11:02:19','2013-11-02 19:41:24','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Accounts',NULL,'INVD.######',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Sales Order','2013-06-18 12:39:59','2013-11-03 14:20:16','Administrator','Administrator',0,NULL,NULL,NULL,1,'status,transaction_date,customer,customer_name, territory,order_type,company',0,NULL,NULL,'Selling',NULL,'naming_series:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'Transaction','icon-file-text',NULL,NULL,NULL,NULL,1,NULL,NULL),('Sales Order Item','2013-03-07 11:42:58','2013-11-03 14:14:17','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Selling',NULL,'SOD/.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Sales Partner','2013-04-12 15:34:06','2013-11-02 16:59:04','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Setup',NULL,'field:partner_name',NULL,'A third party distributor / dealer / commission agent / affiliate / reseller who sells the companies products for a commission.',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-user',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Sales Person','2013-01-10 16:34:24','2013-09-10 10:53:28','Administrator','Administrator',0,NULL,NULL,NULL,1,'name,parent_sales_person',NULL,NULL,NULL,'Setup',NULL,'field:sales_person_name',NULL,'All Sales Transactions can be tagged against multiple **Sales Persons** so that you can set and monitor targets.',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-user',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Sales Taxes and Charges','2013-04-24 11:39:32','2013-07-10 14:54:21','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Accounts',NULL,'INVTD.######',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Sales Taxes and Charges Master','2013-01-10 16:34:09','2013-10-31 19:25:09','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Accounts',NULL,'field:title',NULL,'Standard tax template that can be applied to all Sales Transactions. This template can contain list of tax heads and also other expense / income heads like \"Shipping\", \"Insurance\", \"Handling\" etc.\n\n#### Note\n\nThe tax rate you define here will be the standard tax rate for all **Items**. If there are **Items** that have different rates, they must be added in the **Item Tax** table in the **Item** master.\n\n#### Description of Columns\n\n1. Calculation Type: \n    - This can be on **Net Total** (that is the sum of basic amount).\n    - **On Previous Row Total / Amount** (for cumulative taxes or charges). If you select this option, the tax will be applied as a percentage of the previous row (in the tax table) amount or total.\n    - **Actual** (as mentioned).\n2. Account Head: The Account ledger under which this tax will be booked\n3. Cost Center: If the tax / charge is an income (like shipping) or expense it needs to be booked against a Cost Center.\n4. Description: Description of the tax (that will be printed in invoices / quotes).\n5. Rate: Tax rate.\n6. Amount: Tax amount.\n7. Total: Cumulative total to this point.\n8. Enter Row: If based on \"Previous Row Total\" you can select the row number which will be taken as a base for this calculation (default is the previous row).\n9. Is this Tax included in Basic Rate?: If you check this, it means that this tax will not be shown below the item table, but will be included in the Basic Rate in your main item table. This is useful where you want give a flat price (inclusive of all taxes) price to customers.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-money',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Sales Team','2013-04-19 13:30:51','2013-07-10 14:54:22','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Selling',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Scheduler Log','2013-01-16 13:09:40','2013-07-05 14:54:45','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Core',NULL,'SCHLOG.#####',NULL,'Log of Scheduler Errors',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'System','icon-warning-sign',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Selling Settings','2013-06-25 10:25:16','2013-11-02 16:58:56','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Selling',NULL,NULL,NULL,'Settings for Selling Module',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Other','icon-cog',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Serial No','2013-05-16 10:59:15','2013-11-02 19:41:52','Administrator','Administrator',0,NULL,NULL,NULL,1,'item_code,status',NULL,NULL,NULL,'Stock',NULL,'field:serial_no',NULL,'Distinct unit of an Item',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-barcode',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Shipping Rule','2013-06-25 11:48:03','2013-10-31 19:24:50','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Accounts',NULL,'Prompt',NULL,'Specify conditions to calculate shipping amount',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-truck',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Shipping Rule Condition','2013-06-25 11:54:50','2013-07-10 14:54:22','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Accounts',NULL,NULL,NULL,'A condition for a Shipping Rule',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Shopping Cart Price List','2013-06-20 16:00:18','2013-08-09 14:47:15','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Selling',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Shopping Cart Settings','2013-06-19 15:57:32','2013-11-02 16:58:56','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Selling',NULL,NULL,NULL,'Default settings for Shopping Cart',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-shopping-cart',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Shopping Cart Shipping Rule','2013-07-03 13:15:34','2013-07-10 14:54:25','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Selling',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Shopping Cart Taxes and Charges Master','2013-06-20 16:57:03','2013-07-10 14:54:25','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Selling',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('SMS Center','2013-01-10 16:34:22','2013-07-05 14:55:36','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Selling',NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-mobile-phone',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('SMS Control','2013-01-10 16:34:32','2013-07-05 14:55:40','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Utilities',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-mobile-phone',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('SMS Log','2012-03-27 14:36:47','2013-07-05 14:55:45','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Utilities',NULL,'SMSLOG/.########',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-mobile-phone',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('SMS Parameter','2013-02-22 01:27:58','2013-07-10 14:54:23','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Setup',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('SMS Settings','2013-01-10 16:34:24','2013-09-10 17:20:25','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Setup',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-cog',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Stock Entry','2013-04-09 11:43:55','2013-11-03 14:11:42','Administrator','Administrator',0,NULL,NULL,NULL,1,'transfer_date, from_warehouse, to_warehouse, purpose, remarks',0,NULL,NULL,'Stock',NULL,'naming_series:',NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,0,0,0,0,NULL,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'icon-file-text',NULL,NULL,NULL,NULL,1,NULL,NULL),('Stock Entry Detail','2013-03-29 18:22:12','2013-11-08 16:15:44','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Stock',NULL,'MTND/.######',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Stock Ledger Entry','2013-01-29 19:25:42','2013-11-03 14:11:43','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Stock',NULL,'SLE/.########',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Other','icon-list',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Stock Reconciliation','2013-03-28 10:35:31','2013-09-24 15:35:12','Administrator','Administrator',0,NULL,NULL,NULL,1,'posting_date',NULL,NULL,NULL,'Stock',NULL,'SR/.######',NULL,'This tool helps you to update or fix the quantity and valuation of stock in the system. It is typically used to synchronise the system values and what actually exists in your warehouses.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'icon-upload-alt',NULL,NULL,NULL,NULL,1,NULL,NULL),('Stock Settings','2013-06-24 16:37:54','2013-11-02 19:41:56','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Stock',NULL,NULL,NULL,'Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-cog',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Stock UOM Replace Utility','2013-01-10 16:34:30','2013-07-25 17:39:14','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Stock',NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-magic',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Style Settings','2013-03-25 16:01:33','2013-07-05 14:57:01','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Website',NULL,NULL,NULL,'Set your background color, font and image (tiled)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-cog',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Supplier','2013-01-10 16:34:11','2013-11-19 11:31:28','Administrator','Administrator',0,NULL,NULL,NULL,1,'supplier_name,supplier_type',NULL,NULL,NULL,'Buying',NULL,'naming_series:',NULL,'Supplier of Goods or Services.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-user',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Supplier Quotation','2013-05-21 16:16:45','2013-11-03 14:14:12','Administrator','Administrator',0,NULL,NULL,NULL,1,'status, transaction_date, supplier,grand_total',NULL,NULL,NULL,'Buying',NULL,'naming_series:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'Transaction','icon-shopping-cart',NULL,NULL,NULL,NULL,1,NULL,NULL),('Supplier Quotation Item','2013-05-22 12:43:10','2013-11-02 19:41:29','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Buying',NULL,'SQI-.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Supplier Type','2013-01-10 16:34:24','2013-07-05 14:57:16','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Setup',NULL,'field:supplier_type',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-flag',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Support Ticket','2013-02-01 10:36:25','2013-11-02 14:06:26','Administrator','Administrator',0,NULL,NULL,NULL,1,'status,customer,allocated_to,subject,raised_by',NULL,NULL,NULL,'Support',NULL,'naming_series:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-ticket',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Table of Contents','2013-11-11 15:19:27','2013-11-11 17:50:45','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Website',NULL,'TOC-.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Other',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Tag','2012-07-09 11:17:17','2013-07-05 14:57:22','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Core',NULL,'field:tag_name','Title Case',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-tag',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Target Detail','2013-02-22 01:27:58','2013-11-02 19:41:37','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Setup',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Task','2013-01-29 19:25:50','2013-10-02 14:25:00','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Projects',NULL,'TASK.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,1,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-check',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Terms and Conditions','2013-01-10 16:34:24','2013-07-05 14:58:02','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Setup',NULL,'field:title',NULL,'Standard Terms and Conditions that can be added to Sales and Purchases.\n\nExamples:\n\n1. Validity of the offer.\n1. Payment Terms (In Advance, On Credit, part advance etc).\n1. What is extra (or payable by the Customer).\n1. Safety / usage warning.\n1. Warranty if any.\n1. Returns Policy.\n1. Terms of shipping, if applicable.\n1. Ways of addressing disputes, indemnity, liability, etc.\n1. Address and Contact of your Company.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-legal',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Territory','2013-01-10 16:34:24','2013-11-02 16:59:08','Administrator','Administrator',0,NULL,NULL,NULL,1,'name,parent_territory,territory_manager',NULL,NULL,NULL,'Setup',NULL,'field:territory_name','Title Case','Classification of Customers by region',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-map-marker',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Time Log','2013-04-03 16:38:41','2013-11-02 14:05:45','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Projects',NULL,'naming_series:',NULL,'Log of Activities performed by users against Tasks that can be used for tracking time, billing.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-time',NULL,NULL,NULL,NULL,1,NULL,NULL),('Time Log Batch','2013-02-28 17:57:33','2013-11-02 14:05:45','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Projects',NULL,'naming_series:',NULL,'Batch Time Logs for Billing.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Transaction','icon-time',NULL,NULL,NULL,NULL,1,NULL,NULL),('Time Log Batch Detail','2013-03-05 09:11:06','2013-07-10 14:54:25','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Projects',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('ToDo','2012-07-03 13:30:35','2013-07-05 14:58:26','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,NULL,NULL,'Core',NULL,'TDI.########',NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,0,0,0,0,NULL,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'icon-check',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Top Bar Item','2013-02-22 01:28:08','2013-10-10 15:09:57','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('UOM','2013-01-10 16:34:24','2013-10-10 15:06:53','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Setup',NULL,'field:uom_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-compass',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('UOM Conversion Detail','2013-02-22 01:28:04','2013-07-22 17:17:53','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Stock',NULL,'UCDD/.#####',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Upload Attendance','2013-01-25 11:34:53','2013-07-05 15:02:09','Administrator','harshada@webnotestech.com',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'HR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-upload-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('UserRole','2013-02-06 11:30:13','2013-07-10 14:54:25','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,1,NULL,'Core',NULL,'UR.#####',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Warehouse','2013-03-07 18:50:32','2013-10-28 16:42:07','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Stock',NULL,NULL,NULL,'A logical Warehouse against which stock entries are made.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-building',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Warehouse User','2013-02-22 01:28:05','2013-07-10 14:54:25','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Stock',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Other',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Web Page','2013-03-28 10:35:30','2013-11-13 15:30:25','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Website',NULL,NULL,NULL,'Page to show on the website\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Transaction','icon-file-alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Website Item Group','2013-02-22 01:28:09','2013-11-02 19:41:38','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Setup',NULL,NULL,NULL,'Cross Listing of Item in multiple groups',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Other',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Website Script','2012-12-27 11:51:24','2013-07-05 15:02:48','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Website',NULL,NULL,NULL,'Script to attach to all web pages.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Other','icon-code',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Website Settings','2013-04-30 12:58:46','2013-07-10 20:37:38','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,NULL,NULL,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Other','icon-cog',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Website Sitemap','2013-11-18 15:38:40','2013-11-18 18:37:30','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Website',NULL,'field:page_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Website Sitemap Config','2013-11-18 15:35:00','2013-11-19 11:37:52','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Website',NULL,'field:link_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'System',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Website Slideshow','2013-03-07 15:53:15','2013-07-05 15:03:30','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Website',NULL,'field:slideshow_name',NULL,'Slideshow like display for the website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Transaction','icon-play',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Website Slideshow Item','2013-03-07 12:26:33','2013-07-10 14:54:25','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Workflow','2012-12-28 10:49:55','2013-07-05 15:03:50','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Core',NULL,'field:workflow_name',NULL,'Defines workflow states and rules for a document.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Transaction','icon-random',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Workflow Action','2012-12-28 10:49:56','2013-07-05 15:03:56','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Core',NULL,'field:workflow_action_name',NULL,'Workflow Action Master',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'icon-flag',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Workflow Document State','2013-02-22 01:27:36','2013-07-10 14:54:25','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Core',NULL,NULL,NULL,'Represents the states allowed in one document and role assigned to change the state.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Workflow State','2012-12-28 10:49:56','2013-10-28 15:43:16','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Core',NULL,'field:workflow_state_name',NULL,'Workflow state represents the current state of a document.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-flag',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Workflow Transition','2013-02-22 01:27:36','2013-07-10 14:54:25','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,1,NULL,'Core',NULL,NULL,NULL,'Defines actions on states and the next step and allowed roles.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Workstation','2013-01-10 16:34:17','2013-10-28 15:42:38','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'Manufacturing',NULL,'field:workstation_name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Master','icon-wrench',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tabDocType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEarning Type`
--

DROP TABLE IF EXISTS `tabEarning Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEarning Type` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `taxable` varchar(180) DEFAULT NULL,
  `earning_name` varchar(180) DEFAULT NULL,
  `trash_reason` text,
  `exemption_limit` decimal(18,6) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEarning Type`
--

LOCK TABLES `tabEarning Type` WRITE;
/*!40000 ALTER TABLE `tabEarning Type` DISABLE KEYS */;
INSERT INTO `tabEarning Type` VALUES ('Basic','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Yes','Basic',NULL,NULL,'Basic'),('House Rent Allowance','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'No','House Rent Allowance',NULL,NULL,'House Rent Allowance');
/*!40000 ALTER TABLE `tabEarning Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmail Digest`
--

DROP TABLE IF EXISTS `tabEmail Digest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmail Digest` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `new_sales_orders` int(1) DEFAULT NULL,
  `new_support_tickets` int(1) DEFAULT NULL,
  `calendar_events` int(1) DEFAULT NULL,
  `enabled` int(1) DEFAULT NULL,
  `new_stock_entries` int(1) DEFAULT NULL,
  `frequency` varchar(180) DEFAULT NULL,
  `new_quotations` int(1) DEFAULT NULL,
  `new_delivery_notes` int(1) DEFAULT NULL,
  `expenses_booked` int(1) DEFAULT NULL,
  `next_send` varchar(180) DEFAULT NULL,
  `collections` int(1) DEFAULT NULL,
  `income` int(1) DEFAULT NULL,
  `new_communications` int(1) DEFAULT NULL,
  `new_purchase_receipts` int(1) DEFAULT NULL,
  `income_year_to_date` int(1) DEFAULT NULL,
  `recipient_list` text,
  `invoiced_amount` int(1) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `bank_balance` int(1) DEFAULT NULL,
  `new_purchase_requests` int(1) DEFAULT NULL,
  `open_tickets` int(1) DEFAULT NULL,
  `new_enquiries` int(1) DEFAULT NULL,
  `new_projects` int(1) DEFAULT NULL,
  `new_supplier_quotations` int(1) DEFAULT NULL,
  `new_leads` int(1) DEFAULT NULL,
  `todo_list` int(1) DEFAULT NULL,
  `payments` int(1) DEFAULT NULL,
  `payables` int(1) DEFAULT NULL,
  `new_purchase_orders` int(1) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmail Digest`
--

LOCK TABLES `tabEmail Digest` WRITE;
/*!40000 ALTER TABLE `tabEmail Digest` DISABLE KEYS */;
INSERT INTO `tabEmail Digest` VALUES ('Default Weekly Digest - Pinnacle Foods Limited','2014-03-25 08:13:43','2014-03-25 08:13:43','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,1,1,1,1,'Weekly',1,1,1,NULL,1,1,1,1,1,'cswaroop@gmail.com',1,'Pinnacle Foods Limited',1,1,1,1,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `tabEmail Digest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmployee`
--

DROP TABLE IF EXISTS `tabEmployee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmployee` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `feedback` text,
  `holiday_list` varchar(180) DEFAULT NULL,
  `relation` varchar(180) DEFAULT NULL,
  `company_email` varchar(180) DEFAULT NULL,
  `resignation_letter_date` date DEFAULT NULL,
  `personal_email` varchar(180) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `employee` varchar(180) DEFAULT NULL,
  `current_address` text,
  `bio` text,
  `family_background` text,
  `designation` varchar(180) DEFAULT NULL,
  `gender` varchar(180) DEFAULT NULL,
  `marital_status` varchar(180) DEFAULT NULL,
  `health_details` text,
  `status` varchar(180) DEFAULT 'Active',
  `held_on` date DEFAULT NULL,
  `permanent_accommodation_type` varchar(180) DEFAULT NULL,
  `pf_number` varchar(180) DEFAULT NULL,
  `salutation` varchar(180) DEFAULT NULL,
  `pan_number` varchar(180) DEFAULT NULL,
  `trash_reason` text,
  `employee_number` varchar(180) DEFAULT NULL,
  `employee_name` varchar(180) DEFAULT NULL,
  `date_of_retirement` date DEFAULT NULL,
  `grade` varchar(180) DEFAULT NULL,
  `image` varchar(180) DEFAULT NULL,
  `user_id` varchar(180) DEFAULT NULL,
  `encashment_date` date DEFAULT NULL,
  `blood_group` varchar(180) DEFAULT NULL,
  `date_of_issue` date DEFAULT NULL,
  `reason_for_resignation` varchar(180) DEFAULT NULL,
  `new_workplace` varchar(180) DEFAULT NULL,
  `bank_name` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `leave_encashed` varchar(180) DEFAULT NULL,
  `bank_ac_no` varchar(180) DEFAULT NULL,
  `reason_for_leaving` varchar(180) DEFAULT NULL,
  `final_confirmation_date` date DEFAULT NULL,
  `cell_number` varchar(180) DEFAULT NULL,
  `contract_end_date` date DEFAULT NULL,
  `gratuity_lic_id` varchar(180) DEFAULT NULL,
  `esic_card_no` varchar(180) DEFAULT NULL,
  `scheduled_confirmation_date` date DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `permanent_address` text,
  `passport_number` varchar(180) DEFAULT NULL,
  `emergency_phone_number` varchar(180) DEFAULT NULL,
  `employment_type` varchar(180) DEFAULT NULL,
  `salary_mode` varchar(180) DEFAULT NULL,
  `reports_to` varchar(180) DEFAULT NULL,
  `branch` varchar(180) DEFAULT NULL,
  `current_accommodation_type` varchar(180) DEFAULT NULL,
  `department` varchar(180) DEFAULT NULL,
  `person_to_be_contacted` varchar(180) DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  `place_of_issue` varchar(180) DEFAULT NULL,
  `valid_upto` date DEFAULT NULL,
  `notice_number_of_days` int(11) DEFAULT NULL,
  `relieving_date` date DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `designation` (`designation`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmployee`
--

LOCK TABLES `tabEmployee` WRITE;
/*!40000 ALTER TABLE `tabEmployee` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmployee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmployee Education`
--

DROP TABLE IF EXISTS `tabEmployee Education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmployee Education` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `maj_opt_subj` text,
  `level` varchar(180) DEFAULT NULL,
  `class_per` varchar(180) DEFAULT NULL,
  `qualification` varchar(180) DEFAULT NULL,
  `school_univ` text,
  `year_of_passing` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmployee Education`
--

LOCK TABLES `tabEmployee Education` WRITE;
/*!40000 ALTER TABLE `tabEmployee Education` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmployee Education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmployee External Work History`
--

DROP TABLE IF EXISTS `tabEmployee External Work History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmployee External Work History` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `salary` decimal(18,6) DEFAULT NULL,
  `designation` varchar(180) DEFAULT NULL,
  `contact` varchar(180) DEFAULT NULL,
  `company_name` varchar(180) DEFAULT NULL,
  `address` text,
  `total_experience` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmployee External Work History`
--

LOCK TABLES `tabEmployee External Work History` WRITE;
/*!40000 ALTER TABLE `tabEmployee External Work History` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmployee External Work History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmployee Internal Work History`
--

DROP TABLE IF EXISTS `tabEmployee Internal Work History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmployee Internal Work History` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `designation` varchar(180) DEFAULT NULL,
  `grade` varchar(180) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `branch` varchar(180) DEFAULT NULL,
  `department` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmployee Internal Work History`
--

LOCK TABLES `tabEmployee Internal Work History` WRITE;
/*!40000 ALTER TABLE `tabEmployee Internal Work History` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmployee Internal Work History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmployee Leave Approver`
--

DROP TABLE IF EXISTS `tabEmployee Leave Approver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmployee Leave Approver` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `leave_approver` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmployee Leave Approver`
--

LOCK TABLES `tabEmployee Leave Approver` WRITE;
/*!40000 ALTER TABLE `tabEmployee Leave Approver` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmployee Leave Approver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEmployment Type`
--

DROP TABLE IF EXISTS `tabEmployment Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEmployment Type` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `employee_type_name` varchar(180) DEFAULT NULL,
  `trash_reason` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEmployment Type`
--

LOCK TABLES `tabEmployment Type` WRITE;
/*!40000 ALTER TABLE `tabEmployment Type` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEmployment Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEvent`
--

DROP TABLE IF EXISTS `tabEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEvent` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `event_type` varchar(180) DEFAULT NULL,
  `tuesday` int(1) DEFAULT NULL,
  `all_day` int(1) DEFAULT NULL,
  `repeat_till` date DEFAULT NULL,
  `saturday` int(1) DEFAULT NULL,
  `subject` varchar(180) DEFAULT NULL,
  `repeat_this_event` int(1) DEFAULT NULL,
  `thursday` int(1) DEFAULT NULL,
  `sunday` int(1) DEFAULT NULL,
  `send_reminder` int(1) DEFAULT '1',
  `ref_type` varchar(180) DEFAULT NULL,
  `ref_name` varchar(180) DEFAULT NULL,
  `description` text,
  `monday` int(1) DEFAULT NULL,
  `friday` int(1) DEFAULT NULL,
  `wednesday` int(1) DEFAULT NULL,
  `starts_on` datetime DEFAULT NULL,
  `ends_on` datetime DEFAULT NULL,
  `repeat_on` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `event_type` (`event_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEvent`
--

LOCK TABLES `tabEvent` WRITE;
/*!40000 ALTER TABLE `tabEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEvent Role`
--

DROP TABLE IF EXISTS `tabEvent Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEvent Role` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `role` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEvent Role`
--

LOCK TABLES `tabEvent Role` WRITE;
/*!40000 ALTER TABLE `tabEvent Role` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEvent Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabEvent User`
--

DROP TABLE IF EXISTS `tabEvent User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabEvent User` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `person` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabEvent User`
--

LOCK TABLES `tabEvent User` WRITE;
/*!40000 ALTER TABLE `tabEvent User` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabEvent User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabExpense Claim`
--

DROP TABLE IF EXISTS `tabExpense Claim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabExpense Claim` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `remark` text,
  `approval_status` varchar(180) DEFAULT 'Draft',
  `total_claimed_amount` decimal(18,6) DEFAULT NULL,
  `email_id` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `employee_name` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `exp_approver` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `total_sanctioned_amount` decimal(18,6) DEFAULT NULL,
  `employee` varchar(180) DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabExpense Claim`
--

LOCK TABLES `tabExpense Claim` WRITE;
/*!40000 ALTER TABLE `tabExpense Claim` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabExpense Claim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabExpense Claim Detail`
--

DROP TABLE IF EXISTS `tabExpense Claim Detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabExpense Claim Detail` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `claim_amount` decimal(18,6) DEFAULT NULL,
  `expense_date` date DEFAULT NULL,
  `description` text,
  `sanctioned_amount` decimal(18,6) DEFAULT NULL,
  `expense_type` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabExpense Claim Detail`
--

LOCK TABLES `tabExpense Claim Detail` WRITE;
/*!40000 ALTER TABLE `tabExpense Claim Detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabExpense Claim Detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabExpense Claim Type`
--

DROP TABLE IF EXISTS `tabExpense Claim Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabExpense Claim Type` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `description` text,
  `expense_type` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabExpense Claim Type`
--

LOCK TABLES `tabExpense Claim Type` WRITE;
/*!40000 ALTER TABLE `tabExpense Claim Type` DISABLE KEYS */;
INSERT INTO `tabExpense Claim Type` VALUES ('Calls','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Calls'),('Food','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Food'),('Medical','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Medical'),('Others','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Others'),('Travel','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Travel');
/*!40000 ALTER TABLE `tabExpense Claim Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabFeed`
--

DROP TABLE IF EXISTS `tabFeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabFeed` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `doc_type` varchar(180) DEFAULT NULL,
  `color` varchar(180) DEFAULT NULL,
  `doc_name` varchar(180) DEFAULT NULL,
  `feed_type` varchar(180) DEFAULT NULL,
  `full_name` varchar(180) DEFAULT NULL,
  `subject` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `feed_doctype_docname_index` (`doc_type`,`doc_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabFeed`
--

LOCK TABLES `tabFeed` WRITE;
/*!40000 ALTER TABLE `tabFeed` DISABLE KEYS */;
INSERT INTO `tabFeed` VALUES ('_FEED00001','2013-11-07 16:51:23','2013-11-07 16:51:23','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Profile','#8CA2B3','Administrator','Login','Administrator','Administrator logged in at 16:51'),('_FEED00002','2013-11-07 16:51:38','2013-11-07 16:51:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Profile','#8CA2B3','Administrator','Login','Administrator','Administrator logged in at 16:51'),('_FEED00003','2013-11-22 11:45:13','2013-11-22 11:45:13','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Profile','#8CA2B3','Administrator','Login','Administrator','Administrator logged in at 11:45'),('_FEED00004','2014-03-25 08:11:52','2014-03-25 08:11:52','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Profile','#8CA2B3','Administrator','Login','Administrator','Administrator logged in at 08:11'),('_FEED00006','2014-03-25 08:13:36','2014-03-25 08:13:36','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Web Page','#000080','pinnacle-foods-limited-home',NULL,'Administrator','Pinnacle Foods Limited Home'),('_FEED00007','2014-03-25 08:13:43','2014-03-25 08:13:43','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'ToDo','#6B24B3',NULL,'Comment','Administrator','ERNext Setup Complete!'),('_FEED00008','2014-03-25 08:14:15','2014-03-25 08:14:15','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Profile','#8CA2B3','Administrator','Login','Administrator','Administrator logged in at 08:14');
/*!40000 ALTER TABLE `tabFeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabFile Data`
--

DROP TABLE IF EXISTS `tabFile Data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabFile Data` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `file_name` varchar(180) DEFAULT NULL,
  `file_url` varchar(180) DEFAULT NULL,
  `module` varchar(180) DEFAULT NULL,
  `attached_to_name` varchar(180) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `attached_to_doctype` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `attached_to_name` (`attached_to_name`),
  KEY `attached_to_doctype` (`attached_to_doctype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabFile Data`
--

LOCK TABLES `tabFile Data` WRITE;
/*!40000 ALTER TABLE `tabFile Data` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabFile Data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabFiscal Year`
--

DROP TABLE IF EXISTS `tabFiscal Year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabFiscal Year` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `is_fiscal_year_closed` varchar(180) DEFAULT 'No',
  `year_start_date` date DEFAULT NULL,
  `year` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabFiscal Year`
--

LOCK TABLES `tabFiscal Year` WRITE;
/*!40000 ALTER TABLE `tabFiscal Year` DISABLE KEYS */;
INSERT INTO `tabFiscal Year` VALUES ('2013','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'No','2013-01-01','2013'),('2014','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'No','2014-01-01','2014');
/*!40000 ALTER TABLE `tabFiscal Year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabGL Entry`
--

DROP TABLE IF EXISTS `tabGL Entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabGL Entry` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `account` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `against_voucher` varchar(180) DEFAULT NULL,
  `against_voucher_type` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `is_opening` varchar(180) DEFAULT NULL,
  `aging_date` date DEFAULT NULL,
  `against` text,
  `voucher_type` varchar(180) DEFAULT NULL,
  `credit` decimal(18,6) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `is_advance` varchar(180) DEFAULT NULL,
  `debit` decimal(18,6) DEFAULT NULL,
  `remarks` text,
  `posting_date` date DEFAULT NULL,
  `cost_center` varchar(180) DEFAULT NULL,
  `voucher_no` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `account` (`account`),
  KEY `posting_date` (`posting_date`),
  KEY `voucher_no` (`voucher_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabGL Entry`
--

LOCK TABLES `tabGL Entry` WRITE;
/*!40000 ALTER TABLE `tabGL Entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabGL Entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabGrade`
--

DROP TABLE IF EXISTS `tabGrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabGrade` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `grade_name` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabGrade`
--

LOCK TABLES `tabGrade` WRITE;
/*!40000 ALTER TABLE `tabGrade` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabGrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabHoliday`
--

DROP TABLE IF EXISTS `tabHoliday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabHoliday` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `holiday_date` date DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabHoliday`
--

LOCK TABLES `tabHoliday` WRITE;
/*!40000 ALTER TABLE `tabHoliday` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabHoliday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabHoliday List`
--

DROP TABLE IF EXISTS `tabHoliday List`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabHoliday List` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `trash_reason` text,
  `holiday_list_name` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `is_default` int(1) DEFAULT NULL,
  `weekly_off` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabHoliday List`
--

LOCK TABLES `tabHoliday List` WRITE;
/*!40000 ALTER TABLE `tabHoliday List` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabHoliday List` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabIndustry Type`
--

DROP TABLE IF EXISTS `tabIndustry Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabIndustry Type` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `industry` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabIndustry Type`
--

LOCK TABLES `tabIndustry Type` WRITE;
/*!40000 ALTER TABLE `tabIndustry Type` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabIndustry Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabInstallation Note`
--

DROP TABLE IF EXISTS `tabInstallation Note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabInstallation Note` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `status` varchar(180) DEFAULT 'Draft',
  `inst_date` date DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `customer_name` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `contact_display` text,
  `territory` varchar(180) DEFAULT NULL,
  `address_display` text,
  `company` varchar(180) DEFAULT NULL,
  `customer_address` varchar(180) DEFAULT NULL,
  `contact_email` text,
  `contact_mobile` text,
  `remarks` text,
  `customer` varchar(180) DEFAULT NULL,
  `customer_group` varchar(180) DEFAULT NULL,
  `inst_time` time DEFAULT NULL,
  `contact_person` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `inst_date` (`inst_date`),
  KEY `territory` (`territory`),
  KEY `customer` (`customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabInstallation Note`
--

LOCK TABLES `tabInstallation Note` WRITE;
/*!40000 ALTER TABLE `tabInstallation Note` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabInstallation Note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabInstallation Note Item`
--

DROP TABLE IF EXISTS `tabInstallation Note Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabInstallation Note Item` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `description` varchar(180) DEFAULT NULL,
  `prevdoc_docname` varchar(180) DEFAULT NULL,
  `serial_no` text,
  `item_code` varchar(180) DEFAULT NULL,
  `qty` decimal(18,6) DEFAULT NULL,
  `prevdoc_detail_docname` varchar(180) DEFAULT NULL,
  `prevdoc_doctype` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabInstallation Note Item`
--

LOCK TABLES `tabInstallation Note Item` WRITE;
/*!40000 ALTER TABLE `tabInstallation Note Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabInstallation Note Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabItem`
--

DROP TABLE IF EXISTS `tabItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabItem` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `is_service_item` varchar(180) DEFAULT 'No',
  `default_sales_cost_center` varchar(180) DEFAULT NULL,
  `default_bom` varchar(180) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `image` varchar(180) DEFAULT NULL,
  `valuation_method` varchar(180) DEFAULT NULL,
  `website_image` varchar(180) DEFAULT NULL,
  `weightage` int(11) DEFAULT NULL,
  `net_weight` decimal(18,6) DEFAULT NULL,
  `max_discount` decimal(18,6) DEFAULT NULL,
  `warranty_period` varchar(180) DEFAULT NULL,
  `serial_no_series` varchar(180) DEFAULT NULL,
  `cost_center` varchar(180) DEFAULT NULL,
  `re_order_level` decimal(18,6) DEFAULT NULL,
  `is_asset_item` varchar(180) DEFAULT 'No',
  `last_purchase_rate` decimal(18,6) DEFAULT NULL,
  `purchase_account` varchar(180) DEFAULT NULL,
  `description_html` text,
  `item_name` varchar(180) DEFAULT NULL,
  `show_in_website` int(1) DEFAULT NULL,
  `default_income_account` varchar(180) DEFAULT NULL,
  `end_of_life` date DEFAULT NULL,
  `website_warehouse` varchar(180) DEFAULT NULL,
  `is_sales_item` varchar(180) DEFAULT 'Yes',
  `is_sub_contracted_item` varchar(180) DEFAULT 'No',
  `manufacturer_part_no` varchar(180) DEFAULT NULL,
  `stock_uom` varchar(180) DEFAULT NULL,
  `page_name` varchar(180) DEFAULT NULL,
  `manufacturer` varchar(180) DEFAULT NULL,
  `tolerance` decimal(18,6) DEFAULT NULL,
  `default_supplier` varchar(180) DEFAULT NULL,
  `is_pro_applicable` varchar(180) DEFAULT 'No',
  `is_purchase_item` varchar(180) DEFAULT 'Yes',
  `is_manufactured_item` varchar(180) DEFAULT 'No',
  `description` text,
  `brand` varchar(180) DEFAULT NULL,
  `barcode` varchar(180) DEFAULT NULL,
  `slideshow` varchar(180) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `is_stock_item` varchar(180) DEFAULT 'Yes',
  `inspection_required` varchar(180) DEFAULT 'No',
  `re_order_qty` decimal(18,6) DEFAULT NULL,
  `weight_uom` varchar(180) DEFAULT NULL,
  `default_warehouse` varchar(180) DEFAULT NULL,
  `customer_code` varchar(180) DEFAULT NULL,
  `item_group` varchar(180) DEFAULT NULL,
  `min_order_qty` decimal(18,6) DEFAULT '0.000000',
  `lead_time_days` int(11) DEFAULT NULL,
  `web_long_description` text,
  `has_batch_no` varchar(180) DEFAULT 'No',
  `has_serial_no` varchar(180) DEFAULT 'No',
  `standard_rate` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `weightage` (`weightage`),
  KEY `item_name` (`item_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabItem`
--

LOCK TABLES `tabItem` WRITE;
/*!40000 ALTER TABLE `tabItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabItem Customer Detail`
--

DROP TABLE IF EXISTS `tabItem Customer Detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabItem Customer Detail` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `ref_code` varchar(180) DEFAULT NULL,
  `customer_name` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabItem Customer Detail`
--

LOCK TABLES `tabItem Customer Detail` WRITE;
/*!40000 ALTER TABLE `tabItem Customer Detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabItem Customer Detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabItem Group`
--

DROP TABLE IF EXISTS `tabItem Group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabItem Group` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `description` text,
  `item_group_name` varchar(180) DEFAULT NULL,
  `is_group` varchar(180) DEFAULT NULL,
  `slideshow` varchar(180) DEFAULT NULL,
  `parent_item_group` varchar(180) DEFAULT NULL,
  `old_parent` varchar(180) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `page_name` varchar(180) DEFAULT NULL,
  `show_in_website` int(1) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `rgt` (`rgt`),
  KEY `lft` (`lft`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabItem Group`
--

LOCK TABLES `tabItem Group` WRITE;
/*!40000 ALTER TABLE `tabItem Group` DISABLE KEYS */;
INSERT INTO `tabItem Group` VALUES ('All Item Groups','2013-11-07 11:16:33','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,12,NULL,'All Item Groups','Yes',NULL,NULL,'',1,NULL,NULL),('Consumable','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,11,NULL,'Consumable','No',NULL,'All Item Groups','All Item Groups',10,NULL,NULL),('Products','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,3,NULL,'Products','No',NULL,'All Item Groups','All Item Groups',2,NULL,NULL),('Raw Material','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,5,NULL,'Raw Material','No',NULL,'All Item Groups','All Item Groups',4,NULL,NULL),('Services','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,7,NULL,'Services','No',NULL,'All Item Groups','All Item Groups',6,NULL,NULL),('Sub Assemblies','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,9,NULL,'Sub Assemblies','No',NULL,'All Item Groups','All Item Groups',8,NULL,NULL);
/*!40000 ALTER TABLE `tabItem Group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabItem Price`
--

DROP TABLE IF EXISTS `tabItem Price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabItem Price` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `ref_rate` decimal(18,6) DEFAULT NULL,
  `item_name` varchar(180) DEFAULT NULL,
  `price_list` varchar(180) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `currency` varchar(180) DEFAULT NULL,
  `buying_or_selling` varchar(180) DEFAULT NULL,
  `item_description` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabItem Price`
--

LOCK TABLES `tabItem Price` WRITE;
/*!40000 ALTER TABLE `tabItem Price` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabItem Price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabItem Quality Inspection Parameter`
--

DROP TABLE IF EXISTS `tabItem Quality Inspection Parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabItem Quality Inspection Parameter` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `specification` varchar(180) DEFAULT NULL,
  `value` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabItem Quality Inspection Parameter`
--

LOCK TABLES `tabItem Quality Inspection Parameter` WRITE;
/*!40000 ALTER TABLE `tabItem Quality Inspection Parameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabItem Quality Inspection Parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabItem Reorder`
--

DROP TABLE IF EXISTS `tabItem Reorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabItem Reorder` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `warehouse` varchar(180) DEFAULT NULL,
  `warehouse_reorder_qty` decimal(18,6) DEFAULT NULL,
  `warehouse_reorder_level` decimal(18,6) DEFAULT NULL,
  `material_request_type` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabItem Reorder`
--

LOCK TABLES `tabItem Reorder` WRITE;
/*!40000 ALTER TABLE `tabItem Reorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabItem Reorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabItem Supplier`
--

DROP TABLE IF EXISTS `tabItem Supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabItem Supplier` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `supplier` varchar(180) DEFAULT NULL,
  `supplier_part_no` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabItem Supplier`
--

LOCK TABLES `tabItem Supplier` WRITE;
/*!40000 ALTER TABLE `tabItem Supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabItem Supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabItem Tax`
--

DROP TABLE IF EXISTS `tabItem Tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabItem Tax` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `tax_type` varchar(180) DEFAULT NULL,
  `tax_rate` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabItem Tax`
--

LOCK TABLES `tabItem Tax` WRITE;
/*!40000 ALTER TABLE `tabItem Tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabItem Tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabItem Website Specification`
--

DROP TABLE IF EXISTS `tabItem Website Specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabItem Website Specification` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `description` text,
  `label` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabItem Website Specification`
--

LOCK TABLES `tabItem Website Specification` WRITE;
/*!40000 ALTER TABLE `tabItem Website Specification` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabItem Website Specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabJob Applicant`
--

DROP TABLE IF EXISTS `tabJob Applicant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabJob Applicant` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `status` varchar(180) DEFAULT NULL,
  `email_id` varchar(180) DEFAULT NULL,
  `job_opening` varchar(180) DEFAULT NULL,
  `applicant_name` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabJob Applicant`
--

LOCK TABLES `tabJob Applicant` WRITE;
/*!40000 ALTER TABLE `tabJob Applicant` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabJob Applicant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabJob Opening`
--

DROP TABLE IF EXISTS `tabJob Opening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabJob Opening` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `status` varchar(180) DEFAULT NULL,
  `description` text,
  `job_title` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabJob Opening`
--

LOCK TABLES `tabJob Opening` WRITE;
/*!40000 ALTER TABLE `tabJob Opening` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabJob Opening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabJournal Voucher`
--

DROP TABLE IF EXISTS `tabJournal Voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabJournal Voucher` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `clearance_date` date DEFAULT NULL,
  `voucher_type` varchar(180) DEFAULT NULL,
  `letter_head` varchar(180) DEFAULT NULL,
  `cheque_no` varchar(180) DEFAULT NULL,
  `bill_no` varchar(180) DEFAULT NULL,
  `difference` decimal(18,6) DEFAULT NULL,
  `write_off_amount` decimal(18,6) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `cheque_date` date DEFAULT NULL,
  `total_amount_in_words` varchar(180) DEFAULT NULL,
  `aging_date` date DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `total_credit` decimal(18,6) DEFAULT NULL,
  `user_remark` text,
  `pay_to_recd_from` varchar(180) DEFAULT NULL,
  `remark` text,
  `total_amount` varchar(180) DEFAULT NULL,
  `write_off_based_on` varchar(180) DEFAULT 'Accounts Receivable',
  `select_print_heading` varchar(180) DEFAULT NULL,
  `total_debit` decimal(18,6) DEFAULT NULL,
  `is_opening` varchar(180) DEFAULT 'No',
  `posting_date` date DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `clearance_date` (`clearance_date`),
  KEY `voucher_type` (`voucher_type`),
  KEY `cheque_no` (`cheque_no`),
  KEY `company` (`company`),
  KEY `fiscal_year` (`fiscal_year`),
  KEY `is_opening` (`is_opening`),
  KEY `posting_date` (`posting_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabJournal Voucher`
--

LOCK TABLES `tabJournal Voucher` WRITE;
/*!40000 ALTER TABLE `tabJournal Voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabJournal Voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabJournal Voucher Detail`
--

DROP TABLE IF EXISTS `tabJournal Voucher Detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabJournal Voucher Detail` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `account` varchar(180) DEFAULT NULL,
  `against_voucher` varchar(180) DEFAULT NULL,
  `against_jv` varchar(180) DEFAULT NULL,
  `credit` decimal(18,6) DEFAULT NULL,
  `against_invoice` varchar(180) DEFAULT NULL,
  `is_advance` varchar(180) DEFAULT NULL,
  `debit` decimal(18,6) DEFAULT NULL,
  `cost_center` varchar(180) DEFAULT NULL,
  `balance` decimal(18,6) DEFAULT NULL,
  `against_account` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabJournal Voucher Detail`
--

LOCK TABLES `tabJournal Voucher Detail` WRITE;
/*!40000 ALTER TABLE `tabJournal Voucher Detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabJournal Voucher Detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabLanded Cost Item`
--

DROP TABLE IF EXISTS `tabLanded Cost Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabLanded Cost Item` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `amount` decimal(18,6) DEFAULT NULL,
  `account_head` varchar(180) DEFAULT NULL,
  `cost_center` varchar(180) DEFAULT NULL,
  `description` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabLanded Cost Item`
--

LOCK TABLES `tabLanded Cost Item` WRITE;
/*!40000 ALTER TABLE `tabLanded Cost Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabLanded Cost Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabLanded Cost Purchase Receipt`
--

DROP TABLE IF EXISTS `tabLanded Cost Purchase Receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabLanded Cost Purchase Receipt` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `purchase_receipt` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabLanded Cost Purchase Receipt`
--

LOCK TABLES `tabLanded Cost Purchase Receipt` WRITE;
/*!40000 ALTER TABLE `tabLanded Cost Purchase Receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabLanded Cost Purchase Receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabLead`
--

DROP TABLE IF EXISTS `tabLead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabLead` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `website` varchar(180) DEFAULT NULL,
  `email_id` varchar(180) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `mobile_no` varchar(180) DEFAULT NULL,
  `lead_name` varchar(180) DEFAULT NULL,
  `campaign_name` varchar(180) DEFAULT NULL,
  `source` varchar(180) DEFAULT NULL,
  `contact_by` varchar(180) DEFAULT NULL,
  `company_name` varchar(180) DEFAULT NULL,
  `territory` varchar(180) DEFAULT NULL,
  `type` varchar(180) DEFAULT NULL,
  `status` varchar(180) DEFAULT 'Lead',
  `fax` varchar(180) DEFAULT NULL,
  `unsubscribed` int(1) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `market_segment` varchar(180) DEFAULT NULL,
  `blog_subscriber` int(1) DEFAULT NULL,
  `lead_owner` varchar(180) DEFAULT NULL,
  `phone` varchar(180) DEFAULT NULL,
  `request_type` varchar(180) DEFAULT NULL,
  `customer` varchar(180) DEFAULT NULL,
  `remark` text,
  `industry` varchar(180) DEFAULT NULL,
  `contact_date` date DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `email_id` (`email_id`),
  KEY `lead_name` (`lead_name`),
  KEY `status` (`status`),
  KEY `lead_owner` (`lead_owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabLead`
--

LOCK TABLES `tabLead` WRITE;
/*!40000 ALTER TABLE `tabLead` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabLead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabLeave Allocation`
--

DROP TABLE IF EXISTS `tabLeave Allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabLeave Allocation` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `description` text,
  `new_leaves_allocated` decimal(18,6) DEFAULT NULL,
  `carry_forwarded_leaves` decimal(18,6) DEFAULT NULL,
  `carry_forward` int(1) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `total_leaves_allocated` decimal(18,6) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `leave_type` varchar(180) DEFAULT NULL,
  `employee_name` varchar(180) DEFAULT NULL,
  `employee` varchar(180) DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabLeave Allocation`
--

LOCK TABLES `tabLeave Allocation` WRITE;
/*!40000 ALTER TABLE `tabLeave Allocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabLeave Allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabLeave Application`
--

DROP TABLE IF EXISTS `tabLeave Application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabLeave Application` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `status` varchar(180) DEFAULT 'Open',
  `letter_head` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `description` text,
  `leave_balance` decimal(18,6) DEFAULT NULL,
  `follow_via_email` int(1) DEFAULT '1',
  `from_date` date DEFAULT NULL,
  `leave_approver` varchar(180) DEFAULT NULL,
  `employee` varchar(180) DEFAULT NULL,
  `leave_type` varchar(180) DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `employee_name` varchar(180) DEFAULT NULL,
  `half_day` int(1) DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `total_leave_days` decimal(18,6) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabLeave Application`
--

LOCK TABLES `tabLeave Application` WRITE;
/*!40000 ALTER TABLE `tabLeave Application` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabLeave Application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabLeave Block List`
--

DROP TABLE IF EXISTS `tabLeave Block List`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabLeave Block List` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `applies_to_all_departments` int(1) DEFAULT NULL,
  `leave_block_list_name` varchar(180) DEFAULT NULL,
  `year` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabLeave Block List`
--

LOCK TABLES `tabLeave Block List` WRITE;
/*!40000 ALTER TABLE `tabLeave Block List` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabLeave Block List` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabLeave Block List Allow`
--

DROP TABLE IF EXISTS `tabLeave Block List Allow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabLeave Block List Allow` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `allow_user` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabLeave Block List Allow`
--

LOCK TABLES `tabLeave Block List Allow` WRITE;
/*!40000 ALTER TABLE `tabLeave Block List Allow` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabLeave Block List Allow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabLeave Block List Date`
--

DROP TABLE IF EXISTS `tabLeave Block List Date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabLeave Block List Date` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `block_date` date DEFAULT NULL,
  `reason` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabLeave Block List Date`
--

LOCK TABLES `tabLeave Block List Date` WRITE;
/*!40000 ALTER TABLE `tabLeave Block List Date` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabLeave Block List Date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabLeave Type`
--

DROP TABLE IF EXISTS `tabLeave Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabLeave Type` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `is_lwp` int(1) DEFAULT NULL,
  `trash_reason` text,
  `is_encash` int(1) DEFAULT NULL,
  `allow_negative` int(1) DEFAULT NULL,
  `max_days_allowed` varchar(180) DEFAULT NULL,
  `is_carry_forward` int(1) DEFAULT NULL,
  `leave_type_name` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabLeave Type`
--

LOCK TABLES `tabLeave Type` WRITE;
/*!40000 ALTER TABLE `tabLeave Type` DISABLE KEYS */;
INSERT INTO `tabLeave Type` VALUES ('Casual Leave','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'3',1,'Casual Leave'),('Compensatory Off','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,'Compensatory Off'),('Leave Without Pay','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,1,NULL,0,NULL,NULL,0,'Leave Without Pay'),('Privilege Leave','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,'Privilege Leave'),('Sick Leave','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,'Sick Leave');
/*!40000 ALTER TABLE `tabLeave Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabLetter Head`
--

DROP TABLE IF EXISTS `tabLetter Head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabLetter Head` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `disabled` int(1) DEFAULT NULL,
  `is_default` int(1) DEFAULT NULL,
  `content` text,
  `letter_head_name` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabLetter Head`
--

LOCK TABLES `tabLetter Head` WRITE;
/*!40000 ALTER TABLE `tabLetter Head` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabLetter Head` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabMaintenance Schedule`
--

DROP TABLE IF EXISTS `tabMaintenance Schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabMaintenance Schedule` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `status` varchar(180) DEFAULT 'Draft',
  `customer_name` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `contact_display` text,
  `territory` varchar(180) DEFAULT NULL,
  `address_display` text,
  `company` varchar(180) DEFAULT NULL,
  `customer_address` varchar(180) DEFAULT NULL,
  `contact_email` varchar(180) DEFAULT NULL,
  `contact_mobile` varchar(180) DEFAULT NULL,
  `customer` varchar(180) DEFAULT NULL,
  `customer_group` varchar(180) DEFAULT NULL,
  `contact_person` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `customer` (`customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabMaintenance Schedule`
--

LOCK TABLES `tabMaintenance Schedule` WRITE;
/*!40000 ALTER TABLE `tabMaintenance Schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabMaintenance Schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabMaintenance Schedule Detail`
--

DROP TABLE IF EXISTS `tabMaintenance Schedule Detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabMaintenance Schedule Detail` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `item_name` varchar(180) DEFAULT NULL,
  `serial_no` text,
  `item_code` varchar(180) DEFAULT NULL,
  `scheduled_date` date DEFAULT NULL,
  `incharge_name` varchar(180) DEFAULT NULL,
  `actual_date` date DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabMaintenance Schedule Detail`
--

LOCK TABLES `tabMaintenance Schedule Detail` WRITE;
/*!40000 ALTER TABLE `tabMaintenance Schedule Detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabMaintenance Schedule Detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabMaintenance Schedule Item`
--

DROP TABLE IF EXISTS `tabMaintenance Schedule Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabMaintenance Schedule Item` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `description` varchar(180) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `item_name` varchar(180) DEFAULT NULL,
  `serial_no` text,
  `prevdoc_docname` varchar(180) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `no_of_visits` int(11) DEFAULT NULL,
  `incharge_name` varchar(180) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `periodicity` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabMaintenance Schedule Item`
--

LOCK TABLES `tabMaintenance Schedule Item` WRITE;
/*!40000 ALTER TABLE `tabMaintenance Schedule Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabMaintenance Schedule Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabMaintenance Visit`
--

DROP TABLE IF EXISTS `tabMaintenance Visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabMaintenance Visit` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `maintenance_type` varchar(180) DEFAULT 'Unscheduled',
  `fiscal_year` varchar(180) DEFAULT NULL,
  `customer_name` varchar(180) DEFAULT NULL,
  `completion_status` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `contact_display` text,
  `territory` varchar(180) DEFAULT NULL,
  `address_display` text,
  `mntc_date` date DEFAULT NULL,
  `customer_feedback` text,
  `company` varchar(180) DEFAULT NULL,
  `customer_address` varchar(180) DEFAULT NULL,
  `mntc_time` time DEFAULT NULL,
  `contact_email` varchar(180) DEFAULT NULL,
  `contact_mobile` varchar(180) DEFAULT NULL,
  `customer` varchar(180) DEFAULT NULL,
  `customer_group` varchar(180) DEFAULT NULL,
  `status` varchar(180) DEFAULT 'Draft',
  `contact_person` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabMaintenance Visit`
--

LOCK TABLES `tabMaintenance Visit` WRITE;
/*!40000 ALTER TABLE `tabMaintenance Visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabMaintenance Visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabMaintenance Visit Purpose`
--

DROP TABLE IF EXISTS `tabMaintenance Visit Purpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabMaintenance Visit Purpose` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `work_done` text,
  `description` text,
  `prevdoc_docname` varchar(180) DEFAULT NULL,
  `prevdoc_detail_docname` varchar(180) DEFAULT NULL,
  `item_name` varchar(180) DEFAULT NULL,
  `serial_no` text,
  `item_code` varchar(180) DEFAULT NULL,
  `prevdoc_doctype` varchar(180) DEFAULT NULL,
  `service_person` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabMaintenance Visit Purpose`
--

LOCK TABLES `tabMaintenance Visit Purpose` WRITE;
/*!40000 ALTER TABLE `tabMaintenance Visit Purpose` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabMaintenance Visit Purpose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabMaterial Request`
--

DROP TABLE IF EXISTS `tabMaterial Request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabMaterial Request` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `requested_by` varchar(180) DEFAULT NULL,
  `letter_head` varchar(180) DEFAULT NULL,
  `tc_name` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `status` varchar(180) DEFAULT NULL,
  `terms` text,
  `company` varchar(180) DEFAULT NULL,
  `per_ordered` decimal(18,6) DEFAULT NULL,
  `remark` text,
  `select_print_heading` varchar(180) DEFAULT NULL,
  `material_request_type` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `status` (`status`),
  KEY `company` (`company`),
  KEY `fiscal_year` (`fiscal_year`),
  KEY `transaction_date` (`transaction_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabMaterial Request`
--

LOCK TABLES `tabMaterial Request` WRITE;
/*!40000 ALTER TABLE `tabMaterial Request` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabMaterial Request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabMaterial Request Item`
--

DROP TABLE IF EXISTS `tabMaterial Request Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabMaterial Request Item` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `page_break` int(1) DEFAULT NULL,
  `description` text,
  `item_name` varchar(180) DEFAULT NULL,
  `brand` varchar(180) DEFAULT NULL,
  `item_group` varchar(180) DEFAULT NULL,
  `min_order_qty` decimal(18,6) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `qty` decimal(18,6) DEFAULT NULL,
  `projected_qty` decimal(18,6) DEFAULT NULL,
  `sales_order_no` varchar(180) DEFAULT NULL,
  `ordered_qty` decimal(18,6) DEFAULT NULL,
  `warehouse` varchar(180) DEFAULT NULL,
  `schedule_date` date DEFAULT NULL,
  `uom` varchar(180) DEFAULT NULL,
  `lead_time_date` date DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `item_name` (`item_name`),
  KEY `item_group` (`item_group`),
  KEY `item_code` (`item_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabMaterial Request Item`
--

LOCK TABLES `tabMaterial Request Item` WRITE;
/*!40000 ALTER TABLE `tabMaterial Request Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabMaterial Request Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabMode of Payment`
--

DROP TABLE IF EXISTS `tabMode of Payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabMode of Payment` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `mode_of_payment` varchar(180) DEFAULT NULL,
  `default_account` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabMode of Payment`
--

LOCK TABLES `tabMode of Payment` WRITE;
/*!40000 ALTER TABLE `tabMode of Payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabMode of Payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabModule Def`
--

DROP TABLE IF EXISTS `tabModule Def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabModule Def` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `module_name` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabModule Def`
--

LOCK TABLES `tabModule Def` WRITE;
/*!40000 ALTER TABLE `tabModule Def` DISABLE KEYS */;
INSERT INTO `tabModule Def` VALUES ('Accounts','2013-11-07 11:16:19','2013-11-07 11:16:19','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Accounts'),('Buying','2013-11-07 11:16:22','2013-11-07 11:16:22','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Buying'),('Core','2013-11-07 11:16:18','2013-11-07 11:16:18','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Core'),('Home','2013-11-07 11:16:23','2013-11-07 11:16:23','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Home'),('HR','2013-11-07 11:16:23','2013-11-07 11:16:23','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'HR'),('Manufacturing','2013-11-07 11:16:25','2013-11-07 11:16:25','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Manufacturing'),('Projects','2013-11-07 11:16:25','2013-11-07 11:16:25','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Projects'),('Selling','2013-11-07 11:16:26','2013-11-07 11:16:26','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Selling'),('Setup','2013-11-07 11:16:28','2013-11-07 11:16:28','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Setup'),('Stock','2013-11-07 11:16:29','2013-11-07 11:16:29','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Stock'),('Support','2013-11-07 11:16:33','2013-11-07 11:16:33','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Support'),('Utilities','2013-11-07 11:16:33','2013-11-07 11:16:33','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Utilities'),('Website','2013-11-07 11:16:18','2013-11-07 11:16:18','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Website');
/*!40000 ALTER TABLE `tabModule Def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabNewsletter`
--

DROP TABLE IF EXISTS `tabNewsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabNewsletter` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `lead_status` varchar(180) DEFAULT NULL,
  `send_to_type` varchar(180) DEFAULT NULL,
  `email_list` text,
  `contact_type` varchar(180) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT 'NL-',
  `send_from` varchar(180) DEFAULT NULL,
  `email_sent` int(1) DEFAULT NULL,
  `lead_source` varchar(180) DEFAULT NULL,
  `test_email_id` varchar(180) DEFAULT NULL,
  `message` text,
  `subject` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabNewsletter`
--

LOCK TABLES `tabNewsletter` WRITE;
/*!40000 ALTER TABLE `tabNewsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabNewsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabNote`
--

DROP TABLE IF EXISTS `tabNote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabNote` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `content` text,
  `public` int(1) DEFAULT NULL,
  `title` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabNote`
--

LOCK TABLES `tabNote` WRITE;
/*!40000 ALTER TABLE `tabNote` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabNote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabNote User`
--

DROP TABLE IF EXISTS `tabNote User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabNote User` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `user` varchar(180) DEFAULT NULL,
  `permission` varchar(180) DEFAULT 'Edit',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabNote User`
--

LOCK TABLES `tabNote User` WRITE;
/*!40000 ALTER TABLE `tabNote User` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabNote User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabNotification Count`
--

DROP TABLE IF EXISTS `tabNotification Count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabNotification Count` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `for_doctype` varchar(180) DEFAULT NULL,
  `open_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `notification_count_owner_index` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabNotification Count`
--

LOCK TABLES `tabNotification Count` WRITE;
/*!40000 ALTER TABLE `tabNotification Count` DISABLE KEYS */;
INSERT INTO `tabNotification Count` VALUES ('000000139','2013-11-22 11:45:14','2013-11-22 11:45:14','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Time Log',0),('000000140','2013-11-22 11:45:14','2013-11-22 11:45:14','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Time Log Batch',0),('000000141','2013-11-22 11:45:14','2013-11-22 11:45:14','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Lead',0),('000000142','2013-11-22 11:45:14','2013-11-22 11:45:14','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Material Request',0),('000000143','2013-11-22 11:45:14','2013-11-22 11:45:14','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'BOM',0),('000000144','2013-11-22 11:45:15','2013-11-22 11:45:15','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Journal Voucher',0),('000000145','2013-11-22 11:45:15','2013-11-22 11:45:15','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Purchase Receipt',0),('000000146','2013-11-22 11:45:15','2013-11-22 11:45:15','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Job Applicant',0),('000000147','2013-11-22 11:45:15','2013-11-22 11:45:15','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Purchase Invoice',0),('000000148','2013-11-22 11:45:15','2013-11-22 11:45:15','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Stock Entry',0),('000000149','2013-11-22 11:45:15','2013-11-22 11:45:15','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Quotation',0),('000000150','2013-11-22 11:45:15','2013-11-22 11:45:15','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Production Order',0),('000000151','2013-11-22 11:45:15','2013-11-22 11:45:15','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Task',0),('000000152','2013-11-22 11:45:15','2013-11-22 11:45:15','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Support Ticket',0),('000000153','2013-11-22 11:45:15','2013-11-22 11:45:15','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Purchase Order',0),('000000154','2013-11-22 11:45:15','2013-11-22 11:45:15','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Contact',0),('000000155','2013-11-22 11:45:15','2013-11-22 11:45:15','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Expense Claim',0),('000000156','2013-11-22 11:45:15','2013-11-22 11:45:15','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Leave Application',0),('000000157','2013-11-22 11:45:15','2013-11-22 11:45:15','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Customer Issue',0),('000000158','2013-11-22 11:45:16','2013-11-22 11:45:16','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Opportunity',0),('000000159','2013-11-22 11:45:16','2013-11-22 11:45:16','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Delivery Note',0),('000000160','2013-11-22 11:45:16','2013-11-22 11:45:16','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Sales Invoice',0),('000000161','2013-11-22 11:45:16','2013-11-22 11:45:16','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Sales Order',0),('000000162','2013-11-22 11:45:16','2013-11-22 11:45:16','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Calendar',0),('000000163','2013-11-22 11:45:16','2013-11-22 11:45:16','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Messages',0),('000000164','2013-11-22 11:45:16','2013-11-22 11:45:16','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'To Do',0);
/*!40000 ALTER TABLE `tabNotification Count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabOpportunity`
--

DROP TABLE IF EXISTS `tabOpportunity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabOpportunity` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `address_display` text,
  `campaign` varchar(180) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `enquiry_type` varchar(180) DEFAULT NULL,
  `enquiry_from` varchar(180) DEFAULT NULL,
  `customer_name` varchar(180) DEFAULT NULL,
  `lead` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `source` varchar(180) DEFAULT NULL,
  `contact_by` varchar(180) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `contact_display` text,
  `territory` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `customer_address` varchar(180) DEFAULT NULL,
  `contact_email` text,
  `contact_mobile` text,
  `customer` varchar(180) DEFAULT NULL,
  `order_lost_reason` text,
  `contact_date` date DEFAULT NULL,
  `customer_group` varchar(180) DEFAULT NULL,
  `status` varchar(180) DEFAULT 'Draft',
  `to_discuss` text,
  `contact_person` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `fiscal_year` (`fiscal_year`),
  KEY `territory` (`territory`),
  KEY `company` (`company`),
  KEY `customer_group` (`customer_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabOpportunity`
--

LOCK TABLES `tabOpportunity` WRITE;
/*!40000 ALTER TABLE `tabOpportunity` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabOpportunity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabOpportunity Item`
--

DROP TABLE IF EXISTS `tabOpportunity Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabOpportunity Item` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `basic_rate` decimal(18,6) DEFAULT NULL,
  `description` text,
  `item_name` varchar(180) DEFAULT NULL,
  `brand` varchar(180) DEFAULT NULL,
  `item_group` varchar(180) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `qty` decimal(18,6) DEFAULT NULL,
  `uom` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabOpportunity Item`
--

LOCK TABLES `tabOpportunity Item` WRITE;
/*!40000 ALTER TABLE `tabOpportunity Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabOpportunity Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPOS Setting`
--

DROP TABLE IF EXISTS `tabPOS Setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPOS Setting` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `customer` varchar(180) DEFAULT NULL,
  `cash_bank_account` varchar(180) DEFAULT NULL,
  `update_stock` int(1) DEFAULT '1',
  `naming_series` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `selling_price_list` varchar(180) DEFAULT NULL,
  `letter_head` varchar(180) DEFAULT NULL,
  `expense_account` varchar(180) DEFAULT NULL,
  `tc_name` varchar(180) DEFAULT NULL,
  `currency` varchar(180) DEFAULT NULL,
  `charge` varchar(180) DEFAULT NULL,
  `select_print_heading` varchar(180) DEFAULT NULL,
  `user` varchar(180) DEFAULT NULL,
  `warehouse` varchar(180) DEFAULT NULL,
  `cost_center` varchar(180) DEFAULT NULL,
  `territory` varchar(180) DEFAULT NULL,
  `income_account` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPOS Setting`
--

LOCK TABLES `tabPOS Setting` WRITE;
/*!40000 ALTER TABLE `tabPOS Setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPOS Setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPacked Item`
--

DROP TABLE IF EXISTS `tabPacked Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPacked Item` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `serial_no` text,
  `description` text,
  `item_name` varchar(180) DEFAULT NULL,
  `parent_detail_docname` varchar(180) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `qty` decimal(18,6) DEFAULT NULL,
  `projected_qty` decimal(18,6) DEFAULT NULL,
  `parent_item` varchar(180) DEFAULT NULL,
  `page_break` int(1) DEFAULT NULL,
  `batch_no` varchar(180) DEFAULT NULL,
  `warehouse` varchar(180) DEFAULT NULL,
  `actual_qty` decimal(18,6) DEFAULT NULL,
  `uom` varchar(180) DEFAULT NULL,
  `prevdoc_doctype` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPacked Item`
--

LOCK TABLES `tabPacked Item` WRITE;
/*!40000 ALTER TABLE `tabPacked Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPacked Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPacking Slip`
--

DROP TABLE IF EXISTS `tabPacking Slip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPacking Slip` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `gross_weight_pkg` decimal(18,6) DEFAULT NULL,
  `to_case_no` varchar(180) DEFAULT NULL,
  `from_case_no` varchar(180) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `net_weight_uom` varchar(180) DEFAULT NULL,
  `gross_weight_uom` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `delivery_note` varchar(180) DEFAULT NULL,
  `net_weight_pkg` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPacking Slip`
--

LOCK TABLES `tabPacking Slip` WRITE;
/*!40000 ALTER TABLE `tabPacking Slip` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPacking Slip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPacking Slip Item`
--

DROP TABLE IF EXISTS `tabPacking Slip Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPacking Slip Item` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `weight_uom` varchar(180) DEFAULT NULL,
  `page_break` int(1) DEFAULT NULL,
  `item_name` varchar(180) DEFAULT NULL,
  `net_weight` decimal(18,6) DEFAULT NULL,
  `qty` decimal(18,6) DEFAULT NULL,
  `stock_uom` varchar(180) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `dn_detail` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPacking Slip Item`
--

LOCK TABLES `tabPacking Slip Item` WRITE;
/*!40000 ALTER TABLE `tabPacking Slip Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPacking Slip Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPage`
--

DROP TABLE IF EXISTS `tabPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPage` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `title` varchar(180) DEFAULT NULL,
  `module` varchar(180) DEFAULT NULL,
  `standard` varchar(180) DEFAULT NULL,
  `page_name` varchar(180) DEFAULT NULL,
  `icon` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPage`
--

LOCK TABLES `tabPage` WRITE;
/*!40000 ALTER TABLE `tabPage` DISABLE KEYS */;
INSERT INTO `tabPage` VALUES ('Accounts Browser','2012-06-14 15:07:28','2013-07-11 14:39:42','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,'Accounts','Yes','Accounts Browser','icon-sitemap'),('accounts-home','2012-06-14 15:07:28','2013-07-11 14:40:16','Administrator','Administrator',0,NULL,NULL,NULL,1,'Accounts Home','Accounts','Yes','accounts-home','icon-th'),('activity','2013-04-09 11:45:31','2013-07-11 14:40:20','Administrator','Administrator',0,NULL,NULL,NULL,1,'Activity','Home','Yes','activity','icon-play'),('buying-home','2012-02-21 13:22:54','2013-07-11 14:41:50','Administrator','Administrator',0,NULL,NULL,NULL,1,'Buying Home','Buying','Yes','buying-home','icon-th'),('data-import-tool','2012-06-14 15:07:25','2013-07-11 14:41:54','Administrator','Administrator',0,NULL,NULL,NULL,1,'Data Import Tool','Core','Yes','Data Import Tool','icon-upload'),('desktop','2013-02-14 17:37:37','2013-07-11 14:41:56','Administrator','Administrator',0,NULL,NULL,NULL,1,'Desktop','Core','Yes','desktop','icon-th'),('Financial Statements','2013-01-27 16:30:52','2013-08-14 12:47:45','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,'Accounts','Yes','Financial Statements','icon-money'),('financial-analytics','2013-01-27 16:30:52','2013-07-11 14:42:16','Administrator','Administrator',0,NULL,NULL,NULL,1,'Financial Analytics','Accounts','Yes','financial-analytics','icon-bar-chart'),('finder','2013-09-06 11:53:22','2013-09-06 16:33:10','Administrator','Administrator',0,NULL,NULL,NULL,1,'Finder','Core','Yes','Finder','icon-folder-open'),('general-ledger','2012-09-14 11:25:48','2013-07-11 14:42:21','Administrator','Administrator',0,NULL,NULL,NULL,1,'General Ledger','Accounts','Yes','general-ledger','icon-table'),('hr-home','2012-02-21 13:24:05','2013-07-11 14:42:23','Administrator','Administrator',0,NULL,NULL,NULL,1,'Human Resources Home','HR','Yes','hr-home','icon-th'),('latest-updates','2012-11-19 12:06:54','2013-07-11 14:43:20','Administrator','Administrator',0,NULL,NULL,NULL,1,'Latest Updates','Home','Yes','latest-updates','icon-asterisk'),('manufacturing-home','2012-02-21 13:24:34','2013-07-11 14:43:23','Administrator','Administrator',0,NULL,NULL,NULL,1,'Manufacturing Home','Manufacturing','Yes','manufacturing-home','icon-th'),('messages','2012-06-14 18:44:56','2013-07-11 14:43:32','Administrator','Administrator',0,NULL,NULL,NULL,1,'Messages','Core','Yes','messages','icon-envelope'),('modules_setup','2012-10-04 18:45:29','2013-07-11 14:43:37','Administrator','Administrator',0,NULL,NULL,NULL,1,'Modules Setup','Core','Yes','modules_setup','icon-cog'),('permission-manager','2013-01-01 11:00:01','2013-07-11 14:43:42','Administrator','Administrator',0,NULL,NULL,NULL,1,'Permission Manager','Core','Yes','Permission Manager','icon-lock'),('projects-home','2012-02-21 13:24:22','2013-07-11 14:43:49','Administrator','Administrator',0,NULL,NULL,NULL,1,'Projects Home','Projects','Yes','projects-home','icon-th'),('purchase-analytics','2012-09-21 20:15:16','2013-07-11 14:43:52','Administrator','Administrator',0,NULL,NULL,NULL,1,'Purchase Analytics','Buying','Yes','purchase-analytics','icon-bar-chart'),('Sales Browser','2012-06-14 15:07:26','2013-07-11 14:43:56','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,'Selling','Yes','Sales Browser','icon-sitemap'),('sales-analytics','2012-09-21 20:15:12','2013-07-11 14:43:59','Administrator','Administrator',0,NULL,NULL,NULL,1,'Sales Analytics','Selling','Yes','sales-analytics','icon-bar-chart'),('sales-funnel','2013-10-04 13:17:18','2013-10-04 13:17:18','Administrator','Administrator',0,NULL,NULL,NULL,1,'Sales Funnel','Selling','Yes','sales-funnel','icon-filter'),('selling-home','2012-02-20 15:46:39','2013-07-11 14:44:01','Administrator','Administrator',0,NULL,NULL,NULL,1,'Selling Home','Selling','Yes','selling-home','icon-th'),('Setup','2012-06-14 15:07:28','2013-07-11 14:44:04','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,'Setup','Yes','Setup','icon-cog'),('setup-wizard','2013-10-04 13:49:33','2013-10-04 13:49:33','Administrator','Administrator',0,NULL,NULL,NULL,1,'Setup Wizard','Setup','Yes','setup-wizard',NULL),('stock-ageing','2012-09-21 20:15:14','2013-07-11 14:44:08','Administrator','Administrator',0,NULL,NULL,NULL,1,'Stock Ageing','Stock','Yes','stock-ageing','icon-table'),('stock-analytics','2012-09-21 20:15:14','2013-07-11 14:44:10','Administrator','Administrator',0,NULL,NULL,NULL,1,'Stock Analytics','Stock','Yes','stock-analytics','icon-bar-chart'),('stock-balance','2012-12-27 18:57:47','2013-07-11 14:44:15','Administrator','Administrator',0,NULL,NULL,NULL,1,'Stock Balance','Stock','Yes','stock-balance','icon-table'),('stock-home','2012-02-21 13:23:22','2013-07-11 14:44:17','Administrator','Administrator',0,NULL,NULL,NULL,1,'Stock Home','Stock','Yes','stock-home','icon-th'),('stock-ledger','2012-09-21 20:15:14','2013-07-11 14:44:19','Administrator','Administrator',0,NULL,NULL,NULL,1,'Stock Ledger','Stock','Yes','stock-ledger','icon-table'),('stock-level','2012-12-31 10:52:14','2013-07-11 14:44:21','Administrator','Administrator',0,NULL,NULL,NULL,1,'Stock Level','Stock','Yes','stock-level','icon-table'),('support-analytics','2013-01-04 15:31:45','2013-07-11 14:44:24','Administrator','Administrator',0,NULL,NULL,NULL,1,'Support Analytics','Support','Yes','support-analytics','icon-bar-chart'),('support-home','2012-02-21 13:23:35','2013-07-11 14:44:26','Administrator','Administrator',0,NULL,NULL,NULL,1,'Support Home','Support','Yes','support-home','icon-th'),('todo','2013-04-09 11:45:31','2013-07-11 14:44:45','Administrator','Administrator',0,NULL,NULL,NULL,1,'To Do','Core','Yes','todo','icon-check'),('trial-balance','2013-01-27 16:30:52','2013-07-11 14:44:49','Administrator','Administrator',0,NULL,NULL,NULL,1,'Trial Balance','Accounts','Yes','trial-balance','icon-table'),('user-properties','2013-01-01 18:50:55','2013-07-11 14:45:20','Administrator','Administrator',0,NULL,NULL,NULL,1,'User Properties','Core','Yes','user-properties','icon-user'),('voucher-import-tool','2012-10-02 18:51:49','2013-07-11 14:45:25','Administrator','Administrator',0,NULL,NULL,NULL,1,'Voucher Import Tool','Accounts','Yes','voucher-import-tool','icon-upload'),('website-home','2012-02-21 13:23:51','2013-07-11 14:45:29','Administrator','Administrator',0,NULL,NULL,NULL,1,'Website Home','Website','Yes','website-home','icon-th');
/*!40000 ALTER TABLE `tabPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPage Role`
--

DROP TABLE IF EXISTS `tabPage Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPage Role` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `role` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPage Role`
--

LOCK TABLES `tabPage Role` WRITE;
/*!40000 ALTER TABLE `tabPage Role` DISABLE KEYS */;
INSERT INTO `tabPage Role` VALUES ('PR000001','2012-06-14 15:07:25','2013-11-07 11:16:18','Administrator','Administrator',0,'data-import-tool','roles','Page',1,'System Manager'),('PR000002','2013-02-14 17:37:37','2013-11-07 11:16:18','Administrator','Administrator',0,'desktop','roles','Page',1,'All'),('PR000003','2013-09-06 11:53:22','2013-11-07 11:16:18','Administrator','Administrator',0,'finder','roles','Page',1,'All'),('PR000004','2012-06-14 18:44:56','2013-11-07 11:16:18','Administrator','Administrator',0,'messages','roles','Page',1,'All'),('PR000005','2012-10-04 18:45:29','2013-11-07 11:16:18','Administrator','Administrator',0,'modules_setup','roles','Page',1,'System Manager'),('PR000006','2013-01-01 11:00:01','2013-11-07 11:16:18','Administrator','Administrator',0,'permission-manager','roles','Page',1,'System Manager'),('PR000007','2013-04-09 11:45:31','2013-11-07 11:16:18','Administrator','Administrator',0,'todo','roles','Page',1,'All'),('PR000008','2013-01-01 18:50:55','2013-11-07 11:16:18','Administrator','Administrator',0,'user-properties','roles','Page',1,'System Manager'),('PR000009','2012-06-14 15:07:28','2013-11-07 11:16:21','Administrator','Administrator',0,'Accounts Browser','roles','Page',1,'Accounts User'),('PR000010','2012-06-14 15:07:28','2013-11-07 11:16:21','Administrator','Administrator',0,'Accounts Browser','roles','Page',2,'Accounts Manager'),('PR000011','2013-01-27 16:30:52','2013-11-07 11:16:21','Administrator','Administrator',0,'financial-analytics','roles','Page',1,'Analytics'),('PR000012','2013-01-27 16:30:52','2013-11-07 11:16:21','Administrator','Administrator',0,'financial-analytics','roles','Page',2,'Accounts Manager'),('PR000013','2013-01-27 16:30:52','2013-11-07 11:16:21','Administrator','Administrator',0,'Financial Statements','roles','Page',1,'Accounts Manager'),('PR000014','2013-01-27 16:30:52','2013-11-07 11:16:21','Administrator','Administrator',0,'Financial Statements','roles','Page',2,'Analytics'),('PR000015','2012-09-14 11:25:48','2013-11-07 11:16:21','Administrator','Administrator',0,'general-ledger','roles','Page',1,'Analytics'),('PR000016','2012-09-14 11:25:48','2013-11-07 11:16:21','Administrator','Administrator',0,'general-ledger','roles','Page',2,'Accounts Manager'),('PR000017','2012-09-14 11:25:48','2013-11-07 11:16:21','Administrator','Administrator',0,'general-ledger','roles','Page',3,'Accounts User'),('PR000018','2013-01-27 16:30:52','2013-11-07 11:16:21','Administrator','Administrator',0,'trial-balance','roles','Page',1,'Analytics'),('PR000019','2013-01-27 16:30:52','2013-11-07 11:16:21','Administrator','Administrator',0,'trial-balance','roles','Page',2,'Accounts Manager'),('PR000020','2012-10-02 18:51:49','2013-11-07 11:16:21','Administrator','Administrator',0,'voucher-import-tool','roles','Page',1,'Accounts Manager'),('PR000021','2012-09-21 20:15:16','2013-11-07 11:16:23','Administrator','Administrator',0,'purchase-analytics','roles','Page',1,'Analytics'),('PR000022','2012-09-21 20:15:16','2013-11-07 11:16:23','Administrator','Administrator',0,'purchase-analytics','roles','Page',2,'Purchase Manager'),('PR000023','2013-04-09 11:45:31','2013-11-07 11:16:23','Administrator','Administrator',0,'activity','roles','Page',1,'All'),('PR000024','2012-11-19 12:06:54','2013-11-07 11:16:23','Administrator','Administrator',0,'latest-updates','roles','Page',1,'All'),('PR000025','2012-09-21 20:15:12','2013-11-07 11:16:28','Administrator','Administrator',0,'sales-analytics','roles','Page',1,'Analytics'),('PR000026','2012-09-21 20:15:12','2013-11-07 11:16:28','Administrator','Administrator',0,'sales-analytics','roles','Page',2,'Sales Manager'),('PR000027','2012-09-21 20:15:12','2013-11-07 11:16:28','Administrator','Administrator',0,'sales-analytics','roles','Page',3,'Maintenance Manager'),('PR000028','2012-06-14 15:07:26','2013-11-07 11:16:28','Administrator','Administrator',0,'Sales Browser','roles','Page',1,'Sales Master Manager'),('PR000029','2012-06-14 15:07:26','2013-11-07 11:16:28','Administrator','Administrator',0,'Sales Browser','roles','Page',2,'Material Master Manager'),('PR000030','2012-06-14 15:07:26','2013-11-07 11:16:28','Administrator','Administrator',0,'Sales Browser','roles','Page',3,'Accounts Manager'),('PR000031','2012-06-14 15:07:26','2013-11-07 11:16:28','Administrator','Administrator',0,'Sales Browser','roles','Page',4,'Sales Master Manager'),('PR000032','2012-06-14 15:07:26','2013-11-07 11:16:28','Administrator','Administrator',0,'Sales Browser','roles','Page',5,'Purchase Manager'),('PR000033','2012-06-14 15:07:26','2013-11-07 11:16:28','Administrator','Administrator',0,'Sales Browser','roles','Page',6,'Purchase Master Manager'),('PR000034','2012-06-14 15:07:26','2013-11-07 11:16:28','Administrator','Administrator',0,'Sales Browser','roles','Page',7,'Material Manager'),('PR000035','2013-10-04 13:17:18','2013-11-07 11:16:28','Administrator','Administrator',0,'sales-funnel','roles','Page',1,'Sales Manager'),('PR000036','2012-02-20 15:46:39','2013-11-07 11:16:28','Administrator','Administrator',0,'selling-home','roles','Page',1,'All'),('PR000037','2012-06-14 15:07:28','2013-11-07 11:16:29','Administrator','Administrator',0,'Setup','roles','Page',1,'System Manager'),('PR000038','2013-10-04 13:49:33','2013-11-07 11:16:29','Administrator','Administrator',0,'setup-wizard','roles','Page',1,'System Manager'),('PR000039','2012-09-21 20:15:14','2013-11-07 11:16:32','Administrator','Administrator',0,'stock-ageing','roles','Page',1,'Analytics'),('PR000040','2012-09-21 20:15:14','2013-11-07 11:16:32','Administrator','Administrator',0,'stock-ageing','roles','Page',2,'Material Manager'),('PR000041','2012-09-21 20:15:14','2013-11-07 11:16:32','Administrator','Administrator',0,'stock-analytics','roles','Page',1,'Analytics'),('PR000042','2012-09-21 20:15:14','2013-11-07 11:16:32','Administrator','Administrator',0,'stock-analytics','roles','Page',2,'Material Manager'),('PR000043','2012-12-27 18:57:47','2013-11-07 11:16:32','Administrator','Administrator',0,'stock-balance','roles','Page',1,'Material Manager'),('PR000044','2012-12-27 18:57:47','2013-11-07 11:16:32','Administrator','Administrator',0,'stock-balance','roles','Page',2,'Analytics'),('PR000045','2012-09-21 20:15:14','2013-11-07 11:16:32','Administrator','Administrator',0,'stock-ledger','roles','Page',1,'Analytics'),('PR000046','2012-09-21 20:15:14','2013-11-07 11:16:32','Administrator','Administrator',0,'stock-ledger','roles','Page',2,'Material Manager'),('PR000047','2012-09-21 20:15:14','2013-11-07 11:16:32','Administrator','Administrator',0,'stock-ledger','roles','Page',3,'Material User'),('PR000048','2012-12-31 10:52:14','2013-11-07 11:16:32','Administrator','Administrator',0,'stock-level','roles','Page',1,'Material Manager'),('PR000049','2012-12-31 10:52:14','2013-11-07 11:16:32','Administrator','Administrator',0,'stock-level','roles','Page',2,'Analytics'),('PR000050','2013-01-04 15:31:45','2013-11-07 11:16:33','Administrator','Administrator',0,'support-analytics','roles','Page',1,'Support Team');
/*!40000 ALTER TABLE `tabPage Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPatch Log`
--

DROP TABLE IF EXISTS `tabPatch Log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPatch Log` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `patch` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPatch Log`
--

LOCK TABLES `tabPatch Log` WRITE;
/*!40000 ALTER TABLE `tabPatch Log` DISABLE KEYS */;
INSERT INTO `tabPatch Log` VALUES ('PATCHLOG00001','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'core\', \'doctype\', \'doctype\', force=True) #2013-10-15'),('PATCHLOG00002','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'core\', \'doctype\', \'docfield\', force=True) #2013-10-15'),('PATCHLOG00003','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'core\', \'doctype\', \'docperm\') #2013-07-16'),('PATCHLOG00004','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'core\', \'doctype\', \'page\') #2013-07-16'),('PATCHLOG00005','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'core\', \'doctype\', \'report\') #2013-07-16'),('PATCHLOG00006','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.september_2012.stock_report_permissions_for_accounts'),('PATCHLOG00007','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.september_2012.communication_delete_permission'),('PATCHLOG00008','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.september_2012.all_permissions_patch'),('PATCHLOG00009','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.september_2012.customer_permission_patch'),('PATCHLOG00010','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.september_2012.add_stock_ledger_entry_index'),('PATCHLOG00011','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.september_2012.plot_patch'),('PATCHLOG00012','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.september_2012.event_permission'),('PATCHLOG00013','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.september_2012.repost_stock'),('PATCHLOG00014','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.september_2012.rebuild_trees'),('PATCHLOG00015','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.september_2012.deprecate_account_balance'),('PATCHLOG00016','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.september_2012.profile_delete_permission'),('PATCHLOG00017','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2012.update_permission'),('PATCHLOG00018','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2012.fix_wrong_vouchers'),('PATCHLOG00019','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2012.company_fiscal_year_docstatus_patch'),('PATCHLOG00020','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2012.update_account_property'),('PATCHLOG00021','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2012.fix_cancelled_gl_entries'),('PATCHLOG00022','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2012.custom_script_delete_permission'),('PATCHLOG00023','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.november_2012.custom_field_insert_after'),('PATCHLOG00024','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.november_2012.report_permissions'),('PATCHLOG00025','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.november_2012.customer_issue_allocated_to_assigned'),('PATCHLOG00026','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.november_2012.reset_appraisal_permissions'),('PATCHLOG00027','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.november_2012.disable_cancelled_profiles'),('PATCHLOG00028','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.november_2012.support_ticket_response_to_communication'),('PATCHLOG00029','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.november_2012.cancelled_bom_patch'),('PATCHLOG00030','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.november_2012.communication_sender_and_recipient'),('PATCHLOG00031','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.november_2012.update_delivered_billed_percentage_for_pos'),('PATCHLOG00032','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.november_2012.add_theme_to_profile'),('PATCHLOG00033','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.november_2012.add_employee_field_in_employee'),('PATCHLOG00034','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.november_2012.leave_application_cleanup'),('PATCHLOG00035','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.november_2012.production_order_patch'),('PATCHLOG00036','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.november_2012.gle_floating_point_issue'),('PATCHLOG00037','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.december_2012.deprecate_tds'),('PATCHLOG00038','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.december_2012.expense_leave_reload'),('PATCHLOG00039','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.december_2012.repost_ordered_qty'),('PATCHLOG00040','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.december_2012.repost_projected_qty'),('PATCHLOG00041','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.december_2012.website_cache_refactor'),('PATCHLOG00042','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.december_2012.production_cleanup'),('PATCHLOG00043','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.december_2012.fix_default_print_format'),('PATCHLOG00044','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.december_2012.file_list_rename'),('PATCHLOG00045','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.december_2012.replace_createlocal'),('PATCHLOG00046','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.december_2012.remove_quotation_next_contact'),('PATCHLOG00047','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.december_2012.stock_entry_cleanup'),('PATCHLOG00048','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.december_2012.production_order_naming_series'),('PATCHLOG00049','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.december_2012.rebuild_item_group_tree'),('PATCHLOG00050','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.december_2012.address_title'),('PATCHLOG00051','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.december_2012.delete_form16_print_format'),('PATCHLOG00052','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.december_2012.update_print_width'),('PATCHLOG00053','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.january_2013.remove_bad_permissions'),('PATCHLOG00054','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.january_2013.holiday_list_patch'),('PATCHLOG00055','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.january_2013.stock_reconciliation_patch'),('PATCHLOG00056','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.january_2013.report_permission'),('PATCHLOG00057','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.january_2013.give_report_permission_on_read'),('PATCHLOG00058','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.january_2013.update_closed_on'),('PATCHLOG00059','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.january_2013.change_patch_structure'),('PATCHLOG00060','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.january_2013.update_country_info'),('PATCHLOG00061','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.january_2013.remove_tds_entry_from_gl_mapper'),('PATCHLOG00062','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.january_2013.update_number_format'),('PATCHLOG00063','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'core\', \'doctype\', \'print_format\') #2013-01'),('PATCHLOG00064','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'accounts\',\'Print Format\',\'Payment Receipt Voucher\')'),('PATCHLOG00065','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.january_2013.update_fraction_for_usd'),('PATCHLOG00066','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.january_2013.enable_currencies'),('PATCHLOG00067','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.january_2013.remove_unwanted_permission'),('PATCHLOG00068','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.january_2013.remove_landed_cost_master'),('PATCHLOG00069','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.january_2013.reload_print_format'),('PATCHLOG00070','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.january_2013.rebuild_tree'),('PATCHLOG00071','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'core\',\'doctype\',\'docfield\') #2013-01-28'),('PATCHLOG00072','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.january_2013.tabsessions_to_myisam'),('PATCHLOG00073','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.february_2013.remove_gl_mapper'),('PATCHLOG00074','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.february_2013.reload_bom_replace_tool_permission'),('PATCHLOG00075','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.february_2013.payment_reconciliation_reset_values'),('PATCHLOG00076','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.february_2013.account_negative_balance'),('PATCHLOG00077','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.february_2013.remove_account_utils_folder'),('PATCHLOG00078','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.february_2013.update_company_in_leave_application'),('PATCHLOG00079','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.conn.sql_ddl(\'alter table tabSeries change `name` `name` varchar(100)\')'),('PATCHLOG00080','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.conn.sql(\'update tabUserRole set parentfield=\"user_roles\" where parentfield=\"userroles\"\')'),('PATCHLOG00081','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.february_2013.p01_event'),('PATCHLOG00082','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.delete_doc(\'Page\', \'Calendar\')'),('PATCHLOG00083','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.february_2013.p02_email_digest'),('PATCHLOG00084','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.february_2013.p03_material_request'),('PATCHLOG00085','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.february_2013.p04_remove_old_doctypes'),('PATCHLOG00086','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.delete_doc(\'DocType\', \'Plot Control\')'),('PATCHLOG00087','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.february_2013.p05_leave_application'),('PATCHLOG00088','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.february_2013.gle_floating_point_issue_revisited'),('PATCHLOG00089','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.february_2013.fix_outstanding'),('PATCHLOG00090','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.delete_doc(\'DocType\', \'Service Order\')'),('PATCHLOG00091','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.delete_doc(\'DocType\', \'Service Quotation\')'),('PATCHLOG00092','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.delete_doc(\'DocType\', \'Service Order Detail\')'),('PATCHLOG00093','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.delete_doc(\'DocType\', \'Service Quotation Detail\')'),('PATCHLOG00094','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.delete_doc(\'Page\', \'Query Report\')'),('PATCHLOG00095','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.february_2013.repost_reserved_qty'),('PATCHLOG00096','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'core\', \'doctype\', \'report\') # 2013-02-25'),('PATCHLOG00097','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.conn.sql(\"update `tabReport` set report_type=if(ifnull(query, \'\')=\'\', \'Report Builder\', \'Query Report\') where is_standard=\'No\'\")'),('PATCHLOG00098','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.conn.sql(\"update `tabReport` set report_name=name where ifnull(report_name,\'\')=\'\' and is_standard=\'No\'\")'),('PATCHLOG00099','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.february_2013.p08_todo_query_report'),('PATCHLOG00100','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:(not webnotes.conn.exists(\'Role\', \'Projects Manager\')) and webnotes.doc({\'doctype\':\'Role\', \'role_name\':\'Projects Manager\'}).insert()'),('PATCHLOG00101','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.february_2013.p09_remove_cancelled_warehouses'),('PATCHLOG00102','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.march_2013.update_po_prevdoc_doctype'),('PATCHLOG00103','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.february_2013.p09_timesheets'),('PATCHLOG00104','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:(not webnotes.conn.exists(\'UOM\', \'Hour\')) and webnotes.doc({\'uom_name\': \'Hour\', \'doctype\': \'UOM\', \'name\': \'Hour\'}).insert()'),('PATCHLOG00105','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.march_2013.p01_c_form'),('PATCHLOG00106','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.conn.sql(\'update tabDocPerm set `submit`=1, `cancel`=1, `amend`=1 where parent=\"Time Log\"\')'),('PATCHLOG00107','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.delete_doc(\'DocType\', \'Attendance Control Panel\')'),('PATCHLOG00108','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.march_2013.p02_get_global_default'),('PATCHLOG00109','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.march_2013.p03_rename_blog_to_blog_post'),('PATCHLOG00110','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.march_2013.p04_pos_update_stock_check'),('PATCHLOG00111','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.march_2013.p05_payment_reconciliation'),('PATCHLOG00112','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.march_2013.p06_remove_sales_purchase_return_tool'),('PATCHLOG00113','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.bean(\'Global Defaults\').save()'),('PATCHLOG00114','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.march_2013.p07_update_project_in_stock_ledger'),('PATCHLOG00115','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'stock\', \'doctype\', \'item\') #2013-03-25'),('PATCHLOG00116','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'setup\', \'doctype\', \'item_group\') #2013-03-25'),('PATCHLOG00117','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'website\', \'doctype\', \'blog_post\') #2013-03-25'),('PATCHLOG00118','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'website\', \'doctype\', \'web_page\') #2013-03-25'),('PATCHLOG00119','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'setup\', \'doctype\', \'sales_partner\') #2013-06-25'),('PATCHLOG00120','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.conn.set_value(\'Email Settings\', None, \'send_print_in_body_and_attachment\', 1)'),('PATCHLOG00121','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.march_2013.p10_set_fiscal_year_for_stock'),('PATCHLOG00122','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.march_2013.p10_update_against_expense_account'),('PATCHLOG00123','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.march_2013.p11_update_attach_files'),('PATCHLOG00124','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.march_2013.p12_set_item_tax_rate_in_json'),('PATCHLOG00125','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.march_2013.p07_update_valuation_rate'),('PATCHLOG00126','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.march_2013.p08_create_aii_accounts'),('PATCHLOG00127','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.april_2013.p01_update_serial_no_valuation_rate'),('PATCHLOG00128','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.april_2013.p02_add_country_and_currency'),('PATCHLOG00129','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.april_2013.p03_fixes_for_lead_in_quotation'),('PATCHLOG00130','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.april_2013.p04_reverse_modules_list'),('PATCHLOG00131','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.april_2013.p04_update_role_in_pages'),('PATCHLOG00132','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.april_2013.p05_update_file_data'),('PATCHLOG00133','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.april_2013.p06_update_file_size'),('PATCHLOG00134','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.april_2013.p05_fixes_in_reverse_modules'),('PATCHLOG00135','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.april_2013.p07_rename_cost_center_other_charges'),('PATCHLOG00136','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.april_2013.p06_default_cost_center'),('PATCHLOG00137','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reset_perms(\'File Data\')'),('PATCHLOG00138','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.april_2013.p07_update_file_data_2'),('PATCHLOG00139','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.april_2013.rebuild_sales_browser'),('PATCHLOG00140','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.may_2013.p01_selling_net_total_export'),('PATCHLOG00141','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.may_2013.repost_stock_for_no_posting_time'),('PATCHLOG00142','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.may_2013.p02_update_valuation_rate'),('PATCHLOG00143','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.may_2013.p03_update_support_ticket'),('PATCHLOG00144','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.may_2013.p04_reorder_level'),('PATCHLOG00145','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.may_2013.p05_update_cancelled_gl_entries'),('PATCHLOG00146','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.may_2013.p06_make_notes'),('PATCHLOG00147','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.may_2013.p06_update_billed_amt_po_pr'),('PATCHLOG00148','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.may_2013.p07_move_update_stock_to_pos'),('PATCHLOG00149','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.may_2013.p08_change_item_wise_tax'),('PATCHLOG00150','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.june_2013.p01_update_bom_exploded_items'),('PATCHLOG00151','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.june_2013.p02_update_project_completed'),('PATCHLOG00152','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.delete_doc(\'DocType\', \'System Console\')'),('PATCHLOG00153','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.june_2013.p03_buying_selling_for_price_list'),('PATCHLOG00154','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.june_2013.p04_fix_event_for_lead_oppty_project'),('PATCHLOG00155','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.june_2013.p05_remove_search_criteria_reports'),('PATCHLOG00156','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.delete_doc(\'Report\', \'Sales Orders Pending To Be Delivered\')'),('PATCHLOG00157','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.june_2013.p05_remove_unused_doctypes'),('PATCHLOG00158','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.june_2013.p06_drop_unused_tables'),('PATCHLOG00159','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.june_2013.p08_shopping_cart_settings'),('PATCHLOG00160','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.june_2013.p09_update_global_defaults'),('PATCHLOG00161','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.june_2013.p10_lead_address'),('PATCHLOG00162','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.july_2013.p01_remove_doctype_mappers'),('PATCHLOG00163','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.delete_doc(\'Report\', \'Delivered Items To Be Billed\')'),('PATCHLOG00164','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.delete_doc(\'Report\', \'Received Items To Be Billed\')'),('PATCHLOG00165','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.july_2013.p02_copy_shipping_address'),('PATCHLOG00166','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.july_2013.p03_cost_center_company'),('PATCHLOG00167','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.july_2013.p04_merge_duplicate_leads'),('PATCHLOG00168','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.july_2013.p05_custom_doctypes_in_list_view'),('PATCHLOG00169','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.july_2013.p06_same_sales_rate'),('PATCHLOG00170','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.july_2013.p07_repost_billed_amt_in_sales_cycle'),('PATCHLOG00171','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'accounts\', \'Print Format\', \'Sales Invoice Classic\') # 2013-07-22'),('PATCHLOG00172','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'accounts\', \'Print Format\', \'Sales Invoice Modern\') # 2013-07-22'),('PATCHLOG00173','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'accounts\', \'Print Format\', \'Sales Invoice Spartan\') # 2013-07-22'),('PATCHLOG00174','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'selling\', \'Print Format\', \'Quotation Classic\') # 2013-07-22'),('PATCHLOG00175','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'selling\', \'Print Format\', \'Quotation Modern\') # 2013-07-22'),('PATCHLOG00176','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'selling\', \'Print Format\', \'Quotation Spartan\') # 2013-07-22'),('PATCHLOG00177','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'selling\', \'Print Format\', \'Sales Order Classic\') # 2013-07-22'),('PATCHLOG00178','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'selling\', \'Print Format\', \'Sales Order Modern\') # 2013-07-22'),('PATCHLOG00179','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'selling\', \'Print Format\', \'Sales Order Spartan\') # 2013-07-22'),('PATCHLOG00180','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'stock\', \'Print Format\', \'Delivery Note Classic\') # 2013-07-22'),('PATCHLOG00181','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'stock\', \'Print Format\', \'Delivery Note Modern\') # 2013-07-22'),('PATCHLOG00182','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'stock\', \'Print Format\', \'Delivery Note Spartan\') # 2013-07-22'),('PATCHLOG00183','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.july_2013.p08_custom_print_format_net_total_export'),('PATCHLOG00184','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.july_2013.p09_remove_website_pyc'),('PATCHLOG00185','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.july_2013.p10_change_partner_user_to_website_user'),('PATCHLOG00186','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.july_2013.p11_update_price_list_currency'),('PATCHLOG00187','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.bean(\'Selling Settings\').save() #2013-07-29'),('PATCHLOG00188','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'accounts\', \'doctype\', \'accounts_settings\') # 2013-09-24'),('PATCHLOG00189','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.august_2013.p01_auto_accounting_for_stock_patch'),('PATCHLOG00190','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.august_2013.p01_hr_settings'),('PATCHLOG00191','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.august_2013.p02_rename_price_list'),('PATCHLOG00192','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.august_2013.p03_pos_setting_replace_customer_account'),('PATCHLOG00193','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.august_2013.p05_update_serial_no_status'),('PATCHLOG00194','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.august_2013.p05_employee_birthdays'),('PATCHLOG00195','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'accounts\', \'Print Format\', \'POS Invoice\') # 2013-08-16'),('PATCHLOG00196','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.delete_doc(\'DocType\', \'Stock Ledger\')'),('PATCHLOG00197','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.august_2013.p06_deprecate_is_cancelled'),('PATCHLOG00198','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.august_2013.p06_fix_sle_against_stock_entry'),('PATCHLOG00199','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.september_2013.p01_add_user_defaults_from_pos_setting'),('PATCHLOG00200','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'accounts\', \'Print Format\', \'POS Invoice\') # 2013-09-02'),('PATCHLOG00201','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.september_2013.p01_fix_buying_amount_gl_entries'),('PATCHLOG00202','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.september_2013.p01_update_communication'),('PATCHLOG00203','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'setup\', \'doctype\', \'features_setup\') # 2013-09-05'),('PATCHLOG00204','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.september_2013.p02_fix_serial_no_status'),('PATCHLOG00205','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.september_2013.p03_modify_item_price_include_in_price_list'),('PATCHLOG00206','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.august_2013.p06_deprecate_is_cancelled'),('PATCHLOG00207','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.delete_doc(\'DocType\', \'Budget Control\')'),('PATCHLOG00208','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.september_2013.p03_update_stock_uom_in_sle'),('PATCHLOG00209','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.september_2013.p03_move_website_to_framework'),('PATCHLOG00210','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.bean(\'Style Settings\').save() #2013-09-19'),('PATCHLOG00211','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.conn.set_value(\'Accounts Settings\', None, \'frozen_accounts_modifier\', \'Accounts Manager\') # 2013-09-24'),('PATCHLOG00212','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.september_2013.p04_unsubmit_serial_nos'),('PATCHLOG00213','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.september_2013.p05_fix_customer_in_pos'),('PATCHLOG00214','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2013.fix_is_cancelled_in_sle'),('PATCHLOG00215','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2013.p01_update_delivery_note_prevdocs'),('PATCHLOG00216','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2013.p02_set_communication_status'),('PATCHLOG00217','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2013.p03_crm_update_status'),('PATCHLOG00218','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.delete_doc(\'DocType\', \'Setup Control\')'),('PATCHLOG00219','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2013.p04_wsgi_migration'),('PATCHLOG00220','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2013.p05_server_custom_script_to_file'),('PATCHLOG00221','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2013.repost_ordered_qty'),('PATCHLOG00222','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2013.repost_planned_qty'),('PATCHLOG00223','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2013.p06_rename_packing_list_doctype'),('PATCHLOG00224','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.delete_doc(\'DocType\', \'Sales Common\')'),('PATCHLOG00225','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2013.p09_update_naming_series_settings'),('PATCHLOG00226','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2013.p02_update_price_list_and_item_details_in_item_price'),('PATCHLOG00227','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.delete_doc(\'Report\', \'Item-wise Price List\')'),('PATCHLOG00228','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2013.p03_remove_sales_and_purchase_return_tool'),('PATCHLOG00229','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2013.p04_update_report_permission'),('PATCHLOG00230','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2013.p05_delete_gl_entries_for_cancelled_vouchers'),('PATCHLOG00231','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2013.p06_update_control_panel_and_global_defaults'),('PATCHLOG00232','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2013.p07_rename_for_territory'),('PATCHLOG00233','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.june_2013.p07_taxes_price_list_for_territory'),('PATCHLOG00234','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2013.p08_cleanup_after_item_price_module_change'),('PATCHLOG00235','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.october_2013.p10_plugins_refactor'),('PATCHLOG00236','2013-11-22 11:43:02','2013-11-22 11:43:02','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.1311.p01_cleanup'),('PATCHLOG00237','2013-11-22 11:43:02','2013-11-22 11:43:02','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'website\', \'doctype\', \'table_of_contents\') #2013-11-13'),('PATCHLOG00238','2013-11-22 11:43:02','2013-11-22 11:43:02','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'website\', \'doctype\', \'web_page\') #2013-11-13'),('PATCHLOG00239','2013-11-22 11:43:03','2013-11-22 11:43:03','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'home\', \'doctype\', \'feed\') #2013-11-15'),('PATCHLOG00240','2013-11-22 11:43:03','2013-11-22 11:43:03','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'core\', \'doctype\', \'defaultvalue\') #2013-11-15'),('PATCHLOG00241','2013-11-22 11:43:04','2013-11-22 11:43:04','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'core\', \'doctype\', \'comment\') #2013-11-15'),('PATCHLOG00242','2013-11-22 11:43:04','2013-11-22 11:43:04','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.1311.p02_index_singles'),('PATCHLOG00243','2013-11-22 11:43:04','2013-11-22 11:43:04','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.1311.p01_make_gl_entries_for_si'),('PATCHLOG00244','2013-11-22 11:43:05','2013-11-22 11:43:05','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'patches.1311.p03_update_reqd_report_fields'),('PATCHLOG00245','2013-11-22 11:43:05','2013-11-22 11:43:05','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'website\', \'doctype\', \'website_sitemap_config\') #2013-11-20'),('PATCHLOG00246','2013-11-22 11:43:05','2013-11-22 11:43:05','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.reload_doc(\'website\', \'doctype\', \'website_sitemap\') #2013-11-20'),('PATCHLOG00247','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.bean(\'Style Settings\').save() #2013-11-20'),('PATCHLOG00248','2013-11-22 11:43:07','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'execute:webnotes.get_module(\'website.doctype.website_sitemap_config.website_sitemap_config\').rebuild_website_sitemap_config()');
/*!40000 ALTER TABLE `tabPatch Log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPayment to Invoice Matching Tool Detail`
--

DROP TABLE IF EXISTS `tabPayment to Invoice Matching Tool Detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPayment to Invoice Matching Tool Detail` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `total_amt` decimal(18,6) DEFAULT NULL,
  `voucher_detail_no` varchar(180) DEFAULT NULL,
  `amt_due` decimal(18,6) DEFAULT NULL,
  `remarks` text,
  `posting_date` date DEFAULT NULL,
  `voucher_no` varchar(180) DEFAULT NULL,
  `amt_to_be_reconciled` decimal(18,6) DEFAULT NULL,
  `against_account` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPayment to Invoice Matching Tool Detail`
--

LOCK TABLES `tabPayment to Invoice Matching Tool Detail` WRITE;
/*!40000 ALTER TABLE `tabPayment to Invoice Matching Tool Detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPayment to Invoice Matching Tool Detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPeriod Closing Voucher`
--

DROP TABLE IF EXISTS `tabPeriod Closing Voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPeriod Closing Voucher` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `remarks` text,
  `posting_date` date DEFAULT NULL,
  `closing_account_head` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPeriod Closing Voucher`
--

LOCK TABLES `tabPeriod Closing Voucher` WRITE;
/*!40000 ALTER TABLE `tabPeriod Closing Voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPeriod Closing Voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPrice List`
--

DROP TABLE IF EXISTS `tabPrice List`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPrice List` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `currency` varchar(180) DEFAULT NULL,
  `price_list_name` varchar(180) DEFAULT NULL,
  `buying_or_selling` varchar(180) DEFAULT 'Selling',
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPrice List`
--

LOCK TABLES `tabPrice List` WRITE;
/*!40000 ALTER TABLE `tabPrice List` DISABLE KEYS */;
INSERT INTO `tabPrice List` VALUES ('Standard Buying','2014-03-25 08:13:42','2014-03-25 08:13:42','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'USD','Standard Buying','Buying'),('Standard Selling','2014-03-25 08:13:42','2014-03-25 08:13:42','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'USD','Standard Selling','Selling');
/*!40000 ALTER TABLE `tabPrice List` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPrint Format`
--

DROP TABLE IF EXISTS `tabPrint Format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPrint Format` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `doc_type` varchar(180) DEFAULT NULL,
  `module` varchar(180) DEFAULT NULL,
  `standard` varchar(180) DEFAULT 'No',
  `html` text,
  `print_format_type` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `module` (`module`),
  KEY `standard` (`standard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPrint Format`
--

LOCK TABLES `tabPrint Format` WRITE;
/*!40000 ALTER TABLE `tabPrint Format` DISABLE KEYS */;
INSERT INTO `tabPrint Format` VALUES ('Cheque Printing Format','2012-04-11 13:16:56','2012-04-13 12:24:20','Administrator','Administrator',0,NULL,NULL,NULL,1,'Journal Voucher','Accounts','Yes','<!--  p.big {line-height: 200%}  .noborder td { border: 0px solid #fff; }   -->\n<div style=\"position: relative;\">\n<h3><script>doc.company</script><br /> <br /> \n<hr />\nPAYMENT ADVICE</h3>\n<table class=\"noborder\" style=\"width: 100%;\">\n<tbody>\n<tr>\n<td style=\"vertical-align: top;\" width=\"50%\">To :<br />\n<script type=\"text/javascript\">// <![CDATA[\ndoc.pay_to_recd_from\n// ]]></script>\n</td>\n<td width=\"50%\">\n<table class=\"noborder\" width=\"100%\">\n<tbody>\n<tr>\n<td width=\"30%\">Voucher No :</td>\n<td width=\"70%\">\n<script type=\"text/javascript\">// <![CDATA[\ndoc.name\n// ]]></script>\n</td>\n</tr>\n<tr>\n<td width=\"30%\">Voucher Date :</td>\n<td width=\"70%\">\n<script type=\"text/javascript\">// <![CDATA[\ndate.str_to_user(doc.voucher_date)\n// ]]></script>\n</td>\n</tr>\n<tr>\n<td width=\"30%\">Cheque No :</td>\n<td width=\"70%\">\n<script type=\"text/javascript\">// <![CDATA[\ndate.str_to_user(doc.cheque_no)\n// ]]></script>\n</td>\n</tr>\n<tr>\n<td width=\"30%\">Cheque Date :</td>\n<td width=\"70%\">\n<script type=\"text/javascript\">// <![CDATA[\ndate.str_to_user(doc.cheque_date)\n// ]]></script>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<br /> <strong>We are pleased to enclose our cheque in full/part Settlement of your under noted bills</strong> <br /> \n<hr />\n<table class=\"noborder\" width=\"100%\">\n<tbody>\n<tr>\n<td width=\"70%\">&nbsp;</td>\n<td width=\"15%\">Total :</td>\n<td class=\"pos_left\" width=\"15%\">\n<script type=\"text/javascript\">// <![CDATA[\ndoc.total_amount\n// ]]></script>\n</td>\n</tr>\n<tr>\n<td colspan=\"3\">Narration :\n<script type=\"text/javascript\">// <![CDATA[\nreplace_newlines(doc.remark)\n// ]]></script>\n<br /><br /><br /></td>\n</tr>\n</tbody>\n</table>\n<div style=\"position: absolute; top: 14cm; left: 0cm;\">Prepared By</div>\n<div style=\"position: absolute; top: 14cm; left: 5.5cm;\">Authorised Signatory</div>\n<div style=\"position: absolute; top: 14cm; left: 11cm;\">Received Payment as Above</div>\n<div style=\"position: absolute; top: 16.4cm; left: 5.9cm;\"><strong>_____________</strong></div>\n<div style=\"position: absolute; top: 16.7cm; left: 6cm;\"><strong>A/c Payee</strong></div>\n<div style=\"position: absolute; top: 16.7cm; left: 5.9cm;\"><strong>_____________</strong></div>\n<div style=\"position: absolute; top: 16.9cm; left: 12cm;\">\n<script type=\"text/javascript\">// <![CDATA[\ndate.str_to_user(doc.cheque_date)\n// ]]></script>\n</div>\n<div style=\"position: absolute; top: 17.9cm; left: 1cm;\">\n<script type=\"text/javascript\">// <![CDATA[\ndoc.pay_to_recd_from\n// ]]></script>\n</div>\n<div style=\"position: absolute; top: 18.6cm; left: 1cm; width: 7cm;\">\n<script type=\"text/javascript\">// <![CDATA[\ndoc.total_amount_in_words\n// ]]></script>\n</div>\n<div style=\"position: absolute; top: 19.7cm; left: 12cm;\">\n<script type=\"text/javascript\">// <![CDATA[\ndoc.total_amount\n// ]]></script>\n</div>\n</div>',NULL),('Delivery Note Classic','2013-04-19 13:31:11','2013-08-07 19:44:55','Administrator','Administrator',0,NULL,NULL,NULL,1,'Delivery Note','Stock','Yes','<!--\n	Sample Print Format for ERPNext\n	Please use at your own discretion\n	For suggestions and contributions:\n		https://github.com/webnotes/erpnext-print-templates\n\n	Freely usable under MIT license\n-->\n\n<!-- Style Settings -->\n<style>\n	/*\n		common style for whole page\n		This should include:\n		+ page size related settings\n		+ font family settings\n		+ line spacing settings\n	*/\n	@media screen {\n		body {\n			width: 8.3in;\n		}\n	}\n\n	html, body, div, span, td {\n		font-family: \"Georgia\", serif;\n		font-size: 12px;\n	}\n\n	body {\n		padding: 10px;\n		margin: auto;\n		font-size: 12px;\n	}\n\n	.common {\n		font-family: \"Georgia\", serif !important;\n		font-size: 12px;\n		padding: 10px 0px;\n	}\n\n	table {\n		border-collapse: collapse;\n		width: 100%;\n		vertical-align: top;\n	}\n\n	table td {\n		padding: 2px 0px;\n	}\n	\n	table h1, h2, h3, h4, h5, h6 {\n		padding: 0px;\n		margin: 0px;\n	}\n\n	table.header-table td {\n		vertical-align: top;\n	}\n\n	table.header-table thead {\n		border-bottom: 1px solid black;\n	}\n\n	table.header-table h3 {\n		color: gray;\n	}\n\n	table.header-table thead td {\n		padding: 5px 0px;\n	}\n\n	div.page-body table td:nth-child(6),\n	div.page-body table td:nth-child(7) {\n		text-align: right;\n	}\n\n	table.footer-table td {\n		vertical-align: top;\n	}\n\n	table.footer-table td table td:nth-child(2),\n	table.footer-table td table td:nth-child(3) {\n		text-align: right;\n	}\n</style>\n\n\n<!-- Javascript -->\n<script>\n	si_std = {\n		print_item_table: function() {\n			var table = print_table(\n				\'Delivery Note\',\n				doc.name,\n				\'delivery_note_details\',\n				\'Delivery Note Item\',\n				[// Here specify the table columns to be displayed\n					\'SR\', \'item_code\', \'item_name\', \'description\', \'qty\', \'stock_uom\',\n					\'basic_rate\', \'amount\'\n				],\n				[// Here specify the labels of column headings\n					\'Sr\', \'Item Code\', \'Item Name\', \'Description\', \'Qty\',\n					\'UoM\', \'Basic Rate\', \'Amount\'\n				],\n				[// Here specify the column widths\n					\'3%\', \'10%\', \'15%\', \'32%\', \'5%\',\n					\'5%\', \'15%\', \'15%\'\n				],\n				null,\n				null,\n				{\n					\'description\' : function(data_row) {\n						var to_append = \'\'\n						if(data_row.adj_rate){\n							to_append = \'<div style=\"padding-left: 15px;\"><i>Discount: \' + \n								data_row.adj_rate + \'% on \' +\n								format_currency(data_row.ref_rate, doc.currency) + \'</i></div>\';\n							if(data_row.description.indexOf(to_append)==-1) {\n								data_row.description = data_row.description + to_append;\n							}\n						}\n						\n						if(data_row.serial_no) {\n							to_append = \'<div style=\"padding-left: 15px;\"><i>Serial No.:\' + \n								((data_row.serial_no.indexOf(\'\\n\')>-1)?\'<br />\':\'&nbsp;\') + \n								data_row.serial_no + \'</i></div>\';\n							if(data_row.description.indexOf(to_append)==-1) {\n								data_row.description = data_row.description + to_append;\n							}\n						}\n	\n						return data_row.description;\n					}\n				}\n			);\n\n			// This code takes care of page breaks\n			if(table.appendChild) {\n				out = table.innerHTML;\n			} else {\n				out = \'\';\n				for(var i=0; i < (table.length-1); i++) {\n					out += table[i].innerHTML + \n						\'<div style = \"page-break-after: always;\" \\\n						class = \"page_break\"></div>\\\n						<div class=\"page-settings\"></div>\';\n				}\n				out += table[table.length-1].innerHTML;\n			}\n			return out;\n		},\n\n\n		print_other_charges: function(parent) {\n			var oc = getchildren(\'Sales Taxes and Charges\', doc.name, \'other_charges\');\n			var rows = \'<table width=100%>\\n\';\n			for(var i=0; i<oc.length; i++) {\n				if(!oc[i].included_in_print_rate) {\n					rows +=\n						\'<tr>\\n\' +\n							\'\\t<td>\' + oc[i].description + \'</td>\\n\' +\n							\'\\t<td style=\"width: 38%; text-align: right;\">\' + format_currency(oc[i].tax_amount/doc.conversion_rate, doc.currency) + \'</td>\\n\' +\n						\'</tr>\\n\';\n				}\n			}\n			return rows + \'</table>\\n\';\n		}\n	};\n</script>\n\n\n<!-- Page Layout Settings -->\n<div class=\'common page-header\'>\n	<!-- \n		Page Header will contain\n			+ table 1\n				+ table 1a\n					- Name\n					- Address\n					- Contact\n					- Mobile No\n				+ table 1b\n					- Voucher Date\n					- Due Date\n	-->\n	<table class=\'header-table\' cellspacing=0>\n		<thead>\n			<tr><td><script>\'<h1>\' + (doc.select_print_heading || \'Delivery Note\') + \'</h1>\'</script></td></tr>\n			<tr><td><h3><script>cur_frm.docname</script></h3></td></tr>\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60%><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=22%><b>Name</b></td>\n						<td><script>doc.customer_name</script></td>\n					</tr>\n					<tr>\n						<td><b>Address</b></td>\n						<td><script>replace_newlines(doc.address_display)</script></td>\n					</tr>\n					<tr>\n						<td><b>Contact</b></td>\n						<td><script>doc.contact_display</script></td>\n					</tr>\n				</tbody></table></td>\n				<td><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=63%><b>Delivery Note Date</b></td>\n						<td><script>date.str_to_user(doc.transaction_date)</script></td>\n					<tr>					\n					<tr>\n						<td><b>Sales Order No.</b></td>\n						<td>\n							<script>doc.sales_order_no</script><br />\n							<i>(<script>date.str_to_user(doc.posting_date)</script>)</i>\n						</td>\n					<tr>					\n				</tbody></table></td>\n			</tr>\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n<div class=\'common page-body\'>\n	<!-- \n		Page Body will contain\n			+ table 2\n				- Sales Invoice Data\n	-->\n	<script>si_std.print_item_table()</script>\n</div>\n<div class=\'common page-footer\'>\n	<!-- \n		Page Footer will contain\n			+ table 3\n				- Terms and Conditions\n				- Total Rounded Amount Calculation\n				- Total Rounded Amount in Words\n	-->\n	<table class=\'footer-table\' width=100% cellspacing=0>\n		<thead>\n			\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60% style=\'padding-right: 10px;\'>\n					<b>Terms, Conditions &amp; Other Information:</b><br />\n					<script>doc.terms</script>\n				</td>\n				<td>\n					<table cellspacing=0 width=100%><tbody>\n						<tr>\n							<td>Net Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.net_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr><td colspan=3><script>si_std.print_other_charges()</script></td></tr>\n						<tr>\n							<td>Grand Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.grand_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr style=\'font-weight: bold\'>\n							<td>Rounded Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.rounded_total_export, doc.currency)\n							</script></td>\n						</tr>\n					</tbody></table>\n					<br /><b>In Words</b><br />\n					<i><script>doc.in_words_export</script></i>\n				</td>\n			</tr>		\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n','Client'),('Delivery Note Modern','2013-04-19 13:31:11','2013-08-07 20:12:29','Administrator','Administrator',0,NULL,NULL,NULL,1,'Delivery Note','Stock','Yes','<!--\n	Sample Print Format for ERPNext\n	Please use at your own discretion\n	For suggestions and contributions:\n		https://github.com/webnotes/erpnext-print-templates\n\n	Freely usable under MIT license\n-->\n\n<!-- Style Settings -->\n<style>\n	/*\n		common style for whole page\n		This should include:\n		+ page size related settings\n		+ font family settings\n		+ line spacing settings\n	*/\n	@media screen {\n		body {\n			width: 8.3in;\n		}\n	}\n\n	html, body, div, span, td {\n		font-family: \"Helvetica\", \"Arial\", sans-serif;\n		font-size: 12px;\n	}\n\n	body {\n		padding: 10px;\n		margin: auto;\n		font-size: 12px;\n        line-height: 150%;\n	}\n\n	.common {\n		font-family: \"Helvetica\", \"Arial\", sans-serif !important;\n		font-size: 12px;\n		padding: 10px 0px;\n	}\n\n	table {\n		border-collapse: collapse;\n		width: 100%;\n		vertical-align: top;\n		border-style: none !important;\n	}\n\n	table td {\n		padding: 2px 0px;\n		border-style: none !important;\n	}\n	\n	table h1, h2, h3, h4, h5, h6 {\n		padding: 0px;\n		margin: 0px;\n	}\n\n	table.header-table td {\n		vertical-align: top;\n	}\n\n	table.header-table h1 {\n		text-transform: uppercase;\n		color: white;\n		font-size: 55px;\n		font-style: italic;\n	}\n\n	table.header-table thead tr:nth-child(1) div {\n		height: 24px;\n		background-color: #696969;\n		vertical-align: middle;\n		padding: 12px 0px 0px 0px;\n		width: 100%;\n	}\n\n	div.page-body table td:nth-child(6),\n	div.page-body table td:nth-child(7) {\n		text-align: right;\n	}\n\n	div.page-body table tr td {\n		background-color: #DCDCDC !important;\n	}\n\n	div.page-body table tr:nth-child(1) td {\n		background-color: #696969 !important;\n		color: white !important;\n	}\n\n	table.footer-table td {\n		vertical-align: top;\n	}\n\n	table.footer-table td table td:nth-child(2),\n	table.footer-table td table td:nth-child(3) {\n		text-align: right;\n	}\n\n	table.footer-table tfoot td {\n		background-color: #696969;\n		height: 10px;\n	}\n\n	.imp-details {\n		background-color: #DCDCDC;\n	}\n</style>\n\n\n<!-- Javascript -->\n<script>\n	si_std = {\n		print_item_table: function() {\n			var table = print_table(\n				\'Delivery Note\',\n				doc.name,\n				\'delivery_note_details\',\n				\'Delivery Note Item\',\n				[// Here specify the table columns to be displayed\n					\'SR\', \'item_code\', \'item_name\', \'description\', \'qty\', \'stock_uom\',\n					\'basic_rate\', \'amount\'\n				],\n				[// Here specify the labels of column headings\n					\'Sr\', \'Item Code\', \'Item Name\', \'Description\', \'Qty\',\n					\'UoM\', \'Basic Rate\', \'Amount\'\n				],\n				[// Here specify the column widths\n					\'3%\', \'10%\', \'15%\', \'32%\', \'5%\',\n					\'5%\', \'15%\', \'15%\'\n				],\n				null,\n				null,\n				{\n					\'description\' : function(data_row) {\n						var to_append = \'\'\n						if(data_row.adj_rate){\n							to_append = \'<div style=\"padding-left: 15px;\"><i>Discount: \' + \n								data_row.adj_rate + \'% on \' +\n								format_currency(data_row.ref_rate, doc.currency) + \'</i></div>\';\n							if(data_row.description.indexOf(to_append)==-1) {\n								data_row.description = data_row.description + to_append;\n							}\n						}\n						\n						if(data_row.serial_no) {\n							to_append = \'<div style=\"padding-left: 15px;\"><i>Serial No.:\' + \n								((data_row.serial_no.indexOf(\'\\n\')>-1)?\'<br />\':\'&nbsp;\') + \n								data_row.serial_no + \'</i></div>\';\n							if(data_row.description.indexOf(to_append)==-1) {\n								data_row.description = data_row.description + to_append;\n							}\n						}\n	\n						return data_row.description;\n					}\n				}\n			);\n\n			// This code takes care of page breaks\n			if(table.appendChild) {\n				out = table.innerHTML;\n			} else {\n				out = \'\';\n				for(var i=0; i < (table.length-1); i++) {\n					out += table[i].innerHTML + \n						\'<div style = \"page-break-after: always;\" \\\n						class = \"page_break\"></div>\\\n						<div class=\"page-settings\"></div>\';\n				}\n				out += table[table.length-1].innerHTML;\n			}\n			return out;\n		},\n\n\n		print_other_charges: function(parent) {\n			var oc = getchildren(\'Sales Taxes and Charges\', doc.name, \'other_charges\');\n			var rows = \'<table width=100%>\\n\';\n			for(var i=0; i<oc.length; i++) {\n				if(!oc[i].included_in_print_rate) {\n					rows +=\n						\'<tr>\\n\' +\n							\'\\t<td>\' + oc[i].description + \'</td>\\n\' +\n							\'\\t<td style=\"width: 38%; text-align: right;\">\' + format_currency(oc[i].tax_amount/doc.conversion_rate, doc.currency) + \'</td>\\n\' +\n						\'</tr>\\n\';\n				}\n			}\n			return rows + \'</table>\\n\';\n		}\n	};\n</script>\n\n\n<!-- Page Layout Settings -->\n<div class=\'common page-header\'>\n	<!-- \n		Page Header will contain\n			+ table 1\n				+ table 1a\n					- Name\n					- Address\n					- Contact\n					- Mobile No\n				+ table 1b\n					- Voucher Date\n					- Due Date\n	-->\n	<table class=\'header-table\' cellspacing=0>\n		<thead>\n			<tr><td colspan=2><div><script>\'<h1>\' + (doc.select_print_heading || \'Delivery Note\') + \'</h1>\'</script></div></td></tr>\n			<tr><td colspan=2><div style=\"height:15px\"></div></td></tr>\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60%><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=22%><b>Name</b></td>\n						<td><script>doc.customer_name</script></td>\n					</tr>\n					<tr>\n						<td><b>Address</b></td>\n						<td><script>replace_newlines(doc.address_display)</script></td>\n					</tr>\n					<tr>\n						<td><b>Contact</b></td>\n						<td><script>doc.contact_display</script></td>\n					</tr>\n				</tbody></table></td>\n				<td><table width=100% cellspacing=0><tbody>\n					<tr class=\'imp-details\'>\n						<td><b>Delivery Note No.</b></td>\n						<td><script>cur_frm.docname</script></td>\n					</tr>\n					<tr>\n						<td width=63%><b>Delivery Note Date</b></td>\n						<td><script>date.str_to_user(doc.transaction_date)</script></td>\n					<tr>					\n					<tr>\n						<td><b>Sales Order No.</b></td>\n						<td>\n							<script>doc.sales_order_no</script><br />\n							<i>(<script>date.str_to_user(doc.posting_date)</script>)</i>\n						</td>\n					<tr>					\n				</tbody></table></td>\n			</tr>\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n<div class=\'common page-body\'>\n	<!-- \n		Page Body will contain\n			+ table 2\n				- Sales Invoice Data\n	-->\n	<script>si_std.print_item_table()</script>\n</div>\n<div class=\'common page-footer\'>\n	<!-- \n		Page Footer will contain\n			+ table 3\n				- Terms and Conditions\n				- Total Rounded Amount Calculation\n				- Total Rounded Amount in Words\n	-->\n	<table class=\'footer-table\' width=100% cellspacing=0>\n		<thead>\n			\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60% style=\'padding-right: 10px;\'>\n					<b>Terms, Conditions &amp; Other Information:</b><br />\n					<script>doc.terms</script>\n				</td>\n				<td>\n					<table cellspacing=0 width=100%><tbody>\n						<tr>\n							<td>Net Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.net_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr><td colspan=3><script>si_std.print_other_charges()</script></td></tr>\n						<tr>\n							<td>Grand Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.grand_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr style=\'font-weight: bold\' class=\'imp-details\'>\n							<td>Rounded Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.rounded_total_export, doc.currency)\n							</script></td>\n						</tr>\n					</tbody></table>\n					<br /><b>In Words</b><br />\n					<i><script>doc.in_words_export</script></i>\n				</td>\n			</tr>		\n		</tbody>\n		<tfoot>\n			<tr><td colspan=2><div></div></td><tr>\n		</tfoot>\n	</table>\n</div>\n','Client'),('Delivery Note Packing List Wise','2011-08-23 16:49:40','2011-10-19 14:12:11','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,'Stock','Yes','<html>\n<head>\n\n<script>\nfunction replaceAll(s,s1,s2){ return s.split(s1).join(s2);}\n\nfunction get_letter_head() {\n	// add letter head\n	var cp = locals[\'Control Panel\'][\'Control Panel\'];\n	if(doc.letter_head)\n		var lh= cstr(_p.letter_heads[doc.letter_head]);\n	else if(cp.letter_head)\n		var lh= cp.letter_head;\n	else \n		var lh= \'\';\n		\n	return lh;\n}\n\n</script>\n<style>\n.cust_tbl { border-collapse:collapse; }\n.cust_tbl td { border:1px solid #848484; font-size: 13px}\n.large_font td {font-size: 13px}\n</style>\n</head>\n\n<body>\n<script>\nreplaceAll(doc.print_packing_slip,\'[HEADER GOES HERE]\',get_letter_head());\n</script>\n</body>\n</html>',NULL),('Delivery Note Spartan','2013-04-19 13:31:11','2013-08-07 19:44:37','Administrator','Administrator',0,NULL,NULL,NULL,1,'Delivery Note','Stock','Yes','<!--\n	Sample Print Format for ERPNext\n	Please use at your own discretion\n	For suggestions and contributions:\n		https://github.com/webnotes/erpnext-print-templates\n\n	Freely usable under MIT license\n-->\n\n<!-- Style Settings -->\n<style>\n	/*\n		common style for whole page\n		This should include:\n		+ page size related settings\n		+ font family settings\n		+ line spacing settings\n	*/\n	@media screen {\n		body {\n			width: 8.3in;\n		}\n	}\n\n	html, body, div, span, td {\n		font-family: \"Arial\", sans-serif;\n		font-size: 12px;\n	}\n\n	body {\n		padding: 10px;\n		margin: auto;\n		font-size: 12px;\n	}\n\n	.common {\n		font-family: \"Arial\", sans-serif !important;\n		font-size: 12px;\n		padding: 0px;\n	}\n\n	table {\n		width: 100% !important;\n		vertical-align: top;\n	}\n\n	table td {\n		padding: 2px 0px;\n	}\n\n	table, td {\n		border-collapse: collapse !important;\n		padding: 0px;\n		margin: 0px !important;\n	}\n	\n	table h1, h2, h3, h4, h5, h6 {\n		padding: 0px;\n		margin: 0px;\n	}\n\n	table.header-table td {\n		vertical-align: top;\n	}\n\n	table.header-table h3 {\n		color: gray;\n	}\n\n	table.header-table thead td {\n		padding: 5px;\n	}\n\n	table.header-table > thead,\n	table.header-table > tbody > tr > td,\n	table.footer-table > tbody > tr > td {\n		border: 1px solid black;\n		padding: 5px;\n	}\n\n	table.footer-table > tbody,\n	table.header-table > thead {\n		border-bottom: 3px solid black;\n	}\n\n	table.header-table > thead {\n		border-top: 3px solid black;\n	}\n\n	div.page-body table td:nth-child(6),\n	div.page-body table td:nth-child(7) {\n		text-align: right;\n	}\n\n	div.page-body td {\n		background-color: white !important;\n		border: 1px solid black !important;\n	}\n\n	table.footer-table td {\n		vertical-align: top;\n	}\n\n	table.footer-table td table td:nth-child(2),\n	table.footer-table td table td:nth-child(3) {\n		text-align: right;\n	}\n</style>\n\n\n<!-- Javascript -->\n<script>\n	si_std = {\n		print_item_table: function() {\n			var table = print_table(\n				\'Delivery Note\',\n				doc.name,\n				\'delivery_note_details\',\n				\'Delivery Note Item\',\n				[// Here specify the table columns to be displayed\n					\'SR\', \'item_code\', \'item_name\', \'description\', \'qty\', \'stock_uom\',\n					\'basic_rate\', \'amount\'\n				],\n				[// Here specify the labels of column headings\n					\'Sr\', \'Item Code\', \'Item Name\', \'Description\', \'Qty\',\n					\'UoM\', \'Basic Rate\', \'Amount\'\n				],\n				[// Here specify the column widths\n					\'3%\', \'10%\', \'15%\', \'32%\', \'5%\',\n					\'5%\', \'15%\', \'15%\'\n				],\n				null,\n				null,\n				{\n					\'description\' : function(data_row) {\n						var to_append = \'\'\n						if(data_row.adj_rate){\n							to_append = \'<div style=\"padding-left: 15px;\"><i>Discount: \' + \n								data_row.adj_rate + \'% on \' +\n								format_currency(data_row.ref_rate, doc.currency) + \'</i></div>\';\n							if(data_row.description.indexOf(to_append)==-1) {\n								data_row.description = data_row.description + to_append;\n							}\n						}\n						\n						if(data_row.serial_no) {\n							to_append = \'<div style=\"padding-left: 15px;\"><i>Serial No.:\' + \n								((data_row.serial_no.indexOf(\'\\n\')>-1)?\'<br />\':\'&nbsp;\') + \n								data_row.serial_no + \'</i></div>\';\n							if(data_row.description.indexOf(to_append)==-1) {\n								data_row.description = data_row.description + to_append;\n							}\n						}\n	\n						return data_row.description;\n					}\n				}\n			);\n\n			// This code takes care of page breaks\n			if(table.appendChild) {\n				out = table.innerHTML;\n			} else {\n				out = \'\';\n				for(var i=0; i < (table.length-1); i++) {\n					out += table[i].innerHTML + \n						\'<div style = \"page-break-after: always;\" \\\n						class = \"page_break\"></div>\\\n						<div class=\"page-settings\"></div>\';\n				}\n				out += table[table.length-1].innerHTML;\n			}\n			return out;\n		},\n\n\n		print_other_charges: function(parent) {\n			var oc = getchildren(\'Sales Taxes and Charges\', doc.name, \'other_charges\');\n			var rows = \'<table width=100%>\\n\';\n			for(var i=0; i<oc.length; i++) {\n				if(!oc[i].included_in_print_rate) {\n					rows +=\n						\'<tr>\\n\' +\n							\'\\t<td>\' + oc[i].description + \'</td>\\n\' +\n							\'\\t<td style=\"width: 38%; text-align: right;\">\' + format_currency(oc[i].tax_amount/doc.conversion_rate, doc.currency) + \'</td>\\n\' +\n						\'</tr>\\n\';\n				}\n			}\n			return rows + \'</table>\\n\';\n		}\n	};\n</script>\n\n\n<!-- Page Layout Settings -->\n<div class=\'common page-header\'>\n	<!-- \n		Page Header will contain\n			+ table 1\n				+ table 1a\n					- Name\n					- Address\n					- Contact\n					- Mobile No\n				+ table 1b\n					- Voucher Date\n					- Due Date\n	-->\n	<table class=\'header-table\' cellspacing=0>\n		<thead>\n			<tr><td colspan=2><script>\'<h1>\' + (doc.select_print_heading || \'Delivery Note\') + \'</h1>\'</script></td></tr>\n			<tr><td colspan=2><h3><script>cur_frm.docname</script></h3></td></tr>\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60%><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=22%><b>Name</b></td>\n						<td><script>doc.customer_name</script></td>\n					</tr>\n					<tr>\n						<td><b>Address</b></td>\n						<td><script>replace_newlines(doc.address_display)</script></td>\n					</tr>\n					<tr>\n						<td><b>Contact</b></td>\n						<td><script>doc.contact_display</script></td>\n					</tr>\n				</tbody></table></td>\n				<td><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=63%><b>Delivery Note Date</b></td>\n						<td><script>date.str_to_user(doc.transaction_date)</script></td>\n					<tr>					\n					<tr>\n						<td><b>Sales Order No.</b></td>\n						<td>\n							<script>doc.sales_order_no</script><br />\n							<i>(<script>date.str_to_user(doc.posting_date)</script>)</i>\n						</td>\n					<tr>					\n				</tbody></table></td>\n			</tr>\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n<div class=\'common page-body\'>\n	<!-- \n		Page Body will contain\n			+ table 2\n				- Sales Invoice Data\n	-->\n	<script>si_std.print_item_table()</script>\n</div>\n<div class=\'common page-footer\'>\n	<!-- \n		Page Footer will contain\n			+ table 3\n				- Terms and Conditions\n				- Total Rounded Amount Calculation\n				- Total Rounded Amount in Words\n	-->\n	<table class=\'footer-table\' width=100% cellspacing=0>\n		<thead>\n			\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60% style=\'padding-right: 10px;\'>\n					<b>Terms, Conditions &amp; Other Information:</b><br />\n					<script>doc.terms</script>\n				</td>\n				<td>\n					<table cellspacing=0 width=100%><tbody>\n						<tr>\n							<td>Net Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.net_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr><td colspan=3><script>si_std.print_other_charges()</script></td></tr>\n						<tr>\n							<td>Grand Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.grand_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr style=\'font-weight: bold\'>\n							<td>Rounded Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.rounded_total_export, doc.currency)\n							</script></td>\n						</tr>\n					</tbody></table>\n					<br /><b>In Words</b><br />\n					<i><script>doc.in_words_export</script></i>\n				</td>\n			</tr>		\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n','Client'),('Payment Receipt Voucher','2012-05-01 12:46:31','2013-01-21 18:40:20','Administrator','Administrator',0,NULL,NULL,NULL,1,'Journal Voucher','Accounts','Yes','<h3 align=\"center\"><script>doc.select_print_heading || \"Payment Receipt Note\"</script></h3>\n\n<table class=\'simpletable\'>\n<tr>\n<td><b> Receipt No.: </b></td>\n<td><script>doc.name</script></td>\n</tr>\n<tr>\n<td><b> Date : </b></td>\n<td><script>date.str_to_user(doc.voucher_date)</script></td>\n</tr>      \n<tr>\n<td><b> Remark: </b></td>\n<td><script> doc.remark </script></td>\n</tr>\n<tr>\n<td><b> Received From: </b></td>\n<td><b><script> doc.pay_to_recd_from </script></b></td>\n</tr>\n</table>\n<br>\n\n<div><b><script>doc.total_amount</script></b> </td></div><br>\n<div style=\"text-align:left\"><b><script>doc.total_amount_in_words</script></b></div><br>\n<br>\n<table class=\"noborder\">\n<tr>\n<td style = \"text-align = right;\"><h3>For <script>doc.company</script>,</h3><br><div>(Authorised Signatory)</div></td>\n</tr>\n</table>',NULL),('POS Invoice','2011-12-21 11:08:55','2013-09-13 17:17:47','Administrator','Administrator',0,NULL,NULL,NULL,1,'Sales Invoice','Accounts','Yes','<html>\n<head>\n<!--Item Table, Totals and Other Charges-->\n<script>\nfunction get_print_format() {\n    var oc = getchildren(\'Sales Invoice Item\', doc.name, \'entries\');\n	var rows = \'<table width=\"100%\" cellpadding=\"0\" class=\"cart\">\\\n                <tr>\\\n                    <td colspan=\"3\"><hr></td>\\\n                </tr>\\\n                <tr>\\\n                    <td width=\"60%\" align=\"left\">ITEM NAME.</td>\\\n                    <td width=\"10%\" align=\"right\">QTY</td>\\\n                    <td width=\"30%\" align=\"right\">AMOUNT</td>\\\n                </tr>\\\n                <tr>\\\n                    <td colspan=\"3\"><hr></td>\\\n                </tr>\';\n	for (var x=0; x<oc.length; x++) {\n        console.log(oc[x].item_code!=oc[x].item_name);\n		rows += \'<tr>\\\n                    <td align=\"left\">\' + oc[x].item_code + \n                        (oc[x].item_code!=oc[x].item_name ? (\'<br>\' + oc[x].item_name) : \'\') + \'</td>\\\n                    <td align=\"right\" style=\"vertical-align:top;\">\' + oc[x].qty + \'</td>\\\n                    <td align=\"right\" valign=\"top\">\' + format_currency(oc[x].export_amount, doc.currency) + \'</td>\\\n                </tr>\';\n	}\n    rows += \'<tr>\\\n                <td colspan=\"3\"><hr></td>\\\n            </tr>\\\n            <tr>\\\n                <td colspan=\"2\" align=\"right\">Net Total</td>\\\n                <td align=\"right\">\' + format_currency(doc.net_total_export, doc.currency) + \'</td>\\\n            </tr>\';\n    if (doc.other_charges_total_export != 0) {\n        var taxes = wn.model.get_children(\"Sales Taxes and Charges\", doc.name, \"other_charges\", \"Sales Invoice\");\n		$.each(taxes, function(i, d) {\n			rows += \'<tr>\\\n        				<td colspan=\"2\" align=\"right\">\' + d.description + \'</td>\\\n        				<td style=\"text-align: right;\">\' + format_currency(d.tax_amount / doc.conversion_rate, doc.currency) + \'</td>\\\n        			<tr>\';\n		});\n    }\n    rows += \'<tr>\\\n                <td colspan=\"2\" align=\"right\" style=\"vertical-align:middle;\">Grand Total</td>\\\n                <td align=\"right\"><hr width=\"90%\" align=\"right\">\' + format_currency(doc.grand_total_export, doc.currency) + \'<br>\\\n                    <hr width=\"90%\" align=\"right\"></td>\\\n            </tr>\\\n            <tr>\\\n                <td align=\"center\" colspan=\"3\">Thank You. Please visit again.</td>\\\n            </tr>\\\n            </table>\';\n	return rows;\n}\n</script>\n<style>\n    table, tr, td, div, p {\n        font-family: Monospace;\n        line-height: 200%;\n    }\n    h1, h2, h3, h4, h5, h6 {\n        text-align: center;\n    }\n	@media screen {\n		body {\n			width: 4in;\n		}\n	}\n</style>\n</head>\n\n<body>\n<table width=\"100%\" cellpadding=\"4\">\n    <tr>\n        <td align=\"left\">RECEIPT NO: <script>doc.name</script></td>\n        <td align=\"right\">DATE: <script>date.str_to_user(doc.posting_date)</script></td>\n    </tr>\n    <tr>\n        <td>M/s <script>doc.customer</script></td>\n    </tr>\n</table>\n<!--Item Table & Totals-->\n<div><script>get_print_format();</script></div>\n</body>\n</html>\n','Client'),('Purchase Order Classic','2012-04-17 11:29:12','2013-08-07 20:00:45','Administrator','Administrator',0,NULL,NULL,NULL,1,'Purchase Order','Buying','Yes','<!--\n	Sample Print Format for ERPNext\n	Please use at your own discretion\n	For suggestions and contributions:\n		https://github.com/webnotes/erpnext-print-templates\n\n	Freely usable under MIT license\n-->\n\n<!-- Style Settings -->\n<style>\n	/*\n		common style for whole page\n		This should include:\n		+ page size related settings\n		+ font family settings\n		+ line spacing settings\n	*/\n	@media screen {\n		body {\n			width: 8.3in;\n		}\n	}\n\n	html, body, div, span, td {\n		font-family: \"Georgia\", serif;\n		font-size: 12px;\n	}\n\n	body {\n		padding: 10px;\n		margin: auto;\n		font-size: 12px;\n	}\n\n	.common {\n		font-family: \"Georgia\", serif !important;\n		font-size: 12px;\n		padding: 10px 0px;\n	}\n\n	table {\n		border-collapse: collapse;\n		width: 100%;\n		vertical-align: top;\n	}\n\n	table td {\n		padding: 2px 0px;\n	}\n	\n	table h1, h2, h3, h4, h5, h6 {\n		padding: 0px;\n		margin: 0px;\n	}\n\n	table.header-table td {\n		vertical-align: top;\n	}\n\n	table.header-table thead {\n		border-bottom: 1px solid black;\n	}\n\n	table.header-table h3 {\n		color: gray;\n	}\n\n	table.header-table thead td {\n		padding: 5px 0px;\n	}\n\n	div.page-body table td:nth-child(6),\n	div.page-body table td:nth-child(7) {\n		text-align: right;\n	}\n\n	table.footer-table td {\n		vertical-align: top;\n	}\n\n	table.footer-table td table td:nth-child(2),\n	table.footer-table td table td:nth-child(3) {\n		text-align: right;\n	}\n</style>\n\n\n<!-- Javascript -->\n<script>\n	si_std = {\n		print_item_table: function() {\n			var table = print_table(\n				\'Purchase Order\',\n				doc.name,\n				\'po_details\',\n				\'Purchase Order Item\',\n				[// Here specify the table columns to be displayed\n					\'SR\', \'item_code\', \'item_name\', \'description\', \'qty\', \'stock_uom\',\n					\'import_rate\', \'import_amount\'\n				],\n				[// Here specify the labels of column headings\n					\'Sr\', \'Item Code\', \'Item Name\', \'Description\', \'Qty\',\n					\'UoM\', \'Basic Rate\', \'Amount\'\n				],\n				[// Here specify the column widths\n					\'3%\', \'10%\', \'15%\', \'32%\', \'5%\',\n					\'5%\', \'15%\', \'15%\'\n				]\n			);\n\n			// This code takes care of page breaks\n			if(table.appendChild) {\n				out = table.innerHTML;\n			} else {\n				out = \'\';\n				for(var i=0; i < (table.length-1); i++) {\n					out += table[i].innerHTML + \n						\'<div style = \"page-break-after: always;\" \\\n						class = \"page_break\"></div>\\\n						<div class=\"page-settings\"></div>\';\n				}\n				out += table[table.length-1].innerHTML;\n			}\n			return out;\n		},\n\n\n		print_other_charges: function(parent) {\n			var oc = getchildren(\'Purchase Taxes and Charges\', doc.name, \'purchase_tax_details\');\n			var rows = \'<table width=100%>\\n\';\n			for(var i=0; i<oc.length; i++) {\n				rows +=\n					\'<tr>\\n\' +\n						\'\\t<td>\' + oc[i].description + \'</td>\\n\' +\n						\'\\t<td style=\"width: 38%; text-align: right;\">\' + format_currency(oc[i].tax_amount / (doc.conversion_rate || 1), doc.currency) + \'</td>\\n\' +\n					\'</tr>\\n\';\n			}\n			return rows + \'</table>\\n\';\n		}\n	};\n</script>\n\n\n<!-- Page Layout Settings -->\n<div class=\'common page-header\'>\n	<!-- \n		Page Header will contain\n			+ table 1\n				+ table 1a\n					- Name\n					- Address\n					- Contact\n					- Mobile No\n				+ table 1b\n					- Voucher Date\n					- Due Date\n	-->\n	<table class=\'header-table\' cellspacing=0>\n		<thead>\n			<tr><td><script>\'<h1>\' + (doc.select_print_heading || \'Purchase Order\') + \'</h1>\'</script></td></tr>\n			<tr><td><h3><script>cur_frm.docname</script></h3></td></tr>\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60%><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=22%><b>Name</b></td>\n						<td><script>doc.supplier_name</script></td>\n					</tr>\n					<tr>\n						<td><b>Address</b></td>\n						<td><script>replace_newlines(doc.address_display)</script></td>\n					</tr>\n					<tr>\n						<td><b>Contact</b></td>\n						<td><script>doc.contact_display</script></td>\n					</tr>\n				</tbody></table></td>\n				<td><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=63%><b>Purchase Order Date</b></td>\n						<td><script>date.str_to_user(doc.transaction_date)</script></td>\n					<tr>					\n				</tbody></table></td>\n			</tr>\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n<div class=\'common page-body\'>\n	<!-- \n		Page Body will contain\n			+ table 2\n				- Sales Invoice Data\n	-->\n	<script>si_std.print_item_table()</script>\n</div>\n<div class=\'common page-footer\'>\n	<!-- \n		Page Footer will contain\n			+ table 3\n				- Terms and Conditions\n				- Total Rounded Amount Calculation\n				- Total Rounded Amount in Words\n	-->\n	<table class=\'footer-table\' width=100% cellspacing=0>\n		<thead>\n			\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60% style=\'padding-right: 10px;\'>\n					<b>Terms, Conditions &amp; Other Information:</b><br />\n					<script>doc.terms</script>\n				</td>\n				<td>\n					<table cellspacing=0 width=100%><tbody>\n						<tr>\n							<td>Net Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.net_total_import, doc.currency)\n							</script></td>\n						</tr>\n						<tr><td colspan=3><script>si_std.print_other_charges()</script></td></tr>\n						<tr style=\'font-weight: bold\'>\n							<td>Grand Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.grand_total_import, doc.currency)\n							</script></td>\n						</tr>\n					</tbody></table>\n					<br /><b>In Words</b><br />\n					<i><script>doc.in_words_import</script></i>\n				</td>\n			</tr>		\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n','Client'),('Purchase Order Modern','2012-04-17 11:29:12','2013-08-07 20:12:05','Administrator','Administrator',0,NULL,NULL,NULL,1,'Purchase Order','Buying','Yes','<!--\n    Sample Print Format for ERPNext\n	Please use at your own discretion\n	For suggestions and contributions:\n		https://github.com/webnotes/erpnext-print-templates\n\n	Freely usable under MIT license\n-->\n\n<!-- Style Settings -->\n<style>\n	/*\n		common style for whole page\n		This should include:\n		+ page size related settings\n		+ font family settings\n		+ line spacing settings\n	*/\n	@media screen {\n		body {\n			width: 8.3in;\n		}\n	}\n\n	html, body, div, span, td {\n		font-family: \"Helvetica\", \"Arial\", sans-serif;\n		font-size: 12px;\n	}\n\n	body {\n		padding: 10px;\n		margin: auto;\n		font-size: 12px;\n        line-height: 150%;\n	}\n\n	.common {\n		font-family: \"Helvetica\", \"Arial\", sans-serif !important;\n		font-size: 12px;\n		padding: 10px 0px;\n	}\n\n	table {\n		border-collapse: collapse;\n		width: 100%;\n		vertical-align: top;\n		border-style: none !important;\n	}\n\n	table td {\n		padding: 2px 0px;\n		border-style: none !important;\n	}\n	\n	table h1, h2, h3, h4, h5, h6 {\n		padding: 0px;\n		margin: 0px;\n	}\n\n	table.header-table td {\n		vertical-align: top;\n	}\n\n	table.header-table h1 {\n		text-transform: uppercase;\n		color: white;\n		font-size: 55px;\n		font-style: italic;\n	}\n\n	table.header-table thead tr:nth-child(1) div {\n		height: 24px;\n		background-color: #696969;\n		vertical-align: middle;\n		padding: 12px 0px 0px 0px;\n		width: 100%;\n	}\n\n	div.page-body table td:nth-child(6),\n	div.page-body table td:nth-child(7) {\n		text-align: right;\n	}\n\n	div.page-body table tr td {\n		background-color: #DCDCDC !important;\n	}\n\n	div.page-body table tr:nth-child(1) td {\n		background-color: #696969 !important;\n		color: white !important;\n	}\n\n	table.footer-table td {\n		vertical-align: top;\n	}\n\n	table.footer-table td table td:nth-child(2),\n	table.footer-table td table td:nth-child(3) {\n		text-align: right;\n	}\n\n	table.footer-table tfoot td {\n		background-color: #696969;\n		height: 10px;\n	}\n\n	.imp-details {\n		background-color: #DCDCDC;\n	}\n</style>\n\n\n<!-- Javascript -->\n<script>\n	si_std = {\n		print_item_table: function() {\n			var table = print_table(\n				\'Purchase Order\',\n				doc.name,\n				\'po_details\',\n				\'Purchase Order Item\',\n				[// Here specify the table columns to be displayed\n					\'SR\', \'item_code\', \'item_name\', \'description\', \'qty\', \'stock_uom\',\n					\'import_rate\', \'import_amount\'\n				],\n				[// Here specify the labels of column headings\n					\'Sr\', \'Item Code\', \'Item Name\', \'Description\', \'Qty\',\n					\'UoM\', \'Basic Rate\', \'Amount\'\n				],\n				[// Here specify the column widths\n					\'3%\', \'10%\', \'15%\', \'32%\', \'5%\',\n					\'5%\', \'15%\', \'15%\'\n				]\n			);\n\n			// This code takes care of page breaks\n			if(table.appendChild) {\n				out = table.innerHTML;\n			} else {\n				out = \'\';\n				for(var i=0; i < (table.length-1); i++) {\n					out += table[i].innerHTML + \n						\'<div style = \"page-break-after: always;\" \\\n						class = \"page_break\"></div>\\\n						<div class=\"page-settings\"></div>\';\n				}\n				out += table[table.length-1].innerHTML;\n			}\n			return out;\n		},\n\n\n		print_other_charges: function(parent) {\n			var oc = getchildren(\'Purchase Taxes and Charges\', doc.name, \'purchase_tax_details\');\n			var rows = \'<table width=100%>\\n\';\n			for(var i=0; i<oc.length; i++) {\n				rows +=\n					\'<tr>\\n\' +\n						\'\\t<td>\' + oc[i].description + \'</td>\\n\' +\n						\'\\t<td style=\"width: 38%; text-align: right;\">\' + format_currency(oc[i].tax_amount / (doc.conversion_rate || 1), doc.currency) + \'</td>\\n\' +\n					\'</tr>\\n\';\n			}\n			return rows + \'</table>\\n\';\n		}\n	};\n</script>\n\n\n<!-- Page Layout Settings -->\n<div class=\'common page-header\'>\n	<!-- \n		Page Header will contain\n			+ table 1\n				+ table 1a\n					- Name\n					- Address\n					- Contact\n					- Mobile No\n				+ table 1b\n					- Voucher Date\n					- Due Date\n	-->\n	<table class=\'header-table\' cellspacing=0>\n		<thead>\n			<tr><td colspan=2><div><script>\'<h1>\' + (doc.select_print_heading || \'Purchase Order\') + \'</h1>\'</script></div></td></tr>\n			<tr><td colspan=2><div style=\"height:15px\"></div></td></tr>\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60%><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=22%><b>Name</b></td>\n						<td><script>doc.supplier_name</script></td>\n					</tr>\n					<tr>\n						<td><b>Address</b></td>\n						<td><script>replace_newlines(doc.address_display)</script></td>\n					</tr>\n					<tr>\n						<td><b>Contact</b></td>\n						<td><script>doc.contact_display</script></td>\n					</tr>\n				</tbody></table></td>\n				<td><table width=100% cellspacing=0><tbody>\n					<tr class=\'imp-details\'>\n						<td><b>Purchase Order No.</b></td>\n						<td><script>cur_frm.docname</script></td>\n					</tr>\n					<tr>\n						<td width=63%><b>Purchase Order Date</b></td>\n						<td><script>date.str_to_user(doc.transaction_date)</script></td>\n					<tr>					\n				</tbody></table></td>\n			</tr>\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n<div class=\'common page-body\'>\n	<!-- \n		Page Body will contain\n			+ table 2\n				- Sales Invoice Data\n	-->\n	<script>si_std.print_item_table()</script>\n</div>\n<div class=\'common page-footer\'>\n	<!-- \n		Page Footer will contain\n			+ table 3\n				- Terms and Conditions\n				- Total Rounded Amount Calculation\n				- Total Rounded Amount in Words\n	-->\n	<table class=\'footer-table\' width=100% cellspacing=0>\n		<thead>\n			\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60% style=\'padding-right: 10px;\'>\n					<b>Terms, Conditions &amp; Other Information:</b><br />\n					<script>doc.terms</script>\n				</td>\n				<td>\n					<table cellspacing=0 width=100%><tbody>\n						<tr>\n							<td>Net Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.net_total_import, doc.currency)\n							</script></td>\n						</tr>\n						<tr><td colspan=3><script>si_std.print_other_charges()</script></td></tr>\n						<tr style=\'font-weight: bold\' class=\'imp-details\'>\n							<td>Grand Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.grand_total_import, doc.currency)\n							</script></td>\n						</tr>\n					</tbody></table>\n					<br /><b>In Words</b><br />\n					<i><script>doc.in_words_import</script></i>\n				</td>\n			</tr>		\n		</tbody>\n		<tfoot>\n			<tr><td colspan=2><div></div></td><tr>\n		</tfoot>\n	</table>\n</div>\n','Client'),('Purchase Order Spartan','2012-04-17 11:29:12','2013-08-07 20:01:38','Administrator','Administrator',0,NULL,NULL,NULL,1,'Purchase Order','Buying','Yes','<!--\n	Sample Print Format for ERPNext\n	Please use at your own discretion\n	For suggestions and contributions:\n		https://github.com/webnotes/erpnext-print-templates\n\n	Freely usable under MIT license\n-->\n\n<!-- Style Settings -->\n<style>\n	/*\n		common style for whole page\n		This should include:\n		+ page size related settings\n		+ font family settings\n		+ line spacing settings\n	*/\n	@media screen {\n		body {\n			width: 8.3in;\n		}\n	}\n\n	html, body, div, span, td {\n		font-family: \"Arial\", sans-serif;\n		font-size: 12px;\n	}\n\n	body {\n		padding: 10px;\n		margin: auto;\n		font-size: 12px;\n	}\n\n	.common {\n		font-family: \"Arial\", sans-serif !important;\n		font-size: 12px;\n		padding: 0px;\n	}\n\n	table {\n		width: 100% !important;\n		vertical-align: top;\n	}\n\n	table td {\n		padding: 2px 0px;\n	}\n\n	table, td {\n		border-collapse: collapse !important;\n		padding: 0px;\n		margin: 0px !important;\n	}\n	\n	table h1, h2, h3, h4, h5, h6 {\n		padding: 0px;\n		margin: 0px;\n	}\n\n	table.header-table td {\n		vertical-align: top;\n	}\n\n	table.header-table h3 {\n		color: gray;\n	}\n\n	table.header-table thead td {\n		padding: 5px;\n	}\n\n	table.header-table > thead,\n	table.header-table > tbody > tr > td,\n	table.footer-table > tbody > tr > td {\n		border: 1px solid black;\n		padding: 5px;\n	}\n\n	table.footer-table > tbody,\n	table.header-table > thead {\n		border-bottom: 3px solid black;\n	}\n\n	table.header-table > thead {\n		border-top: 3px solid black;\n	}\n\n	div.page-body table td:nth-child(6),\n	div.page-body table td:nth-child(7) {\n		text-align: right;\n	}\n\n	div.page-body td {\n		background-color: white !important;\n		border: 1px solid black !important;\n	}\n\n	table.footer-table td {\n		vertical-align: top;\n	}\n\n	table.footer-table td table td:nth-child(2),\n	table.footer-table td table td:nth-child(3) {\n		text-align: right;\n	}\n</style>\n\n\n<!-- Javascript -->\n<script>\n	si_std = {\n		print_item_table: function() {\n			var table = print_table(\n				\'Purchase Order\',\n				doc.name,\n				\'po_details\',\n				\'Purchase Order Item\',\n				[// Here specify the table columns to be displayed\n					\'SR\', \'item_code\', \'item_name\', \'description\', \'qty\', \'stock_uom\',\n					\'import_rate\', \'import_amount\'\n				],\n				[// Here specify the labels of column headings\n					\'Sr\', \'Item Code\', \'Item Name\', \'Description\', \'Qty\',\n					\'UoM\', \'Basic Rate\', \'Amount\'\n				],\n				[// Here specify the column widths\n					\'3%\', \'10%\', \'15%\', \'32%\', \'5%\',\n					\'5%\', \'15%\', \'15%\'\n				]\n			);\n\n			// This code takes care of page breaks\n			if(table.appendChild) {\n				out = table.innerHTML;\n			} else {\n				out = \'\';\n				for(var i=0; i < (table.length-1); i++) {\n					out += table[i].innerHTML + \n						\'<div style = \"page-break-after: always;\" \\\n						class = \"page_break\"></div>\\\n						<div class=\"page-settings\"></div>\';\n				}\n				out += table[table.length-1].innerHTML;\n			}\n			return out;\n		},\n\n\n		print_other_charges: function(parent) {\n			var oc = getchildren(\'Purchase Taxes and Charges\', doc.name, \'purchase_tax_details\');\n			var rows = \'<table width=100%>\\n\';\n			for(var i=0; i<oc.length; i++) {\n				rows +=\n					\'<tr>\\n\' +\n						\'\\t<td>\' + oc[i].description + \'</td>\\n\' + \n						\'\\t<td style=\"width: 38%; text-align: right;\">\' + format_currency(oc[i].tax_amount / (doc.conversion_rate || 1), doc.currency) + \'</td>\\n\' +\n					\'</tr>\\n\';\n			}\n			return rows + \'</table>\\n\';\n		}\n	};\n</script>\n\n\n<!-- Page Layout Settings -->\n<div class=\'common page-header\'>\n	<!-- \n		Page Header will contain\n			+ table 1\n				+ table 1a\n					- Name\n					- Address\n					- Contact\n					- Mobile No\n				+ table 1b\n					- Voucher Date\n					- Due Date\n	-->\n	<table class=\'header-table\' cellspacing=0>\n		<thead>\n			<tr><td colspan=2><script>\'<h1>\' + (doc.select_print_heading || \'Purchase Order\') + \'</h1>\'</script></td></tr>\n			<tr><td colspan=2><h3><script>cur_frm.docname</script></h3></td></tr>\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60%><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=22%><b>Name</b></td>\n						<td><script>doc.supplier_name</script></td>\n					</tr>\n					<tr>\n						<td><b>Address</b></td>\n						<td><script>replace_newlines(doc.address_display)</script></td>\n					</tr>\n					<tr>\n						<td><b>Contact</b></td>\n						<td><script>doc.contact_display</script></td>\n					</tr>\n				</tbody></table></td>\n				<td><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=63%><b>Purchase Order Date</b></td>\n						<td><script>date.str_to_user(doc.transaction_date)</script></td>\n					<tr>					\n				</tbody></table></td>\n			</tr>\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n<div class=\'common page-body\'>\n	<!-- \n		Page Body will contain\n			+ table 2\n				- Sales Invoice Data\n	-->\n	<script>si_std.print_item_table()</script>\n</div>\n<div class=\'common page-footer\'>\n	<!-- \n		Page Footer will contain\n			+ table 3\n				- Terms and Conditions\n				- Total Rounded Amount Calculation\n				- Total Rounded Amount in Words\n	-->\n	<table class=\'footer-table\' width=100% cellspacing=0>\n		<thead>\n			\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60% style=\'padding-right: 10px;\'>\n					<b>Terms, Conditions &amp; Other Information:</b><br />\n					<script>doc.terms</script>\n				</td>\n				<td>\n					<table cellspacing=0 width=100%><tbody>\n						<tr>\n							<td>Net Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.net_total_import, doc.currency)\n							</script></td>\n						</tr>\n						<tr><td colspan=3><script>si_std.print_other_charges()</script></td></tr>\n						<tr style=\'font-weight: bold\'>\n							<td>Grand Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.grand_total_import, doc.currency)\n							</script></td>\n						</tr>\n					</tbody></table>\n					<br /><b>In Words</b><br />\n					<i><script>doc.in_words_import</script></i>\n				</td>\n			</tr>		\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n','Client'),('Purchase Receipt Format','2010-08-08 17:09:34','2011-10-19 14:18:26','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,'Stock','Yes','<html>\n<head>\n<!--Other charges function-->\n<script>\n    var make_row = function(title,val,bold){\n    var bstart = \'<b>\'; var bend = \'</b>\';\n    return \'<tr><td style=\"width:50%\">\'+(bold?bstart:\'\')+title+(bold?bend:\'\')+\'</td>\'\n              +\'<td style=\"width:20%;text-align:right\">\'+doc.currency+\'</td>\'\n              +\'<td style=\"width:30%;text-align:right\">\'+(val?val:\'0.00\')+\'</td>\'\n              +\'</tr>\'\n  }\n\n  function get_other_charges(){\n    var out =\'\';\n    out += \'<div><table class=\"noborder\" style=\"width:100%\">\';\n    out += make_row(\'Total Amount\',fmt_money(convert_rate(doc.total_amount)),1)\n          +make_row(\'Grand Total\',fmt_money(convert_rate(doc.grand_total)),1);\n    out += \'</table></div>\';\n    return out;\n  }\n\n  function get_buying_costs(){\n    var out =\'\';\n    if(doc.buying_cost_transport || doc.buying_cost_taxes || doc.buying_cost_other){\n      out += \'<div><table class=\"noborder\" style=\"width:100%\">\'\n            + \'<tr><td style=\"width:100%\"><b>\'+\'Buying Cost Details\'+\'</b></td></tr>\';\n      if(doc.buying_cost_transport){ out += make_row(\'Transport Cost\',fmt_money(convert_rate(doc.buying_cost_transport)),0)}\n      if(doc.buying_cost_taxes){ out += make_row(\'Taxes\',fmt_money(convert_rate(doc.buying_cost_taxes)),0)}\n      if(doc.buying_cost_other){ out += make_row(\'Other Cost\',fmt_money(convert_rate(doc.buying_cost_other)),0)}\n      out += \'</table></div>\';\n    }\n    return out;\n  }\n\nfunction get_letter_head() {\n	// add letter head\n	var cp = locals[\'Control Panel\'][\'Control Panel\'];\n	if(doc.letter_head)\n		var lh= cstr(_p.letter_heads[doc.letter_head]);\n	else if(cp.letter_head)\n		var lh= cp.letter_head;\n	else \n		var lh= \'\';\n		\n	return lh;\n}\n\n  \n  function convert_rate(val){\n    var new_val = flt(val)/flt(doc.conversion_rate);\n    return new_val;\n  }\n  \n    function get_transport_details(){\n    var out = \'\';\n    if(doc.transporter_name || doc.lr_no || doc.lr_date){\n     out += \'<div><table class=\"noborder\" style=\"width:40%\">\'\n            +\'<tr><td style=\"width:80%\"><b>\' + \'Transporter Details\'+\'</b></td><td style=\"width:20%\"></td></tr>\'\n\n     if(doc.transporter_name){ out += \'<tr><td style=\"width:40%\">\' + \'Transporter Name\'+\'</td><td style=\"width:60%\">\'+doc.transporter_name+\'</td></tr>\'}\n     if(doc.lr_no){ out += \'<tr><td style=\"width:40%\">\' + \'LR No\'+\'</td><td style=\"width:60%\">\'+doc.lr_no+\'</td></tr>\'}\n     if(doc.lr_date){ out += \'<tr><td style=\"width:40%\">\' + \'LR Date\'+\'</td><td style=\"width:60%\">\'+doc.lr_date+\'</td></tr>\'}\n     out += \'</table></div>\'\n    }\n    return out;\n  }\n\n</script>\n</head>\n<body>\n<div style=\"border:1px solid black;padding:15px\">\n<!--header-->\n<div><script>get_letter_head()</script></div>\n<div style=\"border-bottom: 1px solid; padding-bottom: 5px;\">\n <div><br><b>Purchase Receipt: <script>doc.name</script></b></div>\n <div>Date: <script>date.str_to_user(doc.transaction_date)</script></div>\n</div>\n\n<div style=\"padding-top:15px\">\n<div><script>doc.supplier</script></div>\n<div><br><script>replace_newlines(doc.address_display)</script></div>\n</div>\n\n<div>\n<br>\n    <script>\n    var t = print_table(\'Purchase Receipt\', doc.name, \'purchase_receipt_details\', \'Purchase Receipt Item\', [\'SR\', \'item_code\',\'description\',\'received_qty\',\'qty\',\'rejected_qty\',\'po_rate\',\'amount\',\'billed_qty\'], [\'Sr\', \'Item Code\', \'Description\',\'Received Quantity\',\'Accepted Qty\',\'Rejected Qty\',\'Rate\',\'Amount\',\'Billed Qty\'], [\'4%\',\'12%\', \'24%\', \'10%\',\'10%\',\'10%\',\'10%\',\'10%\',\'10%\'])\n    if(t.appendChild) {\n      // single\n      out = t.innerHTML;\n    } \n    else {//multiple\n      out = \'\'\n      for(var i=0;i<t.length;i++) {\n        if(i!=t.length-1){\n          out += \'<div style:\"padding-top:5px;\"></div>\' + t[i].innerHTML +\'<div style=\"page-break-after:always\"></div>\';\n        }\n        else out += \'<div style:\"padding-top:5px;\"></div>\' + t[i].innerHTML;\n      }\n    }\n    out;\n    </script>\n\n</div>\n\n<!--Other charges table-->\n<div>\n<table style=\"width:100%\">\n  <tr><td style=\"width:40%\"><script>get_buying_costs()</script></td>\n  <td style=\"width:20%\"></td><td style=\"width:40%\"><script>get_other_charges()</script></td></tr>\n</table>\n</div>\n<div><script>get_transport_details()</script></div>\n<div><br>Payment Terms</div>\n<div><br><script>replace_newlines(doc.payment_terms)</script></div>\n<div><br>For NCSCI</div>\n<div><br><br>(Authorised Signatory)</div>\n</div></body>\n</html>',NULL),('Quotation Classic','2013-04-19 13:30:51','2013-08-07 19:55:11','Administrator','Administrator',0,NULL,NULL,NULL,1,'Quotation','Selling','Yes','<!--\n	Sample Print Format for ERPNext\n	Please use at your own discretion\n	For suggestions and contributions:\n		https://github.com/webnotes/erpnext-print-templates\n\n	Freely usable under MIT license\n-->\n\n<!-- Style Settings -->\n<style>\n	/*\n		common style for whole page\n		This should include:\n		+ page size related settings\n		+ font family settings\n		+ line spacing settings\n	*/\n	@media screen {\n		body {\n			width: 8.3in;\n		}\n	}\n\n	html, body, div, span, td {\n		font-family: \"Georgia\", serif;\n		font-size: 12px;\n	}\n\n	body {\n		padding: 10px;\n		margin: auto;\n		font-size: 12px;\n	}\n\n	.common {\n		font-family: \"Georgia\", serif !important;\n		font-size: 12px;\n		padding: 10px 0px;\n	}\n\n	table {\n		border-collapse: collapse;\n		width: 100%;\n		vertical-align: top;\n	}\n\n	table td {\n		padding: 2px 0px;\n	}\n	\n	table h1, h2, h3, h4, h5, h6 {\n		padding: 0px;\n		margin: 0px;\n	}\n\n	table.header-table td {\n		vertical-align: top;\n	}\n\n	table.header-table thead {\n		border-bottom: 1px solid black;\n	}\n\n	table.header-table h3 {\n		color: gray;\n	}\n\n	table.header-table thead td {\n		padding: 5px 0px;\n	}\n\n	div.page-body table td:nth-child(6),\n	div.page-body table td:nth-child(7) {\n		text-align: right;\n	}\n\n	table.footer-table td {\n		vertical-align: top;\n	}\n\n	table.footer-table td table td:nth-child(2),\n	table.footer-table td table td:nth-child(3) {\n		text-align: right;\n	}\n</style>\n\n\n<!-- Javascript -->\n<script>\n	si_std = {\n		print_item_table: function() {\n			var table = print_table(\n				\'Quotation\',\n				doc.name,\n				\'quotation_details\',\n				\'Quotation Item\',\n				[// Here specify the table columns to be displayed\n					\'SR\', \'item_code\', \'item_name\', \'description\', \'qty\', \'stock_uom\',\n					\'export_rate\', \'export_amount\'\n				],\n				[// Here specify the labels of column headings\n					\'Sr\', \'Item Code\', \'Item Name\', \'Description\', \'Qty\',\n					\'UoM\', \'Basic Rate\', \'Amount\'\n				],\n				[// Here specify the column widths\n					\'3%\', \'10%\', \'15%\', \'32%\', \'5%\',\n					\'5%\', \'15%\', \'15%\'\n				],\n				null,\n				null,\n				{\n					\'description\' : function(data_row) {\n						if(data_row.adj_rate) {\n							var to_append = \'<div style=\"padding-left: 15px;\"><i>Discount: \' + \n								data_row.adj_rate + \'% on \' + \n								format_currency(data_row.ref_rate, doc.currency) + \'</i></div>\';\n							if(data_row.description.indexOf(to_append)==-1) {\n								return data_row.description + to_append;\n							} else { return data_row.description; }\n						} else {\n							return data_row.description;\n						}\n					}\n				}\n			);\n\n			// This code takes care of page breaks\n			if(table.appendChild) {\n				out = table.innerHTML;\n			} else {\n				out = \'\';\n				for(var i=0; i < (table.length-1); i++) {\n					out += table[i].innerHTML + \n						\'<div style = \"page-break-after: always;\" \\\n						class = \"page_break\"></div>\\\n						<div class=\"page-settings\"></div>\';\n				}\n				out += table[table.length-1].innerHTML;\n			}\n			return out;\n		},\n\n\n		print_other_charges: function(parent) {\n			var oc = getchildren(\'Sales Taxes and Charges\', doc.name, \'other_charges\');\n			var rows = \'<table width=100%>\\n\';\n			for(var i=0; i<oc.length; i++) {\n				if(!oc[i].included_in_print_rate) {\n					rows +=\n						\'<tr>\\n\' +\n							\'\\t<td>\' + oc[i].description + \'</td>\\n\' +\n							\'\\t<td></td>\\n\' +\n							\'\\t<td style=\"width: 38%; text-align: right;\">\' + format_currency(oc[i].tax_amount/doc.conversion_rate, doc.currency) + \'</td>\\n\' +\n						\'</tr>\\n\';\n				}\n			}\n			return rows + \'</table>\\n\';\n		}\n	};\n</script>\n\n\n<!-- Page Layout Settings -->\n<div class=\'common page-header\'>\n	<!-- \n		Page Header will contain\n			+ table 1\n				+ table 1a\n					- Name\n					- Address\n					- Contact\n					- Mobile No\n				+ table 1b\n					- Voucher Date\n					- Due Date\n	-->\n	<table class=\'header-table\' cellspacing=0>\n		<thead>\n			<tr><td>\n					<script>\'<h1>\' + (doc.select_print_heading || \'Quotation\') + \'</h1>\'</script>\n			</td></tr>\n			<tr><td><h3><script>cur_frm.docname</script></h3></td></tr>\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60%><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=39%><b>Name</b></td>\n						<td><script>doc.customer_name</script></td>\n					</tr>\n					<tr>\n						<td><b>Address</b></td>\n						<td><script>replace_newlines(doc.address_display)</script></td>\n					</tr>\n					<tr>\n						<td><b>Contact</b></td>\n						<td><script>doc.contact_display</script></td>\n					</tr>\n				</tbody></table></td>\n				<td><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=63%><b>Quotation Date</b></td>\n						<td><script>date.str_to_user(doc.transaction_date)</script></td>\n					<tr>					\n				</tbody></table></td>\n			</tr>\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n<div class=\'common page-body\'>\n	<!-- \n		Page Body will contain\n			+ table 2\n				- Sales Invoice Data\n	-->\n	<script>si_std.print_item_table()</script>\n</div>\n<div class=\'common page-footer\'>\n	<!-- \n		Page Footer will contain\n			+ table 3\n				- Terms and Conditions\n				- Total Rounded Amount Calculation\n				- Total Rounded Amount in Words\n	-->\n	<table class=\'footer-table\' width=100% cellspacing=0>\n		<thead>\n			\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60% style=\'padding-right: 10px;\'>\n					<b>Terms, Conditions &amp; Other Information:</b><br />\n					<script>doc.terms</script>\n				</td>\n				<td>\n					<table cellspacing=0 width=100%><tbody>\n						<tr>\n							<td>Net Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.net_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr><td colspan=3><script>si_std.print_other_charges()</script></td></tr>\n						<tr>\n							<td>Grand Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.grand_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr style=\'font-weight: bold\'>\n							<td>Rounded Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.rounded_total_export, doc.currency)\n							</script></td>\n						</tr>\n					</tbody></table>\n					<br /><b>In Words</b><br />\n					<i><script>doc.in_words_export</script></i>\n				</td>\n			</tr>		\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n','Client'),('Quotation Modern','2013-04-19 13:30:51','2013-08-07 20:12:11','Administrator','Administrator',0,NULL,NULL,NULL,1,'Quotation','Selling','Yes','<!--\n	Sample Print Format for ERPNext\n	Please use at your own discretion\n	For suggestions and contributions:\n		https://github.com/webnotes/erpnext-print-templates\n\n	Freely usable under MIT license\n-->\n\n<!-- Style Settings -->\n<style>\n	/*\n		common style for whole page\n		This should include:\n		+ page size related settings\n		+ font family settings\n		+ line spacing settings\n	*/\n	@media screen {\n		body {\n			width: 8.3in;\n		}\n	}\n\n	html, body, div, span, td {\n		font-family: \"Helvetica\", \"Arial\", sans-serif;\n		font-size: 12px;\n	}\n\n	body {\n		padding: 10px;\n		margin: auto;\n		font-size: 12px;\n        line-height: 150%;\n	}\n\n	.common {\n		font-family: \"Helvetica\", \"Arial\", sans-serif !important;\n		font-size: 12px;\n		padding: 10px 0px;\n	}\n\n	table {\n		border-collapse: collapse;\n		width: 100%;\n		vertical-align: top;\n		border-style: none !important;\n	}\n\n	table td {\n		padding: 2px 0px;\n		border-style: none !important;\n	}\n	\n	table h1, h2, h3, h4, h5, h6 {\n		padding: 0px;\n		margin: 0px;\n	}\n\n	table.header-table td {\n		vertical-align: top;\n	}\n\n	table.header-table h1 {\n		text-transform: uppercase;\n		color: white;\n		font-size: 55px;\n		font-style: italic;\n	}\n\n	table.header-table thead tr:nth-child(1) div {\n		height: 24px;\n		background-color: #696969;\n		vertical-align: middle;\n		padding: 12px 0px 0px 0px;\n		width: 100%;\n	}\n\n	div.page-body table td:nth-child(6),\n	div.page-body table td:nth-child(7) {\n		text-align: right;\n	}\n\n	div.page-body table tr td {\n		background-color: #DCDCDC !important;\n	}\n\n	div.page-body table tr:nth-child(1) td {\n		background-color: #696969 !important;\n		color: white !important;\n	}\n\n	table.footer-table td {\n		vertical-align: top;\n	}\n\n	table.footer-table td table td:nth-child(2),\n	table.footer-table td table td:nth-child(3) {\n		text-align: right;\n	}\n\n	table.footer-table tfoot td {\n		background-color: #696969;\n		height: 10px;\n	}\n\n	.imp-details {\n		background-color: #DCDCDC;\n	}\n</style>\n\n\n<!-- Javascript -->\n<script>\n	si_std = {\n		print_item_table: function() {\n			var table = print_table(\n				\'Quotation\',\n				doc.name,\n				\'quotation_details\',\n				\'Quotation Item\',\n				[// Here specify the table columns to be displayed\n					\'SR\', \'item_code\', \'item_name\', \'description\', \'qty\', \'stock_uom\',\n					\'export_rate\', \'export_amount\'\n				],\n				[// Here specify the labels of column headings\n					\'Sr\', \'Item Code\', \'Item Name\', \'Description\', \'Qty\',\n					\'UoM\', \'Basic Rate\', \'Amount\'\n				],\n				[// Here specify the column widths\n					\'3%\', \'10%\', \'15%\', \'32%\', \'5%\',\n					\'5%\', \'15%\', \'15%\'\n				],\n				null,\n				null,\n				{\n					\'description\' : function(data_row) {\n						if(data_row.adj_rate) {\n							var to_append = \'<div style=\"padding-left: 15px;\"><i>Discount: \' + \n								data_row.adj_rate + \'% on \' + \n								format_currency(data_row.ref_rate, doc.currency) + \'</i></div>\';\n							if(data_row.description.indexOf(to_append)==-1) {\n								return data_row.description + to_append;\n							} else { return data_row.description; }\n						} else {\n							return data_row.description;\n						}\n					}\n				}\n			);\n\n			// This code takes care of page breaks\n			if(table.appendChild) {\n				out = table.innerHTML;\n			} else {\n				out = \'\';\n				for(var i=0; i < (table.length-1); i++) {\n					out += table[i].innerHTML + \n						\'<div style = \"page-break-after: always;\" \\\n						class = \"page_break\"></div>\\\n						<div class=\"page-settings\"></div>\';\n				}\n				out += table[table.length-1].innerHTML;\n			}\n			return out;\n		},\n\n\n		print_other_charges: function(parent) {\n			var oc = getchildren(\'Sales Taxes and Charges\', doc.name, \'other_charges\');\n			var rows = \'<table width=100%>\\n\';\n			for(var i=0; i<oc.length; i++) {\n				if(!oc[i].included_in_print_rate) {\n					rows +=\n						\'<tr>\\n\' +\n							\'\\t<td>\' + oc[i].description + \'</td>\\n\' +\n							\'\\t<td></td>\\n\' +\n							\'\\t<td style=\"width: 38%; text-align: right;\">\' + format_currency(oc[i].tax_amount/doc.conversion_rate, doc.currency) + \'</td>\\n\' +\n						\'</tr>\\n\';\n				}\n			}\n			return rows + \'</table>\\n\';\n		}\n	};\n</script>\n\n\n<!-- Page Layout Settings -->\n<div class=\'common page-header\'>\n	<!-- \n		Page Header will contain\n			+ table 1\n				+ table 1a\n					- Name\n					- Address\n					- Contact\n					- Mobile No\n				+ table 1b\n					- Voucher Date\n					- Due Date\n	-->\n	<table class=\'header-table\' cellspacing=0>\n		<thead>\n			<tr><td colspan=2><div><script>\'<h1>\' + (doc.select_print_heading || \'Quotation\') + \'</h1>\'</script></div></td></tr>\n			<tr><td colspan=2><div style=\"height:15px\"></div></td></tr>\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60%><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=39%><b>Name</b></td>\n						<td><script>doc.customer_name</script></td>\n					</tr>\n					<tr>\n						<td><b>Address</b></td>\n						<td><script>replace_newlines(doc.address_display)</script></td>\n					</tr>\n					<tr>\n						<td><b>Contact</b></td>\n						<td><script>doc.contact_display</script></td>\n					</tr>\n				</tbody></table></td>\n				<td><table width=100% cellspacing=0><tbody>\n					<tr class=\'imp-details\'>\n						<td><b>Quotation No.</b></td>\n						<td><script>cur_frm.docname</script></td>\n					</tr>\n					<tr>\n						<td width=63%><b>Quotation Date</b></td>\n						<td><script>date.str_to_user(doc.transaction_date)</script></td>\n					<tr>					\n				</tbody></table></td>\n			</tr>\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n<div class=\'common page-body\'>\n	<!-- \n		Page Body will contain\n			+ table 2\n				- Sales Invoice Data\n	-->\n	<script>si_std.print_item_table()</script>\n</div>\n<div class=\'common page-footer\'>\n	<!-- \n		Page Footer will contain\n			+ table 3\n				- Terms and Conditions\n				- Total Rounded Amount Calculation\n				- Total Rounded Amount in Words\n	-->\n	<table class=\'footer-table\' width=100% cellspacing=0>\n		<thead>\n			\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60% style=\'padding-right: 10px;\'>\n					<b>Terms, Conditions &amp; Other Information:</b><br />\n					<script>doc.terms</script>\n				</td>\n				<td>\n					<table cellspacing=0 width=100%><tbody>\n						<tr>\n							<td>Net Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.net_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr><td colspan=3><script>si_std.print_other_charges()</script></td></tr>\n						<tr>\n							<td>Grand Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.grand_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr style=\'font-weight: bold\' class=\'imp-details\'>\n							<td>Rounded Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.rounded_total_export, doc.currency)\n							</script></td>\n						</tr>\n					</tbody></table>\n					<br /><b>In Words</b><br />\n					<i><script>doc.in_words_export</script></i>\n				</td>\n			</tr>		\n		</tbody>\n		<tfoot>\n			<tr><td colspan=2><div></div></td><tr>\n		</tfoot>\n	</table>\n</div>\n','Client'),('Quotation Spartan','2013-04-19 13:30:51','2013-08-07 19:53:01','Administrator','Administrator',0,NULL,NULL,NULL,1,'Quotation','Selling','Yes','<!--\n	Sample Print Format for ERPNext\n	Please use at your own discretion\n	For suggestions and contributions:\n		https://github.com/webnotes/erpnext-print-templates\n\n	Freely usable under MIT license\n-->\n\n<!-- Style Settings -->\n<style>\n	/*\n		common style for whole page\n		This should include:\n		+ page size related settings\n		+ font family settings\n		+ line spacing settings\n	*/\n	@media screen {\n		body {\n			width: 8.3in;\n		}\n	}\n\n	html, body, div, span, td {\n		font-family: \"Arial\", sans-serif;\n		font-size: 12px;\n	}\n\n	body {\n		padding: 10px;\n		margin: auto;\n		font-size: 12px;\n	}\n\n	.common {\n		font-family: \"Arial\", sans-serif !important;\n		font-size: 12px;\n		padding: 0px;\n	}\n\n	table {\n		width: 100% !important;\n		vertical-align: top;\n	}\n\n	table td {\n		padding: 2px 0px;\n	}\n\n	table, td {\n		border-collapse: collapse !important;\n		padding: 0px;\n		margin: 0px !important;\n	}\n	\n	table h1, h2, h3, h4, h5, h6 {\n		padding: 0px;\n		margin: 0px;\n	}\n\n	table.header-table td {\n		vertical-align: top;\n	}\n\n	table.header-table h3 {\n		color: gray;\n	}\n\n	table.header-table thead td {\n		padding: 5px;\n	}\n\n	table.header-table > thead,\n	table.header-table > tbody > tr > td,\n	table.footer-table > tbody > tr > td {\n		border: 1px solid black;\n		padding: 5px;\n	}\n\n	table.footer-table > tbody,\n	table.header-table > thead {\n		border-bottom: 3px solid black;\n	}\n\n	table.header-table > thead {\n		border-top: 3px solid black;\n	}\n\n	div.page-body table td:nth-child(6),\n	div.page-body table td:nth-child(7) {\n		text-align: right;\n	}\n\n	div.page-body td {\n		background-color: white !important;\n		border: 1px solid black !important;\n	}\n\n	table.footer-table td {\n		vertical-align: top;\n	}\n\n	table.footer-table td table td:nth-child(2),\n	table.footer-table td table td:nth-child(3) {\n		text-align: right;\n	}\n</style>\n\n\n<!-- Javascript -->\n<script>\n	si_std = {\n		print_item_table: function() {\n			var table = print_table(\n				\'Quotation\',\n				doc.name,\n				\'quotation_details\',\n				\'Quotation Item\',\n				[// Here specify the table columns to be displayed\n					\'SR\', \'item_code\', \'item_name\', \'description\', \'qty\', \'stock_uom\',\n					\'export_rate\', \'export_amount\'\n				],\n				[// Here specify the labels of column headings\n					\'Sr\', \'Item Code\', \'Item Name\', \'Description\', \'Qty\',\n					\'UoM\', \'Basic Rate\', \'Amount\'\n				],\n				[// Here specify the column widths\n					\'3%\', \'10%\', \'15%\', \'32%\', \'5%\',\n					\'5%\', \'15%\', \'15%\'\n				],\n				null,\n				null,\n				{\n					\'description\' : function(data_row) {\n						if(data_row.adj_rate) {\n							var to_append = \'<div style=\"padding-left: 15px;\"><i>Discount: \' + \n								data_row.adj_rate + \'% on \' + \n								format_currency(data_row.ref_rate, doc.currency) + \'</i></div>\';\n							if(data_row.description.indexOf(to_append)==-1) {\n								return data_row.description + to_append;\n							} else { return data_row.description; }\n						} else {\n							return data_row.description;\n						}\n					}\n				}\n			);\n\n			// This code takes care of page breaks\n			if(table.appendChild) {\n				out = table.innerHTML;\n			} else {\n				out = \'\';\n				for(var i=0; i < (table.length-1); i++) {\n					out += table[i].innerHTML + \n						\'<div style = \"page-break-after: always;\" \\\n						class = \"page_break\"></div>\\\n						<div class=\"page-settings\"></div>\';\n				}\n				out += table[table.length-1].innerHTML;\n			}\n			return out;\n		},\n\n\n		print_other_charges: function(parent) {\n			var oc = getchildren(\'Sales Taxes and Charges\', doc.name, \'other_charges\');\n			var rows = \'<table width=100%>\\n\';\n			for(var i=0; i<oc.length; i++) {\n				if(!oc[i].included_in_print_rate) {\n					rows +=\n						\'<tr>\\n\' +\n							\'\\t<td>\' + oc[i].description + \'</td>\\n\' +\n							\'\\t<td></td>\\n\' +\n							\'\\t<td style=\"width: 38%; text-align: right;\">\' + format_currency(oc[i].tax_amount/doc.conversion_rate, doc.currency) + \'</td>\\n\' +\n						\'</tr>\\n\';\n				}\n			}\n			return rows + \'</table>\\n\';\n		}\n	};\n</script>\n\n\n<!-- Page Layout Settings -->\n<div class=\'common page-header\'>\n	<!-- \n		Page Header will contain\n			+ table 1\n				+ table 1a\n					- Name\n					- Address\n					- Contact\n					- Mobile No\n				+ table 1b\n					- Voucher Date\n					- Due Date\n	-->\n	<table class=\'header-table\' cellspacing=0>\n		<thead>\n			<tr><td colspan=2><script>\'<h1>\' + (doc.select_print_heading || \'Quotation\') + \'</h1>\'</script></td></tr>\n			<tr><td colspan=2><h3><script>cur_frm.docname</script></h3></td></tr>\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60%><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=39%><b>Name</b></td>\n						<td><script>doc.customer_name</script></td>\n					</tr>\n					<tr>\n						<td><b>Address</b></td>\n						<td><script>replace_newlines(doc.address_display)</script></td>\n					</tr>\n					<tr>\n						<td><b>Contact</b></td>\n						<td><script>doc.contact_display</script></td>\n					</tr>\n				</tbody></table></td>\n				<td><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=63%><b>Quotation Date</b></td>\n						<td><script>date.str_to_user(doc.transaction_date)</script></td>\n					<tr>					\n				</tbody></table></td>\n			</tr>\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n<div class=\'common page-body\'>\n	<!-- \n		Page Body will contain\n			+ table 2\n				- Sales Invoice Data\n	-->\n	<script>si_std.print_item_table()</script>\n</div>\n<div class=\'common page-footer\'>\n	<!-- \n		Page Footer will contain\n			+ table 3\n				- Terms and Conditions\n				- Total Rounded Amount Calculation\n				- Total Rounded Amount in Words\n	-->\n	<table class=\'footer-table\' width=100% cellspacing=0>\n		<thead>\n			\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60% style=\'padding-right: 10px;\'>\n					<b>Terms, Conditions &amp; Other Information:</b><br />\n					<script>doc.terms</script>\n				</td>\n				<td>\n					<table cellspacing=0 width=100%><tbody>\n						<tr>\n							<td>Net Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.net_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr><td colspan=3><script>si_std.print_other_charges()</script></td></tr>\n						<tr>\n							<td>Grand Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.grand_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr style=\'font-weight: bold\'>\n							<td>Rounded Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.rounded_total_export, doc.currency)\n							</script></td>\n						</tr>\n					</tbody></table>\n					<br /><b>In Words</b><br />\n					<i><script>doc.in_words_export</script></i>\n				</td>\n			</tr>		\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n','Client'),('Sales Invoice Classic','2013-04-19 13:30:27','2013-08-07 20:14:53','Administrator','Administrator',0,NULL,NULL,NULL,1,'Sales Invoice','Accounts','Yes','<!--\n	Sample Print Format for ERPNext\n	Please use at your own discretion\n	For suggestions and contributions:\n		https://github.com/webnotes/erpnext-print-templates\n\n	Freely usable under MIT license\n-->\n\n<!-- Style Settings -->\n<style>\n	/*\n		common style for whole page\n		This should include:\n		+ page size related settings\n		+ font family settings\n		+ line spacing settings\n	*/\n	@media screen {\n		body {\n			width: 8.3in;\n		}\n	}\n\n	html, body, div, span, td {\n		font-family: \"Georgia\", serif;\n		font-size: 12px;\n	}\n\n	body {\n		padding: 10px;\n		margin: auto;\n		font-size: 12px;\n	}\n\n	.common {\n		font-family: \"Georgia\", serif !important;\n		font-size: 12px;\n		padding: 10px 0px;\n	}\n\n	table {\n		border-collapse: collapse;\n		width: 100%;\n		vertical-align: top;\n	}\n\n	table td {\n		padding: 2px 0px;\n	}\n	\n	table h1, h2, h3, h4, h5, h6 {\n		padding: 0px;\n		margin: 0px;\n	}\n\n	table.header-table td {\n		vertical-align: top;\n	}\n\n	table.header-table thead {\n		border-bottom: 1px solid black;\n	}\n\n	table.header-table h3 {\n		color: gray;\n	}\n\n	table.header-table thead td {\n		padding: 5px 0px;\n	}\n\n	div.page-body table td:nth-child(6),\n	div.page-body table td:nth-child(7) {\n		text-align: right;\n	}\n\n	table.footer-table td {\n		vertical-align: top;\n	}\n\n	table.footer-table td table td:nth-child(2),\n	table.footer-table td table td:nth-child(3) {\n		text-align: right;\n	}\n</style>\n\n\n<!-- Javascript -->\n<script>\n	si_std = {\n		print_item_table: function() {\n			var table = print_table(\n				\'Sales Invoice\',\n				doc.name,\n				\'entries\',\n				\'Sales Invoice Item\',\n				[// Here specify the table columns to be displayed\n					\'SR\', \'item_name\', \'description\', \'qty\', \'stock_uom\',\n					\'export_rate\', \'export_amount\'\n				],\n				[// Here specify the labels of column headings\n					\'Sr\', \'Item Name\', \'Description\', \'Qty\',\n					\'UoM\', \'Basic Rate\', \'Amount\'\n				],\n				[// Here specify the column widths\n					\'3%\', \'20%\', \'37%\', \'5%\',\n					\'5%\', \'15%\', \'15%\'\n				],\n				null,\n				null,\n				{\n					\'description\' : function(data_row) {\n						if(data_row.adj_rate) {\n							var to_append = \'<div style=\"padding-left: 15px;\"><i>Discount: \' + \n								data_row.adj_rate + \'% on \' + \n								format_currency(data_row.ref_rate, doc.currency) + \'</i></div>\';\n							if(data_row.description.indexOf(to_append)==-1) {\n								return data_row.description + to_append;\n							} else { return data_row.description; }\n						} else {\n							return data_row.description;\n						}\n					}\n				}\n			);\n\n			// This code takes care of page breaks\n			if(table.appendChild) {\n				out = table.innerHTML;\n			} else {\n				out = \'\';\n				for(var i=0; i < (table.length-1); i++) {\n					out += table[i].innerHTML + \n						\'<div style = \"page-break-after: always;\" \\\n						class = \"page_break\"></div>\\\n						<div class=\"page-settings\"></div>\';\n				}\n				out += table[table.length-1].innerHTML;\n			}\n			return out;\n		},\n\n\n		print_other_charges: function(parent) {\n			var oc = getchildren(\'Sales Taxes and Charges\', doc.name, \'other_charges\');\n			var rows = \'<table width=100%>\\n\';\n			for(var i=0; i<oc.length; i++) {\n				if(!oc[i].included_in_print_rate) {\n					rows +=\n						\'<tr>\\n\' +\n							\'\\t<td>\' + oc[i].description + \'</td>\\n\' +\n							\'\\t<td style=\"width: 38%; text-align: right;\">\' + format_currency(oc[i].tax_amount/doc.conversion_rate, doc.currency) + \'</td>\\n\' +\n						\'</tr>\\n\';\n				}\n			}\n			return rows + \'</table>\\n\';\n		}\n	};\n</script>\n\n\n<!-- Page Layout Settings -->\n<div class=\'common page-header\'>\n	<!-- \n		Page Header will contain\n			+ table 1\n				+ table 1a\n					- Name\n					- Address\n					- Contact\n					- Mobile No\n				+ table 1b\n					- Voucher Date\n					- Due Date\n	-->\n	<table class=\'header-table\' cellspacing=0>\n		<thead>\n			<tr><td><script>\'<h1>\' + (doc.select_print_heading || \'Invoice\') + \'</h1>\'</script></td></tr>\n			<tr><td><h3><script>cur_frm.docname</script></h3></td></tr>\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60%><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=39%><b>Name</b></td>\n						<td><script>doc.customer_name</script></td>\n					</tr>\n					<tr>\n						<td><b>Address</b></td>\n						<td><script>replace_newlines(doc.address_display)</script></td>\n					</tr>\n					<tr>\n						<td><b>Contact</b></td>\n						<td><script>doc.contact_display</script></td>\n					</tr>\n				</tbody></table></td>\n				<td><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=40%><b>Invoice Date</b></td>\n						<td><script>date.str_to_user(doc.posting_date)</script></td>\n					<tr>\n                    <tr>\n    					<td width=40%><script>\n                            (doc.convert_into_recurring_invoice && doc.recurring_id)\n                            ?\"<b>Invoice Period</b>\"\n                            :\"\";\n    					</script></td>\n						<td><script>\n                            (doc.convert_into_recurring_invoice && doc.recurring_id)\n                            ?(date.str_to_user(doc.invoice_period_from_date) +\n                                \' to \' + date.str_to_user(doc.invoice_period_to_date))\n                            :\"\";\n                        </script></td>\n					<tr>\n					<tr>\n						<td><b>Due Date</b></td>\n						<td><script>date.str_to_user(doc.due_date)</script></td>\n					<tr>					\n				</tbody></table></td>\n			</tr>\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n<div class=\'common page-body\'>\n	<!-- \n		Page Body will contain\n			+ table 2\n				- Sales Invoice Data\n	-->\n	<script>si_std.print_item_table()</script>\n</div>\n<div class=\'common page-footer\'>\n	<!-- \n		Page Footer will contain\n			+ table 3\n				- Terms and Conditions\n				- Total Rounded Amount Calculation\n				- Total Rounded Amount in Words\n	-->\n	<table class=\'footer-table\' width=100% cellspacing=0>\n		<thead>\n			\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60% style=\'padding-right: 10px;\'>\n					<b>Terms, Conditions &amp; Other Information:</b><br />\n					<script>doc.terms</script>\n				</td>\n				<td>\n					<table cellspacing=0 width=100%><tbody>\n						<tr>\n							<td>Net Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.net_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr><td colspan=3><script>si_std.print_other_charges()</script></td></tr>\n						<tr>\n							<td>Grand Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.grand_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr style=\'font-weight: bold\'>\n							<td>Rounded Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.rounded_total_export, doc.currency)\n							</script></td>\n						</tr>\n					</tbody></table>\n					<br /><b>In Words</b><br />\n					<i><script>doc.in_words_export</script></i>\n				</td>\n			</tr>		\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n','Client'),('Sales Invoice Modern','2013-04-19 13:30:27','2013-08-07 20:12:16','Administrator','Administrator',0,NULL,NULL,NULL,1,'Sales Invoice','Accounts','Yes','<!--\n	Sample Print Format for ERPNext\n	Please use at your own discretion\n	For suggestions and contributions:\n		https://github.com/webnotes/erpnext-print-templates\n\n	Freely usable under MIT license\n-->\n\n<!-- Style Settings -->\n<style>\n	/*\n		common style for whole page\n		This should include:\n		+ page size related settings\n		+ font family settings\n		+ line spacing settings\n	*/\n	@media screen {\n		body {\n			width: 8.3in;\n		}\n	}\n\n	html, body, div, span, td {\n		font-family: \"Helvetica\", \"Arial\", sans-serif;\n		font-size: 12px;\n	}\n\n	body {\n		padding: 10px;\n		margin: auto;\n		font-size: 12px;\n        line-height: 150%;\n	}\n\n	.common {\n		font-family: \"Helvetica\", \"Arial\", sans-serif !important;\n		font-size: 12px;\n		padding: 10px 0px;\n	}\n\n	table {\n		border-collapse: collapse;\n		width: 100%;\n		vertical-align: top;\n		border-style: none !important;\n	}\n\n	table td {\n		padding: 2px 0px;\n		border-style: none !important;\n	}\n	\n	table h1, h2, h3, h4, h5, h6 {\n		padding: 0px;\n		margin: 0px;\n	}\n\n	table.header-table td {\n		vertical-align: top;\n	}\n\n	table.header-table h1 {\n		text-transform: uppercase;\n		color: white;\n		font-size: 55px;\n		font-style: italic;\n	}\n\n	table.header-table thead tr:nth-child(1) div {\n		height: 24px;\n		background-color: #696969;\n		vertical-align: middle;\n		padding: 12px 0px 0px 0px;\n		width: 100%;\n	}\n\n	div.page-body table td:nth-child(6),\n	div.page-body table td:nth-child(7) {\n		text-align: right;\n	}\n\n	div.page-body table tr td {\n		background-color: #DCDCDC !important;\n	}\n\n	div.page-body table tr:nth-child(1) td {\n		background-color: #696969 !important;\n		color: white !important;\n	}\n\n	table.footer-table td {\n		vertical-align: top;\n	}\n\n	table.footer-table td table td:nth-child(2),\n	table.footer-table td table td:nth-child(3) {\n		text-align: right;\n	}\n\n	table.footer-table tfoot td {\n		background-color: #696969;\n		height: 10px;\n	}\n\n	.imp-details {\n		background-color: #DCDCDC;\n	}\n</style>\n\n\n<!-- Javascript -->\n<script>\n	si_std = {\n		print_item_table: function() {\n			var table = print_table(\n				\'Sales Invoice\',\n				doc.name,\n				\'entries\',\n				\'Sales Invoice Item\',\n				[// Here specify the table columns to be displayed\n					\'SR\', \'item_name\', \'description\', \'qty\', \'stock_uom\',\n					\'export_rate\', \'export_amount\'\n				],\n				[// Here specify the labels of column headings\n					\'Sr\', \'Item Name\', \'Description\', \'Qty\',\n					\'UoM\', \'Basic Rate\', \'Amount\'\n				],\n				[// Here specify the column widths\n					\'3%\', \'20%\', \'37%\', \'5%\',\n					\'5%\', \'15%\', \'15%\'\n				],\n				null,\n				null,\n				{\n					\'description\' : function(data_row) {\n						if(data_row.adj_rate) {\n							var to_append = \'<div style=\"padding-left: 15px;\"><i>Discount: \' + \n								data_row.adj_rate + \'% on \' + \n								format_currency(data_row.ref_rate, doc.currency) + \'</i></div>\';\n							if(data_row.description.indexOf(to_append)==-1) {\n								return data_row.description + to_append;\n							} else { return data_row.description; }\n						} else {\n							return data_row.description;\n						}\n					}\n				}\n			);\n\n			// This code takes care of page breaks\n			if(table.appendChild) {\n				out = table.innerHTML;\n			} else {\n				out = \'\';\n				for(var i=0; i < (table.length-1); i++) {\n					out += table[i].innerHTML + \n						\'<div style = \"page-break-after: always;\" \\\n						class = \"page_break\"></div>\\\n						<div class=\"page-settings\"></div>\';\n				}\n				out += table[table.length-1].innerHTML;\n			}\n			return out;\n		},\n\n\n		print_other_charges: function(parent) {\n			var oc = getchildren(\'Sales Taxes and Charges\', doc.name, \'other_charges\');\n			var rows = \'<table width=100%>\\n\';\n			for(var i=0; i<oc.length; i++) {\n				if(!oc[i].included_in_print_rate) {\n					rows +=\n						\'<tr>\\n\' +\n							\'\\t<td>\' + oc[i].description + \'</td>\\n\' +\n							\'\\t<td style=\"width: 38%; text-align: right;\">\' + format_currency(oc[i].tax_amount, doc.currency) + \'</td>\\n\' +\n						\'</tr>\\n\';\n				}\n			}\n			return rows + \'</table>\\n\';\n		}\n	};\n</script>\n\n\n<!-- Page Layout Settings -->\n<div class=\'common page-header\'>\n	<!-- \n		Page Header will contain\n			+ table 1\n				+ table 1a\n					- Name\n					- Address\n					- Contact\n					- Mobile No\n				+ table 1b\n					- Voucher Date\n					- Due Date\n	-->\n	<table class=\'header-table\' cellspacing=0>\n		<thead>\n			<tr><td colspan=2><div><script>\'<h1>\' + (doc.select_print_heading || \'Invoice\') + \'</h1>\'</script></div></td></tr>\n			<tr><td colspan=2><div style=\"height:15px\"></div></td></tr>\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60%><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=39%><b>Name</b></td>\n						<td><script>doc.customer_name</script></td>\n					</tr>\n					<tr>\n						<td><b>Address</b></td>\n						<td><script>replace_newlines(doc.address_display)</script></td>\n					</tr>\n					<tr>\n						<td><b>Contact</b></td>\n						<td><script>doc.contact_display</script></td>\n					</tr>\n				</tbody></table></td>\n				<td><table width=100% cellspacing=0><tbody>\n					<tr class=\'imp-details\'>\n						<td><b>Invoice No.</b></td>\n						<td><script>cur_frm.docname</script></td>\n					</tr>\n					<tr>\n						<td width=40%><b>Invoice Date</b></td>\n						<td><script>date.str_to_user(doc.posting_date)</script></td>\n					<tr>\n                    <tr>\n        				<td width=40%><script>\n                            (doc.convert_into_recurring_invoice && doc.recurring_id)\n                            ?\"<b>Invoice Period</b>\"\n                            :\"\";\n    					</script></td>\n						<td><script>\n                            (doc.convert_into_recurring_invoice && doc.recurring_id)\n                            ?(date.str_to_user(doc.invoice_period_from_date) +\n                                \' to \' + date.str_to_user(doc.invoice_period_to_date))\n                            :\"\";\n                        </script></td>\n					<tr>\n					<tr>\n						<td><b>Due Date</b></td>\n						<td><script>date.str_to_user(doc.due_date)</script></td>\n					<tr>					\n				</tbody></table></td>\n			</tr>\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n<div class=\'common page-body\'>\n	<!-- \n		Page Body will contain\n			+ table 2\n				- Sales Invoice Data\n	-->\n	<script>si_std.print_item_table()</script>\n</div>\n<div class=\'common page-footer\'>\n	<!-- \n		Page Footer will contain\n			+ table 3\n				- Terms and Conditions\n				- Total Rounded Amount Calculation\n				- Total Rounded Amount in Words\n	-->\n	<table class=\'footer-table\' width=100% cellspacing=0>\n		<thead>\n			\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60% style=\'padding-right: 10px;\'>\n					<b>Terms, Conditions &amp; Other Information:</b><br />\n					<script>doc.terms</script>\n				</td>\n				<td>\n					<table cellspacing=0 width=100%><tbody>\n						<tr>\n							<td>Net Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.net_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr><td colspan=3><script>si_std.print_other_charges()</script></td></tr>\n						<tr>\n							<td>Grand Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.grand_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr style=\'font-weight: bold\' class=\'imp-details\'>\n							<td>Rounded Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.rounded_total_export, doc.currency)\n							</script></td>\n						</tr>\n					</tbody></table>\n					<br /><b>In Words</b><br />\n					<i><script>doc.in_words_export</script></i>\n				</td>\n			</tr>		\n		</tbody>\n		<tfoot>\n			<tr><td colspan=2><div></div></td><tr>\n		</tfoot>\n	</table>\n</div>\n','Client'),('Sales Invoice Spartan','2013-04-19 13:30:27','2013-08-07 19:50:51','Administrator','Administrator',0,NULL,NULL,NULL,1,'Sales Invoice','Accounts','Yes','<!--\n	Sample Print Format for ERPNext\n	Please use at your own discretion\n	For suggestions and contributions:\n		https://github.com/webnotes/erpnext-print-templates\n\n	Freely usable under MIT license\n-->\n\n<!-- Style Settings -->\n<style>\n	/*\n		common style for whole page\n		This should include:\n		+ page size related settings\n		+ font family settings\n		+ line spacing settings\n	*/\n	@media screen {\n		body {\n			width: 8.3in;\n		}\n	}\n\n	html, body, div, span, td {\n		font-family: \"Arial\", sans-serif;\n		font-size: 12px;\n	}\n\n	body {\n		padding: 10px;\n		margin: auto;\n		font-size: 12px;\n	}\n\n	.common {\n		font-family: \"Arial\", sans-serif !important;\n		font-size: 12px;\n		padding: 0px;\n	}\n\n	table {\n		width: 100% !important;\n		vertical-align: top;\n	}\n\n	table td {\n		padding: 2px 0px;\n	}\n\n	table, td {\n		border-collapse: collapse !important;\n		padding: 0px;\n		margin: 0px !important;\n	}\n	\n	table h1, h2, h3, h4, h5, h6 {\n		padding: 0px;\n		margin: 0px;\n	}\n\n	table.header-table td {\n		vertical-align: top;\n	}\n\n	table.header-table h3 {\n		color: gray;\n	}\n\n	table.header-table thead td {\n		padding: 5px;\n	}\n\n	table.header-table > thead,\n	table.header-table > tbody > tr > td,\n	table.footer-table > tbody > tr > td {\n		border: 1px solid black;\n		padding: 5px;\n	}\n\n	table.footer-table > tbody,\n	table.header-table > thead {\n		border-bottom: 3px solid black;\n	}\n\n	table.header-table > thead {\n		border-top: 3px solid black;\n	}\n\n	div.page-body table td:nth-child(6),\n	div.page-body table td:nth-child(7) {\n		text-align: right;\n	}\n\n	div.page-body td {\n		background-color: white !important;\n		border: 1px solid black !important;\n	}\n\n	table.footer-table td {\n		vertical-align: top;\n	}\n\n	table.footer-table td table td:nth-child(2),\n	table.footer-table td table td:nth-child(3) {\n		text-align: right;\n	}\n</style>\n\n\n<!-- Javascript -->\n<script>\n	si_std = {\n		print_item_table: function() {\n			var table = print_table(\n				\'Sales Invoice\',\n				doc.name,\n				\'entries\',\n				\'Sales Invoice Item\',\n				[// Here specify the table columns to be displayed\n					\'SR\', \'item_name\', \'description\', \'qty\', \'stock_uom\',\n					\'export_rate\', \'export_amount\'\n				],\n				[// Here specify the labels of column headings\n					\'Sr\', \'Item Name\', \'Description\', \'Qty\',\n					\'UoM\', \'Basic Rate\', \'Amount\'\n				],\n				[// Here specify the column widths\n					\'3%\', \'20%\', \'37%\', \'5%\',\n					\'5%\', \'15%\', \'15%\'\n				],\n				null,\n				null,\n				{\n					\'description\' : function(data_row) {\n						if(data_row.adj_rate) {\n							var to_append = \'<div style=\"padding-left: 15px;\"><i>Discount: \' + \n								data_row.adj_rate + \'% on \' + \n								format_currency(data_row.ref_rate, doc.currency) + \'</i></div>\';\n							if(data_row.description.indexOf(to_append)==-1) {\n								return data_row.description + to_append;\n							} else { return data_row.description; }\n						} else {\n							return data_row.description;\n						}\n					}\n				}\n			);\n\n			// This code takes care of page breaks\n			if(table.appendChild) {\n				out = table.innerHTML;\n			} else {\n				out = \'\';\n				for(var i=0; i < (table.length-1); i++) {\n					out += table[i].innerHTML + \n						\'<div style = \"page-break-after: always;\" \\\n						class = \"page_break\"></div>\\\n						<div class=\"page-settings\"></div>\';\n				}\n				out += table[table.length-1].innerHTML;\n			}\n			return out;\n		},\n\n\n		print_other_charges: function(parent) {\n			var oc = getchildren(\'Sales Taxes and Charges\', doc.name, \'other_charges\');\n			var rows = \'<table width=100%>\\n\';\n			for(var i=0; i<oc.length; i++) {\n				if(!oc[i].included_in_print_rate) {\n					rows +=\n						\'<tr>\\n\' +\n							\'\\t<td>\' + oc[i].description + \'</td>\\n\' +\n							\'\\t<td></td>\\n\' +\n							\'\\t<td style=\"width: 38%; text-align: right;\">\' + format_currency(oc[i].tax_amount, doc.currency) + \'</td>\\n\' +\n						\'</tr>\\n\';\n				}\n			}\n			return rows + \'</table>\\n\';\n		}\n	};\n</script>\n\n\n<!-- Page Layout Settings -->\n<div class=\'common page-header\'>\n	<!-- \n		Page Header will contain\n			+ table 1\n				+ table 1a\n					- Name\n					- Address\n					- Contact\n					- Mobile No\n				+ table 1b\n					- Voucher Date\n					- Due Date\n	-->\n	<table class=\'header-table\' cellspacing=0>\n		<thead>\n			<tr><td colspan=2><script>\'<h1>\' + (doc.select_print_heading || \'Invoice\') + \'</h1>\'</script></td></tr>\n			<tr><td colspan=2><h3><script>cur_frm.docname</script></h3></td></tr>\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60%><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=39%><b>Name</b></td>\n						<td><script>doc.customer_name</script></td>\n					</tr>\n					<tr>\n						<td><b>Address</b></td>\n						<td><script>replace_newlines(doc.address_display)</script></td>\n					</tr>\n					<tr>\n						<td><b>Contact</b></td>\n						<td><script>doc.contact_display</script></td>\n					</tr>\n				</tbody></table></td>\n				<td><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=40%><b>Invoice Date</b></td>\n						<td><script>date.str_to_user(doc.posting_date)</script></td>\n					<tr>\n                    <tr>\n        				<td width=40%><script>\n                            (doc.convert_into_recurring_invoice && doc.recurring_id)\n                            ?\"<b>Invoice Period</b>\"\n                            :\"\";\n    					</script></td>\n						<td><script>\n                            (doc.convert_into_recurring_invoice && doc.recurring_id)\n                            ?(date.str_to_user(doc.invoice_period_from_date) +\n                                \' to \' + date.str_to_user(doc.invoice_period_to_date))\n                            :\"\";\n                        </script></td>\n					<tr>\n					<tr>\n						<td><b>Due Date</b></td>\n						<td><script>date.str_to_user(doc.due_date)</script></td>\n					<tr>					\n				</tbody></table></td>\n			</tr>\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n<div class=\'common page-body\'>\n	<!-- \n		Page Body will contain\n			+ table 2\n				- Sales Invoice Data\n	-->\n	<script>si_std.print_item_table()</script>\n</div>\n<div class=\'common page-footer\'>\n	<!-- \n		Page Footer will contain\n			+ table 3\n				- Terms and Conditions\n				- Total Rounded Amount Calculation\n				- Total Rounded Amount in Words\n	-->\n	<table class=\'footer-table\' width=100% cellspacing=0>\n		<thead>\n			\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60% style=\'padding-right: 10px;\'>\n					<b>Terms, Conditions &amp; Other Information:</b><br />\n					<script>doc.terms</script>\n				</td>\n				<td>\n					<table cellspacing=0 width=100%><tbody>\n						<tr>\n							<td>Net Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.net_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr><td colspan=3><script>si_std.print_other_charges()</script></td></tr>\n						<tr>\n							<td>Grand Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.grand_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr style=\'font-weight: bold\'>\n							<td>Rounded Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.rounded_total_export, doc.currency)\n							</script></td>\n						</tr>\n					</tbody></table>\n					<br /><b>In Words</b><br />\n					<i><script>doc.in_words_export</script></i>\n				</td>\n			</tr>		\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n','Client'),('Sales Order Classic','2013-04-19 13:30:51','2013-08-07 19:45:49','Administrator','Administrator',0,NULL,NULL,NULL,1,'Sales Order','Selling','Yes','<!--\n	Sample Print Format for ERPNext\n	Please use at your own discretion\n	For suggestions and contributions:\n		https://github.com/webnotes/erpnext-print-templates\n\n	Freely usable under MIT license\n-->\n\n<!-- Style Settings -->\n<style>\n	/*\n		common style for whole page\n		This should include:\n		+ page size related settings\n		+ font family settings\n		+ line spacing settings\n	*/\n	@media screen {\n		body {\n			width: 8.3in;\n		}\n	}\n\n	html, body, div, span, td {\n		font-family: \"Georgia\", serif;\n		font-size: 12px;\n	}\n\n	body {\n		padding: 10px;\n		margin: auto;\n		font-size: 12px;\n	}\n\n	.common {\n		font-family: \"Georgia\", serif !important;\n		font-size: 12px;\n		padding: 10px 0px;\n	}\n\n	table {\n		border-collapse: collapse;\n		width: 100%;\n		vertical-align: top;\n	}\n\n	table td {\n		padding: 2px 0px;\n	}\n	\n	table h1, h2, h3, h4, h5, h6 {\n		padding: 0px;\n		margin: 0px;\n	}\n\n	table.header-table td {\n		vertical-align: top;\n	}\n\n	table.header-table thead {\n		border-bottom: 1px solid black;\n	}\n\n	table.header-table h3 {\n		color: gray;\n	}\n\n	table.header-table thead td {\n		padding: 5px 0px;\n	}\n\n	div.page-body table td:nth-child(6),\n	div.page-body table td:nth-child(7) {\n		text-align: right;\n	}\n\n	table.footer-table td {\n		vertical-align: top;\n	}\n\n	table.footer-table td table td:nth-child(2),\n	table.footer-table td table td:nth-child(3) {\n		text-align: right;\n	}\n</style>\n\n\n<!-- Javascript -->\n<script>\n	si_std = {\n		print_item_table: function() {\n			var table = print_table(\n				\'Sales Order\',\n				doc.name,\n				\'sales_order_details\',\n				\'Sales Order Item\',\n				[// Here specify the table columns to be displayed\n					\'SR\', \'item_code\', \'description\', \'qty\', \'stock_uom\',\n					\'basic_rate\', \'amount\'\n				],\n				[// Here specify the labels of column headings\n					\'Sr\', \'Item Code\', \'Description\', \'Qty\',\n					\'UoM\', \'Basic Rate\', \'Amount\'\n				],\n				[// Here specify the column widths\n					\'3%\', \'20%\', \'37%\', \'5%\',\n					\'5%\', \'15%\', \'15%\'\n				],\n				null,\n				null,\n				{\n					\'description\' : function(data_row) {\n						if(data_row.adj_rate) {\n							var to_append = \'<div style=\"padding-left: 15px;\"><i>Discount: \' + \n								data_row.adj_rate + \'% on \' + \n								format_currency(data_row.ref_rate, doc.currency) + \'</i></div>\';\n							if(data_row.description.indexOf(to_append)==-1) {\n								return data_row.description + to_append;\n							} else { return data_row.description; }\n						} else {\n							return data_row.description;\n						}\n					}\n				}\n			);\n\n			// This code takes care of page breaks\n			if(table.appendChild) {\n				out = table.innerHTML;\n			} else {\n				out = \'\';\n				for(var i=0; i < (table.length-1); i++) {\n					out += table[i].innerHTML + \n						\'<div style = \"page-break-after: always;\" \\\n						class = \"page_break\"></div>\\\n						<div class=\"page-settings\"></div>\';\n				}\n				out += table[table.length-1].innerHTML;\n			}\n			return out;\n		},\n\n\n		print_other_charges: function(parent) {\n			var oc = getchildren(\'Sales Taxes and Charges\', doc.name, \'other_charges\');\n			var rows = \'<table width=100%>\\n\';\n			for(var i=0; i<oc.length; i++) {\n				if(!oc[i].included_in_print_rate) {\n					rows +=\n						\'<tr>\\n\' +\n							\'\\t<td>\' + oc[i].description + \'</td>\\n\' +\n							\'\\t<td style=\"width: 38%; text-align: right;\">\' + format_currency(oc[i].tax_amount/doc.conversion_rate, doc.currency) + \'</td>\\n\' +\n						\'</tr>\\n\';\n				}\n			}\n			return rows + \'</table>\\n\';\n		}\n	};\n</script>\n\n\n<!-- Page Layout Settings -->\n<div class=\'common page-header\'>\n	<!-- \n		Page Header will contain\n			+ table 1\n				+ table 1a\n					- Name\n					- Address\n					- Contact\n					- Mobile No\n				+ table 1b\n					- Voucher Date\n					- Due Date\n	-->\n	<table class=\'header-table\' cellspacing=0>\n		<thead>\n			<tr><td><script>\'<h1>\' + (doc.select_print_heading || \'Sales Order\') + \'</h1>\'</script></td></tr>\n			<tr><td><h3><script>cur_frm.docname</script></h3></td></tr>\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60%><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=39%><b>Name</b></td>\n						<td><script>doc.customer_name</script></td>\n					</tr>\n					<tr>\n						<td><b>Address</b></td>\n						<td><script>replace_newlines(doc.address_display)</script></td>\n					</tr>\n					<tr>\n						<td><b>Contact</b></td>\n						<td><script>doc.contact_display</script></td>\n					</tr>\n				</tbody></table></td>\n				<td><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=63%><b>Sales Order Date</b></td>\n						<td><script>date.str_to_user(doc.transaction_date)</script></td>\n					<tr>					\n					<tr>\n						<td><b>Delivery Date</b></td>\n						<td><script>date.str_to_user(doc.delivery_date)</script></td>\n					<tr>					\n				</tbody></table></td>\n			</tr>\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n<div class=\'common page-body\'>\n	<!-- \n		Page Body will contain\n			+ table 2\n				- Sales Invoice Data\n	-->\n	<script>si_std.print_item_table()</script>\n</div>\n<div class=\'common page-footer\'>\n	<!-- \n		Page Footer will contain\n			+ table 3\n				- Terms and Conditions\n				- Total Rounded Amount Calculation\n				- Total Rounded Amount in Words\n	-->\n	<table class=\'footer-table\' width=100% cellspacing=0>\n		<thead>\n			\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60% style=\'padding-right: 10px;\'>\n					<b>Terms, Conditions &amp; Other Information:</b><br />\n					<script>doc.terms</script>\n				</td>\n				<td>\n					<table cellspacing=0 width=100%><tbody>\n						<tr>\n							<td>Net Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.net_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr><td colspan=3><script>si_std.print_other_charges()</script></td></tr>\n						<tr>\n							<td>Grand Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.grand_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr style=\'font-weight: bold\'>\n							<td>Rounded Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.rounded_total_export, doc.currency)\n							</script></td>\n						</tr>\n					</tbody></table>\n					<br /><b>In Words</b><br />\n					<i><script>doc.in_words_export</script></i>\n				</td>\n			</tr>		\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n','Client'),('Sales Order Modern','2013-04-19 13:30:51','2013-08-07 20:12:23','Administrator','Administrator',0,NULL,NULL,NULL,1,'Sales Order','Selling','Yes','<!--\n	Sample Print Format for ERPNext\n	Please use at your own discretion\n	For suggestions and contributions:\n		https://github.com/webnotes/erpnext-print-templates\n\n	Freely usable under MIT license\n-->\n\n<!-- Style Settings -->\n<style>\n	/*\n		common style for whole page\n		This should include:\n		+ page size related settings\n		+ font family settings\n		+ line spacing settings\n	*/\n	@media screen {\n		body {\n			width: 8.3in;\n		}\n	}\n\n	html, body, div, span, td {\n		font-family: \"Helvetica\", \"Arial\", sans-serif;\n		font-size: 12px;\n	}\n\n	body {\n		padding: 10px;\n		margin: auto;\n		font-size: 12px;\n        line-height: 150%;\n	}\n\n	.common {\n		font-family: \"Helvetica\", \"Arial\", sans-serif !important;\n		font-size: 12px;\n		padding: 10px 0px;\n	}\n\n	table {\n		border-collapse: collapse;\n		width: 100%;\n		vertical-align: top;\n		border-style: none !important;\n	}\n\n	table td {\n		padding: 2px 0px;\n		border-style: none !important;\n	}\n	\n	table h1, h2, h3, h4, h5, h6 {\n		padding: 0px;\n		margin: 0px;\n	}\n\n	table.header-table td {\n		vertical-align: top;\n	}\n\n	table.header-table h1 {\n		text-transform: uppercase;\n		color: white;\n		font-size: 55px;\n		font-style: italic;\n	}\n\n	table.header-table thead tr:nth-child(1) div {\n		height: 24px;\n		background-color: #696969;\n		vertical-align: middle;\n		padding: 12px 0px 0px 0px;\n		width: 100%;\n	}\n\n	div.page-body table td:nth-child(6),\n	div.page-body table td:nth-child(7) {\n		text-align: right;\n	}\n\n	div.page-body table tr td {\n		background-color: #DCDCDC !important;\n	}\n\n	div.page-body table tr:nth-child(1) td {\n		background-color: #696969 !important;\n		color: white !important;\n	}\n\n	table.footer-table td {\n		vertical-align: top;\n	}\n\n	table.footer-table td table td:nth-child(2),\n	table.footer-table td table td:nth-child(3) {\n		text-align: right;\n	}\n\n	table.footer-table tfoot td {\n		background-color: #696969;\n		height: 10px;\n	}\n\n	.imp-details {\n		background-color: #DCDCDC;\n	}\n</style>\n\n\n<!-- Javascript -->\n<script>\n	si_std = {\n		print_item_table: function() {\n			var table = print_table(\n				\'Sales Order\',\n				doc.name,\n				\'sales_order_details\',\n				\'Sales Order Item\',\n				[// Here specify the table columns to be displayed\n					\'SR\', \'item_code\', \'description\', \'qty\', \'stock_uom\',\n					\'basic_rate\', \'amount\'\n				],\n				[// Here specify the labels of column headings\n					\'Sr\', \'Item Code\', \'Description\', \'Qty\',\n					\'UoM\', \'Basic Rate\', \'Amount\'\n				],\n				[// Here specify the column widths\n					\'3%\', \'20%\', \'37%\', \'5%\',\n					\'5%\', \'15%\', \'15%\'\n				],\n				null,\n				null,\n				{\n					\'description\' : function(data_row) {\n						if(data_row.adj_rate) {\n							var to_append = \'<div style=\"padding-left: 15px;\"><i>Discount: \' + \n								data_row.adj_rate + \'% on \' + \n								format_currency(data_row.ref_rate, doc.currency) + \'</i></div>\';\n							if(data_row.description.indexOf(to_append)==-1) {\n								return data_row.description + to_append;\n							} else { return data_row.description; }\n						} else {\n							return data_row.description;\n						}\n					}\n				}\n			);\n\n			// This code takes care of page breaks\n			if(table.appendChild) {\n				out = table.innerHTML;\n			} else {\n				out = \'\';\n				for(var i=0; i < (table.length-1); i++) {\n					out += table[i].innerHTML + \n						\'<div style = \"page-break-after: always;\" \\\n						class = \"page_break\"></div>\\\n						<div class=\"page-settings\"></div>\';\n				}\n				out += table[table.length-1].innerHTML;\n			}\n			return out;\n		},\n\n\n		print_other_charges: function(parent) {\n			var oc = getchildren(\'Sales Taxes and Charges\', doc.name, \'other_charges\');\n			var rows = \'<table width=100%>\\n\';\n			for(var i=0; i<oc.length; i++) {\n				if(!oc[i].included_in_print_rate) {\n					rows +=\n						\'<tr>\\n\' +\n							\'\\t<td>\' + oc[i].description + \'</td>\\n\' +\n							\'\\t<td style=\"width: 38%; text-align: right;\">\' + format_currency(oc[i].tax_amount/doc.conversion_rate, doc.currency) + \'</td>\\n\' +\n						\'</tr>\\n\';\n				}\n			}\n			return rows + \'</table>\\n\';\n		}\n	};\n</script>\n\n\n<!-- Page Layout Settings -->\n<div class=\'common page-header\'>\n	<!-- \n		Page Header will contain\n			+ table 1\n				+ table 1a\n					- Name\n					- Address\n					- Contact\n					- Mobile No\n				+ table 1b\n					- Voucher Date\n					- Due Date\n	-->\n	<table class=\'header-table\' cellspacing=0>\n		<thead>\n			<tr><td colspan=2><div><script>\'<h1>\' + (doc.select_print_heading || \'Sales Order\') + \'</h1>\'</script></div></td></tr>\n			<tr><td colspan=2><div style=\"height:15px\"></div></td></tr>\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60%><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=39%><b>Name</b></td>\n						<td><script>doc.customer_name</script></td>\n					</tr>\n					<tr>\n						<td><b>Address</b></td>\n						<td><script>replace_newlines(doc.address_display)</script></td>\n					</tr>\n					<tr>\n						<td><b>Contact</b></td>\n						<td><script>doc.contact_display</script></td>\n					</tr>\n				</tbody></table></td>\n				<td><table width=100% cellspacing=0><tbody>\n					<tr class=\'imp-details\'>\n						<td><b>Sales Order No.</b></td>\n						<td><script>cur_frm.docname</script></td>\n					</tr>\n					<tr>\n						<td width=63%><b>Sales Order Date</b></td>\n						<td><script>date.str_to_user(doc.transaction_date)</script></td>\n					<tr>					\n					<tr>\n						<td><b>Delivery Date</b></td>\n						<td><script>date.str_to_user(doc.delivery_date)</script></td>\n					<tr>					\n				</tbody></table></td>\n			</tr>\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n<div class=\'common page-body\'>\n	<!-- \n		Page Body will contain\n			+ table 2\n				- Sales Invoice Data\n	-->\n	<script>si_std.print_item_table()</script>\n</div>\n<div class=\'common page-footer\'>\n	<!-- \n		Page Footer will contain\n			+ table 3\n				- Terms and Conditions\n				- Total Rounded Amount Calculation\n				- Total Rounded Amount in Words\n	-->\n	<table class=\'footer-table\' width=100% cellspacing=0>\n		<thead>\n			\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60% style=\'padding-right: 10px;\'>\n					<b>Terms, Conditions &amp; Other Information:</b><br />\n					<script>doc.terms</script>\n				</td>\n				<td>\n					<table cellspacing=0 width=100%><tbody>\n						<tr>\n							<td>Net Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.net_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr><td colspan=3><script>si_std.print_other_charges()</script></td></tr>\n						<tr>\n							<td>Grand Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.grand_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr style=\'font-weight: bold\' class=\'imp-details\'>\n							<td>Rounded Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.rounded_total_export, doc.currency)\n							</script></td>\n						</tr>\n					</tbody></table>\n					<br /><b>In Words</b><br />\n					<i><script>doc.in_words_export</script></i>\n				</td>\n			</tr>		\n		</tbody>\n		<tfoot>\n			<tr><td colspan=2><div></div></td><tr>\n		</tfoot>\n	</table>\n</div>\n','Client'),('Sales Order Spartan','2013-04-19 13:30:51','2013-08-07 19:45:59','Administrator','Administrator',0,NULL,NULL,NULL,1,'Sales Order','Selling','Yes','<!--\n	Sample Print Format for ERPNext\n	Please use at your own discretion\n	For suggestions and contributions:\n		https://github.com/webnotes/erpnext-print-templates\n\n	Freely usable under MIT license\n-->\n\n<!-- Style Settings -->\n<style>\n	/*\n		common style for whole page\n		This should include:\n		+ page size related settings\n		+ font family settings\n		+ line spacing settings\n	*/\n	@media screen {\n		body {\n			width: 8.3in;\n		}\n	}\n\n	html, body, div, span, td {\n		font-family: \"Arial\", sans-serif;\n		font-size: 12px;\n	}\n\n	body {\n		padding: 10px;\n		margin: auto;\n		font-size: 12px;\n	}\n\n	.common {\n		font-family: \"Arial\", sans-serif !important;\n		font-size: 12px;\n		padding: 0px;\n	}\n\n	table {\n		width: 100% !important;\n		vertical-align: top;\n	}\n\n	table td {\n		padding: 2px 0px;\n	}\n\n	table, td {\n		border-collapse: collapse !important;\n		padding: 0px;\n		margin: 0px !important;\n	}\n	\n	table h1, h2, h3, h4, h5, h6 {\n		padding: 0px;\n		margin: 0px;\n	}\n\n	table.header-table td {\n		vertical-align: top;\n	}\n\n	table.header-table h3 {\n		color: gray;\n	}\n\n	table.header-table thead td {\n		padding: 5px;\n	}\n\n	table.header-table > thead,\n	table.header-table > tbody > tr > td,\n	table.footer-table > tbody > tr > td {\n		border: 1px solid black;\n		padding: 5px;\n	}\n\n	table.footer-table > tbody,\n	table.header-table > thead {\n		border-bottom: 3px solid black;\n	}\n\n	table.header-table > thead {\n		border-top: 3px solid black;\n	}\n\n	div.page-body table td:nth-child(6),\n	div.page-body table td:nth-child(7) {\n		text-align: right;\n	}\n\n	div.page-body td {\n		background-color: white !important;\n		border: 1px solid black !important;\n	}\n\n	table.footer-table td {\n		vertical-align: top;\n	}\n\n	table.footer-table td table td:nth-child(2),\n	table.footer-table td table td:nth-child(3) {\n		text-align: right;\n	}\n</style>\n\n\n<!-- Javascript -->\n<script>\n	si_std = {\n		print_item_table: function() {\n			var table = print_table(\n				\'Sales Order\',\n				doc.name,\n				\'sales_order_details\',\n				\'Sales Order Item\',\n				[// Here specify the table columns to be displayed\n					\'SR\', \'item_code\', \'description\', \'qty\', \'stock_uom\',\n					\'basic_rate\', \'amount\'\n				],\n				[// Here specify the labels of column headings\n					\'Sr\', \'Item Code\', \'Description\', \'Qty\',\n					\'UoM\', \'Basic Rate\', \'Amount\'\n				],\n				[// Here specify the column widths\n					\'3%\', \'20%\', \'37%\', \'5%\',\n					\'5%\', \'15%\', \'15%\'\n				],\n				null,\n				null,\n				{\n					\'description\' : function(data_row) {\n						if(data_row.adj_rate) {\n							var to_append = \'<div style=\"padding-left: 15px;\"><i>Discount: \' + \n								data_row.adj_rate + \'% on \' + \n								format_currency(data_row.ref_rate, doc.currency) + \'</i></div>\';\n							if(data_row.description.indexOf(to_append)==-1) {\n								return data_row.description + to_append;\n							} else { return data_row.description; }\n						} else {\n							return data_row.description;\n						}\n					}\n				}\n			);\n\n			// This code takes care of page breaks\n			if(table.appendChild) {\n				out = table.innerHTML;\n			} else {\n				out = \'\';\n				for(var i=0; i < (table.length-1); i++) {\n					out += table[i].innerHTML + \n						\'<div style = \"page-break-after: always;\" \\\n						class = \"page_break\"></div>\\\n						<div class=\"page-settings\"></div>\';\n				}\n				out += table[table.length-1].innerHTML;\n			}\n			return out;\n		},\n\n\n		print_other_charges: function(parent) {\n			var oc = getchildren(\'Sales Taxes and Charges\', doc.name, \'other_charges\');\n			var rows = \'<table width=100%>\\n\';\n			for(var i=0; i<oc.length; i++) {\n				if(!oc[i].included_in_print_rate) {\n					rows +=\n						\'<tr>\\n\' +\n							\'\\t<td>\' + oc[i].description + \'</td>\\n\' +\n							\'\\t<td style=\"width: 38%; text-align: right;\">\' + format_currency(oc[i].tax_amount/doc.conversion_rate, doc.currency) + \'</td>\\n\' +\n						\'</tr>\\n\';\n				}\n			}\n			return rows + \'</table>\\n\';\n		}\n	};\n</script>\n\n\n<!-- Page Layout Settings -->\n<div class=\'common page-header\'>\n	<!-- \n		Page Header will contain\n			+ table 1\n				+ table 1a\n					- Name\n					- Address\n					- Contact\n					- Mobile No\n				+ table 1b\n					- Voucher Date\n					- Due Date\n	-->\n	<table class=\'header-table\' cellspacing=0>\n		<thead>\n			<tr><td colspan=2><script>\'<h1>\' + (doc.select_print_heading || \'Sales Order\') + \'</h1>\'</script></td></tr>\n			<tr><td colspan=2><h3><script>cur_frm.docname</script></h3></td></tr>\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60%><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=39%><b>Name</b></td>\n						<td><script>doc.customer_name</script></td>\n					</tr>\n					<tr>\n						<td><b>Address</b></td>\n						<td><script>replace_newlines(doc.address_display)</script></td>\n					</tr>\n					<tr>\n						<td><b>Contact</b></td>\n						<td><script>doc.contact_display</script></td>\n					</tr>\n				</tbody></table></td>\n				<td><table width=100% cellspacing=0><tbody>\n					<tr>\n						<td width=63%><b>Sales Order Date</b></td>\n						<td><script>date.str_to_user(doc.transaction_date)</script></td>\n					<tr>					\n					<tr>\n						<td><b>Delivery Date</b></td>\n						<td><script>date.str_to_user(doc.delivery_date)</script></td>\n					<tr>					\n				</tbody></table></td>\n			</tr>\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n<div class=\'common page-body\'>\n	<!-- \n		Page Body will contain\n			+ table 2\n				- Sales Invoice Data\n	-->\n	<script>si_std.print_item_table()</script>\n</div>\n<div class=\'common page-footer\'>\n	<!-- \n		Page Footer will contain\n			+ table 3\n				- Terms and Conditions\n				- Total Rounded Amount Calculation\n				- Total Rounded Amount in Words\n	-->\n	<table class=\'footer-table\' width=100% cellspacing=0>\n		<thead>\n			\n		</thead>\n		<tbody>\n			<tr>\n				<td width=60% style=\'padding-right: 10px;\'>\n					<b>Terms, Conditions &amp; Other Information:</b><br />\n					<script>doc.terms</script>\n				</td>\n				<td>\n					<table cellspacing=0 width=100%><tbody>\n						<tr>\n							<td>Net Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.net_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr><td colspan=3><script>si_std.print_other_charges()</script></td></tr>\n						<tr>\n							<td>Grand Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.grand_total_export, doc.currency)\n							</script></td>\n						</tr>\n						<tr style=\'font-weight: bold\'>\n							<td>Rounded Total</td>\n							<td style=\"width: 38%; text-align: right;\"><script>\n								format_currency(doc.rounded_total_export, doc.currency)\n							</script></td>\n						</tr>\n					</tbody></table>\n					<br /><b>In Words</b><br />\n					<i><script>doc.in_words_export</script></i>\n				</td>\n			</tr>		\n		</tbody>\n		<tfoot>\n		\n		</tfoot>\n	</table>\n</div>\n','Client'),('SalesInvoice','2013-03-21 15:24:28','2013-03-21 15:26:21','Administrator','Administrator',0,NULL,NULL,NULL,1,'Sales Invoice','Accounts','Yes',NULL,NULL);
/*!40000 ALTER TABLE `tabPrint Format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPrint Heading`
--

DROP TABLE IF EXISTS `tabPrint Heading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPrint Heading` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `description` text,
  `trash_reason` text,
  `print_heading` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPrint Heading`
--

LOCK TABLES `tabPrint Heading` WRITE;
/*!40000 ALTER TABLE `tabPrint Heading` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPrint Heading` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabProduction Order`
--

DROP TABLE IF EXISTS `tabProduction Order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabProduction Order` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `use_multi_level_bom` int(1) DEFAULT '1',
  `status` varchar(180) DEFAULT NULL,
  `bom_no` varchar(180) DEFAULT NULL,
  `project_name` varchar(180) DEFAULT NULL,
  `wip_warehouse` varchar(180) DEFAULT NULL,
  `sales_order` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT 'PRO',
  `description` text,
  `produced_qty` decimal(18,6) DEFAULT NULL,
  `production_item` varchar(180) DEFAULT NULL,
  `qty` decimal(18,6) DEFAULT NULL,
  `stock_uom` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `fg_warehouse` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabProduction Order`
--

LOCK TABLES `tabProduction Order` WRITE;
/*!40000 ALTER TABLE `tabProduction Order` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabProduction Order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabProduction Plan Item`
--

DROP TABLE IF EXISTS `tabProduction Plan Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabProduction Plan Item` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `bom_no` varchar(180) DEFAULT NULL,
  `description` text,
  `sales_order` varchar(180) DEFAULT NULL,
  `planned_qty` decimal(18,6) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `stock_uom` varchar(180) DEFAULT NULL,
  `warehouse` varchar(180) DEFAULT NULL,
  `so_pending_qty` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabProduction Plan Item`
--

LOCK TABLES `tabProduction Plan Item` WRITE;
/*!40000 ALTER TABLE `tabProduction Plan Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabProduction Plan Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabProduction Plan Sales Order`
--

DROP TABLE IF EXISTS `tabProduction Plan Sales Order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabProduction Plan Sales Order` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `customer` varchar(180) DEFAULT NULL,
  `grand_total` decimal(18,6) DEFAULT NULL,
  `sales_order_date` date DEFAULT NULL,
  `sales_order` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabProduction Plan Sales Order`
--

LOCK TABLES `tabProduction Plan Sales Order` WRITE;
/*!40000 ALTER TABLE `tabProduction Plan Sales Order` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabProduction Plan Sales Order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabProfile`
--

DROP TABLE IF EXISTS `tabProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabProfile` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `user_image` varchar(180) DEFAULT NULL,
  `last_name` varchar(180) DEFAULT NULL,
  `email_password` varchar(180) DEFAULT NULL,
  `last_ip` varchar(180) DEFAULT NULL,
  `user_type` varchar(180) DEFAULT 'System User',
  `reset_password_key` varchar(180) DEFAULT NULL,
  `sync_inbox` int(1) DEFAULT NULL,
  `email_use_ssl` int(1) DEFAULT NULL,
  `restrict_ip` varchar(180) DEFAULT NULL,
  `first_name` varchar(180) DEFAULT NULL,
  `middle_name` varchar(180) DEFAULT NULL,
  `new_password` varchar(180) DEFAULT NULL,
  `email_login` varchar(180) DEFAULT NULL,
  `unsubscribed` int(1) DEFAULT NULL,
  `last_login` varchar(180) DEFAULT NULL,
  `email` varchar(180) DEFAULT NULL,
  `bio` text,
  `background_image` varchar(180) DEFAULT NULL,
  `login_after` int(11) DEFAULT NULL,
  `email_signature` text,
  `language` varchar(180) DEFAULT NULL,
  `login_before` int(11) DEFAULT NULL,
  `gender` varchar(180) DEFAULT NULL,
  `enabled` int(1) DEFAULT '1',
  `birth_date` date DEFAULT NULL,
  `email_host` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabProfile`
--

LOCK TABLES `tabProfile` WRITE;
/*!40000 ALTER TABLE `tabProfile` DISABLE KEYS */;
INSERT INTO `tabProfile` VALUES ('Administrator','2013-11-07 11:16:19','2013-11-07 11:16:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None','System User',NULL,NULL,NULL,NULL,'Administrator',NULL,NULL,NULL,NULL,'2014-03-25 08:14:15','admin@localhost',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),('cswaroop@gmail.com','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','cswaroop@gmail.com',0,NULL,NULL,NULL,NULL,NULL,'asdf',NULL,NULL,'System User','r49JHiXyUyKzBld9QbsFvX0tvIXffRq0',NULL,NULL,NULL,'sadfa99',NULL,NULL,NULL,NULL,NULL,'cswaroop@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),('Guest','2013-11-07 11:16:19','2013-11-07 11:16:19','Administrator','Guest',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None','System User',NULL,NULL,NULL,NULL,'Guest',NULL,NULL,NULL,NULL,'2013-11-07 14:42:15','guest@localhost',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `tabProfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabProject`
--

DROP TABLE IF EXISTS `tabProject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabProject` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `per_gross_margin` decimal(18,6) DEFAULT NULL,
  `project_type` varchar(180) DEFAULT NULL,
  `est_material_cost` decimal(18,6) DEFAULT NULL,
  `priority` varchar(180) DEFAULT NULL,
  `status` varchar(180) DEFAULT 'Open',
  `project_name` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `is_active` varchar(180) DEFAULT NULL,
  `percent_complete` decimal(18,6) DEFAULT NULL,
  `customer` varchar(180) DEFAULT NULL,
  `gross_margin_value` decimal(18,6) DEFAULT NULL,
  `act_completion_date` date DEFAULT NULL,
  `notes` text,
  `project_start_date` date DEFAULT NULL,
  `project_value` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `status` (`status`),
  KEY `customer` (`customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabProject`
--

LOCK TABLES `tabProject` WRITE;
/*!40000 ALTER TABLE `tabProject` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabProject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabProject Milestone`
--

DROP TABLE IF EXISTS `tabProject Milestone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabProject Milestone` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `status` varchar(180) DEFAULT NULL,
  `milestone` text,
  `milestone_date` date DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabProject Milestone`
--

LOCK TABLES `tabProject Milestone` WRITE;
/*!40000 ALTER TABLE `tabProject Milestone` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabProject Milestone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabProperty Setter`
--

DROP TABLE IF EXISTS `tabProperty Setter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabProperty Setter` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `default_value` varchar(180) DEFAULT NULL,
  `doc_type` varchar(180) DEFAULT NULL,
  `property_type` varchar(180) DEFAULT NULL,
  `value` text,
  `doctype_or_field` varchar(180) DEFAULT NULL,
  `property` varchar(180) DEFAULT NULL,
  `field_name` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabProperty Setter`
--

LOCK TABLES `tabProperty Setter` WRITE;
/*!40000 ALTER TABLE `tabProperty Setter` DISABLE KEYS */;
INSERT INTO `tabProperty Setter` VALUES ('Customer-naming_series-hidden','2014-03-25 08:13:42','2014-03-25 08:13:42','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Customer','Check','1','DocField','hidden','naming_series'),('Customer-naming_series-reqd','2014-03-25 08:13:42','2014-03-25 08:13:42','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Customer','Check','0','DocField','reqd','naming_series'),('Employee-employee_number-hidden','2014-03-25 08:13:41','2014-03-25 08:13:41','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Employee','Check','1','DocField','hidden','employee_number'),('Employee-employee_number-reqd','2014-03-25 08:13:41','2014-03-25 08:13:41','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Employee','Check','0','DocField','reqd','employee_number'),('Employee-naming_series-hidden','2014-03-25 08:13:41','2014-03-25 08:13:41','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Employee','Check','0','DocField','hidden','naming_series'),('Employee-naming_series-reqd','2014-03-25 08:13:41','2014-03-25 08:13:41','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Employee','Check','1','DocField','reqd','naming_series'),('Item-item_code-hidden','2014-03-25 08:13:39','2014-03-25 08:13:39','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Item','Check','0','DocField','hidden','item_code'),('Item-item_code-reqd','2014-03-25 08:13:39','2014-03-25 08:13:39','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Item','Check','1','DocField','reqd','item_code'),('Item-naming_series-hidden','2014-03-25 08:13:39','2014-03-25 08:13:39','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Item','Check','1','DocField','hidden','naming_series'),('Item-naming_series-reqd','2014-03-25 08:13:39','2014-03-25 08:13:39','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Item','Check','0','DocField','reqd','naming_series'),('Supplier-naming_series-hidden','2014-03-25 08:13:43','2014-03-25 08:13:43','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Supplier','Check','1','DocField','hidden','naming_series'),('Supplier-naming_series-reqd','2014-03-25 08:13:43','2014-03-25 08:13:43','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'Supplier','Check','0','DocField','reqd','naming_series');
/*!40000 ALTER TABLE `tabProperty Setter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPurchase Invoice`
--

DROP TABLE IF EXISTS `tabPurchase Invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPurchase Invoice` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `against_expense_account` text,
  `write_off_amount` decimal(18,6) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `supplier_address` varchar(180) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `in_words_import` varchar(180) DEFAULT NULL,
  `supplier_name` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `currency` varchar(180) DEFAULT NULL,
  `conversion_rate` decimal(18,6) DEFAULT NULL,
  `total_advance` decimal(18,6) DEFAULT NULL,
  `grand_total` decimal(18,6) DEFAULT NULL,
  `bill_no` varchar(180) DEFAULT NULL,
  `aging_date` date DEFAULT NULL,
  `mode_of_payment` varchar(180) DEFAULT NULL,
  `write_off_cost_center` varchar(180) DEFAULT NULL,
  `price_list_currency` varchar(180) DEFAULT NULL,
  `tc_name` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `select_print_heading` varchar(180) DEFAULT NULL,
  `contact_display` text,
  `other_charges_added_import` decimal(18,6) DEFAULT NULL,
  `supplier` varchar(180) DEFAULT NULL,
  `grand_total_import` decimal(18,6) DEFAULT NULL,
  `buying_price_list` varchar(180) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `address_display` text,
  `total_tax` decimal(18,6) DEFAULT NULL,
  `total_amount_to_pay` decimal(18,6) DEFAULT NULL,
  `terms` text,
  `company` varchar(180) DEFAULT NULL,
  `outstanding_amount` decimal(18,6) DEFAULT NULL,
  `is_opening` varchar(180) DEFAULT 'No',
  `write_off_account` varchar(180) DEFAULT NULL,
  `other_charges_added` decimal(18,6) DEFAULT NULL,
  `contact_email` text,
  `purchase_other_charges` varchar(180) DEFAULT NULL,
  `contact_mobile` text,
  `contact_person` varchar(180) DEFAULT NULL,
  `net_total_import` decimal(18,6) DEFAULT NULL,
  `other_charges_deducted_import` decimal(18,6) DEFAULT NULL,
  `other_charges_deducted` decimal(18,6) DEFAULT NULL,
  `remarks` text,
  `in_words` varchar(180) DEFAULT NULL,
  `plc_conversion_rate` decimal(18,6) DEFAULT NULL,
  `credit_to` varchar(180) DEFAULT NULL,
  `net_total` decimal(18,6) DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `due_date` (`due_date`),
  KEY `fiscal_year` (`fiscal_year`),
  KEY `bill_no` (`bill_no`),
  KEY `bill_date` (`bill_date`),
  KEY `company` (`company`),
  KEY `outstanding_amount` (`outstanding_amount`),
  KEY `is_opening` (`is_opening`),
  KEY `credit_to` (`credit_to`),
  KEY `posting_date` (`posting_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPurchase Invoice`
--

LOCK TABLES `tabPurchase Invoice` WRITE;
/*!40000 ALTER TABLE `tabPurchase Invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPurchase Invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPurchase Invoice Advance`
--

DROP TABLE IF EXISTS `tabPurchase Invoice Advance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPurchase Invoice Advance` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `remarks` text,
  `allocated_amount` decimal(18,6) DEFAULT NULL,
  `journal_voucher` varchar(180) DEFAULT NULL,
  `jv_detail_no` varchar(180) DEFAULT NULL,
  `advance_amount` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPurchase Invoice Advance`
--

LOCK TABLES `tabPurchase Invoice Advance` WRITE;
/*!40000 ALTER TABLE `tabPurchase Invoice Advance` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPurchase Invoice Advance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPurchase Invoice Item`
--

DROP TABLE IF EXISTS `tabPurchase Invoice Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPurchase Invoice Item` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `purchase_receipt` varchar(180) DEFAULT NULL,
  `po_detail` varchar(180) DEFAULT NULL,
  `qty` decimal(18,6) DEFAULT NULL,
  `item_tax_rate` text,
  `rate` decimal(18,6) DEFAULT NULL,
  `import_amount` decimal(18,6) DEFAULT NULL,
  `discount_rate` decimal(18,6) DEFAULT NULL,
  `cost_center` varchar(180) DEFAULT NULL,
  `rm_supp_cost` decimal(18,6) DEFAULT NULL,
  `import_ref_rate` decimal(18,6) DEFAULT NULL,
  `page_break` int(1) DEFAULT NULL,
  `item_name` varchar(180) DEFAULT NULL,
  `purchase_order` varchar(180) DEFAULT NULL,
  `conversion_factor` decimal(18,6) DEFAULT NULL,
  `pr_detail` varchar(180) DEFAULT NULL,
  `uom` varchar(180) DEFAULT NULL,
  `project_name` varchar(180) DEFAULT NULL,
  `description` text,
  `import_rate` decimal(18,6) DEFAULT NULL,
  `brand` varchar(180) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `purchase_ref_rate` decimal(18,6) DEFAULT NULL,
  `expense_head` varchar(180) DEFAULT NULL,
  `item_group` varchar(180) DEFAULT NULL,
  `amount` decimal(18,6) DEFAULT NULL,
  `item_tax_amount` decimal(18,6) DEFAULT NULL,
  `valuation_rate` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `purchase_receipt` (`purchase_receipt`),
  KEY `po_detail` (`po_detail`),
  KEY `purchase_order` (`purchase_order`),
  KEY `pr_detail` (`pr_detail`),
  KEY `item_code` (`item_code`),
  KEY `item_group` (`item_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPurchase Invoice Item`
--

LOCK TABLES `tabPurchase Invoice Item` WRITE;
/*!40000 ALTER TABLE `tabPurchase Invoice Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPurchase Invoice Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPurchase Order`
--

DROP TABLE IF EXISTS `tabPurchase Order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPurchase Order` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `purchase_other_charges` varchar(180) DEFAULT NULL,
  `supplier_address` varchar(180) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `in_words_import` varchar(180) DEFAULT NULL,
  `supplier_name` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `currency` varchar(180) DEFAULT NULL,
  `conversion_rate` decimal(18,6) DEFAULT NULL,
  `payment_terms` text,
  `select_print_heading` varchar(180) DEFAULT NULL,
  `is_subcontracted` varchar(180) DEFAULT 'No',
  `price_list_currency` varchar(180) DEFAULT NULL,
  `tc_name` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `contact_display` text,
  `other_charges_added_import` decimal(18,6) DEFAULT NULL,
  `supplier` varchar(180) DEFAULT NULL,
  `grand_total_import` decimal(18,6) DEFAULT NULL,
  `buying_price_list` varchar(180) DEFAULT NULL,
  `address_display` text,
  `total_tax` decimal(18,6) DEFAULT NULL,
  `terms` text,
  `company` varchar(180) DEFAULT NULL,
  `grand_total` decimal(18,6) DEFAULT NULL,
  `per_billed` decimal(18,6) DEFAULT NULL,
  `other_charges_added` decimal(18,6) DEFAULT NULL,
  `contact_email` text,
  `contact_mobile` text,
  `remarks` text,
  `net_total_import` decimal(18,6) DEFAULT NULL,
  `instructions` text,
  `other_charges_deducted_import` decimal(18,6) DEFAULT NULL,
  `other_charges_deducted` decimal(18,6) DEFAULT NULL,
  `ref_sq` varchar(180) DEFAULT NULL,
  `per_received` decimal(18,6) DEFAULT NULL,
  `letter_head` varchar(180) DEFAULT NULL,
  `plc_conversion_rate` decimal(18,6) DEFAULT NULL,
  `net_total` decimal(18,6) DEFAULT NULL,
  `status` varchar(180) DEFAULT NULL,
  `rounded_total` decimal(18,6) DEFAULT NULL,
  `contact_person` varchar(180) DEFAULT NULL,
  `in_words` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `fiscal_year` (`fiscal_year`),
  KEY `transaction_date` (`transaction_date`),
  KEY `supplier` (`supplier`),
  KEY `company` (`company`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPurchase Order`
--

LOCK TABLES `tabPurchase Order` WRITE;
/*!40000 ALTER TABLE `tabPurchase Order` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPurchase Order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPurchase Order Item`
--

DROP TABLE IF EXISTS `tabPurchase Order Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPurchase Order Item` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `stock_qty` decimal(18,6) DEFAULT NULL,
  `qty` decimal(18,6) DEFAULT NULL,
  `item_tax_rate` text,
  `import_amount` decimal(18,6) DEFAULT NULL,
  `discount_rate` decimal(18,6) DEFAULT NULL,
  `received_qty` decimal(18,6) DEFAULT NULL,
  `stock_uom` varchar(180) DEFAULT NULL,
  `import_ref_rate` decimal(18,6) DEFAULT NULL,
  `page_break` int(1) DEFAULT NULL,
  `purchase_rate` decimal(18,6) DEFAULT NULL,
  `item_name` varchar(180) DEFAULT NULL,
  `supplier_quotation` varchar(180) DEFAULT NULL,
  `supplier_quotation_item` varchar(180) DEFAULT NULL,
  `prevdoc_detail_docname` varchar(180) DEFAULT NULL,
  `conversion_factor` decimal(18,6) DEFAULT NULL,
  `warehouse` varchar(180) DEFAULT NULL,
  `billed_amt` decimal(18,6) DEFAULT NULL,
  `supplier_part_no` varchar(180) DEFAULT NULL,
  `uom` varchar(180) DEFAULT NULL,
  `project_name` varchar(180) DEFAULT NULL,
  `description` text,
  `prevdoc_docname` varchar(180) DEFAULT NULL,
  `import_rate` decimal(18,6) DEFAULT NULL,
  `brand` varchar(180) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `purchase_ref_rate` decimal(18,6) DEFAULT NULL,
  `schedule_date` date DEFAULT NULL,
  `item_group` varchar(180) DEFAULT NULL,
  `amount` decimal(18,6) DEFAULT NULL,
  `prevdoc_doctype` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `item_name` (`item_name`),
  KEY `prevdoc_detail_docname` (`prevdoc_detail_docname`),
  KEY `prevdoc_docname` (`prevdoc_docname`),
  KEY `item_code` (`item_code`),
  KEY `schedule_date` (`schedule_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPurchase Order Item`
--

LOCK TABLES `tabPurchase Order Item` WRITE;
/*!40000 ALTER TABLE `tabPurchase Order Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPurchase Order Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPurchase Order Item Supplied`
--

DROP TABLE IF EXISTS `tabPurchase Order Item Supplied`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPurchase Order Item Supplied` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `rm_item_code` varchar(180) DEFAULT NULL,
  `stock_uom` varchar(180) DEFAULT NULL,
  `reference_name` varchar(180) DEFAULT NULL,
  `rate` decimal(18,6) DEFAULT NULL,
  `main_item_code` varchar(180) DEFAULT NULL,
  `required_qty` decimal(18,6) DEFAULT NULL,
  `conversion_factor` decimal(18,6) DEFAULT NULL,
  `amount` decimal(18,6) DEFAULT NULL,
  `bom_detail_no` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPurchase Order Item Supplied`
--

LOCK TABLES `tabPurchase Order Item Supplied` WRITE;
/*!40000 ALTER TABLE `tabPurchase Order Item Supplied` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPurchase Order Item Supplied` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPurchase Receipt`
--

DROP TABLE IF EXISTS `tabPurchase Receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPurchase Receipt` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `status` varchar(180) DEFAULT NULL,
  `lr_date` date DEFAULT NULL,
  `supplier_address` varchar(180) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `in_words_import` varchar(180) DEFAULT NULL,
  `supplier_name` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `currency` varchar(180) DEFAULT NULL,
  `conversion_rate` decimal(18,6) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `challan_no` varchar(180) DEFAULT NULL,
  `posting_time` time DEFAULT NULL,
  `bill_no` varchar(180) DEFAULT NULL,
  `lr_no` varchar(180) DEFAULT NULL,
  `rejected_warehouse` varchar(180) DEFAULT NULL,
  `supplier_warehouse` varchar(180) DEFAULT NULL,
  `is_subcontracted` varchar(180) DEFAULT 'No',
  `price_list_currency` varchar(180) DEFAULT NULL,
  `tc_name` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `select_print_heading` varchar(180) DEFAULT NULL,
  `contact_display` text,
  `other_charges_added_import` decimal(18,6) DEFAULT NULL,
  `supplier` varchar(180) DEFAULT NULL,
  `grand_total_import` decimal(18,6) DEFAULT NULL,
  `rounded_total` decimal(18,6) DEFAULT NULL,
  `buying_price_list` varchar(180) DEFAULT NULL,
  `address_display` text,
  `total_tax` decimal(18,6) DEFAULT NULL,
  `terms` text,
  `company` varchar(180) DEFAULT NULL,
  `grand_total` decimal(18,6) DEFAULT NULL,
  `transporter_name` varchar(180) DEFAULT NULL,
  `other_charges_added` decimal(18,6) DEFAULT NULL,
  `contact_email` text,
  `purchase_other_charges` varchar(180) DEFAULT NULL,
  `contact_mobile` text,
  `remarks` text,
  `net_total_import` decimal(18,6) DEFAULT NULL,
  `instructions` text,
  `other_charges_deducted_import` decimal(18,6) DEFAULT NULL,
  `other_charges_deducted` decimal(18,6) DEFAULT NULL,
  `challan_date` date DEFAULT NULL,
  `plc_conversion_rate` decimal(18,6) DEFAULT NULL,
  `range` varchar(180) DEFAULT NULL,
  `net_total` decimal(18,6) DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `contact_person` varchar(180) DEFAULT NULL,
  `in_words` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `status` (`status`),
  KEY `fiscal_year` (`fiscal_year`),
  KEY `supplier` (`supplier`),
  KEY `company` (`company`),
  KEY `posting_date` (`posting_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPurchase Receipt`
--

LOCK TABLES `tabPurchase Receipt` WRITE;
/*!40000 ALTER TABLE `tabPurchase Receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPurchase Receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPurchase Receipt Item`
--

DROP TABLE IF EXISTS `tabPurchase Receipt Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPurchase Receipt Item` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `stock_qty` decimal(18,6) DEFAULT NULL,
  `rm_supp_cost` decimal(18,6) DEFAULT NULL,
  `serial_no` text,
  `qty` decimal(18,6) DEFAULT NULL,
  `item_tax_rate` text,
  `import_amount` decimal(18,6) DEFAULT NULL,
  `discount_rate` decimal(18,6) DEFAULT NULL,
  `received_qty` decimal(18,6) DEFAULT NULL,
  `stock_uom` varchar(180) DEFAULT NULL,
  `import_ref_rate` decimal(18,6) DEFAULT NULL,
  `page_break` int(1) DEFAULT NULL,
  `rejected_warehouse` varchar(180) DEFAULT NULL,
  `purchase_rate` decimal(18,6) DEFAULT NULL,
  `item_name` varchar(180) DEFAULT NULL,
  `prevdoc_detail_docname` varchar(180) DEFAULT NULL,
  `conversion_factor` decimal(18,6) DEFAULT NULL,
  `qa_no` varchar(180) DEFAULT NULL,
  `warehouse` varchar(180) DEFAULT NULL,
  `uom` varchar(180) DEFAULT NULL,
  `project_name` varchar(180) DEFAULT NULL,
  `description` text,
  `prevdoc_docname` varchar(180) DEFAULT NULL,
  `import_rate` decimal(18,6) DEFAULT NULL,
  `brand` varchar(180) DEFAULT NULL,
  `rejected_serial_no` text,
  `item_code` varchar(180) DEFAULT NULL,
  `rejected_qty` decimal(18,6) DEFAULT NULL,
  `purchase_ref_rate` decimal(18,6) DEFAULT NULL,
  `schedule_date` date DEFAULT NULL,
  `item_group` varchar(180) DEFAULT NULL,
  `amount` decimal(18,6) DEFAULT NULL,
  `item_tax_amount` decimal(18,6) DEFAULT NULL,
  `batch_no` varchar(180) DEFAULT NULL,
  `valuation_rate` decimal(18,6) DEFAULT NULL,
  `prevdoc_doctype` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `prevdoc_detail_docname` (`prevdoc_detail_docname`),
  KEY `prevdoc_docname` (`prevdoc_docname`),
  KEY `item_code` (`item_code`),
  KEY `item_group` (`item_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPurchase Receipt Item`
--

LOCK TABLES `tabPurchase Receipt Item` WRITE;
/*!40000 ALTER TABLE `tabPurchase Receipt Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPurchase Receipt Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPurchase Receipt Item Supplied`
--

DROP TABLE IF EXISTS `tabPurchase Receipt Item Supplied`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPurchase Receipt Item Supplied` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `rm_item_code` varchar(180) DEFAULT NULL,
  `stock_uom` varchar(180) DEFAULT NULL,
  `description` varchar(180) DEFAULT NULL,
  `reference_name` varchar(180) DEFAULT NULL,
  `rate` decimal(18,6) DEFAULT NULL,
  `main_item_code` varchar(180) DEFAULT NULL,
  `required_qty` decimal(18,6) DEFAULT NULL,
  `conversion_factor` decimal(18,6) DEFAULT NULL,
  `current_stock` decimal(18,6) DEFAULT NULL,
  `amount` decimal(18,6) DEFAULT NULL,
  `consumed_qty` decimal(18,6) DEFAULT NULL,
  `bom_detail_no` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPurchase Receipt Item Supplied`
--

LOCK TABLES `tabPurchase Receipt Item Supplied` WRITE;
/*!40000 ALTER TABLE `tabPurchase Receipt Item Supplied` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPurchase Receipt Item Supplied` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPurchase Taxes and Charges`
--

DROP TABLE IF EXISTS `tabPurchase Taxes and Charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPurchase Taxes and Charges` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `category` varchar(180) DEFAULT 'Valuation and Total',
  `charge_type` varchar(180) DEFAULT NULL,
  `tax_amount` decimal(18,6) DEFAULT NULL,
  `description` text,
  `item_wise_tax_detail` text,
  `row_id` varchar(180) DEFAULT NULL,
  `add_deduct_tax` varchar(180) DEFAULT 'Add',
  `rate` decimal(18,6) DEFAULT NULL,
  `account_head` varchar(180) DEFAULT NULL,
  `total` decimal(18,6) DEFAULT NULL,
  `cost_center` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPurchase Taxes and Charges`
--

LOCK TABLES `tabPurchase Taxes and Charges` WRITE;
/*!40000 ALTER TABLE `tabPurchase Taxes and Charges` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPurchase Taxes and Charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabPurchase Taxes and Charges Master`
--

DROP TABLE IF EXISTS `tabPurchase Taxes and Charges Master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabPurchase Taxes and Charges Master` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `is_default` int(1) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `title` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabPurchase Taxes and Charges Master`
--

LOCK TABLES `tabPurchase Taxes and Charges Master` WRITE;
/*!40000 ALTER TABLE `tabPurchase Taxes and Charges Master` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabPurchase Taxes and Charges Master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabQuality Inspection`
--

DROP TABLE IF EXISTS `tabQuality Inspection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabQuality Inspection` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `inspected_by` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `description` text,
  `delivery_note_no` varchar(180) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `inspection_type` varchar(180) DEFAULT NULL,
  `verified_by` varchar(180) DEFAULT NULL,
  `item_serial_no` varchar(180) DEFAULT NULL,
  `report_date` date DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `sample_size` decimal(18,6) DEFAULT NULL,
  `purchase_receipt_no` varchar(180) DEFAULT NULL,
  `batch_no` varchar(180) DEFAULT NULL,
  `remarks` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `delivery_note_no` (`delivery_note_no`),
  KEY `report_date` (`report_date`),
  KEY `item_code` (`item_code`),
  KEY `purchase_receipt_no` (`purchase_receipt_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabQuality Inspection`
--

LOCK TABLES `tabQuality Inspection` WRITE;
/*!40000 ALTER TABLE `tabQuality Inspection` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabQuality Inspection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabQuality Inspection Reading`
--

DROP TABLE IF EXISTS `tabQuality Inspection Reading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabQuality Inspection Reading` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `status` varchar(180) DEFAULT 'Accepted',
  `specification` varchar(180) DEFAULT NULL,
  `value` varchar(180) DEFAULT NULL,
  `reading_10` varchar(180) DEFAULT NULL,
  `reading_8` varchar(180) DEFAULT NULL,
  `reading_9` varchar(180) DEFAULT NULL,
  `reading_1` varchar(180) DEFAULT NULL,
  `reading_2` varchar(180) DEFAULT NULL,
  `reading_3` varchar(180) DEFAULT NULL,
  `reading_4` varchar(180) DEFAULT NULL,
  `reading_5` varchar(180) DEFAULT NULL,
  `reading_6` varchar(180) DEFAULT NULL,
  `reading_7` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabQuality Inspection Reading`
--

LOCK TABLES `tabQuality Inspection Reading` WRITE;
/*!40000 ALTER TABLE `tabQuality Inspection Reading` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabQuality Inspection Reading` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabQuotation`
--

DROP TABLE IF EXISTS `tabQuotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabQuotation` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `rounded_total_export` decimal(18,6) DEFAULT NULL,
  `net_total_export` decimal(18,6) DEFAULT NULL,
  `campaign` varchar(180) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `other_charges_total` decimal(18,6) DEFAULT NULL,
  `currency` varchar(180) DEFAULT NULL,
  `conversion_rate` decimal(18,6) DEFAULT NULL,
  `other_charges_total_export` decimal(18,6) DEFAULT NULL,
  `shipping_rule` varchar(180) DEFAULT NULL,
  `customer_name` varchar(180) DEFAULT NULL,
  `select_print_heading` varchar(180) DEFAULT NULL,
  `order_type` varchar(180) DEFAULT 'Sales',
  `lead` varchar(180) DEFAULT NULL,
  `price_list_currency` varchar(180) DEFAULT NULL,
  `selling_price_list` varchar(180) DEFAULT NULL,
  `tc_name` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `charge` varchar(180) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `contact_display` text,
  `rounded_total` decimal(18,6) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `address_display` text,
  `terms` text,
  `enq_det` text,
  `quotation_to` varchar(180) DEFAULT NULL,
  `shipping_address` text,
  `status` varchar(180) DEFAULT 'Draft',
  `in_words_export` varchar(180) DEFAULT NULL,
  `customer_address` varchar(180) DEFAULT NULL,
  `contact_email` text,
  `contact_mobile` text,
  `shipping_address_name` varchar(180) DEFAULT NULL,
  `grand_total_export` decimal(18,6) DEFAULT NULL,
  `customer` varchar(180) DEFAULT NULL,
  `order_lost_reason` text,
  `grand_total` decimal(18,6) DEFAULT NULL,
  `in_words` varchar(180) DEFAULT NULL,
  `customer_group` varchar(180) DEFAULT NULL,
  `territory` varchar(180) DEFAULT NULL,
  `letter_head` varchar(180) DEFAULT NULL,
  `plc_conversion_rate` decimal(18,6) DEFAULT NULL,
  `net_total` decimal(18,6) DEFAULT NULL,
  `source` varchar(180) DEFAULT NULL,
  `contact_person` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `transaction_date` (`transaction_date`),
  KEY `customer` (`customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabQuotation`
--

LOCK TABLES `tabQuotation` WRITE;
/*!40000 ALTER TABLE `tabQuotation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabQuotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabQuotation Item`
--

DROP TABLE IF EXISTS `tabQuotation Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabQuotation Item` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `export_rate` decimal(18,6) DEFAULT NULL,
  `basic_rate` decimal(18,6) DEFAULT NULL,
  `page_break` int(1) DEFAULT NULL,
  `ref_rate` decimal(18,6) DEFAULT NULL,
  `description` text,
  `item_tax_rate` text,
  `item_name` varchar(180) DEFAULT NULL,
  `brand` varchar(180) DEFAULT NULL,
  `item_group` varchar(180) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `qty` decimal(18,6) DEFAULT NULL,
  `export_amount` decimal(18,6) DEFAULT NULL,
  `amount` decimal(18,6) DEFAULT NULL,
  `stock_uom` varchar(180) DEFAULT NULL,
  `customer_item_code` varchar(180) DEFAULT NULL,
  `adj_rate` decimal(18,6) DEFAULT NULL,
  `base_ref_rate` decimal(18,6) DEFAULT NULL,
  `prevdoc_docname` varchar(180) DEFAULT NULL,
  `prevdoc_doctype` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `item_name` (`item_name`),
  KEY `brand` (`brand`),
  KEY `item_group` (`item_group`),
  KEY `item_code` (`item_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabQuotation Item`
--

LOCK TABLES `tabQuotation Item` WRITE;
/*!40000 ALTER TABLE `tabQuotation Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabQuotation Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabQuotation Lost Reason`
--

DROP TABLE IF EXISTS `tabQuotation Lost Reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabQuotation Lost Reason` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `order_lost_reason` varchar(180) DEFAULT NULL,
  `trash_reason` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabQuotation Lost Reason`
--

LOCK TABLES `tabQuotation Lost Reason` WRITE;
/*!40000 ALTER TABLE `tabQuotation Lost Reason` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabQuotation Lost Reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabReport`
--

DROP TABLE IF EXISTS `tabReport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabReport` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `javascript` text,
  `add_total_row` int(1) DEFAULT NULL,
  `ref_doctype` varchar(180) DEFAULT NULL,
  `report_name` varchar(180) DEFAULT NULL,
  `disabled` int(1) DEFAULT NULL,
  `json` text,
  `is_standard` varchar(180) DEFAULT NULL,
  `report_type` varchar(180) DEFAULT NULL,
  `query` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabReport`
--

LOCK TABLES `tabReport` WRITE;
/*!40000 ALTER TABLE `tabReport` DISABLE KEYS */;
INSERT INTO `tabReport` VALUES ('Accounts Payable','2013-04-22 16:16:03','2013-04-30 17:55:54','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,'Purchase Invoice','Accounts Payable',NULL,NULL,'Yes','Report Builder',NULL),('Accounts Receivable','2013-04-16 11:31:13','2013-05-24 12:02:52','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,'Sales Invoice','Accounts Receivable',NULL,NULL,'Yes','Script Report',NULL),('Available Stock for Packing Items','2013-06-21 13:40:05','2013-06-21 15:06:40','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Sales BOM','Available Stock for Packing Items',NULL,NULL,'Yes','Script Report',NULL),('Bank Clearance Summary','2013-05-01 12:13:25','2013-05-01 12:13:25','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Journal Voucher','Bank Clearance Summary',NULL,NULL,'Yes','Script Report',NULL),('Bank Reconciliation Statement','2013-04-30 18:30:21','2013-05-01 10:53:12','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,'Journal Voucher','Bank Reconciliation Statement',NULL,NULL,'Yes','Script Report',NULL),('Batch-Wise Balance History','2013-06-04 11:03:47','2013-06-04 19:32:27','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Stock Ledger Entry','Batch-Wise Balance History',NULL,NULL,'Yes','Script Report',NULL),('Budget Variance Report','2013-06-18 12:56:36','2013-06-18 12:56:36','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Cost Center','Budget Variance Report',NULL,NULL,'Yes','Script Report',NULL),('Completed Production Orders','2013-08-12 12:44:27','2013-08-12 12:44:27','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Production Order','Completed Production Orders',NULL,NULL,'Yes','Query Report','SELECT\n  `tabProduction Order`.name as \"Production Order:Link/Production Order:200\",\n  `tabProduction Order`.creation as \"Date:Date:120\",\n  `tabProduction Order`.production_item as \"Item:Link/Item:150\",\n  `tabProduction Order`.qty as \"To Produce:Int:100\",\n  `tabProduction Order`.produced_qty as \"Produced:Int:100\"\nFROM\n  `tabProduction Order`\nWHERE\n  `tabProduction Order`.docstatus=1\n  AND ifnull(`tabProduction Order`.produced_qty,0) = `tabProduction Order`.qty'),('Customer Account Head','2013-06-03 16:17:34','2013-06-03 16:17:34','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Account','Customer Account Head',NULL,NULL,'Yes','Script Report',NULL),('Customer Addresses And Contacts','2012-10-04 18:45:27','2013-02-22 15:53:01','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Customer','Customer Addresses And Contacts',NULL,NULL,'Yes','Query Report','SELECT\n	`tabCustomer`.name as customer_id,\n	`tabCustomer`.customer_name,\n	`tabCustomer`.customer_group,\n	`tabAddress`.address_line1,\n	`tabAddress`.address_line2,\n	`tabAddress`.city,\n	`tabAddress`.state,\n	`tabAddress`.pincode,\n	`tabAddress`.country,\n	`tabAddress`.is_primary_address, \n	`tabContact`.first_name,\n	`tabContact`.last_name,\n	`tabContact`.phone,\n	`tabContact`.mobile_no,\n	`tabContact`.email_id,\n	`tabContact`.is_primary_contact\nFROM\n	`tabCustomer`\n	left join `tabAddress` on (\n		`tabAddress`.customer=`tabCustomer`.name\n	)\n	left join `tabContact` on (\n		`tabContact`.customer=`tabCustomer`.name\n	)\nWHERE\n	`tabCustomer`.docstatus<2\nORDER BY\n	`tabCustomer`.name asc'),('Customers Not Buying Since Long Time','2013-06-07 12:27:07','2013-06-07 12:27:07','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Sales Order','Customers Not Buying Since Long Time ',NULL,NULL,'Yes','Script Report',NULL),('Daily Time Log Summary','2013-04-03 11:27:52','2013-04-03 11:48:07','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Time Log','Daily Time Log Summary',NULL,NULL,'Yes','Script Report',NULL),('Delivered Items To Be Billed','2013-07-30 17:28:49','2013-09-05 12:40:04','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Sales Invoice','Delivered Items To Be Billed',NULL,NULL,'Yes','Query Report','select\n    `tabDelivery Note`.`name` as \"Delivery Note:Link/Delivery Note:120\",\n	`tabDelivery Note`.`customer` as \"Customer:Link/Customer:120\",\n	`tabDelivery Note`.`posting_date` as \"Date:Date\",\n	`tabDelivery Note`.`project_name` as \"Project\",\n	`tabDelivery Note Item`.`item_code` as \"Item:Link/Item:120\",\n	(`tabDelivery Note Item`.`qty` - ifnull((select sum(qty) from `tabSales Invoice Item` \n	    where `tabSales Invoice Item`.docstatus=1 and \n            `tabSales Invoice Item`.delivery_note = `tabDelivery Note`.name and\n	        `tabSales Invoice Item`.dn_detail = `tabDelivery Note Item`.name), 0))\n		as \"Qty:Float:110\",\n	(`tabDelivery Note Item`.`amount` - ifnull((select sum(amount) from `tabSales Invoice Item` \n        where `tabSales Invoice Item`.docstatus=1 and \n            `tabSales Invoice Item`.delivery_note = `tabDelivery Note`.name and\n            `tabSales Invoice Item`.dn_detail = `tabDelivery Note Item`.name), 0))\n		as \"Amount:Currency:110\",\n	`tabDelivery Note Item`.`item_name` as \"Item Name::150\",\n	`tabDelivery Note Item`.`description` as \"Description::200\"\nfrom `tabDelivery Note`, `tabDelivery Note Item`\nwhere\n    `tabDelivery Note`.docstatus = 1 and\n	`tabDelivery Note`.`status` != \"Stopped\" and\n    `tabDelivery Note`.name = `tabDelivery Note Item`.parent and\n    (`tabDelivery Note Item`.qty > ifnull((select sum(qty) from `tabSales Invoice Item` \n        where `tabSales Invoice Item`.docstatus=1 and \n            `tabSales Invoice Item`.delivery_note = `tabDelivery Note`.name and\n            `tabSales Invoice Item`.dn_detail = `tabDelivery Note Item`.name), 0))\norder by `tabDelivery Note`.`name` desc'),('Delivery Note Trends','2013-06-13 18:42:11','2013-06-13 18:42:11','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Delivery Note','Delivery Note Trends',NULL,NULL,'Yes','Script Report',NULL),('Employee Birthday','2013-05-06 17:56:03','2013-05-06 17:56:03','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Employee','Employee Birthday',NULL,NULL,'Yes','Script Report',NULL),('Employee Information','2013-05-06 18:43:53','2013-05-06 18:47:43','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Employee','Employee Information',NULL,'{\"filters\":[],\"columns\":[[\"name\",\"Employee\"],[\"employee_number\",\"Employee\"],[\"date_of_joining\",\"Employee\"],[\"branch\",\"Employee\"],[\"department\",\"Employee\"],[\"designation\",\"Employee\"],[\"gender\",\"Employee\"],[\"status\",\"Employee\"],[\"company\",\"Employee\"],[\"employment_type\",\"Employee\"],[\"grade\",\"Employee\"],[\"reports_to\",\"Employee\"],[\"company_email\",\"Employee\"]],\"sort_by\":\"Employee.bank_ac_no\",\"sort_order\":\"desc\",\"sort_by_next\":\"\",\"sort_order_next\":\"desc\"}','Yes','Report Builder',NULL),('Employee Leave Balance','2013-02-22 15:29:34','2013-02-22 15:53:01','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Employee','Employee Leave Balance',NULL,NULL,'Yes','Script Report',NULL),('Gross Profit','2013-02-25 17:03:34','2013-02-25 17:03:34','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Sales Invoice','Gross Profit',NULL,NULL,'Yes','Script Report',NULL),('Issued Items Against Production Order','2013-05-03 17:48:46','2013-05-07 11:49:56','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,'Production Order','Issued Items Against Production Order',NULL,NULL,'Yes','Query Report','select\n    ste.production_order as \"Production Order:Link/Production Order:120\",\n    ste.posting_date as \"Issue Date:Date:140\",\n    ste_item.item_code as \"Item Code:Link/Item:120\",\n	ste_item.description as \"Description::150\",\n	ste_item.transfer_qty as \"Qty:Float:100\",\n	ste_item.stock_uom as \"UOM:Link/UOM:80\",\n	ste_item.amount as \"Amount:Currency:120\",\n	ste_item.serial_no as \"Serial No:Link/Serial No:80\",\n	ste_item.s_warehouse as \"Source Warehouse:Link/Warehouse:120\",\n	ste_item.t_warehouse as \"Target Warehouse:Link/Warehouse:120\",\n	pro.production_item as \"Finished Goods:Link/Item:120\", \n	ste.name as \"Stock Entry:Link/Stock Entry:120\"\nfrom\n	`tabStock Entry` ste, `tabStock Entry Detail` ste_item, `tabProduction Order` pro\nwhere\n	ifnull(ste.production_order, \'\') != \'\' and ste.name = ste_item.parent \n	and ste.production_order = pro.name and ste.docstatus = 1 \n	and ste.purpose = \'Manufacture/Repack\'\norder by ste.posting_date, ste.production_order, ste_item.item_code'),('Item Prices','2013-06-05 11:43:30','2013-06-05 11:43:30','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Stock Ledger Entry','Item Prices',NULL,NULL,'Yes','Script Report',NULL),('Item Shortage Report','2013-08-20 13:43:30','2013-08-20 13:46:15','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Bin','Item Shortage Report',NULL,'{\"filters\":[[\"Bin\",\"projected_qty\",\"<\",\"0\"]],\"columns\":[[\"warehouse\",\"Bin\"],[\"item_code\",\"Bin\"],[\"actual_qty\",\"Bin\"],[\"ordered_qty\",\"Bin\"],[\"planned_qty\",\"Bin\"],[\"reserved_qty\",\"Bin\"],[\"projected_qty\",\"Bin\"]],\"sort_by\":\"Bin.projected_qty\",\"sort_order\":\"asc\",\"sort_by_next\":\"\",\"sort_order_next\":\"desc\"}','Yes','Report Builder',NULL),('Item-wise Price List Rate','2013-09-25 10:21:15','2013-10-21 16:06:22','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Price List','Item-wise Price List Rate',NULL,'{\"filters\":[[\"Item Price\",\"price_list\",\"like\",\"%\"],[\"Item Price\",\"item_code\",\"like\",\"%\"]],\"columns\":[[\"name\",\"Item Price\"],[\"price_list\",\"Item Price\"],[\"item_code\",\"Item Price\"],[\"item_name\",\"Item Price\"],[\"item_description\",\"Item Price\"],[\"ref_rate\",\"Item Price\"],[\"buying_or_selling\",\"Item Price\"],[\"currency\",\"Item Price\"]],\"sort_by\":\"Item Price.modified\",\"sort_order\":\"desc\",\"sort_by_next\":\"\",\"sort_order_next\":\"desc\"}','Yes','Report Builder',NULL),('Item-wise Purchase History','2013-05-03 14:55:53','2013-07-11 12:28:00','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,'Purchase Order','Item-wise Purchase History',NULL,NULL,'Yes','Query Report','select\n    po_item.item_code as \"Item Code:Link/Item:120\",\n	po_item.item_name as \"Item Name::120\",\n	po_item.description as \"Description::150\",\n	po_item.qty as \"Qty:Float:100\",\n	po_item.stock_uom as \"UOM:Link/UOM:80\",\n	po_item.purchase_rate as \"Rate:Currency:120\",\n	po_item.amount as \"Amount:Currency:120\",\n	po.name as \"Purchase Order:Link/Purchase Order:120\",\n	po.transaction_date as \"Transaction Date:Date:140\",\n	po.supplier as \"Supplier:Link/Supplier:130\",\n	po_item.project_name as \"Project:Link/Project:130\",\n	ifnull(po_item.received_qty, 0) as \"Received Qty:Float:120\"\nfrom\n	`tabPurchase Order` po, `tabPurchase Order Item` po_item\nwhere\n	po.name = po_item.parent and po.docstatus = 1\norder by po.name desc'),('Item-wise Purchase Register','2013-06-05 15:37:30','2013-06-05 15:37:30','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,'Purchase Invoice','Item-wise Purchase Register',NULL,NULL,'Yes','Script Report',NULL),('Item-wise Sales History','2013-05-23 17:42:24','2013-05-24 12:20:17','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,'Sales Order','Item-wise Sales History',0,NULL,'Yes','Query Report','select\n    so_item.item_code as \"Item Code:Link/Item:120\",\n	so_item.item_name as \"Item Name::120\",\n	so_item.description as \"Description::150\",\n	so_item.qty as \"Qty:Float:100\",\n	so_item.stock_uom as \"UOM:Link/UOM:80\",\n	so_item.basic_rate as \"Rate:Currency:120\",\n	so_item.amount as \"Amount:Currency:120\",\n	so.name as \"Sales Order:Link/Sales Order:120\",\n	so.transaction_date as \"Transaction Date:Date:140\",\n	so.customer as \"Customer:Link/Customer:130\",\n	so.territory as \"Territory:Link/Territory:130\",\n    so.project_name as \"Project:Link/Project:130\",\n	ifnull(so_item.delivered_qty, 0) as \"Delivered Qty:Float:120\",\n	ifnull(so_item.billed_amt, 0) as \"Billed Amount:Currency:120\"\nfrom\n	`tabSales Order` so, `tabSales Order Item` so_item\nwhere\n	so.name = so_item.parent\n	and so.docstatus = 1\norder by so.name desc'),('Item-wise Sales Register','2013-05-13 17:50:55','2013-05-13 17:50:55','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,'Sales Invoice','Item-wise Sales Register',NULL,NULL,'Yes','Script Report',NULL),('Items To Be Requested','2013-08-20 15:08:10','2013-08-20 15:10:45','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Item','Items To Be Requested',NULL,NULL,'Yes','Query Report','SELECT\n    tabBin.item_code as \"Item:Link/Item:120\",\n    tabBin.warehouse as \"Warehouse:Link/Warehouse:120\",\n    tabBin.actual_qty as \"Actual:Float:90\",\n    tabBin.indented_qty as \"Requested:Float:90\",\n    tabBin.reserved_qty as \"Reserved:Float:90\",\n    tabBin.ordered_qty as \"Ordered:Float:90\",\n    tabBin.projected_qty as \"Projected:Float:90\"\nFROM\n    tabBin, tabItem\nWHERE\n    tabBin.item_code = tabItem.name\n    AND tabItem.is_purchase_item = \"Yes\"\n    AND tabBin.projected_qty < 0\nORDER BY\n    tabBin.projected_qty ASC'),('Itemwise Recommended Reorder Level','2013-06-07 12:47:22','2013-06-07 13:03:54','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Item','Itemwise Recommended Reorder Level',NULL,NULL,'Yes','Script Report',NULL),('Lead Details','2013-10-22 11:58:16','2013-11-06 15:01:09','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Lead','Lead Details',NULL,NULL,'Yes','Query Report','SELECT\n    `tabLead`.name as \"Lead Id:Link/Lead:120\",\n    `tabLead`.lead_name as \"Lead Name::120\",\n	`tabLead`.company_name as \"Company Name::120\",\n	`tabLead`.status as \"Status::120\",\n	concat_ws(\', \', \n		trim(\',\' from `tabAddress`.address_line1), \n		trim(\',\' from tabAddress.address_line2), \n		tabAddress.state, tabAddress.pincode, tabAddress.country\n	) as \'Address::180\',\n	`tabLead`.phone as \"Phone::100\",\n	`tabLead`.mobile_no as \"Mobile No::100\",\n	`tabLead`.email_id as \"Email Id::120\",\n	`tabLead`.lead_owner as \"Lead Owner::120\",\n	`tabLead`.source as \"Source::120\",\n	`tabLead`.territory as \"Territory::120\",\n    `tabLead`.owner as \"Owner:Link/Profile:120\"\nFROM\n	`tabLead`\n	left join `tabAddress` on (\n		`tabAddress`.lead=`tabLead`.name\n	)\nWHERE\n	`tabLead`.docstatus<2\nORDER BY\n	`tabLead`.name asc'),('Maintenance Schedules','2013-05-06 14:25:21','2013-10-09 12:23:27','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Maintenance Schedule','Maintenance Schedules',NULL,NULL,'Yes','Query Report','SELECT\n    ms_sch.scheduled_date as \"Schedule Date:Date:120\",\n	ms_sch.item_code as \"Item Code:Link/Item:120\",\n	ms_sch.item_name as \"Item Name::120\",\n	ms_sch.serial_no as \"Serial No::120\",\n	ms_sch.incharge_name as \"Incharge::120\",\n	ms.customer_name as \"Customer:Link/Customer:120\",\n	ms.address_display as \"Customer Address::120\",\n	ms_item.prevdoc_docname as \"Sales Order:Link/Sales Order:120\",\n	ms.company as \"Company:Link/Company:120\"\n	\nFROM\n	`tabMaintenance Schedule` ms, \n    `tabMaintenance Schedule Detail` ms_sch, \n    `tabMaintenance Schedule Item` ms_item\nWHERE\n	ms.name = ms_sch.parent and ms.name = ms_item.parent and ms.docstatus = 1\nORDER BY\n	ms_sch.scheduled_date asc, ms_sch.item_code asc'),('Material Requests for which Supplier Quotations are not created','2013-08-09 12:20:58','2013-08-09 12:25:29','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Material Request','Material Requests for which Supplier Quotations are not created',NULL,NULL,'Yes','Query Report','select \n    mr.name as \"Material Request:Link/Material Request:120\",\n    mr.transaction_date as \"Date:Date:100\",\n	mr_item.item_code as \"Item Code:Link/Item:120\",\n	mr_item.qty as \"Qty:Float:100\",\n	mr_item.item_name as \"Item Name::150\",\n	mr_item.description as \"Description::200\"\nfrom\n	`tabMaterial Request` mr, `tabMaterial Request Item` mr_item\nwhere\n	mr_item.parent = mr.name\n	and mr.material_request_type = \"Purchase\"\n	and mr.docstatus = 1\n	and mr.status != \"Stopped\"\n	and not exists(select name from `tabSupplier Quotation Item` where prevdoc_docname=mr.name)\norder by mr.transaction_date asc'),('Monthly Attendance Sheet','2013-05-13 14:04:03','2013-05-13 14:32:42','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,'Attendance','Monthly Attendance Sheet',NULL,NULL,'Yes','Script Report',NULL),('Monthly Salary Register','2013-05-07 18:09:42','2013-05-07 18:09:42','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,'Salary Slip','Monthly Salary Register',NULL,NULL,'Yes','Script Report',NULL),('Open Production Orders','2013-08-12 12:32:30','2013-08-12 12:42:29','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Production Order','Open Production Orders',NULL,NULL,'Yes','Query Report','SELECT\n  `tabProduction Order`.name as \"Production Order:Link/Production Order:200\",\n  `tabProduction Order`.creation as \"Date:Date:120\",\n  `tabProduction Order`.production_item as \"Item:Link/Item:150\",\n  `tabProduction Order`.qty as \"To Produce:Int:100\",\n  `tabProduction Order`.produced_qty as \"Produced:Int:100\"\nFROM\n  `tabProduction Order`\nWHERE\n  `tabProduction Order`.docstatus=1\n  AND ifnull(`tabProduction Order`.produced_qty,0) < `tabProduction Order`.qty\n  AND NOT EXISTS (SELECT name from `tabStock Entry` where production_order =`tabProduction Order`.name) '),('Ordered Items To Be Billed','2013-02-21 14:26:44','2013-02-22 15:53:01','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Sales Invoice','Ordered Items To Be Billed',NULL,NULL,'Yes','Query Report','select \n `tabSales Order`.`name` as \"Sales Order:Link/Sales Order:120\",\n `tabSales Order`.`customer` as \"Customer:Link/Customer:120\",\n `tabSales Order`.`status` as \"Status\",\n `tabSales Order`.`transaction_date` as \"Date:Date\",\n `tabSales Order`.`project_name` as \"Project\",\n `tabSales Order Item`.item_code as \"Item:Link/Item:120\",\n `tabSales Order Item`.amount as \"Amount:Currency:110\",\n (`tabSales Order Item`.billed_amt * ifnull(`tabSales Order`.conversion_rate, 1)) as \"Billed Amount:Currency:110\",\n (ifnull(`tabSales Order Item`.amount, 0) - (ifnull(`tabSales Order Item`.billed_amt, 0) * ifnull(`tabSales Order`.conversion_rate, 1))) as \"Pending Amount:Currency:120\",\n `tabSales Order Item`.item_name as \"Item Name::150\",\n `tabSales Order Item`.description as \"Description::200\"\nfrom\n `tabSales Order`, `tabSales Order Item`\nwhere\n `tabSales Order Item`.`parent` = `tabSales Order`.`name`\n and `tabSales Order`.docstatus = 1\n and `tabSales Order`.status != \"Stopped\"\n and ifnull(`tabSales Order Item`.billed_amt,0) < ifnull(`tabSales Order Item`.export_amount,0)\norder by `tabSales Order`.transaction_date asc'),('Ordered Items To Be Delivered','2013-02-22 18:01:55','2013-07-08 11:17:54','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Delivery Note','Ordered Items To Be Delivered',NULL,NULL,'Yes','Query Report','select \n `tabSales Order`.`name` as \"Sales Order:Link/Sales Order:120\",\n `tabSales Order`.`customer` as \"Customer:Link/Customer:120\",\n `tabSales Order`.`transaction_date` as \"Date:Date\",\n `tabSales Order`.`project_name` as \"Project\",\n `tabSales Order Item`.item_code as \"Item:Link/Item:120\",\n `tabSales Order Item`.qty as \"Qty:Float:140\",\n `tabSales Order Item`.delivered_qty as \"Delivered Qty:Float:140\",\n (`tabSales Order Item`.qty - ifnull(`tabSales Order Item`.delivered_qty, 0)) as \"Qty to Deliver:Float:140\",\n `tabSales Order Item`.amount as \"Amount:Float:140\",\n `tabSales Order`.`delivery_date` as \"Expected Delivery Date:Date:120\",\n `tabSales Order Item`.item_name as \"Item Name::150\",\n `tabSales Order Item`.description as \"Description::200\",\n `tabSales Order Item`.item_group as \"Item Group:Link/Item Group:120\"\nfrom\n `tabSales Order`, `tabSales Order Item`\nwhere\n `tabSales Order Item`.`parent` = `tabSales Order`.`name`\n and `tabSales Order`.docstatus = 1\n and `tabSales Order`.status != \"Stopped\"\n and ifnull(`tabSales Order Item`.delivered_qty,0) < ifnull(`tabSales Order Item`.qty,0)\norder by `tabSales Order`.transaction_date asc'),('Payment Collection With Ageing','2013-05-02 12:09:51','2013-05-02 12:09:51','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,'Journal Voucher','Payment Collection With Ageing',NULL,NULL,'Yes','Script Report',NULL),('Payment Made With Ageing','2013-05-02 12:10:21','2013-05-02 12:10:21','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,'Journal Voucher','Payment Made With Ageing',NULL,NULL,'Yes','Script Report',NULL),('Pending SO Items For Purchase Request','2013-06-21 16:46:45','2013-06-21 16:55:54','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Sales Order','Pending SO Items For Purchase Request',NULL,NULL,'Yes','Query Report','select \n so_item.item_code as \"Item Code:Link/Item:120\",\n so_item.item_name as \"Item Name::120\",\n so_item.description as \"Description::120\",\n so.`name` as \"S.O. No.:Link/Sales Order:120\",\n so.`transaction_date` as \"Date:Date:120\",\n mr.name as \"Material Request:Link/Material Request:120\",\n so.customer as \"Customer:Link/Customer:120\",\n so.territory as \"Terretory:Link/Territory:120\",\n sum(so_item.qty) as \"SO Qty:Float:100 \",\n sum(mr_item.qty) as \"Requested Qty:Float:100\"\nfrom\n `tabSales Order` so, `tabSales Order Item` so_item, \n `tabMaterial Request` mr, `tabMaterial Request Item` mr_item\nwhere\n so_item.`parent` = so.`name` and mr_item.sales_order_no = so.name\n and mr_item.parent = mr.name \n and so.docstatus = 1 and so.status != \"Stopped\" \n and mr.docstatus = 1 and mr.status != \"Stopped\"\ngroup by so.name, so_item.item_code\norder by so.name desc, so_item.item_code asc'),('Production Orders in Progress','2013-08-12 12:43:47','2013-08-12 12:43:47','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Production Order','Production Orders in Progress',NULL,NULL,'Yes','Query Report','SELECT\n  `tabProduction Order`.name as \"Production Order:Link/Production Order:200\",\n  `tabProduction Order`.creation as \"Date:Date:120\",\n  `tabProduction Order`.production_item as \"Item:Link/Item:150\",\n  `tabProduction Order`.qty as \"To Produce:Int:100\",\n  `tabProduction Order`.produced_qty as \"Produced:Int:100\"\nFROM\n  `tabProduction Order`\nWHERE\n  `tabProduction Order`.docstatus=1\n  AND ifnull(`tabProduction Order`.produced_qty,0) < `tabProduction Order`.qty\n  AND EXISTS (SELECT name from `tabStock Entry` where production_order =`tabProduction Order`.name) '),('Project wise Stock Tracking','2013-06-03 17:37:41','2013-06-03 17:37:41','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Project','Project wise Stock Tracking ',NULL,NULL,'Yes','Report Builder',NULL),('Purchase In Transit','2013-05-06 12:09:05','2013-05-06 12:22:52','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Purchase Receipt','Purchase In Transit',NULL,NULL,'Yes','Query Report','SELECT\n    pi.name as \"Purchase Invoice:Link/Purchase Invoice:120\",\n	pi.posting_date as \"Posting Date:Date:100\",\n	pi.credit_to as \"Supplier Account:Link/Account:120\",\n	pi_item.item_code as \"Item Code:Link/Item:120\",\n	pi_item.description as \"Description:Data:140\",\n	pi_item.qty as \"Qty:Float:120\",\n	pi_item.amount as \"Amount:Currency:120\",\n	pi_item.purchase_order as \"Purchase Order:Link/Purchase Order:120\",\n	pi_item.purchase_receipt as \"Purchase Receipt:Link/Purchase Receipt:120\",\n	pr.posting_date as \"PR Posting Date:Date:130\",\n	pi.company as \"Company:Link/Company:120\"\nFROM\n	`tabPurchase Invoice` pi, `tabPurchase Invoice Item` pi_item, `tabPurchase Receipt` pr\nWHERE\n	pi.name = pi_item.parent and pi_item.purchase_receipt = pr.name\n	and pi.docstatus = 1 and pr.posting_date > pi.posting_date\nORDER BY\n	pi.name desc'),('Purchase Invoice Trends','2013-06-13 18:46:55','2013-06-13 18:46:55','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Purchase Invoice','Purchase Invoice Trends',NULL,NULL,'Yes','Script Report',NULL),('Purchase Order Items To Be Billed','2013-05-28 15:54:16','2013-06-05 13:01:05','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,'Purchase Invoice','Purchase Order Items To Be Billed',NULL,NULL,'Yes','Query Report','select \n    `tabPurchase Order`.`name` as \"Purchase Order:Link/Purchase Order:120\",\n    `tabPurchase Order`.`transaction_date` as \"Date:Date:100\",\n	`tabPurchase Order`.`supplier` as \"Supplier:Link/Supplier:120\",\n	`tabPurchase Order Item`.`project_name` as \"Project\",\n	`tabPurchase Order Item`.item_code as \"Item Code:Link/Item:120\",\n	`tabPurchase Order Item`.amount as \"Amount:Currency:100\",\n	`tabPurchase Order Item`.billed_amt as \"Billed Amount:Currency:100\", \n	(`tabPurchase Order Item`.amount - ifnull(`tabPurchase Order Item`.billed_amt, 0)) as \"Amount to Bill:Currency:100\",\n	`tabPurchase Order Item`.item_name as \"Item Name::150\",\n	`tabPurchase Order Item`.description as \"Description::200\"\nfrom\n	`tabPurchase Order`, `tabPurchase Order Item`\nwhere\n	`tabPurchase Order Item`.`parent` = `tabPurchase Order`.`name`\n	and `tabPurchase Order`.docstatus = 1\n	and `tabPurchase Order`.status != \"Stopped\"\n	and ifnull(`tabPurchase Order Item`.billed_amt, 0) < ifnull(`tabPurchase Order Item`.amount, 0)\norder by `tabPurchase Order`.transaction_date asc'),('Purchase Order Items To Be Received','2013-02-22 18:01:55','2013-07-16 13:19:24','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,'Purchase Receipt','Purchase Order Items To Be Received',NULL,NULL,'Yes','Query Report','select \n    `tabPurchase Order`.`name` as \"Purchase Order:Link/Purchase Order:120\",\n	`tabPurchase Order`.`transaction_date` as \"Date:Date:100\",\n	`tabPurchase Order`.`supplier` as \"Supplier:Link/Supplier:120\",\n	`tabPurchase Order Item`.`project_name` as \"Project\",\n	`tabPurchase Order Item`.item_code as \"Item Code:Link/Item:120\",\n	`tabPurchase Order Item`.qty as \"Qty:Float:100\",\n	`tabPurchase Order Item`.received_qty as \"Received Qty:Float:100\", \n	(`tabPurchase Order Item`.qty - ifnull(`tabPurchase Order Item`.received_qty, 0)) as \"Qty to Receive:Float:100\",\n    `tabPurchase Order Item`.warehouse as \"Warehouse:Link/Warehouse:150\",\n	`tabPurchase Order Item`.item_name as \"Item Name::150\",\n	`tabPurchase Order Item`.description as \"Description::200\",\n    `tabPurchase Order Item`.brand as \"Brand::100\"\nfrom\n	`tabPurchase Order`, `tabPurchase Order Item`\nwhere\n	`tabPurchase Order Item`.`parent` = `tabPurchase Order`.`name`\n	and `tabPurchase Order`.docstatus = 1\n	and `tabPurchase Order`.status != \"Stopped\"\n	and ifnull(`tabPurchase Order Item`.received_qty, 0) < ifnull(`tabPurchase Order Item`.qty, 0)\norder by `tabPurchase Order`.transaction_date asc'),('Purchase Order Trends','2013-06-13 18:45:01','2013-06-13 18:45:01','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Purchase Order','Purchase Order Trends',NULL,NULL,'Yes','Script Report',NULL),('Purchase Receipt Trends','2013-06-13 18:45:44','2013-06-13 18:45:44','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Purchase Receipt','Purchase Receipt Trends',NULL,NULL,'Yes','Script Report',NULL),('Purchase Register','2013-04-29 16:13:11','2013-04-30 17:51:19','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,'Purchase Invoice','Purchase Register',NULL,NULL,'Yes','Script Report',NULL),('Quotation Trends','2013-06-07 16:01:16','2013-06-12 16:31:23','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,0,'Quotation','Quotation Trends',NULL,NULL,'Yes','Script Report',NULL),('Received Items To Be Billed','2013-07-30 18:35:10','2013-07-31 11:46:57','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Purchase Invoice','Received Items To Be Billed',NULL,NULL,'Yes','Query Report','select\n    `tabPurchase Receipt`.`name` as \"Purchase Receipt:Link/Purchase Receipt:120\",\n    `tabPurchase Receipt`.`supplier` as \"Supplier:Link/Supplier:120\",\n	`tabPurchase Receipt`.`posting_date` as \"Date:Date\",\n	`tabPurchase Receipt Item`.`project_name` as \"Project\",\n	`tabPurchase Receipt Item`.`item_code` as \"Item:Link/Item:120\",\n	(`tabPurchase Receipt Item`.`qty` - ifnull((select sum(qty) from `tabPurchase Invoice Item` \n	    where `tabPurchase Invoice Item`.purchase_receipt = `tabPurchase Receipt`.name and\n	        `tabPurchase Invoice Item`.pr_detail = `tabPurchase Receipt Item`.name), 0))\n		as \"Qty:Float:110\",\n	(`tabPurchase Receipt Item`.`amount` - ifnull((select sum(amount) from `tabPurchase Invoice Item` \n        where `tabPurchase Invoice Item`.purchase_receipt = `tabPurchase Receipt`.name and\n            `tabPurchase Invoice Item`.pr_detail = `tabPurchase Receipt Item`.name), 0))\n		as \"Amount:Currency:110\",\n	`tabPurchase Receipt Item`.`item_name` as \"Item Name::150\",\n	`tabPurchase Receipt Item`.`description` as \"Description::200\"\nfrom `tabPurchase Receipt`, `tabPurchase Receipt Item`\nwhere\n    `tabPurchase Receipt`.docstatus = 1 and\n	`tabPurchase Receipt`.`status` != \"Stopped\" and\n    `tabPurchase Receipt`.name = `tabPurchase Receipt Item`.parent and\n    (`tabPurchase Receipt Item`.qty > ifnull((select sum(qty) from `tabPurchase Invoice Item` \n        where `tabPurchase Invoice Item`.purchase_receipt = `tabPurchase Receipt`.name and\n            `tabPurchase Invoice Item`.pr_detail = `tabPurchase Receipt Item`.name), 0))\norder by `tabPurchase Receipt`.`name` desc'),('Requested Items To Be Ordered','2013-05-13 16:10:02','2013-05-13 16:21:07','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,'Purchase Order','Requested Items To Be Ordered',NULL,NULL,'Yes','Query Report','select \n    mr.name as \"Material Request:Link/Material Request:120\",\n	mr.transaction_date as \"Date:Date:100\",\n	mr_item.item_code as \"Item Code:Link/Item:120\",\n	mr_item.qty as \"Qty:Float:100\",\n	mr_item.ordered_qty as \"Ordered Qty:Float:100\", \n	(mr_item.qty - ifnull(mr_item.ordered_qty, 0)) as \"Qty to Order:Float:100\",\n	mr_item.item_name as \"Item Name::150\",\n	mr_item.description as \"Description::200\"\nfrom\n	`tabMaterial Request` mr, `tabMaterial Request Item` mr_item\nwhere\n	mr_item.parent = mr.name\n	and mr.material_request_type = \"Purchase\"\n	and mr.docstatus = 1\n	and mr.status != \"Stopped\"\n	and ifnull(mr_item.ordered_qty, 0) < ifnull(mr_item.qty, 0)\norder by mr.transaction_date asc'),('Requested Items To Be Transferred','2013-05-13 16:23:05','2013-05-13 16:25:08','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,'Stock Entry','Requested Items To Be Transferred',NULL,NULL,'Yes','Query Report','select \n    mr.name as \"Material Request:Link/Material Request:120\",\n	mr.transaction_date as \"Date:Date:100\",\n	mr_item.item_code as \"Item Code:Link/Item:120\",\n	mr_item.qty as \"Qty:Float:100\",\n	mr_item.ordered_qty as \"Transferred Qty:Float:100\", \n	(mr_item.qty - ifnull(mr_item.ordered_qty, 0)) as \"Qty to Transfer:Float:100\",\n	mr_item.item_name as \"Item Name::150\",\n	mr_item.description as \"Description::200\"\nfrom\n	`tabMaterial Request` mr, `tabMaterial Request Item` mr_item\nwhere\n	mr_item.parent = mr.name\n	and mr.material_request_type = \"Transfer\"\n	and mr.docstatus = 1\n	and mr.status != \"Stopped\"\n	and ifnull(mr_item.ordered_qty, 0) < ifnull(mr_item.qty, 0)\norder by mr.transaction_date asc'),('Sales Invoice Trends','2013-06-13 18:44:21','2013-06-13 18:44:21','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Sales Invoice','Sales Invoice Trends',NULL,NULL,'Yes','Script Report',NULL),('Sales Order Trends','2013-06-13 18:43:30','2013-06-13 18:43:30','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Sales Order','Sales Order Trends',NULL,NULL,'Yes','Script Report',NULL),('Sales Partners Commission','2013-05-06 12:28:23','2013-05-06 12:41:15','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Sales Invoice','Sales Partners Commission',NULL,NULL,'Yes','Query Report','SELECT\n    sales_partner as \"Sales Partner:Link/Sales Partner:150\",\n	sum(net_total) as \"Invoiced Amount (Exculsive Tax):Currency:210\",\n	sum(total_commission) as \"Total Commission:Currency:150\",\n	sum(total_commission)*100/sum(net_total) as \"Average Commission Rate:Currency:170\"\nFROM\n	`tabSales Invoice`\nWHERE\n	docstatus = 1 and ifnull(net_total, 0) > 0 and ifnull(total_commission, 0) > 0\nGROUP BY\n	sales_partner\nORDER BY\n	\"Total Commission:Currency:120\"'),('Sales Person Target Variance Item Group-Wise','2013-06-21 12:14:15','2013-06-21 12:14:15','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Sales Order','Sales Person Target Variance Item Group-Wise',NULL,NULL,'Yes','Script Report',NULL),('Sales Person-wise Transaction Summary','2013-05-03 11:31:05','2013-05-03 11:31:05','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,'Sales Order','Sales Person-wise Transaction Summary',NULL,NULL,'Yes','Script Report',NULL),('Sales Register','2013-04-23 18:15:29','2013-04-30 17:53:10','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,1,'Sales Invoice','Sales Register',NULL,NULL,'Yes','Script Report',NULL),('Serial No Service Contract Expiry','2013-01-14 10:52:58','2013-02-22 15:53:01','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Serial No','Serial No Service Contract Expiry',NULL,'{\"filters\":[[\"Serial No\",\"status\",\"=\",\"Delivered\"]],\"columns\":[[\"name\",\"Serial No\"],[\"item_code\",\"Serial No\"],[\"amc_expiry_date\",\"Serial No\"],[\"maintenance_status\",\"Serial No\"],[\"delivery_document_no\",\"Serial No\"],[\"customer\",\"Serial No\"],[\"customer_name\",\"Serial No\"],[\"item_name\",\"Serial No\"],[\"description\",\"Serial No\"],[\"item_group\",\"Serial No\"],[\"brand\",\"Serial No\"]],\"sort_by\":\"Serial No.amc_expiry_date\",\"sort_order\":\"asc\",\"sort_by_next\":\"\",\"sort_order_next\":\"desc\"}','Yes','Report Builder',NULL),('Serial No Status','2013-01-14 10:52:58','2013-02-22 15:53:01','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Serial No','Serial No Status',NULL,'{\"filters\":[],\"columns\":[[\"name\",\"Serial No\"],[\"item_code\",\"Serial No\"],[\"warehouse\",\"Serial No\"],[\"status\",\"Serial No\"],[\"item_name\",\"Serial No\"],[\"description\",\"Serial No\"],[\"item_group\",\"Serial No\"],[\"brand\",\"Serial No\"],[\"purchase_document_no\",\"Serial No\"],[\"purchase_date\",\"Serial No\"],[\"customer\",\"Serial No\"],[\"customer_name\",\"Serial No\"],[\"purchase_rate\",\"Serial No\"],[\"delivery_document_no\",\"Serial No\"],[\"delivery_date\",\"Serial No\"],[\"supplier\",\"Serial No\"],[\"supplier_name\",\"Serial No\"]],\"sort_by\":\"Serial No.name\",\"sort_order\":\"desc\",\"sort_by_next\":\"\",\"sort_order_next\":\"desc\"}','Yes','Report Builder',NULL),('Serial No Warranty Expiry','2013-01-14 10:52:58','2013-02-22 15:53:01','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Serial No','Serial No Warranty Expiry',NULL,'{\"filters\":[[\"Serial No\",\"status\",\"=\",\"Delivered\"]],\"columns\":[[\"name\",\"Serial No\"],[\"item_code\",\"Serial No\"],[\"warranty_expiry_date\",\"Serial No\"],[\"warranty_period\",\"Serial No\"],[\"maintenance_status\",\"Serial No\"],[\"purchase_document_no\",\"Serial No\"],[\"purchase_date\",\"Serial No\"],[\"supplier\",\"Serial No\"],[\"supplier_name\",\"Serial No\"],[\"delivery_document_no\",\"Serial No\"],[\"delivery_date\",\"Serial No\"],[\"customer\",\"Serial No\"],[\"customer_name\",\"Serial No\"],[\"item_name\",\"Serial No\"],[\"description\",\"Serial No\"],[\"item_group\",\"Serial No\"],[\"brand\",\"Serial No\"]],\"sort_by\":\"Serial No.warranty_expiry_date\",\"sort_order\":\"asc\",\"sort_by_next\":\"\",\"sort_order_next\":\"asc\"}','Yes','Report Builder',NULL),('Stock Ledger','2013-01-14 15:26:21','2013-08-20 11:53:43','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Stock Ledger Entry','Stock Ledger',NULL,'{\"filters\":[],\"columns\":[[\"item_code\",\"Stock Ledger Entry\"],[\"warehouse\",\"Stock Ledger Entry\"],[\"posting_date\",\"Stock Ledger Entry\"],[\"posting_time\",\"Stock Ledger Entry\"],[\"actual_qty\",\"Stock Ledger Entry\"],[\"qty_after_transaction\",\"Stock Ledger Entry\"],[\"voucher_type\",\"Stock Ledger Entry\"],[\"voucher_no\",\"Stock Ledger Entry\"]],\"sort_by\":\"Stock Ledger Entry.posting_date\",\"sort_order\":\"desc\",\"sort_by_next\":\"Stock Ledger Entry.posting_time\",\"sort_order_next\":\"desc\"}','Yes','Report Builder',NULL),('Supplier Account Head','2013-06-04 12:56:17','2013-06-04 12:56:46','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Account','Supplier Account Head',NULL,NULL,'Yes','Script Report',NULL),('Supplier Addresses and Contacts','2013-10-09 10:38:40','2013-10-09 10:53:52','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Supplier','Supplier Addresses and Contacts',NULL,NULL,'Yes','Query Report','SELECT\n    `tabSupplier`.name as \"Supplier:Link/Supplier:120\",\n	`tabSupplier`.supplier_name as \"Supplier Name::120\",\n	`tabSupplier`.supplier_type as \"Supplier Type:Link/Supplier Type:120\",\n	concat_ws(\', \', \n		trim(\',\' from `tabAddress`.address_line1), \n		trim(\',\' from tabAddress.address_line2), \n		tabAddress.state, tabAddress.pincode, tabAddress.country\n	) as \'Address::180\',\n    concat_ws(\', \', `tabContact`.first_name, `tabContact`.last_name) as \'Contact Name::180\',\n	`tabContact`.phone as \"Phone\",\n	`tabContact`.mobile_no as \"Mobile No\",\n	`tabContact`.email_id as \"Email Id::120\",\n	`tabContact`.is_primary_contact as \"Is Primary Contact::120\"\nFROM\n	`tabSupplier`\n	left join `tabAddress` on (\n		`tabAddress`.supplier=`tabSupplier`.name\n	)\n	left join `tabContact` on (\n		`tabContact`.supplier=`tabSupplier`.name\n	)\nWHERE\n	`tabSupplier`.docstatus<2\nORDER BY\n	`tabSupplier`.name asc'),('Territory Target Variance Item Group-Wise','2013-06-21 12:15:00','2013-06-21 12:15:00','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Sales Order','Territory Target Variance Item Group-Wise',NULL,NULL,'Yes','Script Report',NULL),('ToDo','2013-02-25 14:26:30','2013-02-25 14:26:51','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'ToDo','ToDo',NULL,NULL,'Yes','Script Report',NULL),('Warehouse-Wise Stock Balance','2013-06-05 11:00:31','2013-06-05 11:00:31','Administrator','Administrator',0,NULL,NULL,NULL,1,NULL,NULL,'Stock Ledger Entry','Warehouse-Wise Stock Balance',NULL,NULL,'Yes','Script Report',NULL);
/*!40000 ALTER TABLE `tabReport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabRole`
--

DROP TABLE IF EXISTS `tabRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabRole` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `role_name` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabRole`
--

LOCK TABLES `tabRole` WRITE;
/*!40000 ALTER TABLE `tabRole` DISABLE KEYS */;
INSERT INTO `tabRole` VALUES ('Accounts Manager','2013-11-07 11:16:19','2013-11-07 11:16:19','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Accounts Manager'),('Accounts User','2013-11-07 11:16:19','2013-11-07 11:16:19','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Accounts User'),('Administrator','2013-11-07 11:16:18','2013-11-07 11:16:18','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Administrator'),('All','2013-11-07 11:16:18','2013-11-07 11:16:18','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'All'),('Analytics','2013-11-07 11:16:21','2013-11-07 11:16:21','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Analytics'),('Auditor','2013-11-07 11:16:19','2013-11-07 11:16:19','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Auditor'),('Blogger','2013-11-07 11:16:18','2013-11-07 11:16:18','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Blogger'),('Customer','2013-11-07 11:16:21','2013-11-07 11:16:21','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Customer'),('Employee','2013-11-07 11:16:23','2013-11-07 11:16:23','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Employee'),('Expense Approver','2013-11-07 11:16:24','2013-11-07 11:16:24','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Expense Approver'),('Guest','2013-11-07 11:16:18','2013-11-07 11:16:18','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Guest'),('HR Manager','2013-11-07 11:16:23','2013-11-07 11:16:23','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'HR Manager'),('HR User','2013-11-07 11:16:23','2013-11-07 11:16:23','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'HR User'),('Leave Approver','2013-11-07 11:16:24','2013-11-07 11:16:24','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Leave Approver'),('Maintenance Manager','2013-11-07 11:16:27','2013-11-07 11:16:27','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Maintenance Manager'),('Maintenance User','2013-11-07 11:16:27','2013-11-07 11:16:27','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Maintenance User'),('Manufacturing Manager','2013-11-07 11:16:22','2013-11-07 11:16:22','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Manufacturing Manager'),('Manufacturing User','2013-11-07 11:16:25','2013-11-07 11:16:25','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Manufacturing User'),('Material Manager','2013-11-07 11:16:27','2013-11-07 11:16:27','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Material Manager'),('Material Master Manager','2013-11-07 11:16:28','2013-11-07 11:16:28','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Material Master Manager'),('Material User','2013-11-07 11:16:22','2013-11-07 11:16:22','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Material User'),('Projects Manager','2013-11-07 11:16:26','2013-11-07 11:16:26','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Projects Manager'),('Projects User','2013-11-07 11:16:25','2013-11-07 11:16:25','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Projects User'),('Purchase Manager','2013-11-07 11:16:21','2013-11-07 11:16:21','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Purchase Manager'),('Purchase Master Manager','2013-11-07 11:16:21','2013-11-07 11:16:21','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Purchase Master Manager'),('Purchase User','2013-11-07 11:16:19','2013-11-07 11:16:19','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Purchase User'),('Quality Manager','2013-11-07 11:16:22','2013-11-07 11:16:22','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Quality Manager'),('Report Manager','2013-11-07 11:16:19','2013-11-07 11:16:19','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Report Manager'),('Sales Manager','2013-11-07 11:16:26','2013-11-07 11:16:26','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Sales Manager'),('Sales Master Manager','2013-11-07 11:16:21','2013-11-07 11:16:21','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Sales Master Manager'),('Sales User','2013-11-07 11:16:19','2013-11-07 11:16:19','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Sales User'),('Supplier','2013-11-07 11:16:20','2013-11-07 11:16:20','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Supplier'),('Support Manager','2013-11-07 11:16:33','2013-11-07 11:16:33','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Support Manager'),('Support Team','2013-11-07 11:16:33','2013-11-07 11:16:33','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Support Team'),('System Manager','2013-11-07 11:16:18','2013-11-07 11:16:18','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'System Manager'),('Website Manager','2013-11-07 11:16:18','2013-11-07 11:16:18','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Website Manager');
/*!40000 ALTER TABLE `tabRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSMS Log`
--

DROP TABLE IF EXISTS `tabSMS Log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSMS Log` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `sender_name` varchar(180) DEFAULT NULL,
  `no_of_requested_sms` int(11) DEFAULT NULL,
  `no_of_sent_sms` int(11) DEFAULT NULL,
  `message` text,
  `receiver_list` text,
  `sent_on` date DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSMS Log`
--

LOCK TABLES `tabSMS Log` WRITE;
/*!40000 ALTER TABLE `tabSMS Log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSMS Log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSMS Parameter`
--

DROP TABLE IF EXISTS `tabSMS Parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSMS Parameter` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `parameter` varchar(180) DEFAULT NULL,
  `value` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSMS Parameter`
--

LOCK TABLES `tabSMS Parameter` WRITE;
/*!40000 ALTER TABLE `tabSMS Parameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSMS Parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSalary Slip`
--

DROP TABLE IF EXISTS `tabSalary Slip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSalary Slip` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `payment_days` decimal(18,6) DEFAULT NULL,
  `grade` varchar(180) DEFAULT NULL,
  `total_in_words` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `month` varchar(180) DEFAULT NULL,
  `letter_head` varchar(180) DEFAULT NULL,
  `total_days_in_month` varchar(180) DEFAULT NULL,
  `total_deduction` decimal(18,6) DEFAULT NULL,
  `pf_no` varchar(180) DEFAULT NULL,
  `leave_encashment_amount` decimal(18,6) DEFAULT NULL,
  `email_check` int(1) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `leave_without_pay` decimal(18,6) DEFAULT NULL,
  `department` varchar(180) DEFAULT NULL,
  `esic_no` varchar(180) DEFAULT NULL,
  `bank_name` varchar(180) DEFAULT NULL,
  `branch` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `employee` varchar(180) DEFAULT NULL,
  `employee_name` varchar(180) DEFAULT NULL,
  `bank_account_no` varchar(180) DEFAULT NULL,
  `designation` varchar(180) DEFAULT NULL,
  `net_pay` decimal(18,6) DEFAULT NULL,
  `rounded_total` decimal(18,6) DEFAULT NULL,
  `gross_pay` decimal(18,6) DEFAULT NULL,
  `arrear_amount` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSalary Slip`
--

LOCK TABLES `tabSalary Slip` WRITE;
/*!40000 ALTER TABLE `tabSalary Slip` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSalary Slip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSalary Slip Deduction`
--

DROP TABLE IF EXISTS `tabSalary Slip Deduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSalary Slip Deduction` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `d_depends_on_lwp` int(1) DEFAULT NULL,
  `d_modified_amount` decimal(18,6) DEFAULT NULL,
  `d_type` varchar(180) DEFAULT NULL,
  `d_amount` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSalary Slip Deduction`
--

LOCK TABLES `tabSalary Slip Deduction` WRITE;
/*!40000 ALTER TABLE `tabSalary Slip Deduction` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSalary Slip Deduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSalary Slip Earning`
--

DROP TABLE IF EXISTS `tabSalary Slip Earning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSalary Slip Earning` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `e_amount` decimal(18,6) DEFAULT NULL,
  `e_modified_amount` decimal(18,6) DEFAULT NULL,
  `e_type` varchar(180) DEFAULT NULL,
  `e_depends_on_lwp` int(1) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSalary Slip Earning`
--

LOCK TABLES `tabSalary Slip Earning` WRITE;
/*!40000 ALTER TABLE `tabSalary Slip Earning` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSalary Slip Earning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSalary Structure`
--

DROP TABLE IF EXISTS `tabSalary Structure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSalary Structure` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `grade` varchar(180) DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `total_earning` decimal(18,6) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `branch` varchar(180) DEFAULT NULL,
  `department` varchar(180) DEFAULT NULL,
  `total_deduction` decimal(18,6) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `is_active` varchar(180) DEFAULT 'Yes',
  `employee` varchar(180) DEFAULT NULL,
  `employee_name` varchar(180) DEFAULT NULL,
  `designation` varchar(180) DEFAULT NULL,
  `net_pay` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSalary Structure`
--

LOCK TABLES `tabSalary Structure` WRITE;
/*!40000 ALTER TABLE `tabSalary Structure` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSalary Structure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSalary Structure Deduction`
--

DROP TABLE IF EXISTS `tabSalary Structure Deduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSalary Structure Deduction` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `depend_on_lwp` int(1) DEFAULT NULL,
  `d_modified_amt` decimal(18,6) DEFAULT NULL,
  `d_type` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSalary Structure Deduction`
--

LOCK TABLES `tabSalary Structure Deduction` WRITE;
/*!40000 ALTER TABLE `tabSalary Structure Deduction` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSalary Structure Deduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSalary Structure Earning`
--

DROP TABLE IF EXISTS `tabSalary Structure Earning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSalary Structure Earning` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `depend_on_lwp` int(1) DEFAULT NULL,
  `modified_value` decimal(18,6) DEFAULT NULL,
  `e_type` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSalary Structure Earning`
--

LOCK TABLES `tabSalary Structure Earning` WRITE;
/*!40000 ALTER TABLE `tabSalary Structure Earning` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSalary Structure Earning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSales BOM`
--

DROP TABLE IF EXISTS `tabSales BOM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSales BOM` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `new_item_code` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSales BOM`
--

LOCK TABLES `tabSales BOM` WRITE;
/*!40000 ALTER TABLE `tabSales BOM` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSales BOM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSales BOM Item`
--

DROP TABLE IF EXISTS `tabSales BOM Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSales BOM Item` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `rate` decimal(18,6) DEFAULT NULL,
  `uom` varchar(180) DEFAULT NULL,
  `description` text,
  `item_code` varchar(180) DEFAULT NULL,
  `qty` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSales BOM Item`
--

LOCK TABLES `tabSales BOM Item` WRITE;
/*!40000 ALTER TABLE `tabSales BOM Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSales BOM Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSales Invoice`
--

DROP TABLE IF EXISTS `tabSales Invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSales Invoice` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `rounded_total_export` decimal(18,6) DEFAULT NULL,
  `cash_bank_account` varchar(180) DEFAULT NULL,
  `convert_into_recurring_invoice` int(1) DEFAULT NULL,
  `selling_price_list` varchar(180) DEFAULT NULL,
  `tc_name` varchar(180) DEFAULT NULL,
  `source` varchar(180) DEFAULT NULL,
  `charge` varchar(180) DEFAULT NULL,
  `notification_email_address` text,
  `address_display` text,
  `due_date` date DEFAULT NULL,
  `write_off_cost_center` varchar(180) DEFAULT NULL,
  `invoice_period_to_date` date DEFAULT NULL,
  `write_off_outstanding_amount_automatically` int(1) DEFAULT NULL,
  `select_print_heading` varchar(180) DEFAULT NULL,
  `is_pos` int(1) DEFAULT NULL,
  `net_total_export` decimal(18,6) DEFAULT NULL,
  `write_off_amount` decimal(18,6) DEFAULT NULL,
  `mode_of_payment` varchar(180) DEFAULT NULL,
  `price_list_currency` varchar(180) DEFAULT NULL,
  `contact_display` text,
  `next_date` date DEFAULT NULL,
  `terms` text,
  `other_charges_total_export` decimal(18,6) DEFAULT NULL,
  `aging_date` date DEFAULT NULL,
  `customer_address` varchar(180) DEFAULT NULL,
  `total_commission` decimal(18,6) DEFAULT NULL,
  `contact_mobile` text,
  `c_form_applicable` varchar(180) DEFAULT NULL,
  `customer_group` varchar(180) DEFAULT NULL,
  `gross_profit` decimal(18,6) DEFAULT NULL,
  `repeat_on_day_of_month` int(11) DEFAULT NULL,
  `contact_person` varchar(180) DEFAULT NULL,
  `in_words` varchar(180) DEFAULT NULL,
  `campaign` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `conversion_rate` decimal(18,6) DEFAULT NULL,
  `against_income_account` text,
  `total_advance` decimal(18,6) DEFAULT NULL,
  `posting_time` time DEFAULT NULL,
  `customer_name` varchar(180) DEFAULT NULL,
  `commission_rate` decimal(18,6) DEFAULT NULL,
  `update_stock` int(1) DEFAULT NULL,
  `gross_profit_percent` decimal(18,6) DEFAULT NULL,
  `sales_partner` varchar(180) DEFAULT NULL,
  `project_name` varchar(180) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `contact_email` text,
  `customer` varchar(180) DEFAULT NULL,
  `grand_total` decimal(18,6) DEFAULT NULL,
  `territory` varchar(180) DEFAULT NULL,
  `is_opening` varchar(180) DEFAULT 'No',
  `posting_date` date DEFAULT NULL,
  `debit_to` varchar(180) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `other_charges_total` decimal(18,6) DEFAULT NULL,
  `currency` varchar(180) DEFAULT NULL,
  `letter_head` varchar(180) DEFAULT NULL,
  `recurring_id` varchar(180) DEFAULT NULL,
  `shipping_rule` varchar(180) DEFAULT NULL,
  `paid_amount` decimal(18,6) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `recurring_type` varchar(180) DEFAULT NULL,
  `rounded_total` decimal(18,6) DEFAULT NULL,
  `grand_total_export` decimal(18,6) DEFAULT NULL,
  `write_off_account` varchar(180) DEFAULT NULL,
  `outstanding_amount` decimal(18,6) DEFAULT NULL,
  `in_words_export` varchar(180) DEFAULT NULL,
  `remarks` text,
  `invoice_period_from_date` date DEFAULT NULL,
  `c_form_no` varchar(180) DEFAULT NULL,
  `plc_conversion_rate` decimal(18,6) DEFAULT NULL,
  `net_total` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `project_name` (`project_name`),
  KEY `posting_date` (`posting_date`),
  KEY `debit_to` (`debit_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSales Invoice`
--

LOCK TABLES `tabSales Invoice` WRITE;
/*!40000 ALTER TABLE `tabSales Invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSales Invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSales Invoice Advance`
--

DROP TABLE IF EXISTS `tabSales Invoice Advance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSales Invoice Advance` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `remarks` text,
  `allocated_amount` decimal(18,6) DEFAULT NULL,
  `journal_voucher` varchar(180) DEFAULT NULL,
  `jv_detail_no` varchar(180) DEFAULT NULL,
  `advance_amount` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSales Invoice Advance`
--

LOCK TABLES `tabSales Invoice Advance` WRITE;
/*!40000 ALTER TABLE `tabSales Invoice Advance` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSales Invoice Advance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSales Invoice Item`
--

DROP TABLE IF EXISTS `tabSales Invoice Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSales Invoice Item` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `serial_no` text,
  `qty` decimal(18,6) DEFAULT NULL,
  `item_tax_rate` text,
  `delivery_note` varchar(180) DEFAULT NULL,
  `dn_detail` varchar(180) DEFAULT NULL,
  `cost_center` varchar(180) DEFAULT NULL,
  `so_detail` varchar(180) DEFAULT NULL,
  `adj_rate` decimal(18,6) DEFAULT NULL,
  `actual_qty` decimal(18,6) DEFAULT NULL,
  `page_break` int(1) DEFAULT NULL,
  `income_account` varchar(180) DEFAULT NULL,
  `item_name` varchar(180) DEFAULT NULL,
  `stock_uom` varchar(180) DEFAULT NULL,
  `warehouse` varchar(180) DEFAULT NULL,
  `basic_rate` decimal(18,6) DEFAULT NULL,
  `ref_rate` decimal(18,6) DEFAULT NULL,
  `description` text,
  `brand` varchar(180) DEFAULT NULL,
  `barcode` varchar(180) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `time_log_batch` varchar(180) DEFAULT NULL,
  `expense_account` varchar(180) DEFAULT NULL,
  `delivered_qty` decimal(18,6) DEFAULT NULL,
  `export_rate` decimal(18,6) DEFAULT NULL,
  `sales_order` varchar(180) DEFAULT NULL,
  `item_group` varchar(180) DEFAULT NULL,
  `export_amount` decimal(18,6) DEFAULT NULL,
  `amount` decimal(18,6) DEFAULT NULL,
  `customer_item_code` varchar(180) DEFAULT NULL,
  `batch_no` varchar(180) DEFAULT NULL,
  `base_ref_rate` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `delivery_note` (`delivery_note`),
  KEY `dn_detail` (`dn_detail`),
  KEY `so_detail` (`so_detail`),
  KEY `item_code` (`item_code`),
  KEY `sales_order` (`sales_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSales Invoice Item`
--

LOCK TABLES `tabSales Invoice Item` WRITE;
/*!40000 ALTER TABLE `tabSales Invoice Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSales Invoice Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSales Order`
--

DROP TABLE IF EXISTS `tabSales Order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSales Order` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `rounded_total_export` decimal(18,6) DEFAULT NULL,
  `net_total_export` decimal(18,6) DEFAULT NULL,
  `total_commission` decimal(18,6) DEFAULT NULL,
  `campaign` varchar(180) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `currency` varchar(180) DEFAULT NULL,
  `conversion_rate` decimal(18,6) DEFAULT NULL,
  `other_charges_total` decimal(18,6) DEFAULT NULL,
  `billing_status` varchar(180) DEFAULT NULL,
  `other_charges_total_export` decimal(18,6) DEFAULT NULL,
  `terms` text,
  `commission_rate` decimal(18,6) DEFAULT NULL,
  `shipping_rule` varchar(180) DEFAULT NULL,
  `customer_name` varchar(180) DEFAULT NULL,
  `po_date` date DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `select_print_heading` varchar(180) DEFAULT NULL,
  `order_type` varchar(180) DEFAULT 'Sales',
  `price_list_currency` varchar(180) DEFAULT NULL,
  `selling_price_list` varchar(180) DEFAULT NULL,
  `tc_name` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `charge` varchar(180) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `contact_display` text,
  `sales_partner` varchar(180) DEFAULT NULL,
  `rounded_total` decimal(18,6) DEFAULT NULL,
  `grand_total_export` decimal(18,6) DEFAULT NULL,
  `address_display` text,
  `project_name` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `per_billed` decimal(18,6) DEFAULT NULL,
  `in_words_export` varchar(180) DEFAULT NULL,
  `customer_address` varchar(180) DEFAULT NULL,
  `contact_email` text,
  `contact_mobile` text,
  `delivery_status` varchar(180) DEFAULT NULL,
  `customer` varchar(180) DEFAULT NULL,
  `grand_total` decimal(18,6) DEFAULT NULL,
  `in_words` varchar(180) DEFAULT NULL,
  `shipping_address_name` varchar(180) DEFAULT NULL,
  `territory` varchar(180) DEFAULT NULL,
  `letter_head` varchar(180) DEFAULT NULL,
  `per_delivered` decimal(18,6) DEFAULT NULL,
  `plc_conversion_rate` decimal(18,6) DEFAULT NULL,
  `po_no` varchar(180) DEFAULT NULL,
  `net_total` decimal(18,6) DEFAULT NULL,
  `status` varchar(180) DEFAULT 'Draft',
  `source` varchar(180) DEFAULT NULL,
  `shipping_address` text,
  `contact_person` varchar(180) DEFAULT NULL,
  `customer_group` varchar(180) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `fiscal_year` (`fiscal_year`),
  KEY `transaction_date` (`transaction_date`),
  KEY `sales_partner` (`sales_partner`),
  KEY `project_name` (`project_name`),
  KEY `company` (`company`),
  KEY `customer` (`customer`),
  KEY `territory` (`territory`),
  KEY `status` (`status`),
  KEY `customer_group` (`customer_group`),
  KEY `delivery_date` (`delivery_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSales Order`
--

LOCK TABLES `tabSales Order` WRITE;
/*!40000 ALTER TABLE `tabSales Order` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSales Order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSales Order Item`
--

DROP TABLE IF EXISTS `tabSales Order Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSales Order Item` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `produced_qty` decimal(18,6) DEFAULT NULL,
  `qty` decimal(18,6) DEFAULT NULL,
  `item_tax_rate` text,
  `adj_rate` decimal(18,6) DEFAULT NULL,
  `actual_qty` decimal(18,6) DEFAULT NULL,
  `page_break` int(1) DEFAULT NULL,
  `item_name` varchar(180) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `stock_uom` varchar(180) DEFAULT NULL,
  `billed_amt` decimal(18,6) DEFAULT NULL,
  `basic_rate` decimal(18,6) DEFAULT NULL,
  `reserved_warehouse` varchar(180) DEFAULT NULL,
  `ref_rate` decimal(18,6) DEFAULT NULL,
  `description` text,
  `prevdoc_docname` varchar(180) DEFAULT NULL,
  `brand` varchar(180) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `projected_qty` decimal(18,6) DEFAULT NULL,
  `delivered_qty` decimal(18,6) DEFAULT NULL,
  `export_rate` decimal(18,6) DEFAULT NULL,
  `item_group` varchar(180) DEFAULT NULL,
  `planned_qty` decimal(18,6) DEFAULT NULL,
  `export_amount` decimal(18,6) DEFAULT NULL,
  `amount` decimal(18,6) DEFAULT NULL,
  `customer_item_code` varchar(180) DEFAULT NULL,
  `base_ref_rate` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `prevdoc_docname` (`prevdoc_docname`),
  KEY `brand` (`brand`),
  KEY `item_code` (`item_code`),
  KEY `item_group` (`item_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSales Order Item`
--

LOCK TABLES `tabSales Order Item` WRITE;
/*!40000 ALTER TABLE `tabSales Order Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSales Order Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSales Partner`
--

DROP TABLE IF EXISTS `tabSales Partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSales Partner` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `partner_website` varchar(180) DEFAULT NULL,
  `logo` varchar(180) DEFAULT NULL,
  `commission_rate` decimal(18,6) DEFAULT NULL,
  `partner_name` varchar(180) DEFAULT NULL,
  `distribution_id` varchar(180) DEFAULT NULL,
  `page_name` varchar(180) DEFAULT NULL,
  `territory` varchar(180) DEFAULT NULL,
  `description` text,
  `partner_type` varchar(180) DEFAULT NULL,
  `show_in_website` int(1) DEFAULT NULL,
  `introduction` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `partner_name` (`partner_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSales Partner`
--

LOCK TABLES `tabSales Partner` WRITE;
/*!40000 ALTER TABLE `tabSales Partner` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSales Partner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSales Person`
--

DROP TABLE IF EXISTS `tabSales Person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSales Person` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `parent_sales_person` varchar(180) DEFAULT NULL,
  `distribution_id` varchar(180) DEFAULT NULL,
  `sales_person_name` varchar(180) DEFAULT NULL,
  `is_group` varchar(180) DEFAULT NULL,
  `old_parent` varchar(180) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `employee` varchar(180) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSales Person`
--

LOCK TABLES `tabSales Person` WRITE;
/*!40000 ALTER TABLE `tabSales Person` DISABLE KEYS */;
INSERT INTO `tabSales Person` VALUES ('Sales Team','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,'Sales Team','Yes','',1,NULL,2);
/*!40000 ALTER TABLE `tabSales Person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSales Taxes and Charges`
--

DROP TABLE IF EXISTS `tabSales Taxes and Charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSales Taxes and Charges` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `charge_type` varchar(180) DEFAULT NULL,
  `tax_amount` decimal(18,6) DEFAULT NULL,
  `description` text,
  `item_wise_tax_detail` text,
  `row_id` varchar(180) DEFAULT NULL,
  `included_in_print_rate` int(1) DEFAULT NULL,
  `rate` decimal(18,6) DEFAULT NULL,
  `account_head` varchar(180) DEFAULT NULL,
  `total` decimal(18,6) DEFAULT NULL,
  `cost_center` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSales Taxes and Charges`
--

LOCK TABLES `tabSales Taxes and Charges` WRITE;
/*!40000 ALTER TABLE `tabSales Taxes and Charges` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSales Taxes and Charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSales Taxes and Charges Master`
--

DROP TABLE IF EXISTS `tabSales Taxes and Charges Master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSales Taxes and Charges Master` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `title` varchar(180) DEFAULT NULL,
  `is_default` int(1) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSales Taxes and Charges Master`
--

LOCK TABLES `tabSales Taxes and Charges Master` WRITE;
/*!40000 ALTER TABLE `tabSales Taxes and Charges Master` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSales Taxes and Charges Master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSales Team`
--

DROP TABLE IF EXISTS `tabSales Team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSales Team` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `allocated_percentage` decimal(18,6) DEFAULT NULL,
  `incentives` decimal(18,6) DEFAULT NULL,
  `sales_designation` varchar(180) DEFAULT NULL,
  `contact_no` varchar(180) DEFAULT NULL,
  `allocated_amount` decimal(18,6) DEFAULT NULL,
  `sales_person` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSales Team`
--

LOCK TABLES `tabSales Team` WRITE;
/*!40000 ALTER TABLE `tabSales Team` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSales Team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabScheduler Log`
--

DROP TABLE IF EXISTS `tabScheduler Log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabScheduler Log` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `method` varchar(180) DEFAULT NULL,
  `error` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabScheduler Log`
--

LOCK TABLES `tabScheduler Log` WRITE;
/*!40000 ALTER TABLE `tabScheduler Log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabScheduler Log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSerial No`
--

DROP TABLE IF EXISTS `tabSerial No`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSerial No` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `purchase_time` time DEFAULT NULL,
  `delivery_document_type` varchar(180) DEFAULT NULL,
  `serial_no` varchar(180) DEFAULT NULL,
  `purchase_document_no` varchar(180) DEFAULT NULL,
  `customer_name` varchar(180) DEFAULT NULL,
  `amc_expiry_date` date DEFAULT NULL,
  `purchase_rate` decimal(18,6) DEFAULT NULL,
  `item_name` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `purchase_document_type` varchar(180) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `supplier` varchar(180) DEFAULT NULL,
  `status` varchar(180) DEFAULT 'In Store',
  `description` text,
  `brand` varchar(180) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `warehouse` varchar(180) DEFAULT NULL,
  `supplier_name` varchar(180) DEFAULT NULL,
  `is_cancelled` varchar(180) DEFAULT NULL,
  `maintenance_status` varchar(180) DEFAULT NULL,
  `customer` varchar(180) DEFAULT NULL,
  `delivery_time` time DEFAULT NULL,
  `delivery_document_no` varchar(180) DEFAULT NULL,
  `item_group` varchar(180) DEFAULT NULL,
  `warranty_period` int(11) DEFAULT NULL,
  `serial_no_details` text,
  `warranty_expiry_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `serial_no` (`serial_no`),
  KEY `company` (`company`),
  KEY `status` (`status`),
  KEY `warehouse` (`warehouse`),
  KEY `maintenance_status` (`maintenance_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSerial No`
--

LOCK TABLES `tabSerial No` WRITE;
/*!40000 ALTER TABLE `tabSerial No` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSerial No` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSeries`
--

DROP TABLE IF EXISTS `tabSeries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSeries` (
  `name` varchar(100) DEFAULT NULL,
  `current` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSeries`
--

LOCK TABLES `tabSeries` WRITE;
/*!40000 ALTER TABLE `tabSeries` DISABLE KEYS */;
INSERT INTO `tabSeries` VALUES ('',169),('FL',5496),('PERM',349),('PR',50),('UR',70),('DEF',53),('PATCHLOG',248),('_FEED',8);
/*!40000 ALTER TABLE `tabSeries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSessions`
--

DROP TABLE IF EXISTS `tabSessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSessions` (
  `user` varchar(40) DEFAULT NULL,
  `sid` varchar(120) DEFAULT NULL,
  `sessiondata` longtext,
  `ipaddress` varchar(16) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSessions`
--

LOCK TABLES `tabSessions` WRITE;
/*!40000 ALTER TABLE `tabSessions` DISABLE KEYS */;
INSERT INTO `tabSessions` VALUES ('Guest','Guest','{u\'session_expiry\': u\'06:00:00\', u\'session_country\': None, u\'session_ip\': None, u\'last_updated\': \'2013-11-07 14:42:15\', u\'user\': u\'Guest\'}',NULL,'2013-11-07 04:12:15','Active'),('Administrator','d2b11f925cdaf2db31dea9d1e56816c165d98eb66d3f385ae80e3103','{u\'session_expiry\': u\'06:00:00\', u\'session_country\': None, u\'last_updated\': \'2013-11-07 16:51:25\', u\'lang\': u\'en\', u\'user\': u\'Administrator\', u\'session_ip\': None}',NULL,'2013-11-07 06:21:25','Active'),('Administrator','84a2bcc96b947debb27376a869dd4c04d0bc8d9e0029898f34d3dc7d','{u\'session_expiry\': u\'06:00:00\', u\'session_country\': None, u\'last_updated\': \'2013-11-07 16:51:39\', u\'lang\': u\'en\', u\'user\': u\'Administrator\', u\'session_ip\': None}',NULL,'2013-11-07 06:21:39','Active'),('Administrator','0c0ad989db61e7df6746c382660807b03b6fa2098c520428e8a967a1','{u\'session_expiry\': u\'06:00:00\', u\'session_country\': None, u\'last_updated\': \'2013-11-22 11:45:16\', u\'lang\': u\'en\', u\'user\': u\'Administrator\', u\'session_ip\': None}',NULL,'2013-11-22 01:15:16','Active'),('Administrator','9986289cbed5c3572ab627ad48bf9383cef3982da65ddd624c04ed10','{u\'session_expiry\': u\'06:00:00\', u\'session_country\': None, u\'last_updated\': \'2014-03-25 08:14:16\', u\'lang\': u\'en\', u\'user\': u\'Administrator\', u\'session_ip\': None}',NULL,'2014-03-24 22:44:16','Active');
/*!40000 ALTER TABLE `tabSessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabShipping Rule`
--

DROP TABLE IF EXISTS `tabShipping Rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabShipping Rule` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `calculate_based_on` varchar(180) DEFAULT 'Net Total',
  `company` varchar(180) DEFAULT NULL,
  `account` varchar(180) DEFAULT NULL,
  `label` varchar(180) DEFAULT NULL,
  `cost_center` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabShipping Rule`
--

LOCK TABLES `tabShipping Rule` WRITE;
/*!40000 ALTER TABLE `tabShipping Rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabShipping Rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabShipping Rule Condition`
--

DROP TABLE IF EXISTS `tabShipping Rule Condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabShipping Rule Condition` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `to_value` decimal(18,6) DEFAULT NULL,
  `from_value` decimal(18,6) DEFAULT NULL,
  `shipping_amount` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabShipping Rule Condition`
--

LOCK TABLES `tabShipping Rule Condition` WRITE;
/*!40000 ALTER TABLE `tabShipping Rule Condition` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabShipping Rule Condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabShopping Cart Price List`
--

DROP TABLE IF EXISTS `tabShopping Cart Price List`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabShopping Cart Price List` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `selling_price_list` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabShopping Cart Price List`
--

LOCK TABLES `tabShopping Cart Price List` WRITE;
/*!40000 ALTER TABLE `tabShopping Cart Price List` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabShopping Cart Price List` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabShopping Cart Shipping Rule`
--

DROP TABLE IF EXISTS `tabShopping Cart Shipping Rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabShopping Cart Shipping Rule` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `shipping_rule` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabShopping Cart Shipping Rule`
--

LOCK TABLES `tabShopping Cart Shipping Rule` WRITE;
/*!40000 ALTER TABLE `tabShopping Cart Shipping Rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabShopping Cart Shipping Rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabShopping Cart Taxes and Charges Master`
--

DROP TABLE IF EXISTS `tabShopping Cart Taxes and Charges Master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabShopping Cart Taxes and Charges Master` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `sales_taxes_and_charges_master` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabShopping Cart Taxes and Charges Master`
--

LOCK TABLES `tabShopping Cart Taxes and Charges Master` WRITE;
/*!40000 ALTER TABLE `tabShopping Cart Taxes and Charges Master` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabShopping Cart Taxes and Charges Master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSingles`
--

DROP TABLE IF EXISTS `tabSingles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSingles` (
  `doctype` varchar(40) DEFAULT NULL,
  `field` varchar(40) DEFAULT NULL,
  `value` text,
  KEY `doctype` (`doctype`),
  KEY `singles_doctype_field_index` (`doctype`,`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSingles`
--

LOCK TABLES `tabSingles` WRITE;
/*!40000 ALTER TABLE `tabSingles` DISABLE KEYS */;
INSERT INTO `tabSingles` VALUES ('Features Setup','fs_imports','1'),('Features Setup','fs_projects','1'),('Features Setup','fs_page_break','1'),('Features Setup','fs_recurring_invoice','1'),('Features Setup','fs_quality','1'),('Features Setup','fs_more_info','1'),('Features Setup','owner',''),('Features Setup','fs_pos_view','1'),('Features Setup','fs_packing_details','1'),('Features Setup','fs_brands','1'),('Features Setup','modified_by','Administrator'),('Features Setup','fs_sales_extras','1'),('Features Setup','fs_item_serial_nos','1'),('Features Setup','docstatus','0'),('Features Setup','fs_manufacturing','1'),('Features Setup','fs_item_batch_nos','1'),('Features Setup','fs_exports','1'),('Features Setup','fs_after_sales_installations','1'),('Features Setup','fs_discounts','1'),('Features Setup','fs_item_group_in_details','1'),('Features Setup','fs_item_advanced','1'),('Features Setup','fs_pos','1'),('Features Setup','fs_purchase_discounts','1'),('Features Setup','fs_item_barcode','1'),('Website Settings','google_plus_one','0'),('Website Settings','modified_by','Administrator'),('Website Settings','copyright','Pinnacle Foods Limited'),('Website Settings','linked_in_share','0'),('Website Settings','disable_signup','0'),('Website Settings','twitter_share','0'),('Website Settings','facebook_share','0'),('Website Settings','home_page','pinnacle-foods-limited-home'),('Website Settings','brand_html','<span>Pinnacle Foods Limited</span>'),('Website Settings','owner',''),('Website Settings','docstatus','0'),('Website Settings','home_page_is_products','0'),('Style Settings','modified_by','Administrator'),('Style Settings','top_bar_background','F2F2F2'),('Style Settings','owner',''),('Style Settings','docstatus','0'),('Style Settings','font_size','15px'),('Style Settings','page_border','0'),('Global Defaults','default_company','Pinnacle Foods Limited'),('Global Defaults','date_format','mm-dd-yyyy'),('Global Defaults','float_precision','3'),('Global Defaults','country','United States'),('Global Defaults','modified_by','Administrator'),('Global Defaults','disable_rounded_total','0'),('Global Defaults','time_zone',NULL),('Global Defaults','owner',''),('Global Defaults','docstatus','0'),('Global Defaults','current_fiscal_year','2014'),('Global Defaults','default_currency','USD'),('Accounts Settings','modified_by','Administrator'),('Accounts Settings','auto_accounting_for_stock','1'),('Accounts Settings','owner',''),('Accounts Settings','docstatus','0'),('Stock Settings','auto_indent','1'),('Stock Settings','modified_by','Administrator'),('Stock Settings','allow_negative_stock','0'),('Stock Settings','reorder_email_notify','0'),('Stock Settings','valuation_method','FIFO'),('Stock Settings','stock_uom','Nos'),('Stock Settings','owner',''),('Stock Settings','docstatus','0'),('Stock Settings','tolerance','0'),('Stock Settings','item_naming_by','Item Code'),('Notification Control','purchase_receipt','0'),('Notification Control','purchase_order','1'),('Notification Control','sales_order','0'),('Notification Control','modified_by','Administrator'),('Notification Control','sales_invoice','1'),('Notification Control','delivery_note','0'),('Notification Control','owner',''),('Notification Control','docstatus','0'),('Notification Control','expense_claim','0'),('Notification Control','quotation','1'),('HR Settings','include_holidays_in_total_working_days','0'),('HR Settings','modified_by','Administrator'),('HR Settings','emp_created_by','Naming Series'),('HR Settings','owner',''),('HR Settings','docstatus','0'),('HR Settings','stop_birthday_reminders','0'),('Control Panel','modified_by','Administrator'),('Control Panel','home_page','desktop'),('Control Panel','country','United States'),('Control Panel','total_sms_sent','0'),('Control Panel','company_name','Pinnacle Foods Limited'),('Control Panel','owner',''),('Control Panel','docstatus','0'),('Control Panel','password_expiry_days','0'),('Selling Settings','editable_price_list_rate','0'),('Selling Settings','modified_by','Administrator'),('Selling Settings','selling_price_list','Standard Selling'),('Selling Settings','so_required','No'),('Selling Settings','maintain_same_sales_rate','0'),('Selling Settings','dn_required','No'),('Selling Settings','owner',''),('Selling Settings','docstatus','0'),('Selling Settings','cust_master_name','Customer Name'),('Buying Settings','maintain_same_rate','1'),('Buying Settings','modified_by','Administrator'),('Buying Settings','supp_master_name','Supplier Name'),('Buying Settings','po_required','No'),('Buying Settings','docstatus','0'),('Buying Settings','owner',''),('Buying Settings','pr_required','No'),('Buying Settings','buying_price_list','Standard Buying'),('Control Panel','modified','2014-03-25 08:13:43');
/*!40000 ALTER TABLE `tabSingles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabStock Entry`
--

DROP TABLE IF EXISTS `tabStock Entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabStock Entry` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `use_multi_level_bom` int(1) DEFAULT '1',
  `delivery_note_no` varchar(180) DEFAULT NULL,
  `supplier_address` text,
  `naming_series` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `fg_completed_qty` decimal(18,6) DEFAULT NULL,
  `purchase_receipt_no` varchar(180) DEFAULT NULL,
  `posting_time` time DEFAULT NULL,
  `customer_name` varchar(180) DEFAULT NULL,
  `from_warehouse` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `to_warehouse` varchar(180) DEFAULT NULL,
  `supplier` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `project_name` varchar(180) DEFAULT NULL,
  `sales_invoice_no` varchar(180) DEFAULT NULL,
  `customer_address` text,
  `purpose` varchar(180) DEFAULT 'Material Issue',
  `supplier_name` varchar(180) DEFAULT NULL,
  `remarks` text,
  `customer` varchar(180) DEFAULT NULL,
  `bom_no` varchar(180) DEFAULT NULL,
  `total_amount` decimal(18,6) DEFAULT NULL,
  `select_print_heading` varchar(180) DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `production_order` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `delivery_note_no` (`delivery_note_no`),
  KEY `purchase_receipt_no` (`purchase_receipt_no`),
  KEY `posting_date` (`posting_date`),
  KEY `production_order` (`production_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabStock Entry`
--

LOCK TABLES `tabStock Entry` WRITE;
/*!40000 ALTER TABLE `tabStock Entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabStock Entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabStock Entry Detail`
--

DROP TABLE IF EXISTS `tabStock Entry Detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabStock Entry Detail` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `material_request_item` varchar(180) DEFAULT NULL,
  `stock_uom` varchar(180) DEFAULT NULL,
  `t_warehouse` varchar(180) DEFAULT NULL,
  `transfer_qty` decimal(18,6) DEFAULT NULL,
  `description` text,
  `item_name` varchar(180) DEFAULT NULL,
  `serial_no` text,
  `incoming_rate` decimal(18,6) DEFAULT NULL,
  `bom_no` varchar(180) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `qty` decimal(18,6) DEFAULT NULL,
  `s_warehouse` varchar(180) DEFAULT NULL,
  `amount` decimal(18,6) DEFAULT NULL,
  `conversion_factor` decimal(18,6) DEFAULT NULL,
  `material_request` varchar(180) DEFAULT NULL,
  `batch_no` varchar(180) DEFAULT NULL,
  `cost_center` varchar(180) DEFAULT NULL,
  `expense_account` varchar(180) DEFAULT NULL,
  `actual_qty` decimal(18,6) DEFAULT NULL,
  `uom` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `actual_qty` (`actual_qty`),
  KEY `item_code` (`item_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabStock Entry Detail`
--

LOCK TABLES `tabStock Entry Detail` WRITE;
/*!40000 ALTER TABLE `tabStock Entry Detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabStock Entry Detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabStock Ledger Entry`
--

DROP TABLE IF EXISTS `tabStock Ledger Entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabStock Ledger Entry` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `actual_qty` decimal(18,6) DEFAULT NULL,
  `stock_value` decimal(18,6) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `stock_value_difference` decimal(18,6) DEFAULT NULL,
  `is_cancelled` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `serial_no` text,
  `incoming_rate` decimal(18,6) DEFAULT NULL,
  `voucher_type` varchar(180) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `voucher_detail_no` varchar(180) DEFAULT NULL,
  `project` varchar(180) DEFAULT NULL,
  `valuation_rate` decimal(18,6) DEFAULT NULL,
  `stock_uom` varchar(180) DEFAULT NULL,
  `stock_queue` text,
  `batch_no` varchar(180) DEFAULT NULL,
  `warehouse` varchar(180) DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `posting_time` time DEFAULT NULL,
  `qty_after_transaction` decimal(18,6) DEFAULT NULL,
  `voucher_no` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `posting_sort_index` (`posting_date`,`posting_time`,`name`),
  KEY `item_code` (`item_code`),
  KEY `warehouse` (`warehouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabStock Ledger Entry`
--

LOCK TABLES `tabStock Ledger Entry` WRITE;
/*!40000 ALTER TABLE `tabStock Ledger Entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabStock Ledger Entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabStock Reconciliation`
--

DROP TABLE IF EXISTS `tabStock Reconciliation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabStock Reconciliation` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `expense_account` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `reconciliation_json` longtext,
  `posting_date` date DEFAULT NULL,
  `posting_time` time DEFAULT NULL,
  `cost_center` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabStock Reconciliation`
--

LOCK TABLES `tabStock Reconciliation` WRITE;
/*!40000 ALTER TABLE `tabStock Reconciliation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabStock Reconciliation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSupplier`
--

DROP TABLE IF EXISTS `tabSupplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSupplier` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `default_currency` varchar(180) DEFAULT NULL,
  `website` varchar(180) DEFAULT NULL,
  `credit_days` int(11) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `supplier_details` text,
  `supplier_name` varchar(180) DEFAULT NULL,
  `supplier_type` varchar(180) DEFAULT NULL,
  `default_price_list` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSupplier`
--

LOCK TABLES `tabSupplier` WRITE;
/*!40000 ALTER TABLE `tabSupplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSupplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSupplier Quotation`
--

DROP TABLE IF EXISTS `tabSupplier Quotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSupplier Quotation` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `supplier_address` varchar(180) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `in_words_import` varchar(180) DEFAULT NULL,
  `supplier_name` varchar(180) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `currency` varchar(180) DEFAULT NULL,
  `conversion_rate` decimal(18,6) DEFAULT NULL,
  `select_print_heading` varchar(180) DEFAULT NULL,
  `is_subcontracted` varchar(180) DEFAULT 'No',
  `price_list_currency` varchar(180) DEFAULT NULL,
  `tc_name` varchar(180) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `contact_display` text,
  `other_charges_added_import` decimal(18,6) DEFAULT NULL,
  `supplier` varchar(180) DEFAULT NULL,
  `grand_total_import` decimal(18,6) DEFAULT NULL,
  `buying_price_list` varchar(180) DEFAULT NULL,
  `address_display` text,
  `total_tax` decimal(18,6) DEFAULT NULL,
  `terms` text,
  `company` varchar(180) DEFAULT NULL,
  `rounded_total` decimal(18,6) DEFAULT NULL,
  `grand_total` decimal(18,6) DEFAULT NULL,
  `other_charges_added` decimal(18,6) DEFAULT NULL,
  `contact_email` text,
  `purchase_other_charges` varchar(180) DEFAULT NULL,
  `contact_mobile` text,
  `net_total_import` decimal(18,6) DEFAULT NULL,
  `other_charges_deducted_import` decimal(18,6) DEFAULT NULL,
  `other_charges_deducted` decimal(18,6) DEFAULT NULL,
  `letter_head` varchar(180) DEFAULT NULL,
  `plc_conversion_rate` decimal(18,6) DEFAULT NULL,
  `net_total` decimal(18,6) DEFAULT NULL,
  `status` varchar(180) DEFAULT NULL,
  `contact_person` varchar(180) DEFAULT NULL,
  `in_words` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `fiscal_year` (`fiscal_year`),
  KEY `transaction_date` (`transaction_date`),
  KEY `supplier` (`supplier`),
  KEY `company` (`company`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSupplier Quotation`
--

LOCK TABLES `tabSupplier Quotation` WRITE;
/*!40000 ALTER TABLE `tabSupplier Quotation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSupplier Quotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSupplier Quotation Item`
--

DROP TABLE IF EXISTS `tabSupplier Quotation Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSupplier Quotation Item` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `qty` decimal(18,6) DEFAULT NULL,
  `item_tax_rate` text,
  `import_amount` decimal(18,6) DEFAULT NULL,
  `discount_rate` decimal(18,6) DEFAULT NULL,
  `import_ref_rate` decimal(18,6) DEFAULT NULL,
  `page_break` int(1) DEFAULT NULL,
  `purchase_rate` decimal(18,6) DEFAULT NULL,
  `item_name` varchar(180) DEFAULT NULL,
  `prevdoc_detail_docname` varchar(180) DEFAULT NULL,
  `warehouse` varchar(180) DEFAULT NULL,
  `supplier_part_no` varchar(180) DEFAULT NULL,
  `uom` varchar(180) DEFAULT NULL,
  `project_name` varchar(180) DEFAULT NULL,
  `description` text,
  `prevdoc_docname` varchar(180) DEFAULT NULL,
  `import_rate` decimal(18,6) DEFAULT NULL,
  `brand` varchar(180) DEFAULT NULL,
  `item_code` varchar(180) DEFAULT NULL,
  `purchase_ref_rate` decimal(18,6) DEFAULT NULL,
  `item_group` varchar(180) DEFAULT NULL,
  `amount` decimal(18,6) DEFAULT NULL,
  `prevdoc_doctype` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `item_name` (`item_name`),
  KEY `prevdoc_detail_docname` (`prevdoc_detail_docname`),
  KEY `prevdoc_docname` (`prevdoc_docname`),
  KEY `item_code` (`item_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSupplier Quotation Item`
--

LOCK TABLES `tabSupplier Quotation Item` WRITE;
/*!40000 ALTER TABLE `tabSupplier Quotation Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSupplier Quotation Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSupplier Type`
--

DROP TABLE IF EXISTS `tabSupplier Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSupplier Type` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `supplier_type` varchar(180) DEFAULT NULL,
  `trash_reason` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSupplier Type`
--

LOCK TABLES `tabSupplier Type` WRITE;
/*!40000 ALTER TABLE `tabSupplier Type` DISABLE KEYS */;
INSERT INTO `tabSupplier Type` VALUES ('Distributor','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Distributor',NULL),('Electrical','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Electrical',NULL),('Hardware','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Hardware',NULL),('Local','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Local',NULL),('Pharmaceutical','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Pharmaceutical',NULL),('Raw Material','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Raw Material',NULL),('Services','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Services',NULL);
/*!40000 ALTER TABLE `tabSupplier Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabSupport Ticket`
--

DROP TABLE IF EXISTS `tabSupport Ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabSupport Ticket` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `opening_date` date DEFAULT NULL,
  `customer_name` varchar(180) DEFAULT NULL,
  `raised_by` varchar(180) DEFAULT NULL,
  `first_responded_on` datetime DEFAULT NULL,
  `lead` varchar(180) DEFAULT NULL,
  `opening_time` time DEFAULT NULL,
  `subject` varchar(180) DEFAULT NULL,
  `status` varchar(180) DEFAULT 'Open',
  `description` text,
  `company` varchar(180) DEFAULT NULL,
  `content_type` varchar(180) DEFAULT NULL,
  `resolution_details` text,
  `resolution_date` datetime DEFAULT NULL,
  `customer` varchar(180) DEFAULT NULL,
  `contact` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `status` (`status`),
  KEY `customer` (`customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabSupport Ticket`
--

LOCK TABLES `tabSupport Ticket` WRITE;
/*!40000 ALTER TABLE `tabSupport Ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabSupport Ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabTable of Contents`
--

DROP TABLE IF EXISTS `tabTable of Contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabTable of Contents` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `web_page` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabTable of Contents`
--

LOCK TABLES `tabTable of Contents` WRITE;
/*!40000 ALTER TABLE `tabTable of Contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabTable of Contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabTag`
--

DROP TABLE IF EXISTS `tabTag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabTag` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `tag_name` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabTag`
--

LOCK TABLES `tabTag` WRITE;
/*!40000 ALTER TABLE `tabTag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabTag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabTarget Detail`
--

DROP TABLE IF EXISTS `tabTarget Detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabTarget Detail` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `item_group` varchar(180) DEFAULT NULL,
  `target_qty` decimal(18,6) DEFAULT NULL,
  `fiscal_year` varchar(180) DEFAULT NULL,
  `target_amount` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `item_group` (`item_group`),
  KEY `fiscal_year` (`fiscal_year`),
  KEY `target_amount` (`target_amount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabTarget Detail`
--

LOCK TABLES `tabTarget Detail` WRITE;
/*!40000 ALTER TABLE `tabTarget Detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabTarget Detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabTask`
--

DROP TABLE IF EXISTS `tabTask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabTask` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `status` varchar(180) DEFAULT NULL,
  `exp_end_date` date DEFAULT NULL,
  `review_date` date DEFAULT NULL,
  `subject` varchar(180) DEFAULT NULL,
  `allocated_budget` decimal(18,6) DEFAULT NULL,
  `exp_total_hrs` varchar(180) DEFAULT NULL,
  `priority` varchar(180) DEFAULT NULL,
  `description` text,
  `act_end_date` date DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `act_start_date` date DEFAULT NULL,
  `actual_budget` decimal(18,6) DEFAULT NULL,
  `closing_date` date DEFAULT NULL,
  `project` varchar(180) DEFAULT NULL,
  `exp_start_date` date DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabTask`
--

LOCK TABLES `tabTask` WRITE;
/*!40000 ALTER TABLE `tabTask` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabTask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabTerms and Conditions`
--

DROP TABLE IF EXISTS `tabTerms and Conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabTerms and Conditions` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `terms` text,
  `trash_reason` text,
  `title` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabTerms and Conditions`
--

LOCK TABLES `tabTerms and Conditions` WRITE;
/*!40000 ALTER TABLE `tabTerms and Conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabTerms and Conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabTerritory`
--

DROP TABLE IF EXISTS `tabTerritory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabTerritory` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `trash_reason` text,
  `distribution_id` varchar(180) DEFAULT NULL,
  `is_group` varchar(180) DEFAULT NULL,
  `territory_name` varchar(180) DEFAULT NULL,
  `old_parent` varchar(180) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `parent_territory` varchar(180) DEFAULT NULL,
  `territory_manager` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `rgt` (`rgt`),
  KEY `lft` (`lft`),
  KEY `territory_manager` (`territory_manager`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabTerritory`
--

LOCK TABLES `tabTerritory` WRITE;
/*!40000 ALTER TABLE `tabTerritory` DISABLE KEYS */;
INSERT INTO `tabTerritory` VALUES ('All Territories','2013-11-07 11:16:34','2014-03-25 08:13:42','Administrator','Administrator',0,NULL,NULL,NULL,NULL,6,NULL,NULL,'Yes','All Territories','',1,NULL,NULL),('Rest Of The World','2014-03-25 08:13:42','2014-03-25 08:13:42','Administrator','Administrator',0,NULL,NULL,NULL,NULL,5,NULL,NULL,'No','Rest Of The World','All Territories',4,'All Territories',NULL),('United States','2014-03-25 08:13:42','2014-03-25 08:13:42','Administrator','Administrator',0,NULL,NULL,NULL,NULL,3,NULL,NULL,'No','United States','All Territories',2,'All Territories',NULL);
/*!40000 ALTER TABLE `tabTerritory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabTime Log`
--

DROP TABLE IF EXISTS `tabTime Log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabTime Log` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `status` varchar(180) DEFAULT NULL,
  `task` varchar(180) DEFAULT NULL,
  `project` varchar(180) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `time_log_batch` varchar(180) DEFAULT NULL,
  `sales_invoice` varchar(180) DEFAULT NULL,
  `hours` decimal(18,6) DEFAULT NULL,
  `amended_from` varchar(180) DEFAULT NULL,
  `note` text,
  `to_time` datetime DEFAULT NULL,
  `billable` int(1) DEFAULT NULL,
  `from_time` datetime DEFAULT NULL,
  `activity_type` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabTime Log`
--

LOCK TABLES `tabTime Log` WRITE;
/*!40000 ALTER TABLE `tabTime Log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabTime Log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabTime Log Batch`
--

DROP TABLE IF EXISTS `tabTime Log Batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabTime Log Batch` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `status` varchar(180) DEFAULT 'Draft',
  `amended_from` varchar(180) DEFAULT NULL,
  `naming_series` varchar(180) DEFAULT NULL,
  `sales_invoice` varchar(180) DEFAULT NULL,
  `total_hours` decimal(18,6) DEFAULT NULL,
  `rate` decimal(18,6) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabTime Log Batch`
--

LOCK TABLES `tabTime Log Batch` WRITE;
/*!40000 ALTER TABLE `tabTime Log Batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabTime Log Batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabTime Log Batch Detail`
--

DROP TABLE IF EXISTS `tabTime Log Batch Detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabTime Log Batch Detail` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `time_log` varchar(180) DEFAULT NULL,
  `hours` decimal(18,6) DEFAULT NULL,
  `created_by` varchar(180) DEFAULT NULL,
  `activity_type` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabTime Log Batch Detail`
--

LOCK TABLES `tabTime Log Batch Detail` WRITE;
/*!40000 ALTER TABLE `tabTime Log Batch Detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabTime Log Batch Detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabToDo`
--

DROP TABLE IF EXISTS `tabToDo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabToDo` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `checked` int(1) DEFAULT NULL,
  `description` text,
  `assigned_by` varchar(180) DEFAULT NULL,
  `reference_name` varchar(180) DEFAULT NULL,
  `reference_type` varchar(180) DEFAULT NULL,
  `priority` varchar(180) DEFAULT NULL,
  `role` varchar(180) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabToDo`
--

LOCK TABLES `tabToDo` WRITE;
/*!40000 ALTER TABLE `tabToDo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabToDo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabTop Bar Item`
--

DROP TABLE IF EXISTS `tabTop Bar Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabTop Bar Item` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `url` varchar(180) DEFAULT NULL,
  `parent_label` varchar(180) DEFAULT NULL,
  `target` varchar(180) DEFAULT NULL,
  `label` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabTop Bar Item`
--

LOCK TABLES `tabTop Bar Item` WRITE;
/*!40000 ALTER TABLE `tabTop Bar Item` DISABLE KEYS */;
INSERT INTO `tabTop Bar Item` VALUES ('000000165','2014-03-25 08:13:36','2014-03-25 08:13:36','Administrator','Administrator',0,'Website Settings','top_bar_items','Website Settings',1,'contact',NULL,NULL,'Contact'),('000000166','2014-03-25 08:13:36','2014-03-25 08:13:36','Administrator','Administrator',0,'Website Settings','top_bar_items','Website Settings',2,'blog',NULL,NULL,'Blog');
/*!40000 ALTER TABLE `tabTop Bar Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabUOM`
--

DROP TABLE IF EXISTS `tabUOM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabUOM` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `uom_name` varchar(180) DEFAULT NULL,
  `must_be_whole_number` int(1) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabUOM`
--

LOCK TABLES `tabUOM` WRITE;
/*!40000 ALTER TABLE `tabUOM` DISABLE KEYS */;
INSERT INTO `tabUOM` VALUES ('Box','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Box',1),('Hour','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Hour',NULL),('Kg','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Kg',NULL),('Minute','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Minute',NULL),('Nos','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Nos',1),('Pair','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Pair',1),('Set','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Set',1),('Unit','2013-11-07 11:16:34','2013-11-07 11:16:34','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Unit',1);
/*!40000 ALTER TABLE `tabUOM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabUOM Conversion Detail`
--

DROP TABLE IF EXISTS `tabUOM Conversion Detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabUOM Conversion Detail` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `conversion_factor` decimal(18,6) DEFAULT NULL,
  `uom` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabUOM Conversion Detail`
--

LOCK TABLES `tabUOM Conversion Detail` WRITE;
/*!40000 ALTER TABLE `tabUOM Conversion Detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabUOM Conversion Detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabUserRole`
--

DROP TABLE IF EXISTS `tabUserRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabUserRole` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `role` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabUserRole`
--

LOCK TABLES `tabUserRole` WRITE;
/*!40000 ALTER TABLE `tabUserRole` DISABLE KEYS */;
INSERT INTO `tabUserRole` VALUES ('UR00001','2013-11-07 11:16:19','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',1,'System Manager'),('UR00002','2013-11-07 11:16:19','2013-11-07 11:16:19','Administrator','Administrator',0,'Guest','user_roles','Profile',1,'System Manager'),('UR00003','2013-11-07 11:16:19','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',2,'Administrator'),('UR00004','2013-11-07 11:16:19','2013-11-07 11:16:19','Administrator','Administrator',0,'Guest','user_roles','Profile',2,'Guest'),('UR00005','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',3,'Accounts Manager'),('UR00006','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',4,'Accounts User'),('UR00007','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',5,'Analytics'),('UR00008','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',6,'Auditor'),('UR00009','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',7,'Blogger'),('UR00010','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',8,'Employee'),('UR00011','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',9,'Expense Approver'),('UR00012','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',10,'HR Manager'),('UR00013','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',11,'HR User'),('UR00014','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',12,'Leave Approver'),('UR00015','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',13,'Maintenance Manager'),('UR00016','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',14,'Maintenance User'),('UR00017','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',15,'Manufacturing Manager'),('UR00018','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',16,'Manufacturing User'),('UR00019','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',17,'Material Manager'),('UR00020','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',18,'Material Master Manager'),('UR00021','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',19,'Material User'),('UR00022','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',20,'Projects Manager'),('UR00023','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',21,'Projects User'),('UR00024','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',22,'Purchase Manager'),('UR00025','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',23,'Purchase Master Manager'),('UR00026','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',24,'Purchase User'),('UR00027','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',25,'Quality Manager'),('UR00028','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',26,'Report Manager'),('UR00029','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',27,'Sales Manager'),('UR00030','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',28,'Sales Master Manager'),('UR00031','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',29,'Sales User'),('UR00032','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',30,'Support Manager'),('UR00033','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',31,'Support Team'),('UR00034','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',32,'System Manager'),('UR00035','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',33,'Website Manager'),('UR00036','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',34,'All'),('UR00037','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',35,'Customer'),('UR00038','2013-11-07 11:16:37','2013-11-07 11:16:37','Administrator','Administrator',0,'Administrator','user_roles','Profile',36,'Guest'),('UR00039','2013-11-07 11:16:38','2013-11-07 11:16:38','Administrator','Administrator',0,'Administrator','user_roles','Profile',37,'Supplier'),('UR00040','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',1,'Accounts Manager'),('UR00041','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',2,'Accounts User'),('UR00042','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',3,'Analytics'),('UR00043','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',4,'Auditor'),('UR00044','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',5,'Blogger'),('UR00045','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',6,'Employee'),('UR00046','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',7,'Expense Approver'),('UR00047','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',8,'HR Manager'),('UR00048','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',9,'HR User'),('UR00049','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',10,'Leave Approver'),('UR00050','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',11,'Maintenance Manager'),('UR00051','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',12,'Maintenance User'),('UR00052','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',13,'Manufacturing Manager'),('UR00053','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',14,'Manufacturing User'),('UR00054','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',15,'Material Manager'),('UR00055','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',16,'Material Master Manager'),('UR00056','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',17,'Material User'),('UR00057','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',18,'Projects Manager'),('UR00058','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',19,'Projects User'),('UR00059','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',20,'Purchase Manager'),('UR00060','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',21,'Purchase Master Manager'),('UR00061','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',22,'Purchase User'),('UR00062','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',23,'Quality Manager'),('UR00063','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',24,'Report Manager'),('UR00064','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',25,'Sales Manager'),('UR00065','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',26,'Sales Master Manager'),('UR00066','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',27,'Sales User'),('UR00067','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',28,'Support Manager'),('UR00068','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',29,'Support Team'),('UR00069','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',30,'System Manager'),('UR00070','2014-03-25 08:13:34','2014-03-25 08:13:34','Administrator','Administrator',0,'cswaroop@gmail.com','user_roles','Profile',31,'Website Manager');
/*!40000 ALTER TABLE `tabUserRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWarehouse`
--

DROP TABLE IF EXISTS `tabWarehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWarehouse` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `state` varchar(180) DEFAULT NULL,
  `merge_with` varchar(180) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `city` varchar(180) DEFAULT NULL,
  `email_id` varchar(180) DEFAULT NULL,
  `address_line_1` varchar(180) DEFAULT NULL,
  `company` varchar(180) DEFAULT NULL,
  `phone_no` varchar(180) DEFAULT NULL,
  `create_account_under` varchar(180) DEFAULT NULL,
  `mobile_no` varchar(180) DEFAULT NULL,
  `warehouse_name` varchar(180) DEFAULT NULL,
  `address_line_2` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`),
  KEY `company` (`company`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWarehouse`
--

LOCK TABLES `tabWarehouse` WRITE;
/*!40000 ALTER TABLE `tabWarehouse` DISABLE KEYS */;
INSERT INTO `tabWarehouse` VALUES ('Finished Goods - PFL','2014-03-25 08:13:36','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pinnacle Foods Limited',NULL,'Stock Assets - PFL',NULL,'Finished Goods',NULL),('Stores - PFL','2014-03-25 08:13:36','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pinnacle Foods Limited',NULL,'Stock Assets - PFL',NULL,'Stores',NULL),('Work In Progress - PFL','2014-03-25 08:13:36','2014-03-25 08:13:38','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pinnacle Foods Limited',NULL,'Stock Assets - PFL',NULL,'Work In Progress',NULL);
/*!40000 ALTER TABLE `tabWarehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWarehouse User`
--

DROP TABLE IF EXISTS `tabWarehouse User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWarehouse User` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `user` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWarehouse User`
--

LOCK TABLES `tabWarehouse User` WRITE;
/*!40000 ALTER TABLE `tabWarehouse User` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWarehouse User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWeb Page`
--

DROP TABLE IF EXISTS `tabWeb Page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWeb Page` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `description` text,
  `title` varchar(180) DEFAULT NULL,
  `insert_style` int(1) DEFAULT NULL,
  `insert_code` int(1) DEFAULT NULL,
  `javascript` text,
  `slideshow` varchar(180) DEFAULT NULL,
  `text_align` varchar(180) DEFAULT NULL,
  `page_name` varchar(180) DEFAULT NULL,
  `published` int(1) DEFAULT NULL,
  `css` text,
  `main_section` text,
  `show_breadcrumbs` int(1) DEFAULT NULL,
  `show_toc` int(1) DEFAULT NULL,
  `enable_comments` int(1) DEFAULT NULL,
  `show_title` int(1) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWeb Page`
--

LOCK TABLES `tabWeb Page` WRITE;
/*!40000 ALTER TABLE `tabWeb Page` DISABLE KEYS */;
INSERT INTO `tabWeb Page` VALUES ('pinnacle-foods-limited-home','2014-03-25 08:13:36','2014-03-25 08:13:36','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'Standard Home Page for ','Pinnacle Foods Limited Home',NULL,NULL,NULL,NULL,NULL,'pinnacle-foods-limited-home',1,NULL,'<h2><i class=\"icon-home\"></i> Sample Home Page</h2>\n<br>\n<p>This is a sample home page for your company <b>Pinnacle Foods Limited\'s</b> website. This was \n	created from the Website Module inside ERPNext. ERPNext provides you with simple \n	tools to build and update your website. You can add sections like your Product Catalog,\n	Blog, Contact Us, About Us and so on. Messages entered in the \"Contact\" page are\n	automatically added as Leads in the system.\n\n<h5>What you can do with your website:</h5>\n\n<ul>\n	<li>Automatically generate products / services catalog from your Items.\n	<li>Capture Leads from your website.\n	<li>Communicate with your customers by sharing your thoughts in your Blog.\n	<li>Introduce your company and team in the About Us page.\n</ul>\n\n<p>Infact, \n	<a href=\"https://erpnext.com\" target=\"_blank\">erpnext.com</a> \n	website is built on ERPNext itself.</p>\n\n<p><a href=\"login\" class=\"btn btn-primary\">Login to your Account</a><p>\n\n<p class=\"text-muted pull-right\">For more help, <a href=\"http://erpnext.org\" target=\"_blank\">\n	click here</a></p>\n',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tabWeb Page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWebsite Item Group`
--

DROP TABLE IF EXISTS `tabWebsite Item Group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWebsite Item Group` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `item_group` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWebsite Item Group`
--

LOCK TABLES `tabWebsite Item Group` WRITE;
/*!40000 ALTER TABLE `tabWebsite Item Group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWebsite Item Group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWebsite Sitemap`
--

DROP TABLE IF EXISTS `tabWebsite Sitemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWebsite Sitemap` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `docname` varchar(180) DEFAULT NULL,
  `page_name` varchar(180) DEFAULT NULL,
  `website_sitemap_config` varchar(180) DEFAULT NULL,
  `lastmod` varchar(180) DEFAULT NULL,
  `page_or_generator` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWebsite Sitemap`
--

LOCK TABLES `tabWebsite Sitemap` WRITE;
/*!40000 ALTER TABLE `tabWebsite Sitemap` DISABLE KEYS */;
INSERT INTO `tabWebsite Sitemap` VALUES ('404','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'404','404','2013-11-22','Page'),('about','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'about','about','2013-11-22','Page'),('address','2013-11-22 11:43:07','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'address','address','2013-11-22','Page'),('addresses','2013-11-22 11:43:07','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'addresses','addresses','2013-11-22','Page'),('blog','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'blog','blog','2013-11-22','Page'),('cart','2013-11-22 11:43:07','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'cart','cart','2013-11-22','Page'),('contact','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'contact','contact','2013-11-22','Page'),('error','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'error','error','2013-11-22','Page'),('index','2014-03-25 08:13:36','2014-03-25 08:13:36','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'pinnacle-foods-limited-home','index','web_page','2014-03-25',NULL),('invoice','2013-11-22 11:43:07','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'invoice','invoice','2013-11-07','Page'),('invoices','2013-11-22 11:43:07','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'invoices','invoices','2013-11-07','Page'),('login','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'login','login','2013-11-22','Page'),('message','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'message','message','2013-11-22','Page'),('order','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'order','order','2013-11-07','Page'),('orders','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'orders','orders','2013-11-07','Page'),('partners','2013-11-22 11:43:07','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'partners','partners','2013-11-22','Page'),('pinnacle-foods-limited-home','2014-03-25 08:13:36','2014-03-25 08:13:36','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'pinnacle-foods-limited-home','pinnacle-foods-limited-home','web_page','2014-03-25',NULL),('print','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'print','print','2013-11-07','Page'),('product_search','2013-11-22 11:43:07','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'product_search','product_search','2013-11-22','Page'),('profile','2013-11-22 11:43:07','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'profile','profile','2013-11-22','Page'),('rss.xml','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'rss.xml','rss.xml','2013-11-07','Page'),('shipment','2013-11-22 11:43:07','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'shipment','shipment','2013-11-07','Page'),('shipments','2013-11-22 11:43:07','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'shipments','shipments','2013-11-07','Page'),('sitemap.xml','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'sitemap.xml','sitemap.xml','2013-11-07','Page'),('ticket','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'ticket','ticket','2013-11-22','Page'),('tickets','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'tickets','tickets','2013-11-07','Page'),('update-password','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'update-password','update-password','2013-11-07','Page'),('wn-web.css','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'wn-web.css','wn-web.css','2013-11-22','Page'),('wn-web.js','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'wn-web.js','wn-web.js','2013-11-07','Page'),('writers','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,'writers','writers','2013-11-22','Page');
/*!40000 ALTER TABLE `tabWebsite Sitemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWebsite Sitemap Config`
--

DROP TABLE IF EXISTS `tabWebsite Sitemap Config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWebsite Sitemap Config` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `condition_field` varchar(180) DEFAULT NULL,
  `no_sitemap` int(1) DEFAULT NULL,
  `template_path` varchar(180) DEFAULT NULL,
  `ref_doctype` varchar(180) DEFAULT NULL,
  `page_or_generator` varchar(180) DEFAULT NULL,
  `page_name_field` varchar(180) DEFAULT NULL,
  `controller` varchar(180) DEFAULT NULL,
  `link_name` varchar(180) DEFAULT NULL,
  `no_cache` int(1) DEFAULT NULL,
  `lastmod` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWebsite Sitemap Config`
--

LOCK TABLES `tabWebsite Sitemap Config` WRITE;
/*!40000 ALTER TABLE `tabWebsite Sitemap Config` DISABLE KEYS */;
INSERT INTO `tabWebsite Sitemap Config` VALUES ('404','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,'lib/website/templates/pages/404.html',NULL,'Page',NULL,NULL,'404',NULL,'1385100737'),('about','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,0,'lib/website/doctype/about_us_settings/templates/pages/about.html',NULL,'Page','page_name','website.doctype.about_us_settings.templates.pages.about','about',0,'1385100737'),('address','2013-11-22 11:43:07','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,1,'app/utilities/doctype/address/templates/pages/address.html',NULL,'Page','page_name','utilities.doctype.address.templates.pages.address','address',1,'1385100744'),('addresses','2013-11-22 11:43:07','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,1,'app/utilities/doctype/address/templates/pages/addresses.html',NULL,'Page','page_name','utilities.doctype.address.templates.pages.addresses','addresses',1,'1385100744'),('blog','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,0,'lib/website/doctype/blog_post/templates/pages/blog.html',NULL,'Page','page_name','website.doctype.blog_post.templates.pages.blog','blog',0,'1385100737'),('blog_post','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'published',0,'lib/website/doctype/blog_post/templates/generators/blog_post.html','Blog Post','Generator','page_name','website.doctype.blog_post.templates.generators.blog_post','blog_post',0,'1385100737'),('cart','2013-11-22 11:43:07','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,1,'app/portal/templates/pages/cart.html',NULL,'Page','page_name','portal.templates.pages.cart','cart',1,'1385100744'),('contact','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,0,'lib/website/doctype/contact_us_settings/templates/pages/contact.html',NULL,'Page','page_name','website.doctype.contact_us_settings.templates.pages.contact','contact',0,'1385100737'),('error','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,1,'lib/website/templates/pages/error.html',NULL,'Page','page_name','website.templates.pages.error','error',1,'1385100737'),('invoice','2013-11-22 11:43:07','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,1,'app/accounts/doctype/sales_invoice/templates/pages/invoice.html',NULL,'Page','page_name','accounts.doctype.sales_invoice.templates.pages.invoice','invoice',1,'1383803020'),('invoices','2013-11-22 11:43:07','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,1,'app/accounts/doctype/sales_invoice/templates/pages/invoices.html',NULL,'Page','page_name','accounts.doctype.sales_invoice.templates.pages.invoices','invoices',1,'1383803020'),('item','2013-11-22 11:43:07','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'show_in_website',0,'app/stock/doctype/item/templates/generators/item.html','Item','Generator','page_name','stock.doctype.item.templates.generators.item','item',0,'1385100744'),('item_group','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'show_in_website',0,'app/setup/doctype/item_group/templates/generators/item_group.html','Item Group','Generator','page_name','setup.doctype.item_group.templates.generators.item_group','item_group',0,'1385100744'),('login','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,NULL,'lib/website/templates/pages/login.html',NULL,'Page',NULL,NULL,'login',NULL,'1385100737'),('message','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,1,'lib/website/templates/pages/message.html',NULL,'Page','page_name','website.templates.pages.message','message',1,'1385100737'),('order','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,1,'app/selling/doctype/sales_order/templates/pages/order.html',NULL,'Page','page_name','selling.doctype.sales_order.templates.pages.order','order',1,'1383803020'),('orders','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,1,'app/selling/doctype/sales_order/templates/pages/orders.html',NULL,'Page','page_name','selling.doctype.sales_order.templates.pages.orders','orders',1,'1383803020'),('partner','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'show_in_website',0,'app/setup/doctype/sales_partner/templates/generators/partner.html','Sales Partner','Generator','page_name','setup.doctype.sales_partner.templates.generators.partner','partner',0,'1385100744'),('partners','2013-11-22 11:43:06','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,0,'app/setup/doctype/sales_partner/templates/pages/partners.html',NULL,'Page','page_name','setup.doctype.sales_partner.templates.pages.partners','partners',0,'1385100744'),('print','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,1,'lib/website/templates/pages/print.html',NULL,'Page','page_name','website.templates.pages.print','print',1,'1383803058'),('product_search','2013-11-22 11:43:07','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,1,'app/stock/doctype/item/templates/pages/product_search.html',NULL,'Page','page_name','stock.doctype.item.templates.pages.product_search','product_search',1,'1385100744'),('profile','2013-11-22 11:43:07','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,1,'app/portal/templates/pages/profile.html',NULL,'Page','page_name','portal.templates.pages.profile','profile',1,'1385100744'),('rss.xml','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,1,'lib/website/templates/pages/rss.xml',NULL,'Page','page_name','website.templates.pages.rss','rss.xml',1,'1383803058'),('shipment','2013-11-22 11:43:07','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,1,'app/stock/doctype/delivery_note/templates/pages/shipment.html',NULL,'Page','page_name','stock.doctype.delivery_note.templates.pages.shipment','shipment',1,'1383803020'),('shipments','2013-11-22 11:43:07','2013-11-22 11:43:07','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,1,'app/stock/doctype/delivery_note/templates/pages/shipments.html',NULL,'Page','page_name','stock.doctype.delivery_note.templates.pages.shipments','shipments',1,'1383803020'),('sitemap.xml','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,1,'lib/website/templates/pages/sitemap.xml',NULL,'Page','page_name','website.templates.pages.sitemap','sitemap.xml',1,'1383803058'),('ticket','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,1,'app/support/doctype/support_ticket/templates/pages/ticket.html',NULL,'Page','page_name','support.doctype.support_ticket.templates.pages.ticket','ticket',1,'1385100744'),('tickets','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,1,'app/support/doctype/support_ticket/templates/pages/tickets.html',NULL,'Page','page_name','support.doctype.support_ticket.templates.pages.tickets','tickets',1,'1383803020'),('update-password','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,1,'lib/website/templates/pages/update-password.html',NULL,'Page','page_name','website.templates.pages.update_password','update-password',0,'1383803058'),('web_page','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,'published',0,'lib/website/doctype/web_page/templates/generators/web_page.html','Web Page','Generator','page_name','website.doctype.web_page.templates.generators.web_page','web_page',0,'1385100737'),('wn-web.css','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,1,'lib/website/doctype/style_settings/templates/pages/wn-web.css',NULL,'Page','page_name','website.doctype.style_settings.templates.pages.wn_web','wn-web.css',0,'1385100737'),('wn-web.js','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,1,'lib/website/doctype/website_script/templates/pages/wn-web.js',NULL,'Page','page_name','website.doctype.website_script.templates.pages.wn_web','wn-web.js',0,'1383803058'),('writers','2013-11-22 11:43:06','2013-11-22 11:43:06','Administrator','Administrator',0,NULL,NULL,NULL,NULL,NULL,0,'lib/website/doctype/blogger/templates/pages/writers.html',NULL,'Page','page_name','website.doctype.blogger.templates.pages.writers','writers',0,'1385100737');
/*!40000 ALTER TABLE `tabWebsite Sitemap Config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWebsite Slideshow`
--

DROP TABLE IF EXISTS `tabWebsite Slideshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWebsite Slideshow` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `slideshow_name` varchar(180) DEFAULT NULL,
  `header` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWebsite Slideshow`
--

LOCK TABLES `tabWebsite Slideshow` WRITE;
/*!40000 ALTER TABLE `tabWebsite Slideshow` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWebsite Slideshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWebsite Slideshow Item`
--

DROP TABLE IF EXISTS `tabWebsite Slideshow Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWebsite Slideshow Item` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `image` varchar(180) DEFAULT NULL,
  `heading` varchar(180) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWebsite Slideshow Item`
--

LOCK TABLES `tabWebsite Slideshow Item` WRITE;
/*!40000 ALTER TABLE `tabWebsite Slideshow Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWebsite Slideshow Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWorkflow`
--

DROP TABLE IF EXISTS `tabWorkflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWorkflow` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `workflow_name` varchar(180) DEFAULT NULL,
  `is_active` int(1) DEFAULT NULL,
  `workflow_state_field` varchar(180) DEFAULT 'workflow_state',
  `document_type` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWorkflow`
--

LOCK TABLES `tabWorkflow` WRITE;
/*!40000 ALTER TABLE `tabWorkflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWorkflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWorkflow Action`
--

DROP TABLE IF EXISTS `tabWorkflow Action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWorkflow Action` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `workflow_action_name` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWorkflow Action`
--

LOCK TABLES `tabWorkflow Action` WRITE;
/*!40000 ALTER TABLE `tabWorkflow Action` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWorkflow Action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWorkflow Document State`
--

DROP TABLE IF EXISTS `tabWorkflow Document State`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWorkflow Document State` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `allow_edit` varchar(180) DEFAULT NULL,
  `update_field` varchar(180) DEFAULT NULL,
  `update_value` varchar(180) DEFAULT NULL,
  `state` varchar(180) DEFAULT NULL,
  `message` text,
  `doc_status` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWorkflow Document State`
--

LOCK TABLES `tabWorkflow Document State` WRITE;
/*!40000 ALTER TABLE `tabWorkflow Document State` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWorkflow Document State` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWorkflow State`
--

DROP TABLE IF EXISTS `tabWorkflow State`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWorkflow State` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `style` varchar(180) DEFAULT NULL,
  `workflow_state_name` varchar(180) DEFAULT NULL,
  `icon` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWorkflow State`
--

LOCK TABLES `tabWorkflow State` WRITE;
/*!40000 ALTER TABLE `tabWorkflow State` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWorkflow State` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWorkflow Transition`
--

DROP TABLE IF EXISTS `tabWorkflow Transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWorkflow Transition` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `action` varchar(180) DEFAULT NULL,
  `state` varchar(180) DEFAULT NULL,
  `allowed` varchar(180) DEFAULT NULL,
  `next_state` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWorkflow Transition`
--

LOCK TABLES `tabWorkflow Transition` WRITE;
/*!40000 ALTER TABLE `tabWorkflow Transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWorkflow Transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabWorkstation`
--

DROP TABLE IF EXISTS `tabWorkstation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabWorkstation` (
  `name` varchar(120) NOT NULL,
  `creation` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `docstatus` int(1) DEFAULT '0',
  `parent` varchar(120) DEFAULT NULL,
  `parentfield` varchar(120) DEFAULT NULL,
  `parenttype` varchar(120) DEFAULT NULL,
  `idx` int(8) DEFAULT NULL,
  `hour_rate_rent` decimal(18,6) DEFAULT NULL,
  `capacity` varchar(180) DEFAULT NULL,
  `description` text,
  `hour_rate_labour` decimal(18,6) DEFAULT NULL,
  `hour_rate` decimal(18,6) DEFAULT NULL,
  `overhead` decimal(18,6) DEFAULT NULL,
  `capacity_units` varchar(180) DEFAULT NULL,
  `hour_rate_consumable` decimal(18,6) DEFAULT NULL,
  `warehouse` varchar(180) DEFAULT NULL,
  `hour_rate_electricity` decimal(18,6) DEFAULT NULL,
  `workstation_name` varchar(180) DEFAULT NULL,
  `trash_reason` text,
  PRIMARY KEY (`name`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabWorkstation`
--

LOCK TABLES `tabWorkstation` WRITE;
/*!40000 ALTER TABLE `tabWorkstation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabWorkstation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-24 23:03:20