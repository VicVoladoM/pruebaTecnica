CREATE DATABASE caprepa;
USE caprepa;

CREATE TABLE cliente(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE prestamo(
	id INT PRIMARY KEY AUTO_INCREMENT,
	monto DOUBLE NOT NULL,
    interes DOUBLE NOT NULL,
    pagoQuincenal DOUBLE NOT NULL,
    plazo INT NOT NULL,
    clienteId INT NOT NULL,
    fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (clienteId) REFERENCES cliente(id)
);

CREATE TABLE amortizacion(
	id INT PRIMARY KEY AUTO_INCREMENT,
    numeroPago INT NOT NULL,
    abono INT NOT NULL,
    prestamoId INT NOT NULL,
    fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (prestamoId) REFERENCES prestamo(id)
);
