DROP DATABASE IF EXISTS mercado;
CREATE DATABASE mercado;
USE mercado;

DROP TABLE IF EXISTS gondolas;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS empleados;

CREATE TABLE gondolas (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(25) NOT NULL,
    secciones VARCHAR(25) NOT NULL,
    tipo_titulo ENUM('ALIMENTOS', 'PERFUMERIA', 'LIMPIEZA', 'JUGUETES', 'ELECTRONICA'),
    tipo_secciones ENUM('CENTRALES', 'PARED', 'CABECERA', 'ESPECIALIZADA')
);

CREATE TABLE productos (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(25) NOT NULL,
    producto VARCHAR(25) NOT NULL,
    codigo_gondolas INT,
    FOREIGN KEY (codigo_gondolas) REFERENCES gondolas(codigo)
);

CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    edad INT CHECK(edad >= 18 AND edad <= 130),
    id_gondola INT,
    FOREIGN KEY (id_gondola) REFERENCES gondolas(codigo)
);
