-- Función para obtener el precio total si el tipo de membresía es anual(aplica un descuento)
DELIMITER //

CREATE FUNCTION calcularPrecioTotal(precioBase DECIMAL(10, 2), descuentoPorcentaje INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE precioConDescuento DECIMAL(10, 2);

    SET precioConDescuento = precioBase - (precioBase * (descuentoPorcentaje / 100));

    RETURN precioConDescuento;
END //

DELIMITER ;

-- Llamada a la función
SELECT calcularPrecioTotal(234000, 20) AS Precio_Total_Anual;


-- Función que permite obtener la antiguedad de los miembros utilizando el DNI como parametro
DELIMITER //

CREATE FUNCTION calcularAntiguedadPorDNI(dniMiembro VARCHAR(20))
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    DECLARE fechaAlta DATE;
    DECLARE tiempoMiembro VARCHAR(50);

    SELECT FECHA_ALTA INTO fechaAlta FROM MIEMBROS WHERE DNI_MIEMBRO = dniMiembro;

    SET tiempoMiembro = CONCAT(TIMESTAMPDIFF(YEAR, fechaAlta, CURDATE()), ' años ',
                               TIMESTAMPDIFF(MONTH, fechaAlta, CURDATE()) % 12, ' meses');

    RETURN tiempoMiembro;
END //

DELIMITER ;

-- -- Llamada a la función
SELECT calcularAntiguedadPorDNI('30123456') AS TiempoDeMembresia;
