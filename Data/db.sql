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

DROP TABLE Rooms;
DROP TABLE Properties;
CREATE TABLE Properties (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    Description TEXT NOT NULL,
    Type VARCHAR(100) NOT NULL,
    Location VARCHAR(100) NOT NULL,
    Image1 VARCHAR(250) NOT NULL,
    Image2 VARCHAR(250) NOT NULL,
    Image3 VARCHAR(250) NOT NULL,
);

INSERT INTO Properties (Name, Description, Type, Location, Image1, Image2, Image3)
VALUES ('Sede Recreativa Villeta', 'Esta Sede recreativa se encuentra ubicada en el barrio San Jorge a poca distancia de la plaza central de Villeta en la Provincia del Gualivá, Cundinamarca, distante de Bogotá 90 kilómetros, aproximadamente hora y media por la autopista Bogotá - Medellín. La sede recreativa tiene un área aproximada de 1 fanegada, con amplias zonas verdes. Servicios de la sede Sala de estar y Televisión, sala de conferencias con capacidad para 20 personas, zona de juegos: billar, tenis de mesa, futbolín y juegos de mesa. Área para comedores, 4 cocinetas equipadas, baños de emergencia, vestieres y lockers para visita día, tienda, sauna, jacuzzi, piscina, cancha de microfutbol y amplias zonas verdes. Alojamientos Ocho habitaciones cada una con una alcoba que tiene una cama doble y un camarote, baño, nevera, televisor y terraza cubierta.Capacidad total: hasta 32 personas', 'Sede Recreativa', 'Villeta', 'https://i.postimg.cc/65jD8SvH/villeta1.png', 'https://i.postimg.cc/htXNTr8K/villeta2.png', 'https://i.postimg.cc/tCCKCyYZ/villeta3.png');

INSERT INTO Properties (Name, Description, Type, Location, Image1, Image2, Image3)
VALUES ('Sede Recreativa el Placer', 'Esta Sede recreativa se encuentra ubicada en la vereda El Placer del municipio de Fusagasugá, a unos 10 minutos del casco urbano', 'Sede Recreativa', 'Fusagasugá', 'https://i.postimg.cc/W1q31x3V/image.png', 'https://i.postimg.cc/3Nb8KZQW/el-Placer2.jpg', 'https://i.postimg.cc/QCMNGyPR/el-Placer3.jpg');

INSERT INTO Properties (Name, Description, Type, Location, Image1, Image2, Image3)
VALUES ('Edificio Suramericana', 'Ubicado en la Calle 49 B N° 64B-15 en el edificio Suramericana N° 6 Apartamento 1204. Cerca del campus de la Universidad Nacional de Colombia', 'Apartamento', 'Antioquia', 'https://i.postimg.cc/W3dj5kkv/suramericana1.png', 'https://i.postimg.cc/KYqx7N4f/suramericana2.jpg', 'https://i.postimg.cc/fbTM0FWk/suramericana3.jpg');

INSERT INTO Properties (Name, Description, Type, Location, Image1, Image2, Image3)
VALUES ('Edificio Reina 1', 'Ubicados en el edificio REINA 1 de la Carrera 3 número 7-85 centro urbano y turístico El Rodadero y a tres cuadras de la playa.', 'Apartamento', 'Santa Marta', 'https://i.postimg.cc/pLsg3dxX/reina1.png', 'https://i.postimg.cc/d0XgtSLb/reina2.jpg', 'https://i.postimg.cc/rpzvTLFG/reina3.jpg');

CREATE TABLE Rooms (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Description VARCHAR(200) NOT NULL,
    Quantity INT NOT NULL,
    Capacity INT NOT NULL,
    NormalFee VARCHAR(50) NOT NULL,
    SpecialFee VARCHAR(50) NOT NULL,
    PropertyId INT NOT NULL,
    FOREIGN KEY (PropertyId) REFERENCES Properties(Id)
);

INSERT INTO Rooms (Description, Quantity, Capacity, NormalFee, SpecialFee, PropertyId)
VALUES ('Ocho habitaciones cada una con una alcoba que tiene una cama doble y un camarote, baño, nevera, televisor y terraza cubierta.', 8, 4, '$70.000', '$60.000', 1)

INSERT INTO Rooms (Description, Quantity, Capacity, NormalFee, SpecialFee, PropertyId)
VALUES ('Habitación con dos habitaciones, baño y Televisor, una con cama doble y una sencilla, la otra con una cama sencilla.', 2, 4, '$70.000', '$60.000', 2),
('Habitación con dos habitaciones, baño y Televisor, una con cama doble, la otra con 4 camas sencillas', 2, 6, '$70.000', '$60.000', 2),
('Habitación con una habitación con cama doble y 2 camas sencillas, baño y Televisor', 1, 4, '$70.000', '$60.000', 2),
('Habitación con dos habitaciones, baño y Televisor, una con cama doble y una sencilla, la otra con una cama sencilla. ', 2, 4, '$70.000', '$60.000', 2);

INSERT INTO Rooms (Description, Quantity, Capacity, NormalFee, SpecialFee, PropertyId)
VALUES ('Habitación con 2 camas sencillas y baño privado.', 1, 2, '$63.000', '$53.000', 3),
('Habitaciones cada una con 2 camas sencillas.', 3, 2, '$63.000', '$53.000', 3),
('Habitación con 1 cama sencilla y baño privado', 1, 1, '$63.000', '$53.000', 3);

INSERT INTO Rooms (Description, Quantity, Capacity, NormalFee, SpecialFee, PropertyId)
VALUES ('Apartamento con sala comedor, cocina, 2 baños, tres habitaciones y un sitio para parqueo. Capacidad máxima: 8 personas.', 1, 8, '$103.000', '$89.000', 4),
('Apartamento Tiene Sala comedor, cocina, 1 baño, dos habitaciones y un sitio para parqueo. Capacidad máxima: 6 personas.', 2, 6, '$103.000', '$89.000', 4)

DROP TABLE Reserves;
CREATE TABLE Reserves (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Location VARCHAR(100) NOT NULL,
    ReservationDate VARCHAR(100) NOT NULL,
    ArrivalDate VARCHAR(100) NOT NULL,
    DepartureDate VARCHAR(100) NOT NULL,
    Persons INT NOT NULL,
    Rooms INT NOT NULL,
	Total VARCHAR(100) NOT NULL,
    UserId INT NOT NULL,
    FOREIGN KEY (UserId) REFERENCES Users(Id)
);

INSERT INTO Reserves (Location, ReservationDate, ArrivalDate, DepartureDate, Persons, Rooms, Total, UserId)
VALUES ('Sede Recreativa Villeta', '2024-10-10', '2024-10-15', '2024-10-20', 4, 2, '$800.000', 1),
('Sede Recreativa el Placer', '2024-10-10', '2024-10-15', '2024-10-20', 4, 2, '$800.000', 10),
('Edificio Suramericana', '2024-10-10', '2024-10-15', '2024-10-20', 4, 2, '$800.000', 11);