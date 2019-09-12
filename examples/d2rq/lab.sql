--
-- simple example database for people in a lab
--

DROP SCHEMA IF EXISTS lab;
CREATE SCHEMA lab;
USE lab;

Drop TABLE IF EXISTS people;

CREATE TABLE people (
  `Name` varchar(50),
  `Age` INT default NULL,
  `Mobile` varchar(50) default NULL,
  PRIMARY KEY  (`Name`)
);


INSERT INTO people (`Name`, `Age`, `Mobile`) VALUES 
('Al Turing', 32, '443-253-3863'),
('Don Knuth', 25, '410-228-6282'),
('Chuck Babbage', 38, '410-499-1282');
