-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: bdcarrito
-- ------------------------------------------------------
-- Server version	5.7.29-log

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `id_admi` int(11) NOT NULL AUTO_INCREMENT,
  `nom_admi` varchar(45) NOT NULL,
  `appat_admi` varchar(45) NOT NULL,
  `apmat_admi` varchar(45) NOT NULL,
  `fechaNaci_admi` date NOT NULL,
  `dir_admi` varchar(45) NOT NULL,
  `tel_admi` varchar(45) NOT NULL,
  `cel_admi` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  PRIMARY KEY (`id_admi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calcance`
--

DROP TABLE IF EXISTS `calcance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calcance` (
  `id_alcance` int(11) NOT NULL AUTO_INCREMENT,
  `alcance` decimal(5,1) NOT NULL,
  PRIMARY KEY (`id_alcance`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calcance`
--

LOCK TABLES `calcance` WRITE;
/*!40000 ALTER TABLE `calcance` DISABLE KEYS */;
INSERT INTO `calcance` VALUES (1,1.0),(2,1.5),(3,2.0),(4,2.5),(5,3.0);
/*!40000 ALTER TABLE `calcance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ccolores`
--

DROP TABLE IF EXISTS `ccolores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ccolores` (
  `id_color` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_color` varchar(45) NOT NULL,
  PRIMARY KEY (`id_color`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccolores`
--

LOCK TABLES `ccolores` WRITE;
/*!40000 ALTER TABLE `ccolores` DISABLE KEYS */;
INSERT INTO `ccolores` VALUES (1,'Amarillo'),(2,'Azul'),(3,'Azul cielo'),(4,'Blanco'),(5,'Lila'),(6,'Rosa'),(7,'Naranja'),(8,'Negro'),(9,'Rojo'),(10,'Verde');
/*!40000 ALTER TABLE `ccolores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdesc_mic`
--

DROP TABLE IF EXISTS `cdesc_mic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdesc_mic` (
  `id_descmic` int(11) NOT NULL AUTO_INCREMENT,
  `descmic` varchar(180) NOT NULL,
  PRIMARY KEY (`id_descmic`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdesc_mic`
--

LOCK TABLES `cdesc_mic` WRITE;
/*!40000 ALTER TABLE `cdesc_mic` DISABLE KEYS */;
INSERT INTO `cdesc_mic` VALUES (1,'El micrófono direccional es aquel que capta el sonido de direcciones específicas.'),(2,'Un micrófono bidireccional está diseñado para captar el audio igualmente desde la parte delantera que de la trasera del micrófono, sin captar en los laterales.');
/*!40000 ALTER TABLE `cdesc_mic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdescripcion`
--

DROP TABLE IF EXISTS `cdescripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdescripcion` (
  `id_desc` int(11) NOT NULL AUTO_INCREMENT,
  `desc_cuerpo` varchar(280) NOT NULL,
  PRIMARY KEY (`id_desc`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdescripcion`
--

LOCK TABLES `cdescripcion` WRITE;
/*!40000 ALTER TABLE `cdescripcion` DISABLE KEYS */;
INSERT INTO `cdescripcion` VALUES (1,'Los audífonos in-ear, también conocidos en español como intraaurales, intraauditivos o intraauriculares, son aquellos que se meten en el oído. Sus principales características son su pequeño tamaño, lo que resulta en gran portabilidad. Es decir, los puedes llevar a todos lados.'),(2,'Los audífonos on-ear son conocidos en español como supraaurales y están diseñados, como su nombre en inglés lo indica, para utilizarse sobre el oído. Es por eso que este tipo de audífonos suelen ser acompañados de una diadema que los sostiene en su lugar.'),(3,'Los audifonos over-ear son conocidos en español como audífonos alrededor del oído o circumaurales. Esta categoría es definitivamente la que ofrece una mayor calidad de sonido, aunque hay que sacrificar algunas cosas para utilizarlos.');
/*!40000 ALTER TABLE `cdescripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nom_cli` varchar(45) NOT NULL,
  `appat_cli` varchar(45) NOT NULL,
  `apmat_cli` varchar(45) NOT NULL,
  `fechaNaci_cli` date NOT NULL,
  `dir_cli` varchar(45) NOT NULL,
  `diren_cli` varchar(45) NOT NULL,
  `tel_cli` varchar(45) NOT NULL,
  `cel_cli` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Rebeca','asdasd','sdsd','2020-04-29','dsd','sd','5555','555','kjbj','jbjb');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cnombre`
--

DROP TABLE IF EXISTS `cnombre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cnombre` (
  `id_nombre` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_nombre` varchar(45) NOT NULL,
  `id_desc` int(11) NOT NULL,
  PRIMARY KEY (`id_nombre`),
  KEY `Kcuerpodesc_idx` (`id_desc`),
  CONSTRAINT `Kcuerpodesc` FOREIGN KEY (`id_desc`) REFERENCES `cdescripcion` (`id_desc`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cnombre`
--

LOCK TABLES `cnombre` WRITE;
/*!40000 ALTER TABLE `cnombre` DISABLE KEYS */;
INSERT INTO `cnombre` VALUES (1,'IN-EAR',1),(2,'ON-EAR',2),(3,'OVER-EAR',3);
/*!40000 ALTER TABLE `cnombre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `id_compra` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `id_tprod` int(11) NOT NULL,
  `cantidad_compra` int(11) NOT NULL,
  `subtotal_compra` int(11) NOT NULL,
  `total_compra` int(11) NOT NULL,
  `fecha_compra` date NOT NULL,
  PRIMARY KEY (`id_compra`),
  KEY `Ktprod_idx` (`id_tprod`),
  KEY `Kcliente_idx` (`id_cliente`),
  CONSTRAINT `Kcliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Ktprod` FOREIGN KEY (`id_tprod`) REFERENCES `todosproductos` (`id_tprod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conexion`
--

DROP TABLE IF EXISTS `conexion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conexion` (
  `id_conec` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipoconec` int(11) NOT NULL,
  `id_alcance` int(11) NOT NULL,
  `img_conec` varchar(100) NOT NULL,
  `precio_conec` int(11) NOT NULL,
  `stock_conec` int(11) NOT NULL,
  PRIMARY KEY (`id_conec`),
  KEY `Kconec_tipo_idx` (`id_tipoconec`),
  KEY `Kalcance_idx` (`id_alcance`),
  CONSTRAINT `Kalcance` FOREIGN KEY (`id_alcance`) REFERENCES `calcance` (`id_alcance`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `Kconec_tipo` FOREIGN KEY (`id_tipoconec`) REFERENCES `ctipo_conec` (`id_tipoconec`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conexion`
--

LOCK TABLES `conexion` WRITE;
/*!40000 ALTER TABLE `conexion` DISABLE KEYS */;
INSERT INTO `conexion` VALUES (4,2,3,'sdf',12,12);
/*!40000 ALTER TABLE `conexion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controladores`
--

DROP TABLE IF EXISTS `controladores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `controladores` (
  `id_cont` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) NOT NULL,
  `img_contro` varchar(100) NOT NULL,
  `precio_contro` int(11) NOT NULL,
  `stock_contro` int(11) NOT NULL,
  PRIMARY KEY (`id_cont`),
  KEY `Kdesc_contro_idx` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controladores`
--

LOCK TABLES `controladores` WRITE;
/*!40000 ALTER TABLE `controladores` DISABLE KEYS */;
INSERT INTO `controladores` VALUES (4,'Control de volumen independiente, controles de reproducion y contestador de llamadas','dsdsd',10,1000);
/*!40000 ALTER TABLE `controladores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctipo_conec`
--

DROP TABLE IF EXISTS `ctipo_conec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ctipo_conec` (
  `id_tipoconec` int(11) NOT NULL AUTO_INCREMENT,
  `tipoconec` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipoconec`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipo_conec`
--

LOCK TABLES `ctipo_conec` WRITE;
/*!40000 ALTER TABLE `ctipo_conec` DISABLE KEYS */;
INSERT INTO `ctipo_conec` VALUES (1,'Cableado'),(2,'Bluetooth');
/*!40000 ALTER TABLE `ctipo_conec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctipo_mic`
--

DROP TABLE IF EXISTS `ctipo_mic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ctipo_mic` (
  `id_tipomic` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tipo` varchar(45) NOT NULL,
  `id_descmic` int(11) NOT NULL,
  PRIMARY KEY (`id_tipomic`),
  KEY `Kmic_desc_idx` (`id_descmic`),
  CONSTRAINT `Kmic_desc` FOREIGN KEY (`id_descmic`) REFERENCES `cdesc_mic` (`id_descmic`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipo_mic`
--

LOCK TABLES `ctipo_mic` WRITE;
/*!40000 ALTER TABLE `ctipo_mic` DISABLE KEYS */;
INSERT INTO `ctipo_mic` VALUES (1,'direccional',1),(2,'bidireccional',2);
/*!40000 ALTER TABLE `ctipo_mic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuerpo`
--

DROP TABLE IF EXISTS `cuerpo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuerpo` (
  `id_Cuerpo` int(11) NOT NULL AUTO_INCREMENT,
  `id_nombre` int(11) NOT NULL,
  `id_color` int(11) NOT NULL,
  `img_cuerpo` varchar(100) NOT NULL,
  `precio_cuerpo` int(11) NOT NULL,
  `stock_cuerpo` int(11) NOT NULL,
  PRIMARY KEY (`id_Cuerpo`),
  KEY `Kcuerpo_nombre_idx` (`id_nombre`),
  KEY `Kcuerpo_color_idx` (`id_color`),
  CONSTRAINT `Kcuerpo_color` FOREIGN KEY (`id_color`) REFERENCES `ccolores` (`id_color`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `Kcuerpo_nombre` FOREIGN KEY (`id_nombre`) REFERENCES `cnombre` (`id_nombre`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuerpo`
--

LOCK TABLES `cuerpo` WRITE;
/*!40000 ALTER TABLE `cuerpo` DISABLE KEYS */;
INSERT INTO `cuerpo` VALUES (3,1,1,'sds',48,484),(4,2,2,'kknoi',11,111),(5,2,5,'xcz',60,70),(6,1,1,'vsd',66,66),(7,1,1,'nkn',1,45),(8,1,1,'fdf',20,10),(9,1,1,'fdf',20,10),(10,1,1,'fdf',20,10),(11,1,1,'fdf',20,10),(12,3,10,'dad',50,50);
/*!40000 ALTER TABLE `cuerpo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial`
--

DROP TABLE IF EXISTS `historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial` (
  `id_hist` int(11) NOT NULL AUTO_INCREMENT,
  `id_compra` int(11) NOT NULL,
  PRIMARY KEY (`id_hist`),
  KEY `Kcompra_idx` (`id_compra`),
  CONSTRAINT `Kcompra` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id_compra`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial`
--

LOCK TABLES `historial` WRITE;
/*!40000 ALTER TABLE `historial` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `microfono`
--

DROP TABLE IF EXISTS `microfono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `microfono` (
  `id_microfono` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipomic` int(11) NOT NULL,
  `img_mic` varchar(100) NOT NULL,
  `precio_mic` int(11) NOT NULL,
  `stock_mic` int(11) NOT NULL,
  PRIMARY KEY (`id_microfono`),
  KEY `Kmic_tipo_idx` (`id_tipomic`),
  CONSTRAINT `Kmic_tipo` FOREIGN KEY (`id_tipomic`) REFERENCES `ctipo_mic` (`id_tipomic`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `microfono`
--

LOCK TABLES `microfono` WRITE;
/*!40000 ALTER TABLE `microfono` DISABLE KEYS */;
INSERT INTO `microfono` VALUES (2,1,'aa',10,10),(3,1,'ijpo',50,50),(4,2,'cz',110,1);
/*!40000 ALTER TABLE `microfono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todosproductos`
--

DROP TABLE IF EXISTS `todosproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todosproductos` (
  `id_tprod` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_prod` int(11) NOT NULL,
  `id_tipoprod` int(11) NOT NULL,
  PRIMARY KEY (`id_tprod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todosproductos`
--

LOCK TABLES `todosproductos` WRITE;
/*!40000 ALTER TABLE `todosproductos` DISABLE KEYS */;
/*!40000 ALTER TABLE `todosproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bdcarrito'
--

--
-- Dumping routines for database 'bdcarrito'
--
/*!50003 DROP PROCEDURE IF EXISTS `ELiminarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ELiminarCliente`(in id int)
begin
	delete from cliente where id_cliente = id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ELiminarConec` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ELiminarConec`(in id int)
begin
	delete from conexion where id_conec = id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ELiminarContro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ELiminarContro`(in id int)
begin
delete from controladores where id_cont = id ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ELiminarCuerpo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ELiminarCuerpo`(in id int)
begin
delete from cuerpo where id_Cuerpo = id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ELiminarMicros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ELiminarMicros`(in id int)
begin
delete from microfono where id_microfono = id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarCliente`(in nombre varchar(45),in apepat varchar(45),in apemat varchar(45),in fecha date, in direc varchar(45),in direcen varchar(45),in tel varchar(45),in cel varchar(45),in usu varchar(45),in contra varchar(45))
begin
	insert into cliente (nom_cli,appat_cli,apmat_cli,fechaNaci_cli,dir_cli,diren_cli,tel_cli,cel_cli,usuario,contraseña) 
    values (nombre, apepat,apemat,fecha,direc,direcen,tel,cel,usu,contra);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarConexion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarConexion`(in tipo int, in alcance int,in imagen varchar(100), in precio int, in stock int)
begin
	insert into conexion(id_tipoconec,id_alcance,img_conec,precio_conec,stock_conec)
    values (tipo,alcance,imagen,precio,stock);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarControlador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarControlador`(in imagen varchar(100), in precio int, in stock int)
begin
	insert into controladores (descripcion,img_contro,precio_contro,stock_contro)
    values ("Control de volumen independiente, controles de reproducion y contestador de llamadas",imagen,precio,stock);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarCuerpo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarCuerpo`(in nombre int,in color int,in imagen varchar(100), in precio int,stock int)
begin
	insert into cuerpo(id_nombre,id_color,img_cuerpo,precio_cuerpo,stock_cuerpo)
    values (nombre,color,imagen,precio,stock);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarMicro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarMicro`(in tipo int, in imagen varchar(100), in precio int, in stock int)
begin
	insert into microfono(id_tipomic,img_mic,precio_mic,stock_mic)
    values(tipo,imagen,precio,stock);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListaClientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListaClientes`()
begin
select * from cliente;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListaConexiones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListaConexiones`()
begin
	select * from conexion;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListaContro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListaContro`()
begin
select * from controladores;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListaCuerpos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListaCuerpos`()
begin
select * from cuerpo;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListaMicro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListaMicro`()
begin
select * from microfono;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Pepe` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Pepe`()
begin
	select * from cuerpo;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-28  2:18:56
