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
    DECLARE anos INT;
    DECLARE meses INT;

    SELECT FECHA_ALTA INTO fechaAlta FROM MIEMBROS WHERE DNI_MIEMBRO = dniMiembro;

    SET anos = TIMESTAMPDIFF(YEAR, fechaAlta, CURDATE());
    SET meses = TIMESTAMPDIFF(MONTH, fechaAlta, CURDATE()) % 12;

    SET tiempoMiembro = '';

    IF anos > 0 THEN
        SET tiempoMiembro = CONCAT(anos, ' año');
        IF anos > 1 THEN
            SET tiempoMiembro = CONCAT(tiempoMiembro, 's');
        END IF;
    ELSE
        IF meses > 0 THEN
            SET tiempoMiembro = CONCAT(meses, ' mes');
            IF meses > 1 THEN
                SET tiempoMiembro = CONCAT(tiempoMiembro, 'es');
            END IF;
        END IF;
    END IF;

    RETURN tiempoMiembro;
END //

DELIMITER ;

-- Llamada a la función
SELECT calcularAntiguedadPorDNI('34123458') AS Antiguedad;
