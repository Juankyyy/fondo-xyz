CREATE DATABASE fondoxyz;
USE fondoxyz;

CREATE TABLE Users (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
	Document INT NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Password VARCHAR(100) NOT NULL,
);

INSERT INTO Users (Name, Document, Email, Password) 
VALUES ('Juanky', 1025643816, 'juanky@gmail.com', '1234');

CREATE TABLE Properties (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    Description VARCHAR(250) NOT NULL,
    Type VARCHAR(100) NOT NULL,
    Ubication VARCHAR(100) NOT NULL,

);