-- Proyecto SQL: Gimnasio.
DROP SCHEMA IF EXISTS fitnessclub_db;
CREATE SCHEMA IF NOT EXISTS fitnessclub_db;
USE fitnessclub_db;

-- Tabla MIEMBRO
DROP TABLE IF EXISTS MIEMBROS;
CREATE TABLE `MIEMBROS` (
    `ID_MIEMBRO` INT NOT NULL,
    `NOMBRE_MIEMBRO` VARCHAR(255) NOT NULL,
    `DNI_MIEMBRO` VARCHAR(20) NOT NULL,
    `NACIMIENTO` DATE NOT NULL,
    `EMAIL` VARCHAR(255) NOT NULL,
    `CELULAR` VARCHAR(15) NOT NULL,
    `CONTACTO_EMERGENCIA` VARCHAR(15) NOT NULL,
    `ACTO_MEDICO` ENUM('SI', 'NO') NOT NULL,
    `FECHA_ALTA` DATE NOT NULL,
    `ID_PAGO` INT,
    PRIMARY KEY (`ID_MIEMBRO`));

-- Tabla PAGOS
DROP TABLE IF EXISTS PAGOS;
CREATE TABLE `PAGOS` (
    `ID_PAGO` INT NOT NULL,
    `ID_MIEMBRO` INT NOT NULL,
    `TIPO_MEMBRESIA` VARCHAR(255) NOT NULL,
    `MONTO` DECIMAL(10, 2) NOT NULL,
	`FECHA_ULTIMO_PAGO` DATE NOT NULL,
    `METODO_DE_PAGO` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`ID_PAGO`),
    FOREIGN KEY (`ID_MIEMBRO`) REFERENCES MIEMBROS(`ID_MIEMBRO`)
);

-- Tabla MATERIALES
DROP TABLE IF EXISTS MATERIALES;
CREATE TABLE `MATERIALES` (
    `ID_MATERIAL` INT NOT NULL,
    `NOMBRE_MATERIAL` VARCHAR(255) NOT NULL,
    `FECHA_DE_COMPRA` DATE NOT NULL,
    `FECHA_MANTENIMIENTO` DATE,
    PRIMARY KEY (`ID_MATERIAL`)
);

-- Tabla EMPLEADOS
DROP TABLE IF EXISTS EMPLEADOS;
CREATE TABLE `EMPLEADOS` (
    `ID_EMPLEADO` INT NOT NULL,
    `NOMBRE_EMPLEADO` VARCHAR(255) NOT NULL,
    `DNI_EMPLEADO` VARCHAR(20) NOT NULL,
    `FECHA_NACIMIENTO` DATE NOT NULL,
    `CELULAR` VARCHAR(15) NOT NULL,
    `EMAIL` VARCHAR(255) NOT NULL,
    `CONTACTO_EMERGENCIA` VARCHAR(15) NOT NULL,
    `FECHA_INGRESO` DATE NOT NULL,
    `SALARIO` DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (ID_EMPLEADO));

-- Tabla CLASES
DROP TABLE IF EXISTS CLASES;
CREATE TABLE `CLASES` (
    `ID_CLASE` INT NOT NULL,
    `NOMBRE_CLASE` VARCHAR(255) NOT NULL,
    `ID_EMPLEADO` INT,
    `DIAS` VARCHAR(255) NOT NULL,
    `HORARIO` VARCHAR(255) NOT NULL,
    `ID_MATERIAL` INT,
    PRIMARY KEY (ID_CLASE),
    FOREIGN KEY (ID_EMPLEADO) REFERENCES EMPLEADOS(ID_EMPLEADO),
    FOREIGN KEY (ID_MATERIAL) REFERENCES MATERIALES(ID_MATERIAL)
);

-- foreign keys

-- Reference: FK_MIEMBROS_PAGOS (table: MIEMBROS)
ALTER TABLE `MIEMBROS` ADD CONSTRAINT FK_MIEMBROS_PAGOS FOREIGN KEY FK_MIEMBROS_PAGOS (`ID_PAGO`)
    REFERENCES `PAGOS` (`ID_PAGO`);
