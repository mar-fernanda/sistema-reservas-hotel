CREATE TABLE Habitaciones (
    Numero_Habitacion INT PRIMARY KEY,
    Tipo_Habitacion VARCHAR(50) NOT NULL,
    Capacidad INT NOT NULL,
    Precio_Por_Noche DECIMAL(10,2) NOT NULL
);

CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Direccion VARCHAR(100),
    Correo_Electronico VARCHAR(50) UNIQUE
);

CREATE TABLE Reservas (
    ID_Reserva INT PRIMARY KEY,
    ID_Cliente INT NOT NULL,
    Numero_Habitacion INT NOT NULL,
    Fecha_Llegada DATE NOT NULL,
    Fecha_Salida DATE NOT NULL,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente),
    FOREIGN KEY (Numero_Habitacion) REFERENCES Habitaciones(Numero_Habitacion)
);

INSERT INTO Clientes (ID_Cliente, Nombre, Apellido, Direccion, Correo_Electronico)
VALUES
(1, 'Jorge', 'Oses', 'Quinta sur 123', 'Jorge@email.com'),
(2, 'Tadeo', 'Oses', 'Manuel Rivera 123', 'Tadeito@email.com'),
(3, 'Arale', 'Oses', 'Villa San Clemente 111', 'arita@email.com');

INSERT INTO Habitaciones (Numero_Habitacion, Tipo_Habitacion, Capacidad, Precio_Por_Noche)
VALUES
(10, 'Individual', 1, 45000),
(20, 'Doble', 2, 80000),
(30, 'Suite', 4, 150000);

INSERT INTO Reservas (ID_Reserva, ID_Cliente, Numero_Habitacion, Fecha_Llegada, Fecha_Salida)
VALUES
(1, 1, 10, '2025-11-20', '2025-12-22'),
(2, 2, 20, '2025-12-01', '2025-12-04'),
(3, 3, 30, '2025-11-25', '2025-11-28');

SELECT * FROM Clientes;
SELECT * FROM Habitaciones;
SELECT * FROM Reservas;


