CREATE DATABASE fondoxyz;
USE fondoxyz;

CREATE TABLE Users (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Password VARCHAR(100) NOT NULL,
);

INSERT INTO Users (Name, Email, Password) 
VALUES ('Juanky', 'juanky@gmail.com', 'juanky123');

CREATE TABLE Accommodations (
    
);

CREATE TABLE Properties (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    Description VARCHAR(250) NOT NULL,
    Type VARCHAR(100) NOT NULL,
    Ubication VARCHAR(100) NOT NULL,

);