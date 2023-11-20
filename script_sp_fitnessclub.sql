-- STORE PROCEDURE QUE PERMITE ORDENAR LA TABLA MIEMBROS ELIGINEDO COLUMNA Y SI ES EN ORDEN ASC O DESC
DELIMITER //
CREATE PROCEDURE OrdenarTablaMiembros(IN campoOrden VARCHAR(255), IN direccionOrden VARCHAR(10))
BEGIN
    SET @query = CONCAT('SELECT * FROM MIEMBROS ORDER BY ', campoOrden, ' ', direccionOrden);
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //
DELIMITER ;

-- LLAMAR AL S.P: ELIJO COLUMNA Y EL ORDEN ASC O DESC
CALL OrdenarTablaMiembros('ID_MIEMBRO', 'DESC');

-- STORE PROCEDURE PARA MODIFICAR LA COLUMNA FECHA_ULTIMO_PAGO DE LA TABLA PAGOS
DELIMITER //

CREATE PROCEDURE ModificarFechaUltimoPago(IN idMiembro INT, IN nuevaFecha DATE)
BEGIN
    UPDATE PAGOS
    SET FECHA_ULTIMO_PAGO = nuevaFecha
    WHERE ID_MIEMBRO = idMiembro;
END //

DELIMITER ;

-- LLAMAR AL S.P: ELIJO ID_MIEMBRO Y NUEVA FECHA
CALL ModificarFechaUltimoPago(5, '2023-11-20');

-- S.P. PARA INSERTAR MIEMBROS NUEVOS EN LA TABLA MIEMBROS
DELIMITER //

CREATE PROCEDURE InsertarMiembro(
    IN idMiembro INT,
    IN nombreMiembro VARCHAR(255),
    IN dniMiembro VARCHAR(20),
    IN fechaNacimiento DATE,
    IN email VARCHAR(255),
    IN celular VARCHAR(15),
    IN contactoEmergencia VARCHAR(15),
    IN actoMedico ENUM('SI', 'NO'),
    IN fechaAlta DATE
)
BEGIN
    INSERT INTO MIEMBROS (
        ID_MIEMBRO,
        NOMBRE_MIEMBRO,
        DNI_MIEMBRO,
        NACIMIENTO,
        EMAIL,
        CELULAR,
        CONTACTO_EMERGENCIA,
        ACTO_MEDICO,
        FECHA_ALTA
    ) VALUES (
        idMiembro,
        nombreMiembro,
        dniMiembro,
        fechaNacimiento,
        email,
        celular,
        contactoEmergencia,
        actoMedico,
        fechaAlta
    );
END //

DELIMITER ;

-- INSERTO UN NUEVO MIEMBRO
CALL InsertarMiembro(11, 'Lionel Messi', '30101010', '1987-06-24', 'lio10@email.com', '1122334455', '1122334456', 'SI', '2023-01-15');