-- Este trigger registra la operación antes de insertar un nuevo miembro.
DROP TRIGGER IF EXISTS before_insert_miembros;
DELIMITER //
CREATE TRIGGER before_insert_miembros
BEFORE INSERT ON MIEMBROS
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM MIEMBROS WHERE DNI_MIEMBRO = NEW.DNI_MIEMBRO) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El DNI ya se encuentra registrado';
    END IF;
END;
//
DELIMITER ;


-- Este trigger registra la operación después de insertar un nuevo miembro.
DROP TRIGGER IF EXISTS after_insert_miembros;
DELIMITER //
CREATE TRIGGER after_insert_miembros
AFTER INSERT ON MIEMBROS
FOR EACH ROW
BEGIN
    INSERT INTO MIEMBROS_LOG (OPERACION, ID_MIEMBRO, NOMBRE_MIEMBRO, DNI_MIEMBRO, FECHA_OPERACION, USUARIO_OPERACION)
    VALUES ('INSERT', NEW.ID_MIEMBRO, NEW.NOMBRE_MIEMBRO, NEW.DNI_MIEMBRO, NOW(), CURRENT_USER());
END;
//
DELIMITER ;

-- Este trigger registra la operación antes de modificar un pago siempre q la misma sea importante.
DROP TRIGGER IF EXISTS before_update_pagos;
DELIMITER //
CREATE TRIGGER before_update_pagos
BEFORE UPDATE ON PAGOS
FOR EACH ROW
BEGIN
    -- Verificar si hay cambios significativos
    IF NEW.TIPO_MEMBRESIA != OLD.TIPO_MEMBRESIA OR NEW.MONTO != OLD.MONTO OR NEW.FECHA_ULTIMO_PAGO != OLD.FECHA_ULTIMO_PAGO OR NEW.METODO_DE_PAGO != OLD.METODO_DE_PAGO THEN
        -- Insertar solo cambios significativos en la tabla de auditoría
        INSERT INTO PAGOS_LOG (OPERACION, ID_MIEMBRO, TIPO_MEMBRESIA, MONTO, FECHA_ULTIMO_PAGO, METODO_DE_PAGO, FECHA_OPERACION, USUARIO_OPERACION)
        VALUES ('UPDATE', OLD.ID_MIEMBRO, OLD.TIPO_MEMBRESIA, OLD.MONTO, OLD.FECHA_ULTIMO_PAGO, OLD.METODO_DE_PAGO, NOW(), CURRENT_USER());
    END IF;
END;
//
DELIMITER ;



-- Trigger que registra la operación después de modificar un registro en la tabla de pagos siempre q la misma sea importate
DROP TRIGGER IF EXISTS after_update_pagos;
DELIMITER //
CREATE TRIGGER after_update_pagos
AFTER UPDATE ON PAGOS
FOR EACH ROW
BEGIN
    -- Verificar si hay cambios significativos
    IF NEW.TIPO_MEMBRESIA != OLD.TIPO_MEMBRESIA OR NEW.MONTO != OLD.MONTO OR NEW.FECHA_ULTIMO_PAGO != OLD.FECHA_ULTIMO_PAGO OR NEW.METODO_DE_PAGO != OLD.METODO_DE_PAGO THEN
        -- Insertar información actualizada en la tabla de auditoría después de la actualización
        INSERT INTO PAGOS_LOG (OPERACION, ID_MIEMBRO, TIPO_MEMBRESIA, MONTO, FECHA_ULTIMO_PAGO, METODO_DE_PAGO, FECHA_OPERACION, USUARIO_OPERACION)
        VALUES ('UPDATE', NEW.ID_MIEMBRO, NEW.TIPO_MEMBRESIA, NEW.MONTO, NEW.FECHA_ULTIMO_PAGO, NEW.METODO_DE_PAGO, NOW(), CURRENT_USER());
    END IF;
END;
//
DELIMITER ;

-- Probando si funciona
-- Actualizo un registro en la tabla de pagos
UPDATE PAGOS SET MONTO = 28000.00 WHERE ID_MIEMBRO = 1;

-- Verifico el registro
SELECT * FROM PAGOS_LOG;

-- inserto un nuevo miembro con dni ya existente
INSERT INTO MIEMBROS (ID_MIEMBRO, NOMBRE_MIEMBRO, DNI_MIEMBRO, NACIMIENTO, EMAIL, CELULAR, CONTACTO_EMERGENCIA, ACTO_MEDICO, FECHA_ALTA)
VALUES ('34','Miley Cyrus', '30123456', '1992-11-23', 'soyhannahmontana@email.com', '1122334455', '1122334456', 'si', '2023-12-01');

-- inserto un nuevo miembro inexistente
INSERT INTO MIEMBROS (ID_MIEMBRO, NOMBRE_MIEMBRO, DNI_MIEMBRO, NACIMIENTO, EMAIL, CELULAR, CONTACTO_EMERGENCIA, ACTO_MEDICO, FECHA_ALTA)
VALUES ('51','Franco Suculini', '42051749', '1998-01-23', 'FRANCOSUCULINI@email.com', '1121434455', '1199334456', 'si', '2024-01-02');

-- Verifico el registro 
SELECT * FROM MIEMBROS_LOG;