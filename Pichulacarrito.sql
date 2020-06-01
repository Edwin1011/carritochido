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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,'admin','admin','admin','2020-04-29','admin','123','123','admin','admin');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
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
-- Table structure for table `cimagen_conec`
--

DROP TABLE IF EXISTS `cimagen_conec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cimagen_conec` (
  `id_imagen_conec` int(11) NOT NULL AUTO_INCREMENT,
  `url_imagen` varchar(100) NOT NULL,
  PRIMARY KEY (`id_imagen_conec`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cimagen_conec`
--

LOCK TABLES `cimagen_conec` WRITE;
/*!40000 ALTER TABLE `cimagen_conec` DISABLE KEYS */;
INSERT INTO `cimagen_conec` VALUES (1,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590917065/carrito/cable_f5cxrg.png'),(2,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590917065/carrito/bluethoho_krlrtu.jpg');
/*!40000 ALTER TABLE `cimagen_conec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cimagen_micro`
--

DROP TABLE IF EXISTS `cimagen_micro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cimagen_micro` (
  `id_imagen_Micro` int(11) NOT NULL AUTO_INCREMENT,
  `url_imagen` varchar(100) NOT NULL,
  PRIMARY KEY (`id_imagen_Micro`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cimagen_micro`
--

LOCK TABLES `cimagen_micro` WRITE;
/*!40000 ALTER TABLE `cimagen_micro` DISABLE KEYS */;
INSERT INTO `cimagen_micro` VALUES (1,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590917078/carrito/omnidireccional_i6rrns.png'),(2,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590917078/carrito/bidireccional_kt86hm.png');
/*!40000 ALTER TABLE `cimagen_micro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cimagenes_cuerpo`
--

DROP TABLE IF EXISTS `cimagenes_cuerpo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cimagenes_cuerpo` (
  `id_imagen_cuerpo` int(11) NOT NULL AUTO_INCREMENT,
  `url_imagen` varchar(100) NOT NULL,
  PRIMARY KEY (`id_imagen_cuerpo`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cimagenes_cuerpo`
--

LOCK TABLES `cimagenes_cuerpo` WRITE;
/*!40000 ALTER TABLE `cimagenes_cuerpo` DISABLE KEYS */;
INSERT INTO `cimagenes_cuerpo` VALUES (1,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916448/carrito/cable_amarillo_nrddqy.png'),(2,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916448/carrito/cable_lila_wjrnsk.png'),(3,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916448/carrito/cable_blanco_qk8kdx.png'),(4,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916448/carrito/cable_azulcielo_xzbhsa.png'),(5,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916448/carrito/cable_azul_p2rkpr.png'),(6,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916448/carrito/cable_negro_axhsmg.png'),(7,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916449/carrito/cable_naranja_inag5k.png'),(8,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916449/carrito/cable_rosa_sz9ywu.png'),(9,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916449/carrito/cable_verde_dawuj8.png'),(10,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916449/carrito/cable_rojo_pqh2ke.png'),(11,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916451/carrito/ONEar_negro_fovub3.png'),(12,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916451/carrito/ONEar_azulcielo_nm2zqd.png'),(13,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916452/carrito/ONEar_blanco_h5mawj.png'),(14,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916454/carrito/ONEar_amarillo_xyugoz.png'),(15,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916454/carrito/ONEar_azul_ugxij0.png'),(16,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916454/carrito/ONEar_lila_bji8xd.png'),(17,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916455/carrito/ONEar_rosa_hqao6u.png'),(18,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916455/carrito/ONEar_naranja_qjw50u.png'),(19,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916457/carrito/Over_azulcielo_h3wc06.png'),(20,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916457/carrito/ONEar_rojo_zqwvxn.png'),(21,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916458/carrito/Over_azul_jek04v.png'),(22,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916458/carrito/Over_amarillo_f69f25.png'),(23,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916458/carrito/ONEar_verde_hdttay.png'),(24,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916459/carrito/Over_blanco_keagcq.png'),(25,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916459/carrito/Over_rojo_umgyf3.png'),(26,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916461/carrito/Over_lila_f3lgpl.png'),(27,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916461/carrito/Over_rosa_bwx8af.png'),(28,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916461/carrito/Over_naranja_uk1hvb.png'),(29,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916461/carrito/Over_negro_nzium9.png'),(30,'https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590916461/carrito/Over_verde_patrqh.png');
/*!40000 ALTER TABLE `cimagenes_cuerpo` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Rebeca','asdasd','sdsd','2020-04-29','dsd','sd','5555','555','kjbj','jbjb'),(2,'Edwin','eddi','nin','2003-11-10','jbb','jbj','45','45','edwin','edwin11'),(3,'edwin','redonda','aguilar','2003-11-10','Pimas','Pimas','5531415887','56552091','pepe','pepe11'),(4,'edwin','redonda','aguilar','2003-11-10','Pimas','Pimas','5531415887','56552091','pepe2','pepe11'),(5,'edwin','redonda','aguilar','2003-11-10','Pimas','Pimas','5531415887','56552091','edwin11','edwin11'),(6,'Rebeca','MArtinez','Crescencio','0003-12-31','no se','no se ','5536614128','5536614128','rebe','rebeca'),(7,'Prueba','prueb','prueb','1000-10-10','prueb','prueb','123','123','prueba','prueba');
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
  `desc_nombre` varchar(280) NOT NULL,
  `precio_cuerpo` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id_nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cnombre`
--

LOCK TABLES `cnombre` WRITE;
/*!40000 ALTER TABLE `cnombre` DISABLE KEYS */;
INSERT INTO `cnombre` VALUES (1,'IN-EAR','Los audífonos in-ear, también conocidos en español como intraaurales, intraauditivos o intraauriculares, son aquellos que se meten en el oído. Sus principales características son su pequeño tamaño, lo que resulta en gran portabilidad. Es decir, los puedes llevar a todos lados.',259.99),(2,'ON-EAR','Los audífonos on-ear son conocidos en español como supraaurales y están diseñados, como su nombre en inglés lo indica, para utilizarse sobre el oído. Es por eso que este tipo de audífonos suelen ser acompañados de una diadema que los sostiene en su lugar.',439.99),(3,'OVER-EAR','Los audifonos over-ear son conocidos en español como audífonos alrededor del oído o circumaurales. Esta categoría es definitivamente la que ofrece una mayor calidad de sonido, aunque hay que sacrificar algunas cosas para utilizarlos.',799.99);
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
  `id_producto` int(11) NOT NULL,
  `tipo_prod` int(11) NOT NULL,
  `cantidad_compra` int(11) NOT NULL,
  `subtotal_compra` decimal(8,2) NOT NULL,
  `total_compra` decimal(8,2) NOT NULL,
  `fecha_compra` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_compra`),
  KEY `Kcliente_idx` (`id_cliente`),
  CONSTRAINT `Kcliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (1,1,1,1,10,100.00,100.00,'2020-06-01 06:39:00');
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
  `id_imagen_conec` int(11) NOT NULL,
  `stock_conec` int(11) NOT NULL,
  PRIMARY KEY (`id_conec`),
  KEY `Kconec_imagen_idx` (`id_imagen_conec`),
  KEY `Kconec_tipo_idx` (`id_tipoconec`),
  CONSTRAINT `Kconec_imagen` FOREIGN KEY (`id_imagen_conec`) REFERENCES `cimagen_conec` (`id_imagen_conec`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `Kconec_tipo` FOREIGN KEY (`id_tipoconec`) REFERENCES `ctipo_conec` (`id_tipoconec`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conexion`
--

LOCK TABLES `conexion` WRITE;
/*!40000 ALTER TABLE `conexion` DISABLE KEYS */;
INSERT INTO `conexion` VALUES (2,1,1,18),(5,2,2,41);
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
  `precio_contro` decimal(5,2) NOT NULL,
  `stock_contro` int(11) NOT NULL,
  PRIMARY KEY (`id_cont`),
  KEY `Kdesc_contro_idx` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controladores`
--

LOCK TABLES `controladores` WRITE;
/*!40000 ALTER TABLE `controladores` DISABLE KEYS */;
INSERT INTO `controladores` VALUES (6,'Control de volumen independiente, controles de reproducion y contestador de llamadas','https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590970315/carrito/controladores_3.5_eb2zcq.png',39.99,10);
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
  `precio_conec` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id_tipoconec`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipo_conec`
--

LOCK TABLES `ctipo_conec` WRITE;
/*!40000 ALTER TABLE `ctipo_conec` DISABLE KEYS */;
INSERT INTO `ctipo_conec` VALUES (1,'Cableado',39.99),(2,'Bluetooth',89.99);
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
  `desc_micro` varchar(200) NOT NULL,
  `precio_mic` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id_tipomic`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctipo_mic`
--

LOCK TABLES `ctipo_mic` WRITE;
/*!40000 ALTER TABLE `ctipo_mic` DISABLE KEYS */;
INSERT INTO `ctipo_mic` VALUES (1,'Direccional','El micrófono direccional es aquel que capta el sonido de direcciones específicas.',89.99),(2,'Bidireccional','Un micrófono bidireccional está diseñado para captar el audio igualmente desde la parte delantera que de la trasera del micrófono, sin captar en los laterales.',99.99);
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
  `id_imagen_cuerpo` int(11) NOT NULL,
  `stock_color` int(11) NOT NULL,
  PRIMARY KEY (`id_Cuerpo`),
  KEY `Kcuerpo_nombre_idx` (`id_nombre`),
  KEY `Kcuerpo_imagen_idx` (`id_imagen_cuerpo`),
  KEY `Kcuerpo_color_idx` (`id_color`),
  CONSTRAINT `Kcuerpo_color` FOREIGN KEY (`id_color`) REFERENCES `ccolores` (`id_color`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `Kcuerpo_imagen` FOREIGN KEY (`id_imagen_cuerpo`) REFERENCES `cimagenes_cuerpo` (`id_imagen_cuerpo`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `Kcuerpo_nombre` FOREIGN KEY (`id_nombre`) REFERENCES `cnombre` (`id_nombre`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuerpo`
--

LOCK TABLES `cuerpo` WRITE;
/*!40000 ALTER TABLE `cuerpo` DISABLE KEYS */;
INSERT INTO `cuerpo` VALUES (16,1,1,1,50),(17,1,2,5,51),(18,1,3,4,1),(19,1,4,3,1),(20,1,5,2,1),(21,1,6,8,1),(22,1,7,7,1),(23,1,8,6,1),(24,1,9,10,1),(25,1,10,9,1),(26,2,1,14,1),(27,2,2,15,1),(28,2,3,12,1),(29,2,4,13,1),(30,2,5,16,1),(31,2,6,17,1),(32,2,7,18,11),(33,2,8,11,1),(34,2,9,20,1),(35,2,10,23,1),(36,3,1,22,1),(37,3,2,21,1),(38,3,3,19,1),(39,3,4,24,1),(40,3,5,26,1),(41,3,6,27,1),(42,3,7,28,1),(43,3,8,29,1),(44,3,9,25,1),(45,3,10,30,1);
/*!40000 ALTER TABLE `cuerpo` ENABLE KEYS */;
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
  `id_imagen_Micro` int(11) NOT NULL,
  `stock_micro` int(11) NOT NULL,
  PRIMARY KEY (`id_microfono`),
  KEY `Kmicro_imagen_idx` (`id_imagen_Micro`),
  KEY `Kmicro_tipo_idx` (`id_tipomic`),
  CONSTRAINT `Kmicro_imagen` FOREIGN KEY (`id_imagen_Micro`) REFERENCES `cimagen_micro` (`id_imagen_Micro`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `Kmicro_tipo` FOREIGN KEY (`id_tipomic`) REFERENCES `ctipo_mic` (`id_tipomic`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `microfono`
--

LOCK TABLES `microfono` WRITE;
/*!40000 ALTER TABLE `microfono` DISABLE KEYS */;
INSERT INTO `microfono` VALUES (5,1,1,10),(6,2,2,1);
/*!40000 ALTER TABLE `microfono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bdcarrito'
--

--
-- Dumping routines for database 'bdcarrito'
--
/*!50003 DROP PROCEDURE IF EXISTS `ActCoenc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActCoenc`(in tipo int, in stock int)
begin 
	declare aux int(11);
    declare aux2 int(11);
    declare final int(11);
    set aux = (select stock_conec from conexion where id_tipoconec = tipo);
	set aux2 = stock;
    set final = aux + aux2;
    update conexion set stock_conec =final where id_tipoconec = tipo;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActContro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActContro`(in stock int)
begin
declare aux int(11);
declare aux2 int(11);
    declare final int(11);
    set aux = (select stock_contro from controladores );
	set aux2 = stock;
    set final = aux + aux2;
    update controladores set stock_contro =final ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActMicros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActMicros`(in tipo int, in stock int)
begin
declare aux int(11);
    declare aux2 int(11);
    declare final int(11);
    set aux = (select stock_micro from microfono where id_tipomic = tipo);
	set aux2 = stock;
    set final = aux + aux2;
    update microfono set stock_micro =final where id_tipomic = tipo;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DescColor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DescColor`(in id int)
begin
	select * from ccolores where id_color = id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DescTipoConec` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DescTipoConec`(in id int)
begin
	select * from ctipo_conec where id_tipoconec = id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DesctNombre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DesctNombre`(in id int)
begin
	select * from cnombre where id_nombre = id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DescTNombreMi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DescTNombreMi`(in id int)
begin
	select * from ctipo_mic where id_tipomic = id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
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
/*!50003 DROP PROCEDURE IF EXISTS `Imagen_Conec` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Imagen_Conec`(in id int)
begin
select * from cimagen_conec where id_imagen_conec = id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Imagen_Cuerpo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Imagen_Cuerpo`(in id int)
select * from cimagenes_cuerpo where id_imagen_cuerpo = id ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Imagen_Micro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Imagen_Micro`(in id int)
begin
select * from cimagen_micro where id_imagen_Micro = id;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarConexion`(in tipo int, in imagen int, in stock int)
begin
	insert into conexion(id_tipoconec,id_imagen_conec,stock_conec)
    values (tipo,imagen,stock);
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
    values ("Control de volumen independiente, controles de reproducion y contestador de llamadas","https://res.cloudinary.com/dgvhkv4ng/image/upload/v1590917218/carrito/controladores_k6tdvd.png",precio,stock);
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarCuerpo`(in nombre int,in color int,in imagen int,in stock int)
begin	
	insert into cuerpo(id_nombre,id_color,id_imagen_cuerpo,stock_color)
    values (nombre,color,imagen,stock);
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarMicro`(in tipo int, in imagen int, in stock int)
begin
	insert into microfono(id_tipomic,id_imagen_Micro,stock_micro)
    values(tipo,imagen,stock);
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
/*!50003 DROP PROCEDURE IF EXISTS `prueba` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prueba`(in nombre int, in color int, in stock int)
begin 
	declare aux int(11);
    declare aux2 int(11);
    declare final int(11);
    set aux = (select stock_color from cuerpo where id_nombre = nombre and id_color = color);
	set aux2 = stock;
    set final = aux + aux2;
    update cuerpo set stock_color=final where id_nombre=nombre and id_color = color;
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

-- Dump completed on 2020-06-01  4:38:06
