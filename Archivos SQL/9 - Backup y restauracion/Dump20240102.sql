-- Backup para toda la DB
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: fitnessclub_db
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clases`
--

DROP TABLE IF EXISTS `clases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clases` (
  `ID_CLASE` int NOT NULL,
  `NOMBRE_CLASE` varchar(255) NOT NULL,
  `ID_EMPLEADO` int DEFAULT NULL,
  `DIAS` varchar(255) NOT NULL,
  `HORARIO_INICIO` time NOT NULL,
  `HORARIO_FIN` time NOT NULL,
  `ID_MATERIAL` int DEFAULT NULL,
  PRIMARY KEY (`ID_CLASE`),
  KEY `ID_EMPLEADO` (`ID_EMPLEADO`),
  KEY `ID_MATERIAL` (`ID_MATERIAL`),
  CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`ID_EMPLEADO`) REFERENCES `empleados` (`ID_EMPLEADO`),
  CONSTRAINT `clases_ibfk_2` FOREIGN KEY (`ID_MATERIAL`) REFERENCES `materiales` (`ID_MATERIAL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clases`
--

LOCK TABLES `clases` WRITE;
/*!40000 ALTER TABLE `clases` DISABLE KEYS */;
INSERT INTO `clases` VALUES (1,'Spinning',8,'Monday, Wednesday, Friday','18:00:00','19:00:00',2),(2,'Yoga',7,'Tuesday, Thursday','09:00:00','10:00:00',1),(3,'Pilates',7,'Monday, Wednesday','09:00:00','10:00:00',5),(4,'Funcional',9,'Monday, Wednesday','11:00:00','12:00:00',4),(5,'Fútbol Fit',9,'Thursday, Saturday','18:00:00','19:00:00',3),(6,'CrossFit',8,'Tuesday, Thursday, Saturday','17:00:00','18:00:00',8),(7,'Zumba',8,'Monday, Wednesday','19:00:00','20:00:00',6),(8,'Entrenamiento Funcional',9,'Friday, Sunday','10:00:00','11:00:00',9),(9,'Aeróbicos',8,'Monday, Wednesday, Friday','08:00:00','09:00:00',11),(10,'Boxeo Fitness',7,'Tuesday, Thursday','18:30:00','19:30:00',7);
/*!40000 ALTER TABLE `clases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `ID_EMPLEADO` int NOT NULL,
  `ID_PUESTO` int DEFAULT NULL,
  `NOMBRE_EMPLEADO` varchar(255) NOT NULL,
  `DNI_EMPLEADO` varchar(20) NOT NULL,
  `FECHA_NACIMIENTO` date NOT NULL,
  `CELULAR` varchar(15) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `CONTACTO_EMERGENCIA` varchar(15) NOT NULL,
  `FECHA_INGRESO` date NOT NULL,
  `SALARIO` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID_EMPLEADO`),
  KEY `ID_PUESTO` (`ID_PUESTO`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`ID_PUESTO`) REFERENCES `puestos_empleados` (`ID_PUESTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,2,'Franco Díaz','38355111','1985-03-25','1122334455','frandiaz@email.com','1122334456','2021-06-10',300000.00),(2,5,'Ana López','38575111','1990-11-12','1122334455','lopezana@email.com','1122334456','2022-02-20',200000.00),(3,5,'José Suarez','29555111','1980-11-12','1127334455','josesuarez@email.com','1122334456','2022-02-20',200000.00),(4,2,'Francisca Díaz','38645111','1985-03-25','1152334455','fdiaz@email.com','1121334456','2021-06-10',300000.00),(5,1,'Carla Montana','38555111','1985-03-25','1127334455','cmontana@email.com','1122134456','2021-06-10',350000.00),(6,1,'Florencia Gonzales','38555111','1985-03-25','1122334455','gonzalesflor@email.com','1122134456','2021-06-10',350000.00),(7,3,'Anabela Flores','38555111','1985-03-25','1128334455','floresani@email.com','1122314456','2021-06-10',400000.00),(8,3,'Gustavo Bueno','38555111','1985-03-25','1152534455','gustabueno@email.com','1122134456','2021-06-10',400000.00),(9,3,'Vanina Perez','38555111','1985-03-25','1122734455','VaniPerez@email.com','1112334456','2021-06-10',400000.00),(10,4,'Laura Martinez','38555111','1985-03-25','1126334455','LauritaMartinez@email.com','1124334456','2021-06-10',250000.00),(11,6,'Lucía Morales','42555112','1988-07-18','1122334456','luciamorales@email.com','1122334457','2022-05-15',280000.00),(12,7,'Martín Vargas','37555113','1992-04-22','1122334458','martinvargas@email.com','1122334459','2022-08-10',320000.00),(13,8,'Carolina Ríos','30555114','1985-11-05','1122334460','carolrios@email.com','1122334461','2022-10-20',300000.00),(14,9,'Diego Soto','25555115','1990-08-12','1122334462','diegosoto@email.com','1122334463','2023-01-10',350000.00),(15,10,'Marina Silva','29555116','1987-06-28','1122334464','marinasilva@email.com','1122334465','2023-04-05',300000.00);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiales`
--

DROP TABLE IF EXISTS `materiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materiales` (
  `ID_MATERIAL` int NOT NULL,
  `NOMBRE_MATERIAL` varchar(255) NOT NULL,
  `FECHA_DE_COMPRA` date NOT NULL,
  `FECHA_MANTENIMIENTO` date DEFAULT NULL,
  PRIMARY KEY (`ID_MATERIAL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiales`
--

LOCK TABLES `materiales` WRITE;
/*!40000 ALTER TABLE `materiales` DISABLE KEYS */;
INSERT INTO `materiales` VALUES (1,'Equipos para yoga','2022-10-15','2024-01-01'),(2,'Bicicletas','2022-11-15','2024-01-01'),(3,'Pelotas fútbol','2022-11-15','2024-01-01'),(4,'Mancuernas','2022-11-15','2024-01-01'),(5,'Equipos para pilates','2022-11-15','2024-01-01'),(6,'Colchonetas','2023-01-20','2024-03-01'),(7,'Cuerdas para saltar','2023-02-10','2024-03-01'),(8,'Bancos de pesas','2023-03-15','2024-03-01'),(9,'Bandas elásticas','2023-05-01','2024-03-01'),(10,'Estaciones de cardio','2023-06-20','2024-03-01'),(11,'Steps para aeróbicos','2023-08-15','2024-05-01'),(12,'Pelotas de tenis','2023-09-10','2024-05-01'),(13,'Cintas métricas','2023-10-05','2024-05-01'),(14,'Discos de pesas','2023-11-20','2024-05-01'),(15,'Máquinas multifunción','2023-12-15','2024-05-01');
/*!40000 ALTER TABLE `materiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miembros`
--

DROP TABLE IF EXISTS `miembros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `miembros` (
  `ID_MIEMBRO` int NOT NULL,
  `NOMBRE_MIEMBRO` varchar(255) NOT NULL,
  `DNI_MIEMBRO` int NOT NULL,
  `NACIMIENTO` date NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `CELULAR` int NOT NULL,
  `CONTACTO_EMERGENCIA` int NOT NULL,
  `ACTO_MEDICO` enum('SI','NO') NOT NULL,
  `FECHA_ALTA` date NOT NULL,
  PRIMARY KEY (`ID_MIEMBRO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miembros`
--

LOCK TABLES `miembros` WRITE;
/*!40000 ALTER TABLE `miembros` DISABLE KEYS */;
INSERT INTO `miembros` VALUES (1,'Juan Pérez',30123456,'1990-03-15','juanperez@email.com',1122334455,1122334456,'NO','2023-01-15'),(2,'Carlos González',32123457,'1988-08-20','carlosgonzalez@email.com',1122334456,1122334455,'SI','2023-02-10'),(3,'Miguel Rodríguez',34123458,'1995-05-10','miguelrodriguez@email.com',1122334457,1122334458,'NO','2023-03-20'),(4,'María Rodríguez',50123456,'1991-02-10','mariarodriguez@email.com',1122334455,1122334456,'NO','2023-11-15'),(5,'Laura Fernández',52123457,'1989-07-15','laurafernandez@email.com',1122334456,1122334455,'SI','2023-10-20'),(6,'Ana López',54123458,'1996-04-05','analopez@email.com',1122334457,1122334458,'NO','2024-01-10'),(7,'Andrés Fernández',36123459,'1977-12-05','andresfernandez@email.com',1122334458,1122334457,'SI','2023-04-05'),(8,'Jorge López',38123450,'2000-01-25','jorgelopez@email.com',1122334459,1122334460,'NO','2023-05-12'),(9,'Sofía Díaz',62123452,'1994-08-02','sofiadiaz@email.com',1122334461,1122334462,'NO','2024-05-15'),(10,'Isabel Gómez',64123453,'1986-12-30','isabelgomez@email.com',1122334462,1122334461,'SI','2024-06-02'),(11,'Gabriela Sánchez',43123454,'1993-09-18','gabrielasanchez@email.com',1122334463,1122334464,'NO','2024-02-20'),(12,'Martín Herrera',45123455,'1985-06-12','martinherrera@email.com',1122334464,1122334463,'SI','2024-03-10'),(13,'Alejandra Torres',47123456,'1992-11-05','alejandratorres@email.com',1122334465,1122334466,'NO','2024-04-15'),(14,'Pedro Gómez',49123457,'1987-04-30','pedrogomez@email.com',1122334466,1122334465,'NO','2024-07-01'),(15,'Valeria Mendoza',51123458,'1998-03-22','valeriamendoza@email.com',1122334467,1122334468,'SI','2024-08-12');
/*!40000 ALTER TABLE `miembros` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_miembros` BEFORE INSERT ON `miembros` FOR EACH ROW BEGIN
    IF EXISTS (SELECT 1 FROM MIEMBROS WHERE DNI_MIEMBRO = NEW.DNI_MIEMBRO) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El DNI ya se encuentra registrado';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_miembros` AFTER INSERT ON `miembros` FOR EACH ROW BEGIN
    INSERT INTO MIEMBROS_LOG (OPERACION, ID_MIEMBRO, NOMBRE_MIEMBRO, DNI_MIEMBRO, FECHA_OPERACION, USUARIO_OPERACION)
    VALUES ('INSERT', NEW.ID_MIEMBRO, NEW.NOMBRE_MIEMBRO, NEW.DNI_MIEMBRO, NOW(), CURRENT_USER());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `miembros_log`
--

DROP TABLE IF EXISTS `miembros_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `miembros_log` (
  `ID_LOG` int NOT NULL AUTO_INCREMENT,
  `OPERACION` varchar(10) NOT NULL,
  `ID_MIEMBRO` int DEFAULT NULL,
  `NOMBRE_MIEMBRO` varchar(255) DEFAULT NULL,
  `DNI_MIEMBRO` int DEFAULT NULL,
  `FECHA_OPERACION` datetime DEFAULT NULL,
  `USUARIO_OPERACION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_LOG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miembros_log`
--

LOCK TABLES `miembros_log` WRITE;
/*!40000 ALTER TABLE `miembros_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `miembros_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `ID_MIEMBRO` int NOT NULL,
  `TIPO_MEMBRESIA` varchar(255) NOT NULL,
  `MONTO` decimal(10,2) NOT NULL,
  `FECHA_ULTIMO_PAGO` date NOT NULL,
  `METODO_DE_PAGO` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_MIEMBRO`),
  CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`ID_MIEMBRO`) REFERENCES `miembros` (`ID_MIEMBRO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,'Membresía Mensual',19500.00,'2023-01-15','Efectivo'),(2,'Membresía Anual',200000.00,'2023-02-10','Tarjeta de Crédito'),(3,'Membresía Anual',200000.00,'2023-01-10','Efectivo'),(4,'Membresía Mensual',19500.00,'2023-10-10','Tarjeta de Crédito'),(5,'Membresía Mensual',19500.00,'2023-11-20','Efectivo'),(6,'Membresía Mensual',19500.00,'2023-02-05','Tarjeta de Crédito'),(7,'Membresía Mensual',19500.00,'2023-07-15','Tarjeta de Crédito'),(8,'Membresía Mensual',19500.00,'2023-05-06','Efectivo'),(9,'Membresía Mensual',19500.00,'2023-08-25','Tarjeta de Crédito'),(10,'Membresía Anual',200000.00,'2023-01-15','Tarjeta de Crédito'),(11,'Membresía Mensual',19500.00,'2024-02-20','Efectivo'),(12,'Membresía Anual',200000.00,'2024-03-10','Tarjeta de Crédito'),(13,'Membresía Anual',200000.00,'2024-04-15','Efectivo'),(14,'Membresía Mensual',19500.00,'2024-07-01','Tarjeta de Crédito'),(15,'Membresía Mensual',19500.00,'2024-08-12','Efectivo');
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_update_pagos` BEFORE UPDATE ON `pagos` FOR EACH ROW BEGIN
    -- Verificar si hay cambios significativos
    IF NEW.TIPO_MEMBRESIA != OLD.TIPO_MEMBRESIA OR NEW.MONTO != OLD.MONTO OR NEW.FECHA_ULTIMO_PAGO != OLD.FECHA_ULTIMO_PAGO OR NEW.METODO_DE_PAGO != OLD.METODO_DE_PAGO THEN
        -- Insertar solo cambios significativos en la tabla de auditoría
        INSERT INTO PAGOS_LOG (OPERACION, ID_MIEMBRO, TIPO_MEMBRESIA, MONTO, FECHA_ULTIMO_PAGO, METODO_DE_PAGO, FECHA_OPERACION, USUARIO_OPERACION)
        VALUES ('UPDATE', OLD.ID_MIEMBRO, OLD.TIPO_MEMBRESIA, OLD.MONTO, OLD.FECHA_ULTIMO_PAGO, OLD.METODO_DE_PAGO, NOW(), CURRENT_USER());
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_update_pagos` AFTER UPDATE ON `pagos` FOR EACH ROW BEGIN
    -- Verificar si hay cambios significativos
    IF NEW.TIPO_MEMBRESIA != OLD.TIPO_MEMBRESIA OR NEW.MONTO != OLD.MONTO OR NEW.FECHA_ULTIMO_PAGO != OLD.FECHA_ULTIMO_PAGO OR NEW.METODO_DE_PAGO != OLD.METODO_DE_PAGO THEN
        -- Insertar información actualizada en la tabla de auditoría después de la actualización
        INSERT INTO PAGOS_LOG (OPERACION, ID_MIEMBRO, TIPO_MEMBRESIA, MONTO, FECHA_ULTIMO_PAGO, METODO_DE_PAGO, FECHA_OPERACION, USUARIO_OPERACION)
        VALUES ('UPDATE', NEW.ID_MIEMBRO, NEW.TIPO_MEMBRESIA, NEW.MONTO, NEW.FECHA_ULTIMO_PAGO, NEW.METODO_DE_PAGO, NOW(), CURRENT_USER());
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pagos_empleados`
--

DROP TABLE IF EXISTS `pagos_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos_empleados` (
  `ID_EMPLEADO` int NOT NULL,
  `DNI_EMPLEADO` varchar(255) NOT NULL,
  `CBU` varchar(255) NOT NULL,
  `ALIAS` varchar(255) NOT NULL,
  `BANCO` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_EMPLEADO`),
  CONSTRAINT `pagos_empleados_ibfk_1` FOREIGN KEY (`ID_EMPLEADO`) REFERENCES `empleados` (`ID_EMPLEADO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos_empleados`
--

LOCK TABLES `pagos_empleados` WRITE;
/*!40000 ALTER TABLE `pagos_empleados` DISABLE KEYS */;
INSERT INTO `pagos_empleados` VALUES (1,'38555111','4928371056238492015732','ARBOL.CASA.PLAZA','Santander Río'),(2,'38555111','9075614328092485731268','LUZ.PLANETA.ROJO','Santander Río'),(3,'29555111','2157843096745032189265','AGUA.TIGRE.LUNA','Santander Río'),(4,'38555111','8391752046852134973201','MONTANA.VENTANA.AZUL','Santander Río'),(5,'38555111','3615924870581732948265','FUEGO.TIERRA.ESTRELLA','Santander Río'),(6,'38555111','3148576906248752301986','NIEVE.AVION.SOL','Santander Río'),(7,'38555111','8526793140462371985723','PLAYA.PAPEL.ROSA','Santander Río'),(8,'38555111','6301582474971203568928','CIELO.AMARILLO.PERRO','Santander Río'),(9,'38555111','4826375192501986732406','ISLA.GLOBO.VERDE','Santander Río'),(10,'38555111','7582419630924761853123','CARACOL.RATON.NARANJA','Santander Río'),(11,'42555112','1043256789257834017692','OCEANO.MARTILLO.MORADO','Santander Río'),(12,'37555113','8692401357235147609823','SELVA.HELADO.CIEGA','Santander Río'),(13,'30555114','2746815039561324872098','DESERTO.CACTUS.VIENTO','Santander Río'),(14,'25555115','3672158940293846571052','TREN.TORTUGA.LEON','Santander Río'),(15,'29555116','1209476358942361785023','RIO.LIBRO.CIELO','Santander Río');
/*!40000 ALTER TABLE `pagos_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos_log`
--

DROP TABLE IF EXISTS `pagos_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos_log` (
  `ID_LOG` int NOT NULL AUTO_INCREMENT,
  `OPERACION` varchar(10) NOT NULL,
  `ID_MIEMBRO` int DEFAULT NULL,
  `TIPO_MEMBRESIA` varchar(255) DEFAULT NULL,
  `MONTO` decimal(10,2) DEFAULT NULL,
  `FECHA_ULTIMO_PAGO` date DEFAULT NULL,
  `METODO_DE_PAGO` varchar(255) DEFAULT NULL,
  `FECHA_OPERACION` datetime DEFAULT NULL,
  `USUARIO_OPERACION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_LOG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos_log`
--

LOCK TABLES `pagos_log` WRITE;
/*!40000 ALTER TABLE `pagos_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagos_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puestos_empleados`
--

DROP TABLE IF EXISTS `puestos_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puestos_empleados` (
  `ID_PUESTO` int NOT NULL,
  `DESCRIPCIÓN` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_PUESTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puestos_empleados`
--

LOCK TABLES `puestos_empleados` WRITE;
/*!40000 ALTER TABLE `puestos_empleados` DISABLE KEYS */;
INSERT INTO `puestos_empleados` VALUES (1,'Administrador'),(2,'Recepcionista'),(3,'Profesor'),(4,'Profesor Suplente'),(5,'Empleado de Limpieza'),(6,'Nutricionista'),(7,'Entrenador Personal'),(8,'Asistente Administrativo'),(9,'Coordinador de Eventos'),(10,'Técnico de Mantenimiento'),(11,'CM - Community Manager');
/*!40000 ALTER TABLE `puestos_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_pagos`
--

DROP TABLE IF EXISTS `registro_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_pagos` (
  `ID_PAGO` varchar(50) NOT NULL,
  `ID_MIEMBRO` int NOT NULL,
  `PERIODO` varchar(50) NOT NULL,
  `FECHA_DE_PAGO` datetime NOT NULL,
  PRIMARY KEY (`ID_PAGO`),
  KEY `ID_MIEMBRO` (`ID_MIEMBRO`),
  CONSTRAINT `registro_pagos_ibfk_1` FOREIGN KEY (`ID_MIEMBRO`) REFERENCES `miembros` (`ID_MIEMBRO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_pagos`
--

LOCK TABLES `registro_pagos` WRITE;
/*!40000 ALTER TABLE `registro_pagos` DISABLE KEYS */;
INSERT INTO `registro_pagos` VALUES ('HASH001',1,'OCTUBRE 2023','2023-10-15 10:30:00'),('HASH002',1,'NOVIEMBRE 2023','2023-11-20 11:15:00'),('HASH003',2,'OCTUBRE 2023','2023-10-10 15:45:00'),('HASH004',2,'NOVIEMBRE 2023','2023-11-05 14:00:00'),('HASH005',3,'OCTUBRE 2023','2023-10-20 09:00:00'),('HASH006',3,'NOVIEMBRE 2023','2023-11-10 12:30:00'),('HASH007',4,'OCTUBRE 2023','2023-10-05 13:45:00'),('HASH008',4,'NOVIEMBRE 2023','2023-11-15 16:00:00'),('HASH009',5,'OCTUBRE 2023','2023-10-25 08:15:00'),('HASH010',5,'NOVIEMBRE 2023','2023-11-01 10:45:00'),('HASH011',6,'OCTUBRE 2023','2023-10-10 14:30:00'),('HASH012',7,'OCTUBRE 2023','2023-10-15 11:00:00'),('HASH013',7,'NOVIEMBRE 2023','2023-11-10 13:30:00'),('HASH014',8,'OCTUBRE 2023','2023-10-20 15:15:00'),('HASH015',9,'OCTUBRE 2023','2023-10-25 10:30:00'),('HASH016',10,'NOVIEMBRE 2023','2023-11-25 11:30:00'),('HASH017',11,'OCTUBRE 2023','2023-10-20 13:00:00'),('HASH018',12,'NOVIEMBRE 2023','2023-11-20 08:30:00'),('HASH019',13,'OCTUBRE 2023','2023-10-10 12:30:00'),('HASH020',13,'NOVIEMBRE 2023','2023-11-05 14:45:00'),('HASH021',14,'NOVIEMBRE 2023','2023-11-15 10:00:00'),('HASH022',15,'OCTUBRE 2023','2023-10-30 11:15:00');
/*!40000 ALTER TABLE `registro_pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_clase_empleado_material`
--

DROP TABLE IF EXISTS `vw_clase_empleado_material`;
/*!50001 DROP VIEW IF EXISTS `vw_clase_empleado_material`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_clase_empleado_material` AS SELECT 
 1 AS `INSTRUCTOR`,
 1 AS `CLASE`,
 1 AS `MATERIAL`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_clases_empleados_hoy`
--

DROP TABLE IF EXISTS `vw_clases_empleados_hoy`;
/*!50001 DROP VIEW IF EXISTS `vw_clases_empleados_hoy`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_clases_empleados_hoy` AS SELECT 
 1 AS `CLASE`,
 1 AS `HORARIO`,
 1 AS `INSTRUCTOR`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_empleados_puestos`
--

DROP TABLE IF EXISTS `vw_empleados_puestos`;
/*!50001 DROP VIEW IF EXISTS `vw_empleados_puestos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_empleados_puestos` AS SELECT 
 1 AS `EMPLEADO`,
 1 AS `PUESTO`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_materiales_mantenimiento`
--

DROP TABLE IF EXISTS `vw_materiales_mantenimiento`;
/*!50001 DROP VIEW IF EXISTS `vw_materiales_mantenimiento`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_materiales_mantenimiento` AS SELECT 
 1 AS `NOMBRE_MATERIAL`,
 1 AS `FECHA_MANTENIMIENTO`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_miembros_pagos_info`
--

DROP TABLE IF EXISTS `vw_miembros_pagos_info`;
/*!50001 DROP VIEW IF EXISTS `vw_miembros_pagos_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_miembros_pagos_info` AS SELECT 
 1 AS `ID_MIEMBRO`,
 1 AS `NOMBRE_MIEMBRO`,
 1 AS `FECHA_ALTA`,
 1 AS `TIPO_MEMBRESIA`,
 1 AS `MONTO`,
 1 AS `PERIODO`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'fitnessclub_db'
--

--
-- Dumping routines for database 'fitnessclub_db'
--
/*!50003 DROP FUNCTION IF EXISTS `calcularAntiguedadPorDNI` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calcularAntiguedadPorDNI`(dniMiembro VARCHAR(20)) RETURNS varchar(50) CHARSET utf8mb4
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `calcularPrecioTotal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calcularPrecioTotal`(precioBase DECIMAL(10, 2), descuentoPorcentaje INT) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE precioConDescuento DECIMAL(10, 2);

    SET precioConDescuento = precioBase - (precioBase * (descuentoPorcentaje / 100));

    RETURN precioConDescuento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarMiembro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarMiembro`(
    IN idMiembro INT,
    IN nombreMiembro VARCHAR(255),
    IN dniMiembro INT,
    IN fechaNacimiento DATE,
    IN email VARCHAR(255),
    IN celular INT,
    IN contactoEmergencia INT,
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModificarFechaUltimoPago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarFechaUltimoPago`(IN idMiembro INT, IN nuevaFecha DATE)
BEGIN
    UPDATE PAGOS
    SET FECHA_ULTIMO_PAGO = nuevaFecha
    WHERE ID_MIEMBRO = idMiembro;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OrdenarTablaMiembros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OrdenarTablaMiembros`(IN campoOrden VARCHAR(255), IN direccionOrden VARCHAR(10))
BEGIN
    SET @query = CONCAT('SELECT * FROM MIEMBROS ORDER BY ', campoOrden, ' ', direccionOrden);
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_clase_empleado_material`
--

/*!50001 DROP VIEW IF EXISTS `vw_clase_empleado_material`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_clase_empleado_material` AS select `e`.`NOMBRE_EMPLEADO` AS `INSTRUCTOR`,`c`.`NOMBRE_CLASE` AS `CLASE`,`m`.`NOMBRE_MATERIAL` AS `MATERIAL` from ((`clases` `c` left join `empleados` `e` on((`c`.`ID_EMPLEADO` = `e`.`ID_EMPLEADO`))) left join `materiales` `m` on((`c`.`ID_MATERIAL` = `m`.`ID_MATERIAL`))) order by `e`.`NOMBRE_EMPLEADO` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_clases_empleados_hoy`
--

/*!50001 DROP VIEW IF EXISTS `vw_clases_empleados_hoy`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_clases_empleados_hoy` AS select `c`.`NOMBRE_CLASE` AS `CLASE`,concat(cast(`c`.`HORARIO_INICIO` as char charset utf8mb4),'-',cast(`c`.`HORARIO_FIN` as char charset utf8mb4)) AS `HORARIO`,`e`.`NOMBRE_EMPLEADO` AS `INSTRUCTOR` from (`clases` `c` left join `empleados` `e` on((`c`.`ID_EMPLEADO` = `e`.`ID_EMPLEADO`))) where (find_in_set(dayname(now()),`c`.`DIAS`) > 0) order by `c`.`HORARIO_INICIO` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_empleados_puestos`
--

/*!50001 DROP VIEW IF EXISTS `vw_empleados_puestos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_empleados_puestos` AS select `e`.`NOMBRE_EMPLEADO` AS `EMPLEADO`,`p`.`DESCRIPCIÓN` AS `PUESTO` from (`empleados` `e` join `puestos_empleados` `p` on((`e`.`ID_PUESTO` = `p`.`ID_PUESTO`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_materiales_mantenimiento`
--

/*!50001 DROP VIEW IF EXISTS `vw_materiales_mantenimiento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_materiales_mantenimiento` AS select `m`.`NOMBRE_MATERIAL` AS `NOMBRE_MATERIAL`,`m`.`FECHA_MANTENIMIENTO` AS `FECHA_MANTENIMIENTO` from `materiales` `m` where ((`m`.`FECHA_MANTENIMIENTO` is not null) and (`m`.`FECHA_MANTENIMIENTO` < curdate())) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_miembros_pagos_info`
--

/*!50001 DROP VIEW IF EXISTS `vw_miembros_pagos_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_miembros_pagos_info` AS select `m`.`ID_MIEMBRO` AS `ID_MIEMBRO`,`m`.`NOMBRE_MIEMBRO` AS `NOMBRE_MIEMBRO`,`m`.`FECHA_ALTA` AS `FECHA_ALTA`,`p`.`TIPO_MEMBRESIA` AS `TIPO_MEMBRESIA`,`p`.`MONTO` AS `MONTO`,`rp`.`PERIODO` AS `PERIODO` from ((`miembros` `m` left join `pagos` `p` on((`m`.`ID_MIEMBRO` = `p`.`ID_MIEMBRO`))) left join `registro_pagos` `rp` on((`m`.`ID_MIEMBRO` = `rp`.`ID_MIEMBRO`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-02 20:43:41
