INSERT INTO MIEMBROS (ID_MIEMBRO, NOMBRE_MIEMBRO, DNI_MIEMBRO, NACIMIENTO, EMAIL, CELULAR, CONTACTO_EMERGENCIA, ACTO_MEDICO, FECHA_ALTA)
VALUES
    (1, 'Juan Pérez', '30123456', '1990-03-15', 'juanperez@email.com', '1122334455', '1122334456', 'NO', '2023-01-15'),
    (2, 'Carlos González', '32123457', '1988-08-20', 'carlosgonzalez@email.com', '1122334456', '1122334455', 'SI', '2023-02-10'),
    (3, 'Miguel Rodríguez', '34123458', '1995-05-10', 'miguelrodriguez@email.com', '1122334457', '1122334458', 'NO', '2023-03-20'),
	(4, 'María Rodríguez', '50123456', '1991-02-10', 'mariarodriguez@email.com', '1122334455', '1122334456', 'NO', '2023-11-15'),
    (5, 'Laura Fernández', '52123457', '1989-07-15', 'laurafernandez@email.com', '1122334456', '1122334455', 'SI', '2023-10-20'),
    (6, 'Ana López', '54123458', '1996-04-05', 'analopez@email.com', '1122334457', '1122334458', 'NO', '2024-01-10'),
    (7, 'Andrés Fernández', '36123459', '1977-12-05', 'andresfernandez@email.com', '1122334458', '1122334457', 'SI', '2023-04-05'),
    (8, 'Jorge López', '38123450', '2000-01-25', 'jorgelopez@email.com', '1122334459', '1122334460', 'NO', '2023-05-12'),
    (9, 'Sofía Díaz', '62123452', '1994-08-02', 'sofiadiaz@email.com', '1122334461', '1122334462', 'NO', '2024-05-15'),
    (10, 'Isabel Gómez', '64123453', '1986-12-30', 'isabelgomez@email.com', '1122334462', '1122334461', 'SI', '2024-06-02'),
    (11, 'Gabriela Sánchez', '43123454', '1993-09-18', 'gabrielasanchez@email.com', '1122334463', '1122334464', 'NO', '2024-02-20'),
    (12, 'Martín Herrera', '45123455', '1985-06-12', 'martinherrera@email.com', '1122334464', '1122334463', 'SI', '2024-03-10'),
    (13, 'Alejandra Torres', '47123456', '1992-11-05', 'alejandratorres@email.com', '1122334465', '1122334466', 'NO', '2024-04-15'),
    (14, 'Pedro Gómez', '49123457', '1987-04-30', 'pedrogomez@email.com', '1122334466', '1122334465', 'NO', '2024-07-01'),
    (15, 'Valeria Mendoza', '51123458', '1998-03-22', 'valeriamendoza@email.com', '1122334467', '1122334468', 'SI', '2024-08-12');
    
INSERT INTO PAGOS (ID_MIEMBRO, TIPO_MEMBRESIA, MONTO, FECHA_ULTIMO_PAGO, METODO_DE_PAGO)
VALUES
    (1, 'Membresía Mensual', 19500.00, '2023-01-15', 'Efectivo'),
    (2, 'Membresía Anual', 200000.00, '2023-02-10', 'Tarjeta de Crédito'),
    (3, 'Membresía Anual', 200000.00, '2023-01-10', 'Efectivo'),
    (4, 'Membresía Mensual', 19500.00, '2023-10-10', 'Tarjeta de Crédito'),
    (5, 'Membresía Mensual', 19500.00, '2023-11-01', 'Efectivo'),
    (6, 'Membresía Mensual', 19500.00, '2023-02-05', 'Tarjeta de Crédito'),
    (7, 'Membresía Mensual', 19500.00, '2023-07-15', 'Tarjeta de Crédito'),
    (8, 'Membresía Mensual', 19500.00, '2023-05-06', 'Efectivo'),
    (9, 'Membresía Mensual', 19500.00, '2023-08-25', 'Tarjeta de Crédito'),
    (10, 'Membresía Anual', 200000.00, '2023-01-15', 'Tarjeta de Crédito'),
    (11, 'Membresía Mensual', 19500.00, '2024-02-20', 'Efectivo'),
    (12, 'Membresía Anual', 200000.00, '2024-03-10', 'Tarjeta de Crédito'),
    (13, 'Membresía Anual', 200000.00, '2024-04-15', 'Efectivo'),
    (14, 'Membresía Mensual', 19500.00, '2024-07-01', 'Tarjeta de Crédito'),
    (15, 'Membresía Mensual', 19500.00, '2024-08-12', 'Efectivo');
    
INSERT INTO REGISTRO_PAGOS (ID_MIEMBRO, PERIODO, FECHA_DE_PAGO)
VALUES
    (1, 'OCTUBRE 2023', '2023-10-15 10:30:00'),
    (1, 'NOVIEMBRE 2023', '2023-11-20 11:15:00'),
    (2, 'OCTUBRE 2023', '2023-10-10 15:45:00'),
    (2, 'NOVIEMBRE 2023', '2023-11-05 14:00:00'),
    (3, 'OCTUBRE 2023', '2023-10-20 09:00:00'),
    (3, 'NOVIEMBRE 2023', '2023-11-10 12:30:00'),
    (4, 'OCTUBRE 2023', '2023-10-05 13:45:00'),
    (4, 'NOVIEMBRE 2023', '2023-11-15 16:00:00'),
    (5, 'OCTUBRE 2023', '2023-10-25 08:15:00'),
    (5, 'NOVIEMBRE 2023', '2023-11-01 10:45:00'),
    (6, 'OCTUBRE 2023', '2023-10-10 14:30:00'),
    (7, 'OCTUBRE 2023', '2023-10-15 11:00:00'),
    (7, 'NOVIEMBRE 2023', '2023-11-10 13:30:00'),
    (8, 'OCTUBRE 2023', '2023-10-20 15:15:00'),
    (9, 'OCTUBRE 2023', '2023-10-25 10:30:00'),
    (10, 'NOVIEMBRE 2023', '2023-11-25 11:30:00'),
    (11, 'OCTUBRE 2023', '2023-10-20 13:00:00'),
    (12, 'NOVIEMBRE 2023', '2023-11-20 08:30:00'),
    (13, 'OCTUBRE 2023', '2023-10-10 12:30:00'),
    (13, 'NOVIEMBRE 2023', '2023-11-05 14:45:00'),
    (14, 'NOVIEMBRE 2023', '2023-11-15 10:00:00'),
    (15, 'OCTUBRE 2023', '2023-10-30 11:15:00');
    
INSERT INTO MATERIALES (ID_MATERIAL, NOMBRE_MATERIAL, FECHA_DE_COMPRA, FECHA_MANTENIMIENTO)
VALUES
    (1, 'Equipos para yoga', '2022-10-15', '2024-01-01'),
    (2, 'Bicicletas', '2022-11-15', '2024-01-01'),
    (3, 'Pelotas fútbol', '2022-11-15', '2024-01-01'),
    (4, 'Mancuernas', '2022-11-15', '2024-01-01'),
    (5, 'Equipos para pilates', '2022-11-15', '2024-01-01'),
    (6, 'Colchonetas', '2023-01-20', '2024-03-01'),
    (7, 'Cuerdas para saltar', '2023-02-10', '2024-03-01'),
    (8, 'Bancos de pesas', '2023-03-15', '2024-03-01'),
    (9, 'Bandas elásticas', '2023-05-01', '2024-03-01'),
    (10, 'Estaciones de cardio', '2023-06-20', '2024-03-01'),
    (11, 'Steps para aeróbicos', '2023-08-15', '2024-05-01'),
    (12, 'Pelotas de tenis', '2023-09-10', '2024-05-01'),
    (13, 'Cintas métricas', '2023-10-05', '2024-05-01'),
    (14, 'Discos de pesas', '2023-11-20', '2024-05-01'),
    (15, 'Máquinas multifunción', '2023-12-15', '2024-05-01');

INSERT INTO `PUESTOS_EMPLEADOS` (`ID_PUESTO`, `DESCRIPCIÓN`)
VALUES
    (1, 'Administrador'),
    (2, 'Recepcionista'),
    (3, 'Profesor'),
    (4, 'Profesor Suplente'),
    (5, 'Empleado de Limpieza'),
    (6, 'Nutricionista'),
    (7, 'Entrenador Personal'),
    (8, 'Asistente Administrativo'),
    (9, 'Coordinador de Eventos'),
    (10, 'Técnico de Mantenimiento'),
    (11, 'CM - Community Manager');

    
INSERT INTO EMPLEADOS (ID_EMPLEADO, ID_PUESTO, NOMBRE_EMPLEADO, DNI_EMPLEADO, FECHA_NACIMIENTO, CELULAR, EMAIL, CONTACTO_EMERGENCIA, FECHA_INGRESO, SALARIO)
VALUES
    (1, 2, 'Franco Díaz', '38555111', '1985-03-25', '1122334455', 'frandiaz@email.com', '1122334456', '2021-06-10', 300000.00),
    (2, 5, 'Ana López', '38555111', '1990-11-12', '1122334455', 'lopezana@email.com', '1122334456', '2022-02-20', 200000.00),
	(3, 5, 'José Suarez', '29555111', '1980-11-12', '1127334455', 'josesuarez@email.com', '1122334456', '2022-02-20', 200000.00),
    (4, 2, 'Francisca Díaz', '38555111', '1985-03-25', '1152334455', 'fdiaz@email.com', '1121334456', '2021-06-10', 300000.00),
    (5, 1, 'Carla Montana', '38555111', '1985-03-25', '1127334455', 'cmontana@email.com', '1122134456', '2021-06-10', 350000.00),
    (6, 1, 'Florencia Gonzales', '38555111', '1985-03-25', '1122334455', 'gonzalesflor@email.com', '1122134456', '2021-06-10', 350000.00),
    (7, 3, 'Anabela Flores', '38555111', '1985-03-25', '1128334455', 'floresani@email.com', '1122314456', '2021-06-10', 400000.00),
    (8, 3, 'Gustavo Bueno', '38555111', '1985-03-25', '1152534455', 'gustabueno@email.com', '1122134456', '2021-06-10', 400000.00),
    (9, 3, 'Vanina Perez', '38555111', '1985-03-25', '1122734455', 'VaniPerez@email.com', '1112334456', '2021-06-10', 400000.00),
    (10, 4, 'Laura Martinez', '38555111', '1985-03-25', '1126334455', 'LauritaMartinez@email.com', '1124334456', '2021-06-10', 250000.00),
    (11, 6, 'Lucía Morales', '42555112', '1988-07-18', '1122334456', 'luciamorales@email.com', '1122334457', '2022-05-15', 280000.00),
    (12, 7, 'Martín Vargas', '37555113', '1992-04-22', '1122334458', 'martinvargas@email.com', '1122334459', '2022-08-10', 320000.00),
    (13, 8, 'Carolina Ríos', '30555114', '1985-11-05', '1122334460', 'carolrios@email.com', '1122334461', '2022-10-20', 300000.00),
    (14, 9, 'Diego Soto', '25555115', '1990-08-12', '1122334462', 'diegosoto@email.com', '1122334463', '2023-01-10', 350000.00),
    (15, 10, 'Marina Silva', '29555116', '1987-06-28', '1122334464', 'marinasilva@email.com', '1122334465', '2023-04-05', 300000.00);

INSERT INTO CLASES (ID_CLASE, NOMBRE_CLASE, ID_EMPLEADO, DIAS, HORARIO, ID_MATERIAL)
VALUES
    (1, 'Spinning', 8, 'Monday, Wednesday, Friday', '18:00-19:00', 2),
    (2, 'Yoga', 7, 'Tuesday, Thursday', '09:00-10:00', 1),
    (3, 'Pilates', 7, 'Monday, Wednesday', '09:00-10:00', 5),
    (4, 'Funcional', 9, 'Monday, Wednesday', '11:00-12:00', 4),
    (5, 'Fútbol Fit', 9, 'Thursday, Saturday', '18:00-19:00', 3),
	(6, 'CrossFit', 13, 'Tuesday, Thursday, Saturday', '17:00-18:00', 8),
    (7, 'Zumba', 14, 'Monday, Wednesday', '19:00-20:00', 6),
    (8, 'Entrenamiento Funcional', 15, 'Friday, Sunday', '10:00-11:00', 9),
    (9, 'Aeróbicos', 16, 'Monday, Wednesday, Friday', '08:00-09:00', 11),
    (10, 'Boxeo Fitness', 17, 'Tuesday, Thursday', '18:30-19:30', 7);

INSERT INTO PAGOS_EMPLEADOS (ID_EMPLEADO, DNI_EMPLEADO, CBU, ALIAS, BANCO)
VALUES
    (1, '38555111', '4928371056238492015732', 'ARBOL.CASA.PLAZA', 'Santander Río'),
    (2, '38555111', '9075614328092485731268', 'LUZ.PLANETA.ROJO', 'Santander Río'),
    (3, '29555111', '2157843096745032189265', 'AGUA.TIGRE.LUNA', 'Santander Río'),
    (4, '38555111', '8391752046852134973201', 'MONTANA.VENTANA.AZUL', 'Santander Río'),
    (5, '38555111', '3615924870581732948265', 'FUEGO.TIERRA.ESTRELLA', 'Santander Río'),
    (6, '38555111', '3148576906248752301986', 'NIEVE.AVION.SOL', 'Santander Río'),
    (7, '38555111', '8526793140462371985723', 'PLAYA.PAPEL.ROSA', 'Santander Río'),
    (8, '38555111', '6301582474971203568928', 'CIELO.AMARILLO.PERRO', 'Santander Río'),
    (9, '38555111', '4826375192501986732406', 'ISLA.GLOBO.VERDE', 'Santander Río'),
    (10, '38555111', '7582419630924761853123', 'CARACOL.RATON.NARANJA', 'Santander Río'),
    (11, '42555112', '1043256789257834017692', 'OCEANO.MARTILLO.MORADO', 'Santander Río'),
    (12, '37555113', '8692401357235147609823', 'SELVA.HELADO.CIEGA', 'Santander Río'),
    (13, '30555114', '2746815039561324872098', 'DESERTO.CACTUS.VIENTO', 'Santander Río'),
    (14, '25555115', '3672158940293846571052', 'TREN.TORTUGA.LEON', 'Santander Río'),
    (15, '29555116', '1209476358942361785023', 'RIO.LIBRO.CIELO', 'Santander Río');