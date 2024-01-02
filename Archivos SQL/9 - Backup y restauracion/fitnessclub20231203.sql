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
-- Dumping data for table `clases`
--

LOCK TABLES `clases` WRITE;
/*!40000 ALTER TABLE `clases` DISABLE KEYS */;
INSERT INTO `clases` VALUES (1,'Spinning',8,'Monday, Wednesday, Friday','18:00-19:00',2),(2,'Yoga',7,'Tuesday, Thursday','09:00-10:00',1),(3,'Pilates',7,'Monday, Wednesday','09:00-10:00',5),(4,'Funcional',9,'Monday, Wednesday','11:00-12:00',4),(5,'Fútbol Fit',9,'Thursday, Saturday','18:00-19:00',3);
/*!40000 ALTER TABLE `clases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,2,'Franco Díaz','38555111','1985-03-25','1122334455','frandiaz@email.com','1122334456','2021-06-10',300000.00),(2,5,'Ana López','38555111','1990-11-12','1122334455','lopezana@email.com','1122334456','2022-02-20',200000.00),(3,5,'José Suarez','29555111','1980-11-12','1127334455','josesuarez@email.com','1122334456','2022-02-20',200000.00),(4,2,'Francisca Díaz','38555111','1985-03-25','1152334455','fdiaz@email.com','1121334456','2021-06-10',300000.00),(5,1,'Carla Montana','38555111','1985-03-25','1127334455','cmontana@email.com','1122134456','2021-06-10',350000.00),(6,1,'Florencia Gonzales','38555111','1985-03-25','1122334455','gonzalesflor@email.com','1122134456','2021-06-10',350000.00),(7,3,'Anabela Flores','38555111','1985-03-25','1128334455','floresani@email.com','1122314456','2021-06-10',400000.00),(8,3,'Gustavo Bueno','38555111','1985-03-25','1152534455','gustabueno@email.com','1122134456','2021-06-10',400000.00),(9,3,'Vanina Perez','38555111','1985-03-25','1122734455','VaniPerez@email.com','1112334456','2021-06-10',400000.00),(10,4,'Laura Martinez','38555111','1985-03-25','1126334455','LauritaMartinez@email.com','1124334456','2021-06-10',250000.00);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `materiales`
--

LOCK TABLES `materiales` WRITE;
/*!40000 ALTER TABLE `materiales` DISABLE KEYS */;
INSERT INTO `materiales` VALUES (1,'Equipos para yoga','2022-10-15','2024-01-01'),(2,'Bicicletas','2022-11-15','2024-01-01'),(3,'Pelotas fútbol','2022-11-15','2024-01-01'),(4,'Mancuernas','2022-11-15','2024-01-01'),(5,'Equipos para pilates','2022-11-15','2024-01-01');
/*!40000 ALTER TABLE `materiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `miembros`
--

LOCK TABLES `miembros` WRITE;
/*!40000 ALTER TABLE `miembros` DISABLE KEYS */;
INSERT INTO `miembros` VALUES (1,'Juan Pérez','30123456','1990-03-15','juanperez@email.com','1122334455','1122334456','NO','2023-01-15'),(2,'Carlos González','32123457','1988-08-20','carlosgonzalez@email.com','1122334456','1122334455','SI','2023-02-10'),(3,'Miguel Rodríguez','34123458','1995-05-10','miguelrodriguez@email.com','1122334457','1122334458','NO','2023-03-20'),(4,'María Rodríguez','50123456','1991-02-10','mariarodriguez@email.com','1122334455','1122334456','NO','2023-11-15'),(5,'Laura Fernández','52123457','1989-07-15','laurafernandez@email.com','1122334456','1122334455','SI','2023-12-20'),(6,'Ana López','54123458','1996-04-05','analopez@email.com','1122334457','1122334458','NO','2024-01-10'),(7,'Andrés Fernández','36123459','1977-12-05','andresfernandez@email.com','1122334458','1122334457','SI','2023-04-05'),(8,'Jorge López','38123450','2000-01-25','jorgelopez@email.com','1122334459','1122334460','NO','2023-05-12'),(9,'Sofía Díaz','62123452','1994-08-02','sofiadiaz@email.com','1122334461','1122334462','NO','2024-05-15'),(10,'Isabel Gómez','64123453','1986-12-30','isabelgomez@email.com','1122334462','1122334461','SI','2024-06-02'),(11,'Lionel Messi','30101010','1987-06-24','lio10@email.com','1122334455','1122334456','SI','2023-01-15'),(12,'Miley Cyrus','12345678','1992-11-23','soyhannahmontana@email.com','1122334455','1122334456','SI','2023-12-01');
/*!40000 ALTER TABLE `miembros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `miembros_log`
--

LOCK TABLES `miembros_log` WRITE;
/*!40000 ALTER TABLE `miembros_log` DISABLE KEYS */;
INSERT INTO `miembros_log` VALUES (2,'INSERT',NULL,'Miley Cyrus','12345678','2023-11-22 18:02:28','root@localhost'),(3,'INSERT',12,'Miley Cyrus','12345678','2023-11-22 18:02:28','root@localhost');
/*!40000 ALTER TABLE `miembros_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,'Membresía Mensual',28000.00,'2023-01-15','Efectivo'),(2,'Membresía Anual',200000.00,'2023-02-10','Tarjeta de Crédito'),(3,'Membresía Anual',200000.00,'2023-01-10','Efectivo'),(4,'Membresía Mensual',19500.00,'2023-10-10','Tarjeta de Crédito'),(5,'Membresía Mensual',19500.00,'2023-11-20','Efectivo'),(6,'Membresía Mensual',19500.00,'2023-02-05','Tarjeta de Crédito'),(7,'Membresía Mensual',19500.00,'2023-07-15','Tarjeta de Crédito'),(8,'Membresía Mensual',19500.00,'2023-05-06','Efectivo'),(9,'Membresía Mensual',19500.00,'2023-08-25','Tarjeta de Crédito'),(10,'Membresía Anual',200000.00,'2023-01-15','Tarjeta de Crédito');
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pagos_log`
--

LOCK TABLES `pagos_log` WRITE;
/*!40000 ALTER TABLE `pagos_log` DISABLE KEYS */;
INSERT INTO `pagos_log` VALUES (1,'UPDATE',1,'Membresía Mensual',19500.00,'2023-01-15','Efectivo','2023-11-22 17:48:18','root@localhost'),(2,'UPDATE',1,'Membresía Mensual',19500.00,'2023-01-15','Efectivo','2023-11-22 17:48:18','root@localhost'),(3,'UPDATE',1,'Membresía Mensual',22000.00,'2023-01-15','Efectivo','2023-11-22 17:56:53','root@localhost'),(4,'UPDATE',1,'Membresía Mensual',25000.00,'2023-01-15','Efectivo','2023-11-22 17:56:53','root@localhost'),(5,'UPDATE',1,'Membresía Mensual',25000.00,'2023-01-15','Efectivo','2023-11-28 18:53:55','root@localhost'),(6,'UPDATE',1,'Membresía Mensual',28000.00,'2023-01-15','Efectivo','2023-11-28 18:53:55','root@localhost');
/*!40000 ALTER TABLE `pagos_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `puestos_empleados`
--

LOCK TABLES `puestos_empleados` WRITE;
/*!40000 ALTER TABLE `puestos_empleados` DISABLE KEYS */;
INSERT INTO `puestos_empleados` VALUES (1,'Administración'),(2,'Recepción'),(3,'Profesor'),(4,'Profesor Suplente'),(5,'Empleado de Limpieza');
/*!40000 ALTER TABLE `puestos_empleados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-03 11:26:26
