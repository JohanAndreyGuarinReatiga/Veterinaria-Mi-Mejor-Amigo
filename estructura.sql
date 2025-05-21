-- DDL
DROP DATABASE IF EXISTS Veterinaria;

CREATE DATABASE IF NOT EXISTS Veterinaria;
USE Veterinaria;

CREATE TABLE Duenio (
  cedula INT PRIMARY KEY UNIQUE,
  nombreCompleto VARCHAR(100) NOT NULL,
  telefono VARCHAR(15) NOT NULL,
  direccion VARCHAR(100) NOT NULL
);

CREATE TABLE Mascotas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    especie VARCHAR(45) NOT NULL,
    raza VARCHAR(45) NOT NULL,
    fechaNacimiento DATE NOT NULL,
    sexo VARCHAR(15) NOT NULL,
    vacunado TINYINT(1) NOT NULL,
    cedula INT NOT NULL,
    FOREIGN KEY (cedula) REFERENCES Duenio(cedula)
);

CREATE TABLE Servicio (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    descripcion VARCHAR(45) NOT NULL,
    precioBase DECIMAL NOT NULL
);

CREATE TABLE CitaPrevia (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fechaHora DATETIME NOT NULL,
    motivo VARCHAR(45) NOT NULL,
    estado VARCHAR(45) NOT NULL,
    idMascota INT NOT NULL,
    idServicio INT NOT NULL,
    FOREIGN KEY (idMascota) REFERENCES Mascotas(id),
    FOREIGN KEY (idServicio) REFERENCES Servicio(id)
);

CREATE TABLE Visitas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE NOT NULL,
    idMascota INT NOT NULL,
    idServicio INT NOT NULL,
    FOREIGN KEY (idMascota) REFERENCES Mascotas(id),
    FOREIGN KEY (idServicio) REFERENCES Servicio(id)
);

CREATE TABLE Tratamientos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    observaciones VARCHAR(45) NOT NULL,
    idVisita INT NOT NULL,
    FOREIGN KEY (idVisita) REFERENCES Visitas(id)
);

CREATE TABLE Pagos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fechaPago DATE NOT NULL,
    totalPagado DECIMAL NOT NULL,
    metodoPago VARCHAR(45) NOT NULL,
    idVisita INT NOT NULL,  
    FOREIGN KEY (idVisita) REFERENCES Visitas(id)
);
