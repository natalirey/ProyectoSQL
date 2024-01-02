/*
    Descripción de las vistas:
    1) vw_miembros_pagos_info : sirve para visualizar la información más relevante de los pagos de los miembros. Utiliza las tablas "MIEMBROS", "REGISTRO_PAGOS" Y "PAGOS".
    2) vw_empleados_puestos : sirve para ver los empleados y sus puestos en una sola vista ya que el puesto del empleado en la tabla EMPLEADOS es un ID, en esta vista trae directamente el puesto y el nombre del empleado. Utiliza las tablas "EMPLEADOS" Y "PUESTOS_EMPLEADOS".
    3) vw_clases_empleados_hoy : sirve para ver que clases se dan en el día de hoy, horario y el instructor asignado. Utiliza las tablas "CLASES" y "EMPLEADOS"
    4) vw_clase_empleado_material : sirve para ver los materiales que va a utilizar el empleado y en qué clase. Utiliza las tablas "MATERIALES" , "EMPLEADOS" y "CLASES".
    5) vw_materiales_mantenimiento : esta vista trae los materiales que la fecha de mantenimiento es anterior a la actual, es decir los materiales que requieren mantenimiento. Utiliza la tabla "MATERIALES" y la fecha actual.
*/

CREATE OR REPLACE VIEW vw_miembros_pagos_info AS (
SELECT
    M.ID_MIEMBRO,
    M.NOMBRE_MIEMBRO,
    M.FECHA_ALTA,
    P.TIPO_MEMBRESIA,
    P.MONTO,
    RP.PERIODO
FROM
    MIEMBROS AS M
    LEFT JOIN PAGOS AS P ON M.ID_MIEMBRO = P.ID_MIEMBRO
    LEFT JOIN REGISTRO_PAGOS AS RP ON M.ID_MIEMBRO = RP.ID_MIEMBRO);

CREATE OR REPLACE VIEW vw_empleados_puestos AS (
SELECT
    E.NOMBRE_EMPLEADO AS EMPLEADO,
    P.DESCRIPCIÓN AS PUESTO
FROM
    EMPLEADOS AS E
    JOIN PUESTOS_EMPLEADOS AS P ON E.ID_PUESTO = P.ID_PUESTO );
    

CREATE OR REPLACE VIEW vw_clases_empleados_hoy AS (
SELECT
    C.NOMBRE_CLASE AS CLASE,
    C.HORARIO,
    E.NOMBRE_EMPLEADO AS INSTRUCTOR
FROM
    CLASES AS C
    LEFT JOIN EMPLEADOS AS E ON C.ID_EMPLEADO = E.ID_EMPLEADO
WHERE
    FIND_IN_SET(DAYNAME(NOW()), C.DIAS) > 0
ORDER BY
    C.HORARIO ASC);

CREATE OR REPLACE VIEW vw_clase_empleado_material AS (
SELECT 
    E.NOMBRE_EMPLEADO AS INSTRUCTOR,
    C.NOMBRE_CLASE AS CLASE,
    M.NOMBRE_MATERIAL AS MATERIAL
FROM
    CLASES AS C
    LEFT JOIN EMPLEADOS AS E ON C.ID_EMPLEADO = E.ID_EMPLEADO
    LEFT JOIN MATERIALES AS M ON C.ID_MATERIAL = M.ID_MATERIAL
ORDER BY
    E.NOMBRE_EMPLEADO ASC
);

CREATE OR REPLACE VIEW vw_materiales_mantenimiento AS (
    SELECT
        M.NOMBRE_MATERIAL,
        M.FECHA_MANTENIMIENTO
    FROM
        MATERIALES M
    WHERE
        M.FECHA_MANTENIMIENTO IS NOT NULL
        AND M.FECHA_MANTENIMIENTO < CURDATE()
);
