START TRANSACTION;

DELETE FROM MIEMBROS WHERE ID_MIEMBRO = 9 ;
-- ROLLBACK
-- COMMIT
-- INSERT INTO MIEMBROS (ID_MIEMBRO, NOMBRE_MIEMBRO, DNI_MIEMBRO, NACIMIENTO, EMAIL, CELULAR, CONTACTO_EMERGENCIA, ACTO_MEDICO, FECHA_ALTA) VALUES (9, 'Sofía Díaz', '62123452', '1994-08-02', 'sofiadiaz@email.com', '1122334461', '1122334462', 'NO', '2024-05-15');

START TRANSACTION;

INSERT INTO EMPLEADOS (ID_EMPLEADO, ID_PUESTO, NOMBRE_EMPLEADO, DNI_EMPLEADO, FECHA_NACIMIENTO, CELULAR, EMAIL, CONTACTO_EMERGENCIA, FECHA_INGRESO, SALARIO)
VALUES
(11, 1, 'Juan Pérez', '12345678', '1990-01-15', '1122334455', 'juan.perez@email.com', '1122334455', '2022-01-01', 50000.00),
(12, 2, 'Ana Rodríguez', '23456789', '1985-05-20', '2233445566', 'ana.rodriguez@email.com', '2233445566', '2022-02-10', 60000.00),
(13, 3, 'Carlos Gómez', '34567890', '1992-09-08', '3344556677', 'carlos.gomez@email.com', '3344556677', '2022-03-15', 70000.00),
(14, 1, 'Laura Martínez', '45678901', '1988-11-30', '4455667788', 'laura.martinez@email.com', '4455667788', '2022-04-20', 80000.00);

SAVEPOINT SP1;

INSERT INTO EMPLEADOS (ID_EMPLEADO, ID_PUESTO, NOMBRE_EMPLEADO, DNI_EMPLEADO, FECHA_NACIMIENTO, CELULAR, EMAIL, CONTACTO_EMERGENCIA, FECHA_INGRESO, SALARIO)
VALUES
(5, 2, 'Eduardo Sánchez', '56789012', '1986-02-25', '5566778899', 'eduardo.sanchez@email.com', '5566778899', '2022-05-25', 90000.00),
(6, 3, 'María Herrera', '67890123', '1995-07-12', '6677889900', 'maria.herrera@email.com', '6677889900', '2022-06-30', 100000.00),
(7, 1, 'Gabriel Ramírez', '78901234', '1987-04-08', '7788990011', 'gabriel.ramirez@email.com', '7788990011', '2022-07-15', 110000.00),
(8, 2, 'Sofía Díaz', '89012345', '1991-12-03', '8899001122', 'sofia.diaz@email.com', '8899001122', '2022-08-20', 120000.00);

SAVEPOINT SP2;

-- ROLLBACK TO SP1;
-- COMMIT;