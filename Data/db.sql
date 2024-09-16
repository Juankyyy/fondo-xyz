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

-- CREATE TABLE Rooms (
--     Id INT PRIMARY KEY IDENTITY(1,1),
    
-- );

CREATE TABLE Reserves (
    Id INT PRIMARY KEY IDENTITY(1,1),
    
);