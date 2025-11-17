SELECT VERSION();

DROP DATABASE IF EXISTS mercado;
CREATE DATABASE mercado;
USE mercado;

DROP TABLE IF EXISTS gondolas;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS empleados;

CREATE TABLE gondolas (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(25) NOT NULL CHECK(LENGTH(titulo) >= 3),
    secciones VARCHAR(25) NOT NULL CHECK(LENGTH(secciones) >= 3),
    tipo_titulo ENUM('ALIMENTOS', 'PERFUMERIA', 'LIMPIEZA', 'JUGUETES', 'ELECTRONICA'),
    tipo_secciones ENUM('CENTRALES', 'PARED', 'CABECERA', 'ESPECIALIZADA')
);

CREATE TABLE productos (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(25) NOT NULL CHECK(LENGTH(marca) >= 3),
    producto VARCHAR(25) NOT NULL CHECK(LENGTH(producto) >= 3),
    codigo_gondolas INT,
    FOREIGN KEY (codigo_gondolas) REFERENCES gondolas(codigo)
);

CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL CHECK(LENGTH(nombre) >= 3),
    apellido VARCHAR(25) NOT NULL CHECK(LENGTH(apellido) >= 3),
    edad INT CHECK(edad >= 18 AND edad <= 130),
    id_gondola INT, -- Aquí se debe definir cómo vincular a la tabla gondolas
    FOREIGN KEY (id_gondola) REFERENCES gondolas(codigo)
);

SHOW TABLES;
