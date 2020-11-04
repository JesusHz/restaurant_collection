-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: proyecto
-- ------------------------------------------------------
-- Server version	10.3.22-MariaDB-1ubuntu1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `entidades`
--

DROP TABLE IF EXISTS `entidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entidades` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pais` bigint(20) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entidades_id_pais_foreign` (`id_pais`),
  CONSTRAINT `entidades_id_pais_foreign` FOREIGN KEY (`id_pais`) REFERENCES `paises` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entidades`
--

LOCK TABLES `entidades` WRITE;
/*!40000 ALTER TABLE `entidades` DISABLE KEYS */;
INSERT INTO `entidades` VALUES (1,4,'Aguascalientes',1,NULL,NULL),(2,4,'Baja California',1,NULL,NULL),(3,4,'Baja California Sur',1,NULL,NULL),(4,4,'Campeche',1,NULL,NULL),(5,4,'Coahuila de Zaragoza',1,NULL,NULL),(6,4,'Colima',1,NULL,NULL),(7,4,'Chiapas',1,NULL,NULL),(8,4,'Chihuahua',1,NULL,NULL),(9,4,'Ciudad de México',1,NULL,NULL),(10,4,'Durango',1,NULL,NULL),(11,4,'Guanajuato',1,NULL,NULL),(12,4,'Guerrero',1,NULL,NULL),(13,4,'Hidalgo',1,NULL,NULL),(14,4,'Jalisco',1,NULL,NULL),(15,4,'México',1,NULL,NULL),(16,4,'Michoacán de Ocampo',1,NULL,NULL),(17,4,'Morelos',1,NULL,NULL),(18,4,'Nayarit',1,NULL,NULL),(19,4,'Nuevo León',1,NULL,NULL),(20,4,'Oaxaca de Juárez',1,NULL,NULL),(21,4,'Puebla',1,NULL,NULL),(22,4,'Querétaro',1,NULL,NULL),(23,4,'Quintana Roo',1,NULL,NULL),(24,4,'San Luis Potosí',1,NULL,NULL),(25,4,'Sinaloa',1,NULL,NULL),(26,4,'Sonora',1,NULL,NULL),(27,4,'Tabasco',1,NULL,NULL),(28,4,'Tamaulipas',1,NULL,NULL),(29,4,'Tlaxcala',1,NULL,NULL),(30,4,'Veracruz de Ignacio de la Llave',1,NULL,NULL),(31,4,'Yucatán',1,NULL,NULL),(32,4,'Zacatecas',1,NULL,NULL),(33,2,'Berlin1',0,'2020-08-09 10:40:17','2020-08-09 10:56:06'),(34,1,'Nueva york 2',0,'2020-08-09 10:56:21','2020-08-09 10:57:00'),(35,1,'Berlin',0,'2020-08-10 05:03:50','2020-08-10 05:03:50'),(36,1,'Nueva York3',0,'2020-08-11 04:49:16','2020-08-11 04:49:45'),(37,1,'BARCELONA2',0,'2020-08-11 04:56:03','2020-08-11 04:56:31'),(38,2,'PARIS1',0,'2020-08-11 05:09:25','2020-08-11 05:09:46'),(39,11,'Buenos Aires',1,'2020-08-24 05:30:43','2020-08-24 05:30:43'),(40,11,'Cordoba1',1,'2020-08-24 05:35:26','2020-08-24 22:34:17');
/*!40000 ALTER TABLE `entidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos_productos`
--

DROP TABLE IF EXISTS `fotos_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos_productos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `producto_id` bigint(20) unsigned NOT NULL,
  `ruta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fotos_productos_producto_id_foreign` (`producto_id`),
  CONSTRAINT `fotos_productos_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos_productos`
--

LOCK TABLES `fotos_productos` WRITE;
/*!40000 ALTER TABLE `fotos_productos` DISABLE KEYS */;
INSERT INTO `fotos_productos` VALUES (8,2,'../storage/fotografias_productos/12-08-20_05:08:18_img.jpg',0,'2020-08-12 22:30:18','2020-08-13 10:36:30'),(9,3,'../storage/fotografias_productos/12-08-20_05:08:12_manzana.jpg',0,'2020-08-12 22:38:12','2020-08-13 10:36:33'),(10,4,'../storage/fotografias_productos/24-08-20_05:08:19_yt.png',1,'2020-08-12 22:43:47','2020-08-24 22:41:19'),(11,3,'../storage/fotografias_productos/13-08-20_05:08:24_manzana.jpg',0,'2020-08-13 10:38:25','2020-08-13 10:46:49'),(12,3,'../storage/fotografias_productos/13-08-20_05:08:08_manzana.jpg',0,'2020-08-13 10:47:08','2020-08-14 10:48:30'),(13,3,'../storage/fotografias_productos/13-08-20_12:08:57_img.jpg',0,'2020-08-13 17:58:57','2020-08-13 18:22:59'),(14,3,'../storage/fotografias_productos/13-08-20_12:08:51_img.jpg',0,'2020-08-13 17:59:51','2020-08-13 18:22:56'),(15,2,'../storage/fotografias_productos/14-08-20_05:08:33_Screenshot from 2020-08-10 20-22-33.png',0,'2020-08-14 10:45:33','2020-08-14 10:48:28'),(16,3,'../storage/fotografias_productos/14-08-20_05:08:13_manzana.jpg',0,'2020-08-14 10:56:13','2020-08-14 11:01:32'),(17,3,'../storage/fotografias_productos/14-08-20_06:08:14_manzana.jpg',0,'2020-08-14 11:01:14','2020-08-14 11:01:31'),(18,3,'../storage/fotografias_productos/14-08-20_06:08:26_manzana.jpg',1,'2020-08-14 11:03:26','2020-08-14 11:03:26'),(19,5,'../storage/fotografias_productos/24-08-20_12:08:18_manzana.jpg',1,'2020-08-24 05:46:18','2020-08-24 05:46:18'),(20,2,'../storage/fotografias_productos/24-08-20_04:08:20_Screenshot from 2020-08-13 09-51-04.png',1,'2020-08-24 09:27:20','2020-08-24 09:27:20'),(21,2,'../storage/fotografias_productos/24-08-20_05:08:37_Screenshot from 2020-08-13 09-49-48.png',1,'2020-08-24 10:49:38','2020-08-24 10:49:38');
/*!40000 ALTER TABLE `fotos_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `existencia` int(11) NOT NULL,
  `precio_compra` double(9,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `id_categoria` bigint(20) unsigned NOT NULL,
  `id_proveedor` bigint(20) unsigned NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productos_id_categoria_foreign` (`id_categoria`),
  KEY `productos_id_proveedor_foreign` (`id_proveedor`),
  CONSTRAINT `productos_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias_productos` (`id`),
  CONSTRAINT `productos_id_proveedor_foreign` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'MANZANAS','MANZANAS ROJAS',100,1150.00,100,2,1,0,'2020-08-10 03:30:56','2020-08-11 05:18:34'),(2,'BOTELLAS DE AGUA 2323','1LT',271,85.25,20,1,3,1,'2020-08-11 05:18:01','2020-08-25 08:12:41'),(3,'MANZANAS','ROJAS',94,0.60,20,1,3,1,'2020-08-12 18:47:09','2020-08-25 12:24:10'),(4,'Papas','adobadas',28,21.00,14,2,3,1,'2020-08-19 01:32:28','2020-08-25 08:13:31'),(5,'Zanahorias','zanahorias',100,325.00,12,2,5,1,'2020-08-24 05:41:54','2020-08-24 05:41:54');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_compra`
--

DROP TABLE IF EXISTS `detalle_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_compra` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `compra_id` bigint(20) unsigned NOT NULL,
  `producto_id` bigint(20) unsigned NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_compra` double NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `detalle_compra_compra_id_foreign` (`compra_id`),
  KEY `detalle_compra_producto_id_foreign` (`producto_id`),
  CONSTRAINT `detalle_compra_compra_id_foreign` FOREIGN KEY (`compra_id`) REFERENCES `compras` (`id`),
  CONSTRAINT `detalle_compra_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_compra`
--

LOCK TABLES `detalle_compra` WRITE;
/*!40000 ALTER TABLE `detalle_compra` DISABLE KEYS */;
INSERT INTO `detalle_compra` VALUES (10,2,2,12,653.5,1,'2020-08-19 03:57:39','2020-08-24 22:29:03'),(11,2,3,63,98,1,'2020-08-19 03:57:53','2020-08-19 03:57:53'),(12,4,4,123,23,1,'2020-08-24 05:45:20','2020-08-24 23:40:24');
/*!40000 ALTER TABLE `detalle_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos_menu`
--

DROP TABLE IF EXISTS `fotos_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_menu` bigint(20) unsigned NOT NULL,
  `ruta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fotos_menu_id_menu_foreign` (`id_menu`),
  CONSTRAINT `fotos_menu_id_menu_foreign` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos_menu`
--

LOCK TABLES `fotos_menu` WRITE;
/*!40000 ALTER TABLE `fotos_menu` DISABLE KEYS */;
INSERT INTO `fotos_menu` VALUES (1,1,'../storage/fotografias_menu/25-08-20_07:08:01_fondo.jpg',1,'2020-08-10 09:18:56','2020-08-25 12:11:01'),(2,1,'Screenshot from 2020-08-09 19-01-41.png',0,'2020-08-11 05:23:27','2020-08-11 05:23:47'),(3,2,'../storage/fotografias_menu/23-08-20_07:08:48_manzana.jpg',1,'2020-08-24 00:29:48','2020-08-24 00:29:48'),(4,1,'../storage/fotografias_menu/24-08-20_12:08:42_botellas_agua.jpg',1,'2020-08-24 05:46:42','2020-08-24 05:46:42');
/*!40000 ALTER TABLE `fotos_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_pago`
--

DROP TABLE IF EXISTS `tipos_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos_pago` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_pago`
--

LOCK TABLES `tipos_pago` WRITE;
/*!40000 ALTER TABLE `tipos_pago` DISABLE KEYS */;
INSERT INTO `tipos_pago` VALUES (1,'EFECTIVO',1,NULL,NULL),(2,'CHEQUE',0,NULL,'2020-08-11 05:22:27'),(3,'TRANSFERENCIA',1,NULL,NULL),(4,'DEPOSITO',1,NULL,NULL),(5,'cheque1',0,'2020-08-10 08:58:54','2020-08-10 08:58:57'),(6,'CHEQUE5',0,'2020-08-11 05:22:41','2020-08-11 05:22:57'),(7,'Paypal',1,'2020-08-24 05:45:47','2020-08-24 23:40:02');
/*!40000 ALTER TABLE `tipos_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_venta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `venta_id` bigint(20) unsigned NOT NULL,
  `id_menu` bigint(20) unsigned NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` double(9,2) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `detalle_venta_venta_id_foreign` (`venta_id`),
  KEY `detalle_venta_id_menu_foreign` (`id_menu`),
  CONSTRAINT `detalle_venta_id_menu_foreign` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`),
  CONSTRAINT `detalle_venta_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` VALUES (8,1,1,21,111.00,1,'2020-08-11 02:30:29','2020-08-13 00:07:19'),(9,2,1,6,600.00,1,'2020-08-11 05:26:06','2020-08-24 23:33:40'),(10,1,1,21,12.00,1,'2020-08-13 00:05:55','2020-08-13 00:07:26'),(11,2,2,5756,35.00,1,'2020-08-24 05:48:50','2020-08-24 05:48:50'),(12,3,2,12,2323.00,1,'2020-08-24 05:49:11','2020-08-24 23:33:57'),(13,1,1,55555,111.00,1,'2020-08-24 22:31:02','2020-08-24 23:38:23');
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio_venta` double(9,2) NOT NULL,
  `id_tipo_venta` bigint(20) unsigned NOT NULL,
  `id_categoria` bigint(20) unsigned NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_id_tipo_venta_foreign` (`id_tipo_venta`),
  KEY `menu_id_categoria_foreign` (`id_categoria`),
  CONSTRAINT `menu_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias_menu` (`id`),
  CONSTRAINT `menu_id_tipo_venta_foreign` FOREIGN KEY (`id_tipo_venta`) REFERENCES `tipos_venta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Desayuno','Chilaquiles',100.00,1,1,1,'2020-08-10 04:13:02','2020-08-10 04:14:00'),(2,'CHILAQUILES','ROJOS',55.00,1,1,1,'2020-08-11 05:20:08','2020-08-11 05:20:44'),(3,'Quesadillas','Queso',12.00,3,2,1,'2020-08-24 05:43:06','2020-08-24 23:44:08');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_cliente` bigint(20) unsigned NOT NULL,
  `restaurante_id` bigint(20) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `subtotal` double(9,2) NOT NULL,
  `iva` double(9,2) NOT NULL,
  `total` double(9,2) NOT NULL,
  `id_tipo_pago` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ventas_id_cliente_foreign` (`id_cliente`),
  KEY `ventas_restaurante_id_foreign` (`restaurante_id`),
  KEY `ventas_id_tipo_pago_foreign` (`id_tipo_pago`),
  KEY `ventas_user_id_foreign` (`user_id`),
  CONSTRAINT `ventas_id_cliente_foreign` FOREIGN KEY (`id_cliente`) REFERENCES `users` (`id`),
  CONSTRAINT `ventas_id_tipo_pago_foreign` FOREIGN KEY (`id_tipo_pago`) REFERENCES `tipos_pago` (`id`),
  CONSTRAINT `ventas_restaurante_id_foreign` FOREIGN KEY (`restaurante_id`) REFERENCES `restaurantes` (`id`),
  CONSTRAINT `ventas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,1,1,'2020-08-06',121.00,12.00,123456.00,7,1,1,'2020-08-10 11:22:52','2020-08-24 23:38:10'),(2,5,1,'2020-08-07',63.69,5.30,896.00,1,1,1,'2020-08-19 01:20:13','2020-08-19 01:20:13'),(3,17,3,'2020-08-04',456.00,34.00,757.00,3,8,1,'2020-08-24 05:48:31','2020-08-24 05:48:31');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias_menu`
--

DROP TABLE IF EXISTS `categorias_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias_menu`
--

LOCK TABLES `categorias_menu` WRITE;
/*!40000 ALTER TABLE `categorias_menu` DISABLE KEYS */;
INSERT INTO `categorias_menu` VALUES (1,'Desayunos2','Desayunos del dia',1,NULL,'2020-08-24 22:13:46'),(2,'Comidas','Comidas del dia',1,NULL,NULL),(3,'Cenas','Cenas del dia',1,NULL,NULL),(4,'Postres','Postres tradicionales',0,NULL,'2020-08-11 00:19:11'),(5,'Bebidas','Aguas y refrescos',1,NULL,NULL),(6,'dulces','ducles',0,'2020-08-09 12:31:54','2020-08-09 12:32:14'),(7,'INFANTIL','POSTRES',0,'2020-08-11 05:16:16','2020-08-11 05:16:39'),(8,'Infantil','infantil',1,'2020-08-23 23:32:30','2020-08-23 23:32:30'),(9,'Postres','dulces',1,'2020-08-24 05:43:50','2020-08-24 23:41:05');
/*!40000 ALTER TABLE `categorias_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_usuario`
--

DROP TABLE IF EXISTS `tipos_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos_usuario` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_usuario`
--

LOCK TABLES `tipos_usuario` WRITE;
/*!40000 ALTER TABLE `tipos_usuario` DISABLE KEYS */;
INSERT INTO `tipos_usuario` VALUES (1,'Administrador',1,1,NULL,NULL),(2,'Supervisor',2,1,NULL,NULL),(3,'Vendedor',3,1,NULL,NULL),(4,'Cliente',4,1,NULL,NULL),(5,'Empleado2',6,0,'2020-08-09 11:47:31','2020-08-09 11:48:16'),(6,'Empleado3',6,0,'2020-08-11 04:58:49','2020-08-11 04:59:23'),(7,'EMPLEADO',5,0,'2020-08-11 05:11:23','2020-08-11 05:11:44'),(8,'Empleado8',8,1,'2020-08-24 05:39:36','2020-08-24 23:34:19');
/*!40000 ALTER TABLE `tipos_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paises` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clave` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES (1,'Alemania','DE',1,NULL,NULL),(2,'España','ES',1,NULL,NULL),(3,'Estados Unidos','US',1,NULL,NULL),(4,'México','MX',1,NULL,NULL),(5,'Brasilw','bq',0,'2020-08-09 11:06:45','2020-08-09 11:07:14'),(6,'Ecuador2','ED',0,'2020-08-11 04:48:12','2020-08-11 04:48:47'),(7,'COLOMBIA','CO',0,'2020-08-11 04:52:51','2020-08-11 04:53:44'),(8,'COLOMBIA','CM',0,'2020-08-11 04:54:59','2020-08-11 04:55:33'),(9,'FRANCIA','FA',0,'2020-08-11 05:08:47','2020-08-11 05:09:07'),(10,'India','ID',0,'2020-08-23 09:41:06','2020-08-23 09:41:25'),(11,'Argentina','AR',1,'2020-08-24 05:29:13','2020-08-24 05:29:13');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias_productos`
--

DROP TABLE IF EXISTS `categorias_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias_productos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias_productos`
--

LOCK TABLES `categorias_productos` WRITE;
/*!40000 ALTER TABLE `categorias_productos` DISABLE KEYS */;
INSERT INTO `categorias_productos` VALUES (1,'Frutas2','frutas22',1,'2020-08-09 12:41:48','2020-08-24 23:44:23'),(2,'Verduras','verduras',1,'2020-08-09 12:42:03','2020-08-09 12:42:03'),(3,'Carnes','carnes rojas',0,'2020-08-09 12:42:24','2020-08-09 12:42:55'),(4,'AGUA','1 LT',0,'2020-08-11 05:15:10','2020-08-11 05:15:47'),(5,'dulces','dulces',1,'2020-08-23 23:39:06','2020-08-23 23:39:06'),(6,'Refrescos','refrescos',1,'2020-08-24 05:42:25','2020-08-24 05:42:25');
/*!40000 ALTER TABLE `categorias_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rfc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `razon_social` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contacto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pais` bigint(20) unsigned NOT NULL,
  `id_entidad` bigint(20) unsigned NOT NULL,
  `municipio_id` bigint(20) unsigned NOT NULL,
  `cp` int(11) NOT NULL,
  `colonia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proveedores_id_pais_foreign` (`id_pais`),
  KEY `proveedores_id_entidad_foreign` (`id_entidad`),
  KEY `proveedores_municipio_id_foreign` (`municipio_id`),
  CONSTRAINT `proveedores_id_entidad_foreign` FOREIGN KEY (`id_entidad`) REFERENCES `entidades` (`id`),
  CONSTRAINT `proveedores_id_pais_foreign` FOREIGN KEY (`id_pais`) REFERENCES `paises` (`id`),
  CONSTRAINT `proveedores_municipio_id_foreign` FOREIGN KEY (`municipio_id`) REFERENCES `municipios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Proveedor1','AKHAKJDKA','Jesus','Toluca','proveedor@gmail.com','jesus',4,2,12,52044,'toluca','78963214',1,NULL,'2020-08-24 22:54:32'),(2,'Proveedor2','prov1','prov2','metepec','asdad@gmail.com','eduardo',3,2,375,12121,'metepec','12345',0,'2020-08-10 02:00:31','2020-08-10 02:15:20'),(3,'PROVEDOR3','ASDASDFAS','JESUS','TOLUCA','prob@gmail.com','jesus',1,1,39,65498,'toluca','65',1,'2020-08-11 05:02:26','2020-08-11 05:07:59'),(4,'PROVEEDOR5','ADAD','JESUS','METEPEC','prob@gmail.com','EDUARDO',4,2,2376,123,'METEPEC','65456',0,'2020-08-11 05:14:08','2020-08-11 05:14:46'),(5,'PROVEDOR8','9999','9999','adfasdf','prov@gmail.com','99',4,4,22,132,'asdas','123313',1,'2020-08-24 05:40:49','2020-08-24 23:48:16');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_venta`
--

DROP TABLE IF EXISTS `tipos_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos_venta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_venta`
--

LOCK TABLES `tipos_venta` WRITE;
/*!40000 ALTER TABLE `tipos_venta` DISABLE KEYS */;
INSERT INTO `tipos_venta` VALUES (1,'Domicilio1',1,'2020-08-10 02:42:06','2020-08-24 23:40:42'),(2,'PEDIDOS4',0,'2020-08-11 05:17:02','2020-08-11 05:17:20'),(3,'Punto de venta',1,'2020-08-24 05:44:17','2020-08-24 05:44:17');
/*!40000 ALTER TABLE `tipos_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurantes`
--

DROP TABLE IF EXISTS `restaurantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurantes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pais` bigint(20) unsigned NOT NULL,
  `id_entidad` bigint(20) unsigned NOT NULL,
  `municipio_id` bigint(20) unsigned NOT NULL,
  `id_tipo_usu` bigint(20) unsigned NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` int(11) NOT NULL,
  `colonia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `restaurantes_id_pais_foreign` (`id_pais`),
  KEY `restaurantes_id_entidad_foreign` (`id_entidad`),
  KEY `restaurantes_municipio_id_foreign` (`municipio_id`),
  KEY `restaurantes_id_tipo_usu_foreign` (`id_tipo_usu`),
  CONSTRAINT `restaurantes_id_entidad_foreign` FOREIGN KEY (`id_entidad`) REFERENCES `entidades` (`id`),
  CONSTRAINT `restaurantes_id_pais_foreign` FOREIGN KEY (`id_pais`) REFERENCES `paises` (`id`),
  CONSTRAINT `restaurantes_id_tipo_usu_foreign` FOREIGN KEY (`id_tipo_usu`) REFERENCES `tipos_usuario` (`id`),
  CONSTRAINT `restaurantes_municipio_id_foreign` FOREIGN KEY (`municipio_id`) REFERENCES `municipios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurantes`
--

LOCK TABLES `restaurantes` WRITE;
/*!40000 ALTER TABLE `restaurantes` DISABLE KEYS */;
INSERT INTO `restaurantes` VALUES (1,'VIPS1','6849849864',4,15,697,1,'LERMA',5200000,'LERMA','vips@gmail.com','vips','1212132323',1,'2020-08-10 10:35:43','2020-08-10 10:40:17'),(2,'TOKS TOLUCA','2342',4,2,332,1,'TOLUCA',112,'TOLUCA','toks@gmail.com','toks','123',0,'2020-08-11 05:25:21','2020-08-11 05:25:48'),(3,'Toks','123132',4,4,24,1,'Metepec',23,'asda','toks@gmail.com','toks','asasasas',1,'2020-08-24 05:47:58','2020-08-24 23:39:08');
/*!40000 ALTER TABLE `restaurantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compras` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_proveedor` bigint(20) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `subtotal` double(9,2) NOT NULL,
  `iva` double(9,2) NOT NULL,
  `total` double(9,2) NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `compras_id_proveedor_foreign` (`id_proveedor`),
  KEY `compras_user_id_foreign` (`user_id`),
  CONSTRAINT `compras_id_proveedor_foreign` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id`),
  CONSTRAINT `compras_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,1,'2020-08-04',12.00,650.35,8993.66,1,1,'2020-08-10 05:36:20','2020-08-10 05:40:29'),(2,1,'2020-08-04',23.30,5.30,121.50,1,1,'2020-08-10 06:23:53','2020-08-10 06:23:53'),(3,3,'2020-08-12',63.00,5.00,99.00,1,0,'2020-08-11 05:21:14','2020-08-11 05:21:38'),(4,5,'2020-08-04',123.00,12.00,156.00,17,1,'2020-08-24 05:44:52','2020-08-24 05:44:52'),(5,3,'2020-08-11',12.00,1.00,1.00,5,1,'2020-08-24 23:48:38','2020-08-24 23:49:52');
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ap_pat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ap_mat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pais` bigint(20) unsigned NOT NULL,
  `id_entidad` bigint(20) unsigned NOT NULL,
  `municipio_id` bigint(20) unsigned NOT NULL,
  `id_tipo_usu` bigint(20) unsigned NOT NULL,
  `colonia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` int(11) NOT NULL,
  `fecha_naci` date NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_id_pais_foreign` (`id_pais`),
  KEY `users_id_entidad_foreign` (`id_entidad`),
  KEY `users_municipio_id_foreign` (`municipio_id`),
  KEY `users_id_tipo_usu_foreign` (`id_tipo_usu`),
  CONSTRAINT `users_id_entidad_foreign` FOREIGN KEY (`id_entidad`) REFERENCES `entidades` (`id`),
  CONSTRAINT `users_id_pais_foreign` FOREIGN KEY (`id_pais`) REFERENCES `paises` (`id`),
  CONSTRAINT `users_id_tipo_usu_foreign` FOREIGN KEY (`id_tipo_usu`) REFERENCES `tipos_usuario` (`id`),
  CONSTRAINT `users_municipio_id_foreign` FOREIGN KEY (`municipio_id`) REFERENCES `municipios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'eduardo','clemente','hernandez','jesus.e0798@gmail.com','5229068900','lerma',11,39,2463,1,'lerma',52044,'1998-07-20','jech','laksasa',0,NULL,'2020-08-24 23:50:10'),(5,'ANDREA','HERNANDEZ','HERNANDEZ','and@gmail.com','13123','lerma',4,3,17,4,'lerma',12313,'2020-07-28','ande','zdsasdadad',1,'2020-08-14 07:24:16','2020-08-24 23:46:37'),(8,'user','user','user','user@user.com','1212','sdasdda',4,1,1,2,'dfasdfa',6562,'2020-07-28','user','$2y$10$Cq6uuFm.P13.BVGEWBLvXOpcmc3whxbNN6jBVCwDrKz.TJf6JSDPm',1,'2020-08-20 18:50:10','2020-08-20 18:50:10'),(10,'Supervisor','super','super','super@super.com','123456','toluca',4,1,1,2,'toluca',52000,'2020-07-28','super','$2y$10$DVKXwbVI2iUinzidEe2SpOZziHEVRkog39OJTILThmQOYCJWE.fCe',1,'2020-08-21 23:29:19','2020-08-21 23:29:19'),(11,'Vendedor','vend','vend','ven@ven.com','123456','toluca',4,1,1,3,'toluca',52000,'2020-07-28','vendedor','$2y$10$5I62od/M/G7EZfSpVZJLBeEfgzMyvSuC4yTI5k3o61OV7v3wUk78u',1,'2020-08-21 23:33:19','2020-08-21 23:33:19'),(12,'Cliente','client','client','client@gmail.com','123456','toluca',4,1,1,4,'toluca',52000,'2020-07-28','cliente','$2y$10$OyZAWuI4Zuv1sR3Lin9i1e5IL7AKauyQfZJ9fzASLSgXIH6kDfb86',1,'2020-08-21 23:34:31','2020-08-21 23:34:31'),(15,'Manuel','Clemente','Hernandez','manu@gmail.com','123456','1',4,1,1,4,'1',0,'2020-08-13','manu','$2y$10$Ur42z48D9CY2cXed50p1Z.jF1k6ydCQQdonmgIuIZtH13I75cT1FS',1,'2020-08-22 09:37:13','2020-08-22 09:37:13'),(16,'Juan','Hernandez','Perz','admin@gmail.com','9989879798798','adadsfsafsd',4,3,19,1,'asadasd',65461,'2020-08-05','admin','$2y$10$lbTT4KiUdGv.ujuR3WFxd.ntTI/lOg55Bkp128hI7PyZ2SO/zZKIe',1,'2020-08-22 10:45:26','2020-08-22 10:45:26'),(17,'Pedro','Flores','Reyes','pedro@gmail.com','213123','toluca',11,39,2463,1,'toluca',131334,'2020-08-05','pedro','pedro1234',1,'2020-08-24 05:37:41','2020-08-24 05:37:41'),(18,'Jesus','Clemente','Hernandez','jesus.e0798@gmail.com','123456','1',4,1,1,1,'1',0,'1998-07-20','jesus','$2y$10$Cr7EyDFRVdz0HrYNekIO2OyjZx0BNHTq1PX22ocd8Akrh8vkJoEuG',1,'2020-08-25 08:32:08','2020-08-25 08:32:08');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipios`
--

DROP TABLE IF EXISTS `municipios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_entidad` bigint(20) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `municipios_id_entidad_foreign` (`id_entidad`),
  CONSTRAINT `municipios_id_entidad_foreign` FOREIGN KEY (`id_entidad`) REFERENCES `entidades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2464 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipios`
--

LOCK TABLES `municipios` WRITE;
/*!40000 ALTER TABLE `municipios` DISABLE KEYS */;
INSERT INTO `municipios` VALUES (1,1,'Aguascalientes',1,NULL,NULL),(2,1,'San Francisco de los Romo',1,NULL,NULL),(3,1,'El Llano',1,NULL,NULL),(4,1,'Rincón de Romos',1,NULL,NULL),(5,1,'Cosío',1,NULL,NULL),(6,1,'San José de Gracia',1,NULL,NULL),(7,1,'Tepezalá',1,NULL,NULL),(8,1,'Pabellón de Arteaga',1,NULL,NULL),(9,1,'Asientos',1,NULL,NULL),(10,1,'Calvillo',1,NULL,NULL),(11,1,'Jesús María',1,NULL,NULL),(12,2,'Mexicali',1,NULL,NULL),(13,2,'Tecate',1,NULL,NULL),(14,2,'Tijuana',1,NULL,NULL),(15,2,'Playas de Rosarito',1,NULL,NULL),(16,2,'Ensenada',1,NULL,NULL),(17,3,'La Paz',1,NULL,NULL),(18,3,'Los Cabos',1,NULL,NULL),(19,3,'Comondú',1,NULL,NULL),(20,3,'Loreto',1,NULL,NULL),(21,3,'Mulegé',1,NULL,NULL),(22,4,'Campeche',1,NULL,NULL),(23,4,'Carmen',1,NULL,NULL),(24,4,'Palizada',1,NULL,NULL),(25,4,'Candelaria',1,NULL,NULL),(26,4,'Escárcega',1,NULL,NULL),(27,4,'Champotón',1,NULL,NULL),(28,4,'Hopelchén',1,NULL,NULL),(29,4,'Calakmul',1,NULL,NULL),(30,4,'Tenabo',1,NULL,NULL),(31,4,'Hecelchakán',1,NULL,NULL),(32,4,'Calkiní',1,NULL,NULL),(33,5,'Saltillo',1,NULL,NULL),(34,5,'Arteaga',1,NULL,NULL),(35,5,'Juárez',1,NULL,NULL),(36,5,'Progreso',1,NULL,NULL),(37,5,'Escobedo',1,NULL,NULL),(38,5,'San Buenaventura',1,NULL,NULL),(39,5,'Abasolo',1,NULL,NULL),(40,5,'Candela',1,NULL,NULL),(41,5,'Frontera',1,NULL,NULL),(42,5,'Monclova',1,NULL,NULL),(43,5,'Castaños',1,NULL,NULL),(44,5,'Ramos Arizpe',1,NULL,NULL),(45,5,'General Cepeda',1,NULL,NULL),(46,5,'Piedras Negras',1,NULL,NULL),(47,5,'Nava',1,NULL,NULL),(48,5,'Acuña',1,NULL,NULL),(49,5,'Múzquiz',1,NULL,NULL),(50,5,'Jiménez',1,NULL,NULL),(51,5,'Zaragoza',1,NULL,NULL),(52,5,'Morelos',1,NULL,NULL),(53,5,'Allende',1,NULL,NULL),(54,5,'Villa Unión',1,NULL,NULL),(55,5,'Guerrero',1,NULL,NULL),(56,5,'Hidalgo',1,NULL,NULL),(57,5,'Sabinas',1,NULL,NULL),(58,5,'San Juan de Sabinas',1,NULL,NULL),(59,5,'Torreón',1,NULL,NULL),(60,5,'Matamoros',1,NULL,NULL),(61,5,'Viesca',1,NULL,NULL),(62,5,'Ocampo',1,NULL,NULL),(63,5,'Nadadores',1,NULL,NULL),(64,5,'Sierra Mojada',1,NULL,NULL),(65,5,'Cuatro Ciénegas',1,NULL,NULL),(66,5,'Lamadrid',1,NULL,NULL),(67,5,'Sacramento',1,NULL,NULL),(68,5,'San Pedro',1,NULL,NULL),(69,5,'Francisco I. Madero',1,NULL,NULL),(70,5,'Parras',1,NULL,NULL),(71,6,'Colima',1,NULL,NULL),(72,6,'Tecomán',1,NULL,NULL),(73,6,'Manzanillo',1,NULL,NULL),(74,6,'Armería',1,NULL,NULL),(75,6,'Coquimatlán',1,NULL,NULL),(76,6,'Comala',1,NULL,NULL),(77,6,'Cuauhtémoc',1,NULL,NULL),(78,6,'Ixtlahuacán',1,NULL,NULL),(79,6,'Minatitlán',1,NULL,NULL),(80,6,'Villa de Álvarez',1,NULL,NULL),(81,7,'Tuxtla Gutiérrez',1,NULL,NULL),(82,7,'San Fernando',1,NULL,NULL),(83,7,'Berriozábal',1,NULL,NULL),(84,7,'Ocozocoautla de Espinosa',1,NULL,NULL),(85,7,'Suchiapa',1,NULL,NULL),(86,7,'Chiapa de Corzo',1,NULL,NULL),(87,7,'Osumacinta',1,NULL,NULL),(88,7,'San Cristóbal de las Casas',1,NULL,NULL),(89,7,'Chamula',1,NULL,NULL),(90,7,'Ixtapa',1,NULL,NULL),(91,7,'Zinacantán',1,NULL,NULL),(92,7,'Acala',1,NULL,NULL),(93,7,'Chiapilla',1,NULL,NULL),(94,7,'San Lucas',1,NULL,NULL),(95,7,'Teopisca',1,NULL,NULL),(96,7,'Amatenango del Valle',1,NULL,NULL),(97,7,'Chanal',1,NULL,NULL),(98,7,'Oxchuc',1,NULL,NULL),(99,7,'Huixtán',1,NULL,NULL),(100,7,'Tenejapa',1,NULL,NULL),(101,7,'Mitontic',1,NULL,NULL),(102,7,'Reforma',1,NULL,NULL),(103,7,'Juárez',1,NULL,NULL),(104,7,'Pichucalco',1,NULL,NULL),(105,7,'Sunuapa',1,NULL,NULL),(106,7,'Ostuacán',1,NULL,NULL),(107,7,'Francisco León',1,NULL,NULL),(108,7,'Ixtacomitán',1,NULL,NULL),(109,7,'Solosuchiapa',1,NULL,NULL),(110,7,'Ixtapangajoya',1,NULL,NULL),(111,7,'Tecpatán',1,NULL,NULL),(112,7,'Copainalá',1,NULL,NULL),(113,7,'Chicoasén',1,NULL,NULL),(114,7,'Coapilla',1,NULL,NULL),(115,7,'Pantepec',1,NULL,NULL),(116,7,'Tapalapa',1,NULL,NULL),(117,7,'Ocotepec',1,NULL,NULL),(118,7,'Chapultenango',1,NULL,NULL),(119,7,'Amatán',1,NULL,NULL),(120,7,'Huitiupán',1,NULL,NULL),(121,7,'Ixhuatán',1,NULL,NULL),(122,7,'Tapilula',1,NULL,NULL),(123,7,'Rayón',1,NULL,NULL),(124,7,'Pueblo Nuevo Solistahuacán',1,NULL,NULL),(125,7,'Jitotol',1,NULL,NULL),(126,7,'Bochil',1,NULL,NULL),(127,7,'Soyaló',1,NULL,NULL),(128,7,'San Juan Cancuc',1,NULL,NULL),(129,7,'Sabanilla',1,NULL,NULL),(130,7,'Simojovel',1,NULL,NULL),(131,7,'San Andrés Duraznal',1,NULL,NULL),(132,7,'El Bosque',1,NULL,NULL),(133,7,'Chalchihuitán',1,NULL,NULL),(134,7,'Larráinzar',1,NULL,NULL),(135,7,'Santiago el Pinar',1,NULL,NULL),(136,7,'Chenalhó',1,NULL,NULL),(137,7,'Aldama',1,NULL,NULL),(138,7,'Pantelhó',1,NULL,NULL),(139,7,'Sitalá',1,NULL,NULL),(140,7,'Salto de Agua',1,NULL,NULL),(141,7,'Tila',1,NULL,NULL),(142,7,'Tumbalá',1,NULL,NULL),(143,7,'Yajalón',1,NULL,NULL),(144,7,'Ocosingo',1,NULL,NULL),(145,7,'Chilón',1,NULL,NULL),(146,7,'Benemérito de las Américas',1,NULL,NULL),(147,7,'Marqués de Comillas',1,NULL,NULL),(148,7,'Palenque',1,NULL,NULL),(149,7,'La Libertad',1,NULL,NULL),(150,7,'Catazajá',1,NULL,NULL),(151,7,'Comitán de Domínguez',1,NULL,NULL),(152,7,'Tzimol',1,NULL,NULL),(153,7,'Chicomuselo',1,NULL,NULL),(154,7,'Bella Vista',1,NULL,NULL),(155,7,'Frontera Comalapa',1,NULL,NULL),(156,7,'La Trinitaria',1,NULL,NULL),(157,7,'La Independencia',1,NULL,NULL),(158,7,'Maravilla Tenejapa',1,NULL,NULL),(159,7,'Las Margaritas',1,NULL,NULL),(160,7,'Altamirano',1,NULL,NULL),(161,7,'Venustiano Carranza',1,NULL,NULL),(162,7,'Totolapa',1,NULL,NULL),(163,7,'Nicolás Ruíz',1,NULL,NULL),(164,7,'Las Rosas',1,NULL,NULL),(165,7,'La Concordia',1,NULL,NULL),(166,7,'Angel Albino Corzo',1,NULL,NULL),(167,7,'Montecristo de Guerrero',1,NULL,NULL),(168,7,'Socoltenango',1,NULL,NULL),(169,7,'Cintalapa',1,NULL,NULL),(170,7,'Jiquipilas',1,NULL,NULL),(171,7,'Arriaga',1,NULL,NULL),(172,7,'Villaflores',1,NULL,NULL),(173,7,'Tonalá',1,NULL,NULL),(174,7,'Villa Corzo',1,NULL,NULL),(175,7,'Pijijiapan',1,NULL,NULL),(176,7,'Mapastepec',1,NULL,NULL),(177,7,'Acapetahua',1,NULL,NULL),(178,7,'Acacoyagua',1,NULL,NULL),(179,7,'Escuintla',1,NULL,NULL),(180,7,'Villa Comaltitlán',1,NULL,NULL),(181,7,'Huixtla',1,NULL,NULL),(182,7,'Mazatán',1,NULL,NULL),(183,7,'Huehuetán',1,NULL,NULL),(184,7,'Tuzantán',1,NULL,NULL),(185,7,'Tapachula',1,NULL,NULL),(186,7,'Suchiate',1,NULL,NULL),(187,7,'Frontera Hidalgo',1,NULL,NULL),(188,7,'Metapa',1,NULL,NULL),(189,7,'Tuxtla Chico',1,NULL,NULL),(190,7,'Unión Juárez',1,NULL,NULL),(191,7,'Cacahoatán',1,NULL,NULL),(192,7,'Motozintla',1,NULL,NULL),(193,7,'Mazapa de Madero',1,NULL,NULL),(194,7,'Amatenango de la Frontera',1,NULL,NULL),(195,7,'Bejucal de Ocampo',1,NULL,NULL),(196,7,'La Grandeza',1,NULL,NULL),(197,7,'El Porvenir',1,NULL,NULL),(198,7,'Siltepec',1,NULL,NULL),(199,8,'Chihuahua',1,NULL,NULL),(200,8,'Cuauhtémoc',1,NULL,NULL),(201,8,'Riva Palacio',1,NULL,NULL),(202,8,'Aquiles Serdán',1,NULL,NULL),(203,8,'Bachíniva',1,NULL,NULL),(204,8,'Guerrero',1,NULL,NULL),(205,8,'Nuevo Casas Grandes',1,NULL,NULL),(206,8,'Ascensión',1,NULL,NULL),(207,8,'Janos',1,NULL,NULL),(208,8,'Casas Grandes',1,NULL,NULL),(209,8,'Galeana',1,NULL,NULL),(210,8,'Buenaventura',1,NULL,NULL),(211,8,'Gómez Farías',1,NULL,NULL),(212,8,'Ignacio Zaragoza',1,NULL,NULL),(213,8,'Madera',1,NULL,NULL),(214,8,'Namiquipa',1,NULL,NULL),(215,8,'Temósachic',1,NULL,NULL),(216,8,'Matachí',1,NULL,NULL),(217,8,'Juárez',1,NULL,NULL),(218,8,'Guadalupe',1,NULL,NULL),(219,8,'Praxedis G. Guerrero',1,NULL,NULL),(220,8,'Ahumada',1,NULL,NULL),(221,8,'Coyame del Sotol',1,NULL,NULL),(222,8,'Ojinaga',1,NULL,NULL),(223,8,'Aldama',1,NULL,NULL),(224,8,'Julimes',1,NULL,NULL),(225,8,'Manuel Benavides',1,NULL,NULL),(226,8,'Delicias',1,NULL,NULL),(227,8,'Rosales',1,NULL,NULL),(228,8,'Meoqui',1,NULL,NULL),(229,8,'Dr. Belisario Domínguez',1,NULL,NULL),(230,8,'Satevó',1,NULL,NULL),(231,8,'San Francisco de Borja',1,NULL,NULL),(232,8,'Nonoava',1,NULL,NULL),(233,8,'Guachochi',1,NULL,NULL),(234,8,'Bocoyna',1,NULL,NULL),(235,8,'Cusihuiriachi',1,NULL,NULL),(236,8,'Gran Morelos',1,NULL,NULL),(237,8,'Santa Isabel',1,NULL,NULL),(238,8,'Carichí',1,NULL,NULL),(239,8,'Uruachi',1,NULL,NULL),(240,8,'Ocampo',1,NULL,NULL),(241,8,'Moris',1,NULL,NULL),(242,8,'Chínipas',1,NULL,NULL),(243,8,'Maguarichi',1,NULL,NULL),(244,8,'Guazapares',1,NULL,NULL),(245,8,'Batopilas',1,NULL,NULL),(246,8,'Urique',1,NULL,NULL),(247,8,'Morelos',1,NULL,NULL),(248,8,'Guadalupe y Calvo',1,NULL,NULL),(249,8,'San Francisco del Oro',1,NULL,NULL),(250,8,'Rosario',1,NULL,NULL),(251,8,'Huejotitán',1,NULL,NULL),(252,8,'El Tule',1,NULL,NULL),(253,8,'Balleza',1,NULL,NULL),(254,8,'Santa Bárbara',1,NULL,NULL),(255,8,'Camargo',1,NULL,NULL),(256,8,'Saucillo',1,NULL,NULL),(257,8,'Valle de Zaragoza',1,NULL,NULL),(258,8,'La Cruz',1,NULL,NULL),(259,8,'San Francisco de Conchos',1,NULL,NULL),(260,8,'Hidalgo del Parral',1,NULL,NULL),(261,8,'Allende',1,NULL,NULL),(262,8,'López',1,NULL,NULL),(263,8,'Matamoros',1,NULL,NULL),(264,8,'Jiménez',1,NULL,NULL),(265,8,'Coronado',1,NULL,NULL),(266,9,'Álvaro Obregón',1,NULL,NULL),(267,9,'Azcapotzalco',1,NULL,NULL),(268,9,'Benito Juárez',1,NULL,NULL),(269,9,'Coyoacán',1,NULL,NULL),(270,9,'Cuajimalpa de Morelos',1,NULL,NULL),(271,9,'Cuauhtémoc',1,NULL,NULL),(272,9,'Gustavo A. Madero',1,NULL,NULL),(273,9,'Iztacalco',1,NULL,NULL),(274,9,'Iztapalapa',1,NULL,NULL),(275,9,'La Magdalena Contreras',1,NULL,NULL),(276,9,'Miguel Hidalgo',1,NULL,NULL),(277,9,'Milpa Alta',1,NULL,NULL),(278,9,'Tláhuac',1,NULL,NULL),(279,9,'Tlalpan',1,NULL,NULL),(280,9,'Venustiano Carranza',1,NULL,NULL),(281,9,'Xochimilco',1,NULL,NULL),(282,10,'Durango',1,NULL,NULL),(283,10,'Canatlán',1,NULL,NULL),(284,10,'Nuevo Ideal',1,NULL,NULL),(285,10,'Coneto de Comonfort',1,NULL,NULL),(286,10,'San Juan del Río',1,NULL,NULL),(287,10,'Canelas',1,NULL,NULL),(288,10,'Topia',1,NULL,NULL),(289,10,'Tamazula',1,NULL,NULL),(290,10,'Santiago Papasquiaro',1,NULL,NULL),(291,10,'Otáez',1,NULL,NULL),(292,10,'San Dimas',1,NULL,NULL),(293,10,'Guadalupe Victoria',1,NULL,NULL),(294,10,'Peñón Blanco',1,NULL,NULL),(295,10,'Pánuco de Coronado',1,NULL,NULL),(296,10,'Poanas',1,NULL,NULL),(297,10,'Nombre de Dios',1,NULL,NULL),(298,10,'Vicente Guerrero',1,NULL,NULL),(299,10,'Súchil',1,NULL,NULL),(300,10,'Pueblo Nuevo',1,NULL,NULL),(301,10,'Mezquital',1,NULL,NULL),(302,10,'Gómez Palacio',1,NULL,NULL),(303,10,'Lerdo',1,NULL,NULL),(304,10,'Mapimí',1,NULL,NULL),(305,10,'Tlahualilo',1,NULL,NULL),(306,10,'Hidalgo',1,NULL,NULL),(307,10,'Ocampo',1,NULL,NULL),(308,10,'Guanaceví',1,NULL,NULL),(309,10,'San Bernardo',1,NULL,NULL),(310,10,'Indé',1,NULL,NULL),(311,10,'San Pedro del Gallo',1,NULL,NULL),(312,10,'Tepehuanes',1,NULL,NULL),(313,10,'El Oro',1,NULL,NULL),(314,10,'Nazas',1,NULL,NULL),(315,10,'San Luis del Cordero',1,NULL,NULL),(316,10,'Rodeo',1,NULL,NULL),(317,10,'Cuencamé',1,NULL,NULL),(318,10,'Santa Clara',1,NULL,NULL),(319,10,'San Juan de Guadalupe',1,NULL,NULL),(320,10,'General Simón Bolívar',1,NULL,NULL),(321,11,'Guanajuato',1,NULL,NULL),(322,11,'Silao de la Victoria',1,NULL,NULL),(323,11,'Romita',1,NULL,NULL),(324,11,'San Francisco del Rincón',1,NULL,NULL),(325,11,'Purísima del Rincón',1,NULL,NULL),(326,11,'Manuel Doblado',1,NULL,NULL),(327,11,'Irapuato',1,NULL,NULL),(328,11,'Salamanca',1,NULL,NULL),(329,11,'Pueblo Nuevo',1,NULL,NULL),(330,11,'Pénjamo',1,NULL,NULL),(331,11,'Cuerámaro',1,NULL,NULL),(332,11,'Abasolo',1,NULL,NULL),(333,11,'Huanímaro',1,NULL,NULL),(334,11,'León',1,NULL,NULL),(335,11,'San Felipe',1,NULL,NULL),(336,11,'Ocampo',1,NULL,NULL),(337,11,'San Miguel de Allende',1,NULL,NULL),(338,11,'Dolores Hidalgo Cuna de la Independencia Nacional',1,NULL,NULL),(339,11,'San Diego de la Unión',1,NULL,NULL),(340,11,'San Luis de la Paz',1,NULL,NULL),(341,11,'Victoria',1,NULL,NULL),(342,11,'Xichú',1,NULL,NULL),(343,11,'Atarjea',1,NULL,NULL),(344,11,'Santa Catarina',1,NULL,NULL),(345,11,'Doctor Mora',1,NULL,NULL),(346,11,'Tierra Blanca',1,NULL,NULL),(347,11,'San José Iturbide',1,NULL,NULL),(348,11,'Celaya',1,NULL,NULL),(349,11,'Apaseo el Grande',1,NULL,NULL),(350,11,'Comonfort',1,NULL,NULL),(351,11,'Santa Cruz de Juventino Rosas',1,NULL,NULL),(352,11,'Villagrán',1,NULL,NULL),(353,11,'Cortazar',1,NULL,NULL),(354,11,'Valle de Santiago',1,NULL,NULL),(355,11,'Jaral del Progreso',1,NULL,NULL),(356,11,'Apaseo el Alto',1,NULL,NULL),(357,11,'Jerécuaro',1,NULL,NULL),(358,11,'Coroneo',1,NULL,NULL),(359,11,'Acámbaro',1,NULL,NULL),(360,11,'Tarimoro',1,NULL,NULL),(361,11,'Tarandacuao',1,NULL,NULL),(362,11,'Moroleón',1,NULL,NULL),(363,11,'Salvatierra',1,NULL,NULL),(364,11,'Yuriria',1,NULL,NULL),(365,11,'Santiago Maravatío',1,NULL,NULL),(366,11,'Uriangato',1,NULL,NULL),(367,12,'Chilpancingo de los Bravo',1,NULL,NULL),(368,12,'General Heliodoro Castillo',1,NULL,NULL),(369,12,'Leonardo Bravo',1,NULL,NULL),(370,12,'Tixtla de Guerrero',1,NULL,NULL),(371,12,'Ayutla de los Libres',1,NULL,NULL),(372,12,'Mochitlán',1,NULL,NULL),(373,12,'Quechultenango',1,NULL,NULL),(374,12,'Tecoanapa',1,NULL,NULL),(375,12,'Acapulco de Juárez',1,NULL,NULL),(376,12,'Juan R. Escudero',1,NULL,NULL),(377,12,'San Marcos',1,NULL,NULL),(378,12,'Iguala de la Independencia',1,NULL,NULL),(379,12,'Huitzuco de los Figueroa',1,NULL,NULL),(380,12,'Tepecoacuilco de Trujano',1,NULL,NULL),(381,12,'Eduardo Neri',1,NULL,NULL),(382,12,'Taxco de Alarcón',1,NULL,NULL),(383,12,'Buenavista de Cuéllar',1,NULL,NULL),(384,12,'Tetipac',1,NULL,NULL),(385,12,'Pilcaya',1,NULL,NULL),(386,12,'Teloloapan',1,NULL,NULL),(387,12,'Ixcateopan de Cuauhtémoc',1,NULL,NULL),(388,12,'Pedro Ascencio Alquisiras',1,NULL,NULL),(389,12,'General Canuto A. Neri',1,NULL,NULL),(390,12,'Arcelia',1,NULL,NULL),(391,12,'Apaxtla',1,NULL,NULL),(392,12,'Cuetzala del Progreso',1,NULL,NULL),(393,12,'Cocula',1,NULL,NULL),(394,12,'Tlapehuala',1,NULL,NULL),(395,12,'Cutzamala de Pinzón',1,NULL,NULL),(396,12,'Pungarabato',1,NULL,NULL),(397,12,'Tlalchapa',1,NULL,NULL),(398,12,'Coyuca de Catalán',1,NULL,NULL),(399,12,'Ajuchitlán del Progreso',1,NULL,NULL),(400,12,'Zirándaro',1,NULL,NULL),(401,12,'San Miguel Totolapan',1,NULL,NULL),(402,12,'La Unión de Isidoro Montes de Oca',1,NULL,NULL),(403,12,'Petatlán',1,NULL,NULL),(404,12,'Coahuayutla de José María Izazaga',1,NULL,NULL),(405,12,'Zihuatanejo de Azueta',1,NULL,NULL),(406,12,'Técpan de Galeana',1,NULL,NULL),(407,12,'Atoyac de Álvarez',1,NULL,NULL),(408,12,'Benito Juárez',1,NULL,NULL),(409,12,'Coyuca de Benítez',1,NULL,NULL),(410,12,'Olinalá',1,NULL,NULL),(411,12,'Atenango del Río',1,NULL,NULL),(412,12,'Copalillo',1,NULL,NULL),(413,12,'Cualác',1,NULL,NULL),(414,12,'Chilapa de Álvarez',1,NULL,NULL),(415,12,'José Joaquín de Herrera',1,NULL,NULL),(416,12,'Ahuacuotzingo',1,NULL,NULL),(417,12,'Zitlala',1,NULL,NULL),(418,12,'Mártir de Cuilapan',1,NULL,NULL),(419,12,'Huamuxtitlán',1,NULL,NULL),(420,12,'Xochihuehuetlán',1,NULL,NULL),(421,12,'Alpoyeca',1,NULL,NULL),(422,12,'Tlapa de Comonfort',1,NULL,NULL),(423,12,'Tlalixtaquilla de Maldonado',1,NULL,NULL),(424,12,'Xalpatláhuac',1,NULL,NULL),(425,12,'Zapotitlán Tablas',1,NULL,NULL),(426,12,'Acatepec',1,NULL,NULL),(427,12,'Atlixtac',1,NULL,NULL),(428,12,'Copanatoyac',1,NULL,NULL),(429,12,'Malinaltepec',1,NULL,NULL),(430,12,'Iliatenco',1,NULL,NULL),(431,12,'Tlacoapa',1,NULL,NULL),(432,12,'Atlamajalcingo del Monte',1,NULL,NULL),(433,12,'San Luis Acatlán',1,NULL,NULL),(434,12,'Metlatónoc',1,NULL,NULL),(435,12,'Cochoapa el Grande',1,NULL,NULL),(436,12,'Alcozauca de Guerrero',1,NULL,NULL),(437,12,'Ometepec',1,NULL,NULL),(438,12,'Tlacoachistlahuaca',1,NULL,NULL),(439,12,'Xochistlahuaca',1,NULL,NULL),(440,12,'Florencio Villarreal',1,NULL,NULL),(441,12,'Cuautepec',1,NULL,NULL),(442,12,'Copala',1,NULL,NULL),(443,12,'Azoyú',1,NULL,NULL),(444,12,'Juchitán',1,NULL,NULL),(445,12,'Marquelia',1,NULL,NULL),(446,12,'Cuajinicuilapa',1,NULL,NULL),(447,12,'Igualapa',1,NULL,NULL),(448,13,'Pachuca de Soto',1,NULL,NULL),(449,13,'Mineral del Chico',1,NULL,NULL),(450,13,'Mineral del Monte',1,NULL,NULL),(451,13,'Ajacuba',1,NULL,NULL),(452,13,'San Agustín Tlaxiaca',1,NULL,NULL),(453,13,'Mineral de la Reforma',1,NULL,NULL),(454,13,'Zapotlán de Juárez',1,NULL,NULL),(455,13,'Jacala de Ledezma',1,NULL,NULL),(456,13,'Pisaflores',1,NULL,NULL),(457,13,'Pacula',1,NULL,NULL),(458,13,'La Misión',1,NULL,NULL),(459,13,'Chapulhuacán',1,NULL,NULL),(460,13,'Ixmiquilpan',1,NULL,NULL),(461,13,'Zimapán',1,NULL,NULL),(462,13,'Nicolás Flores',1,NULL,NULL),(463,13,'Cardonal',1,NULL,NULL),(464,13,'Tasquillo',1,NULL,NULL),(465,13,'Alfajayucan',1,NULL,NULL),(466,13,'Huichapan',1,NULL,NULL),(467,13,'Tecozautla',1,NULL,NULL),(468,13,'Nopala de Villagrán',1,NULL,NULL),(469,13,'Actopan',1,NULL,NULL),(470,13,'Santiago de Anaya',1,NULL,NULL),(471,13,'San Salvador',1,NULL,NULL),(472,13,'Francisco I. Madero',1,NULL,NULL),(473,13,'El Arenal',1,NULL,NULL),(474,13,'Mixquiahuala de Juárez',1,NULL,NULL),(475,13,'Progreso de Obregón',1,NULL,NULL),(476,13,'Chilcuautla',1,NULL,NULL),(477,13,'Tezontepec de Aldama',1,NULL,NULL),(478,13,'Tlahuelilpan',1,NULL,NULL),(479,13,'Tula de Allende',1,NULL,NULL),(480,13,'Tepeji del Río de Ocampo',1,NULL,NULL),(481,13,'Chapantongo',1,NULL,NULL),(482,13,'Tepetitlán',1,NULL,NULL),(483,13,'Tetepango',1,NULL,NULL),(484,13,'Tlaxcoapan',1,NULL,NULL),(485,13,'Atitalaquia',1,NULL,NULL),(486,13,'Atotonilco de Tula',1,NULL,NULL),(487,13,'Huejutla de Reyes',1,NULL,NULL),(488,13,'San Felipe Orizatlán',1,NULL,NULL),(489,13,'Jaltocán',1,NULL,NULL),(490,13,'Huautla',1,NULL,NULL),(491,13,'Atlapexco',1,NULL,NULL),(492,13,'Huazalingo',1,NULL,NULL),(493,13,'Yahualica',1,NULL,NULL),(494,13,'Xochiatipan',1,NULL,NULL),(495,13,'Molango de Escamilla',1,NULL,NULL),(496,13,'Tepehuacán de Guerrero',1,NULL,NULL),(497,13,'Lolotla',1,NULL,NULL),(498,13,'Tlanchinol',1,NULL,NULL),(499,13,'Tlahuiltepa',1,NULL,NULL),(500,13,'Juárez Hidalgo',1,NULL,NULL),(501,13,'Zacualtipán de Ángeles',1,NULL,NULL),(502,13,'Calnali',1,NULL,NULL),(503,13,'Xochicoatlán',1,NULL,NULL),(504,13,'Tianguistengo',1,NULL,NULL),(505,13,'Atotonilco el Grande',1,NULL,NULL),(506,13,'Eloxochitlán',1,NULL,NULL),(507,13,'Metztitlán',1,NULL,NULL),(508,13,'San Agustín Metzquititlán',1,NULL,NULL),(509,13,'Metepec',1,NULL,NULL),(510,13,'Huehuetla',1,NULL,NULL),(511,13,'San Bartolo Tutotepec',1,NULL,NULL),(512,13,'Agua Blanca de Iturbide',1,NULL,NULL),(513,13,'Tenango de Doria',1,NULL,NULL),(514,13,'Huasca de Ocampo',1,NULL,NULL),(515,13,'Acatlán',1,NULL,NULL),(516,13,'Omitlán de Juárez',1,NULL,NULL),(517,13,'Epazoyucan',1,NULL,NULL),(518,13,'Tulancingo de Bravo',1,NULL,NULL),(519,13,'Acaxochitlán',1,NULL,NULL),(520,13,'Cuautepec de Hinojosa',1,NULL,NULL),(521,13,'Santiago Tulantepec de Lugo Guerrero',1,NULL,NULL),(522,13,'Singuilucan',1,NULL,NULL),(523,13,'Tizayuca',1,NULL,NULL),(524,13,'Zempoala',1,NULL,NULL),(525,13,'Tolcayuca',1,NULL,NULL),(526,13,'Villa de Tezontepec',1,NULL,NULL),(527,13,'Apan',1,NULL,NULL),(528,13,'Tlanalapa',1,NULL,NULL),(529,13,'Almoloya',1,NULL,NULL),(530,13,'Emiliano Zapata',1,NULL,NULL),(531,13,'Tepeapulco',1,NULL,NULL),(532,14,'Guadalajara',1,NULL,NULL),(533,14,'Zapopan',1,NULL,NULL),(534,14,'San Cristóbal de la Barranca',1,NULL,NULL),(535,14,'Ixtlahuacán del Río',1,NULL,NULL),(536,14,'Tala',1,NULL,NULL),(537,14,'El Arenal',1,NULL,NULL),(538,14,'Amatitán',1,NULL,NULL),(539,14,'Tonalá',1,NULL,NULL),(540,14,'Zapotlanejo',1,NULL,NULL),(541,14,'Acatic',1,NULL,NULL),(542,14,'Cuquío',1,NULL,NULL),(543,14,'San Pedro Tlaquepaque',1,NULL,NULL),(544,14,'Tlajomulco de Zúñiga',1,NULL,NULL),(545,14,'El Salto',1,NULL,NULL),(546,14,'Acatlán de Juárez',1,NULL,NULL),(547,14,'Villa Corona',1,NULL,NULL),(548,14,'Zacoalco de Torres',1,NULL,NULL),(549,14,'Atemajac de Brizuela',1,NULL,NULL),(550,14,'Jocotepec',1,NULL,NULL),(551,14,'Ixtlahuacán de los Membrillos',1,NULL,NULL),(552,14,'Juanacatlán',1,NULL,NULL),(553,14,'Chapala',1,NULL,NULL),(554,14,'Poncitlán',1,NULL,NULL),(555,14,'Zapotlán del Rey',1,NULL,NULL),(556,14,'Huejuquilla el Alto',1,NULL,NULL),(557,14,'Mezquitic',1,NULL,NULL),(558,14,'Villa Guerrero',1,NULL,NULL),(559,14,'Bolaños',1,NULL,NULL),(560,14,'Totatiche',1,NULL,NULL),(561,14,'Colotlán',1,NULL,NULL),(562,14,'Santa María de los Ángeles',1,NULL,NULL),(563,14,'Huejúcar',1,NULL,NULL),(564,14,'Chimaltitán',1,NULL,NULL),(565,14,'San Martín de Bolaños',1,NULL,NULL),(566,14,'Tequila',1,NULL,NULL),(567,14,'Hostotipaquillo',1,NULL,NULL),(568,14,'Magdalena',1,NULL,NULL),(569,14,'Etzatlán',1,NULL,NULL),(570,14,'San Marcos',1,NULL,NULL),(571,14,'San Juanito de Escobedo',1,NULL,NULL),(572,14,'Ameca',1,NULL,NULL),(573,14,'Ahualulco de Mercado',1,NULL,NULL),(574,14,'Teuchitlán',1,NULL,NULL),(575,14,'San Martín Hidalgo',1,NULL,NULL),(576,14,'Guachinango',1,NULL,NULL),(577,14,'Mixtlán',1,NULL,NULL),(578,14,'Mascota',1,NULL,NULL),(579,14,'San Sebastián del Oeste',1,NULL,NULL),(580,14,'San Juan de los Lagos',1,NULL,NULL),(581,14,'Jalostotitlán',1,NULL,NULL),(582,14,'San Miguel el Alto',1,NULL,NULL),(583,14,'San Julián',1,NULL,NULL),(584,14,'Arandas',1,NULL,NULL),(585,14,'San Ignacio Cerro Gordo',1,NULL,NULL),(586,14,'Teocaltiche',1,NULL,NULL),(587,14,'Villa Hidalgo',1,NULL,NULL),(588,14,'Encarnación de Díaz',1,NULL,NULL),(589,14,'Yahualica de González Gallo',1,NULL,NULL),(590,14,'Mexticacán',1,NULL,NULL),(591,14,'Cañadas de Obregón',1,NULL,NULL),(592,14,'Valle de Guadalupe',1,NULL,NULL),(593,14,'Lagos de Moreno',1,NULL,NULL),(594,14,'Ojuelos de Jalisco',1,NULL,NULL),(595,14,'Unión de San Antonio',1,NULL,NULL),(596,14,'San Diego de Alejandría',1,NULL,NULL),(597,14,'Tepatitlán de Morelos',1,NULL,NULL),(598,14,'Tototlán',1,NULL,NULL),(599,14,'Atotonilco el Alto',1,NULL,NULL),(600,14,'Ocotlán',1,NULL,NULL),(601,14,'Jamay',1,NULL,NULL),(602,14,'La Barca',1,NULL,NULL),(603,14,'Ayotlán',1,NULL,NULL),(604,14,'Jesús María',1,NULL,NULL),(605,14,'Degollado',1,NULL,NULL),(606,14,'Unión de Tula',1,NULL,NULL),(607,14,'Ayutla',1,NULL,NULL),(608,14,'Atenguillo',1,NULL,NULL),(609,14,'Cuautla',1,NULL,NULL),(610,14,'Atengo',1,NULL,NULL),(611,14,'Talpa de Allende',1,NULL,NULL),(612,14,'Puerto Vallarta',1,NULL,NULL),(613,14,'Cabo Corrientes',1,NULL,NULL),(614,14,'Tomatlán',1,NULL,NULL),(615,14,'Cocula',1,NULL,NULL),(616,14,'Tecolotlán',1,NULL,NULL),(617,14,'Tenamaxtlán',1,NULL,NULL),(618,14,'Juchitlán',1,NULL,NULL),(619,14,'Chiquilistlán',1,NULL,NULL),(620,14,'Ejutla',1,NULL,NULL),(621,14,'El Limón',1,NULL,NULL),(622,14,'El Grullo',1,NULL,NULL),(623,14,'Tonaya',1,NULL,NULL),(624,14,'Tuxcacuesco',1,NULL,NULL),(625,14,'Villa Purificación',1,NULL,NULL),(626,14,'La Huerta',1,NULL,NULL),(627,14,'Autlán de Navarro',1,NULL,NULL),(628,14,'Casimiro Castillo',1,NULL,NULL),(629,14,'Cuautitlán de García Barragán',1,NULL,NULL),(630,14,'Cihuatlán',1,NULL,NULL),(631,14,'Zapotlán el Grande',1,NULL,NULL),(632,14,'Gómez Farías',1,NULL,NULL),(633,14,'Concepción de Buenos Aires',1,NULL,NULL),(634,14,'Atoyac',1,NULL,NULL),(635,14,'Techaluta de Montenegro',1,NULL,NULL),(636,14,'Teocuitatlán de Corona',1,NULL,NULL),(637,14,'Sayula',1,NULL,NULL),(638,14,'Tapalpa',1,NULL,NULL),(639,14,'Amacueca',1,NULL,NULL),(640,14,'Tizapán el Alto',1,NULL,NULL),(641,14,'Tuxcueca',1,NULL,NULL),(642,14,'La Manzanilla de la Paz',1,NULL,NULL),(643,14,'Mazamitla',1,NULL,NULL),(644,14,'Valle de Juárez',1,NULL,NULL),(645,14,'Quitupan',1,NULL,NULL),(646,14,'Zapotiltic',1,NULL,NULL),(647,14,'Tamazula de Gordiano',1,NULL,NULL),(648,14,'San Gabriel',1,NULL,NULL),(649,14,'Tolimán',1,NULL,NULL),(650,14,'Zapotitlán de Vadillo',1,NULL,NULL),(651,14,'Tuxpan',1,NULL,NULL),(652,14,'Tonila',1,NULL,NULL),(653,14,'Pihuamo',1,NULL,NULL),(654,14,'Tecalitlán',1,NULL,NULL),(655,14,'Jilotlán de los Dolores',1,NULL,NULL),(656,14,'Santa María del Oro',1,NULL,NULL),(657,15,'Toluca',1,NULL,NULL),(658,15,'Acambay de Ruíz Castañeda',1,NULL,NULL),(659,15,'Aculco',1,NULL,NULL),(660,15,'Temascalcingo',1,NULL,NULL),(661,15,'Atlacomulco',1,NULL,NULL),(662,15,'Timilpan',1,NULL,NULL),(663,15,'Morelos',1,NULL,NULL),(664,15,'El Oro',1,NULL,NULL),(665,15,'San Felipe del Progreso',1,NULL,NULL),(666,15,'San José del Rincón',1,NULL,NULL),(667,15,'Jocotitlán',1,NULL,NULL),(668,15,'Ixtlahuaca',1,NULL,NULL),(669,15,'Jiquipilco',1,NULL,NULL),(670,15,'Temoaya',1,NULL,NULL),(671,15,'Almoloya de Juárez',1,NULL,NULL),(672,15,'Villa Victoria',1,NULL,NULL),(673,15,'Villa de Allende',1,NULL,NULL),(674,15,'Donato Guerra',1,NULL,NULL),(675,15,'Ixtapan del Oro',1,NULL,NULL),(676,15,'Santo Tomás',1,NULL,NULL),(677,15,'Otzoloapan',1,NULL,NULL),(678,15,'Zacazonapan',1,NULL,NULL),(679,15,'Valle de Bravo',1,NULL,NULL),(680,15,'Amanalco',1,NULL,NULL),(681,15,'Temascaltepec',1,NULL,NULL),(682,15,'Zinacantepec',1,NULL,NULL),(683,15,'Tejupilco',1,NULL,NULL),(684,15,'Luvianos',1,NULL,NULL),(685,15,'San Simón de Guerrero',1,NULL,NULL),(686,15,'Amatepec',1,NULL,NULL),(687,15,'Tlatlaya',1,NULL,NULL),(688,15,'Sultepec',1,NULL,NULL),(689,15,'Texcaltitlán',1,NULL,NULL),(690,15,'Coatepec Harinas',1,NULL,NULL),(691,15,'Villa Guerrero',1,NULL,NULL),(692,15,'Zacualpan',1,NULL,NULL),(693,15,'Almoloya de Alquisiras',1,NULL,NULL),(694,15,'Ixtapan de la Sal',1,NULL,NULL),(695,15,'Tonatico',1,NULL,NULL),(696,15,'Zumpahuacán',1,NULL,NULL),(697,15,'Lerma',1,NULL,NULL),(698,15,'Xonacatlán',1,NULL,NULL),(699,15,'Otzolotepec',1,NULL,NULL),(700,15,'San Mateo Atenco',1,NULL,NULL),(701,15,'Metepec',1,NULL,NULL),(702,15,'Mexicaltzingo',1,NULL,NULL),(703,15,'Calimaya',1,NULL,NULL),(704,15,'Chapultepec',1,NULL,NULL),(705,15,'San Antonio la Isla',1,NULL,NULL),(706,15,'Tenango del Valle',1,NULL,NULL),(707,15,'Rayón',1,NULL,NULL),(708,15,'Joquicingo',1,NULL,NULL),(709,15,'Tenancingo',1,NULL,NULL),(710,15,'Malinalco',1,NULL,NULL),(711,15,'Ocuilan',1,NULL,NULL),(712,15,'Atizapán',1,NULL,NULL),(713,15,'Almoloya del Río',1,NULL,NULL),(714,15,'Texcalyacac',1,NULL,NULL),(715,15,'Tianguistenco',1,NULL,NULL),(716,15,'Xalatlaco',1,NULL,NULL),(717,15,'Capulhuac',1,NULL,NULL),(718,15,'Ocoyoacac',1,NULL,NULL),(719,15,'Huixquilucan',1,NULL,NULL),(720,15,'Atizapán de Zaragoza',1,NULL,NULL),(721,15,'Naucalpan de Juárez',1,NULL,NULL),(722,15,'Tlalnepantla de Baz',1,NULL,NULL),(723,15,'Polotitlán',1,NULL,NULL),(724,15,'Jilotepec',1,NULL,NULL),(725,15,'Soyaniquilpan de Juárez',1,NULL,NULL),(726,15,'Villa del Carbón',1,NULL,NULL),(727,15,'Chapa de Mota',1,NULL,NULL),(728,15,'Nicolás Romero',1,NULL,NULL),(729,15,'Isidro Fabela',1,NULL,NULL),(730,15,'Jilotzingo',1,NULL,NULL),(731,15,'Tepotzotlán',1,NULL,NULL),(732,15,'Coyotepec',1,NULL,NULL),(733,15,'Huehuetoca',1,NULL,NULL),(734,15,'Cuautitlán Izcalli',1,NULL,NULL),(735,15,'Teoloyucan',1,NULL,NULL),(736,15,'Cuautitlán',1,NULL,NULL),(737,15,'Melchor Ocampo',1,NULL,NULL),(738,15,'Tultitlán',1,NULL,NULL),(739,15,'Tultepec',1,NULL,NULL),(740,15,'Ecatepec de Morelos',1,NULL,NULL),(741,15,'Zumpango',1,NULL,NULL),(742,15,'Tequixquiac',1,NULL,NULL),(743,15,'Apaxco',1,NULL,NULL),(744,15,'Hueypoxtla',1,NULL,NULL),(745,15,'Coacalco de Berriozábal',1,NULL,NULL),(746,15,'Tecámac',1,NULL,NULL),(747,15,'Jaltenco',1,NULL,NULL),(748,15,'Tonanitla',1,NULL,NULL),(749,15,'Nextlalpan',1,NULL,NULL),(750,15,'Teotihuacán',1,NULL,NULL),(751,15,'San Martín de las Pirámides',1,NULL,NULL),(752,15,'Acolman',1,NULL,NULL),(753,15,'Otumba',1,NULL,NULL),(754,15,'Axapusco',1,NULL,NULL),(755,15,'Nopaltepec',1,NULL,NULL),(756,15,'Temascalapa',1,NULL,NULL),(757,15,'Tezoyuca',1,NULL,NULL),(758,15,'Chiautla',1,NULL,NULL),(759,15,'Papalotla',1,NULL,NULL),(760,15,'Tepetlaoxtoc',1,NULL,NULL),(761,15,'Texcoco',1,NULL,NULL),(762,15,'Chiconcuac',1,NULL,NULL),(763,15,'Atenco',1,NULL,NULL),(764,15,'Chimalhuacán',1,NULL,NULL),(765,15,'Chicoloapan',1,NULL,NULL),(766,15,'La Paz',1,NULL,NULL),(767,15,'Ixtapaluca',1,NULL,NULL),(768,15,'Chalco',1,NULL,NULL),(769,15,'Valle de Chalco Solidaridad',1,NULL,NULL),(770,15,'Temamatla',1,NULL,NULL),(771,15,'Cocotitlán',1,NULL,NULL),(772,15,'Tlalmanalco',1,NULL,NULL),(773,15,'Ayapango',1,NULL,NULL),(774,15,'Tenango del Aire',1,NULL,NULL),(775,15,'Ozumba',1,NULL,NULL),(776,15,'Juchitepec',1,NULL,NULL),(777,15,'Tepetlixpa',1,NULL,NULL),(778,15,'Amecameca',1,NULL,NULL),(779,15,'Atlautla',1,NULL,NULL),(780,15,'Ecatzingo',1,NULL,NULL),(781,15,'Nezahualcóyotl',1,NULL,NULL),(782,16,'Morelia',1,NULL,NULL),(783,16,'Huaniqueo',1,NULL,NULL),(784,16,'Coeneo',1,NULL,NULL),(785,16,'Quiroga',1,NULL,NULL),(786,16,'Tzintzuntzan',1,NULL,NULL),(787,16,'Lagunillas',1,NULL,NULL),(788,16,'Acuitzio',1,NULL,NULL),(789,16,'Madero',1,NULL,NULL),(790,16,'Puruándiro',1,NULL,NULL),(791,16,'José Sixto Verduzco',1,NULL,NULL),(792,16,'Angamacutiro',1,NULL,NULL),(793,16,'Panindícuaro',1,NULL,NULL),(794,16,'Zacapu',1,NULL,NULL),(795,16,'Tlazazalca',1,NULL,NULL),(796,16,'Purépero',1,NULL,NULL),(797,16,'Jiménez',1,NULL,NULL),(798,16,'Morelos',1,NULL,NULL),(799,16,'Huandacareo',1,NULL,NULL),(800,16,'Cuitzeo',1,NULL,NULL),(801,16,'Chucándiro',1,NULL,NULL),(802,16,'Copándaro',1,NULL,NULL),(803,16,'Tarímbaro',1,NULL,NULL),(804,16,'Santa Ana Maya',1,NULL,NULL),(805,16,'Álvaro Obregón',1,NULL,NULL),(806,16,'Zinapécuaro',1,NULL,NULL),(807,16,'Indaparapeo',1,NULL,NULL),(808,16,'Queréndaro',1,NULL,NULL),(809,16,'Sahuayo',1,NULL,NULL),(810,16,'Briseñas',1,NULL,NULL),(811,16,'Cojumatlán de Régules',1,NULL,NULL),(812,16,'Venustiano Carranza',1,NULL,NULL),(813,16,'Pajacuarán',1,NULL,NULL),(814,16,'Vista Hermosa',1,NULL,NULL),(815,16,'Tanhuato',1,NULL,NULL),(816,16,'Yurécuaro',1,NULL,NULL),(817,16,'Ixtlán',1,NULL,NULL),(818,16,'La Piedad',1,NULL,NULL),(819,16,'Numarán',1,NULL,NULL),(820,16,'Churintzio',1,NULL,NULL),(821,16,'Zináparo',1,NULL,NULL),(822,16,'Penjamillo',1,NULL,NULL),(823,16,'Marcos Castellanos',1,NULL,NULL),(824,16,'Jiquilpan',1,NULL,NULL),(825,16,'Villamar',1,NULL,NULL),(826,16,'Chavinda',1,NULL,NULL),(827,16,'Zamora',1,NULL,NULL),(828,16,'Ecuandureo',1,NULL,NULL),(829,16,'Tangancícuaro',1,NULL,NULL),(830,16,'Chilchota',1,NULL,NULL),(831,16,'Jacona',1,NULL,NULL),(832,16,'Tangamandapio',1,NULL,NULL),(833,16,'Cotija',1,NULL,NULL),(834,16,'Tocumbo',1,NULL,NULL),(835,16,'Tingüindín',1,NULL,NULL),(836,16,'Uruapan',1,NULL,NULL),(837,16,'Charapan',1,NULL,NULL),(838,16,'Paracho',1,NULL,NULL),(839,16,'Cherán',1,NULL,NULL),(840,16,'Nahuatzen',1,NULL,NULL),(841,16,'Tingambato',1,NULL,NULL),(842,16,'Los Reyes',1,NULL,NULL),(843,16,'Peribán',1,NULL,NULL),(844,16,'Tancítaro',1,NULL,NULL),(845,16,'Nuevo Parangaricutiro',1,NULL,NULL),(846,16,'Buenavista',1,NULL,NULL),(847,16,'Tepalcatepec',1,NULL,NULL),(848,16,'Aguililla',1,NULL,NULL),(849,16,'Apatzingán',1,NULL,NULL),(850,16,'Parácuaro',1,NULL,NULL),(851,16,'Coahuayana',1,NULL,NULL),(852,16,'Chinicuila',1,NULL,NULL),(853,16,'Coalcomán de Vázquez Pallares',1,NULL,NULL),(854,16,'Aquila',1,NULL,NULL),(855,16,'Tumbiscatío',1,NULL,NULL),(856,16,'Arteaga',1,NULL,NULL),(857,16,'Lázaro Cárdenas',1,NULL,NULL),(858,16,'Epitacio Huerta',1,NULL,NULL),(859,16,'Contepec',1,NULL,NULL),(860,16,'Tlalpujahua',1,NULL,NULL),(861,16,'Hidalgo',1,NULL,NULL),(862,16,'Maravatío',1,NULL,NULL),(863,16,'Irimbo',1,NULL,NULL),(864,16,'Senguio',1,NULL,NULL),(865,16,'Charo',1,NULL,NULL),(866,16,'Tzitzio',1,NULL,NULL),(867,16,'Tiquicheo de Nicolás Romero',1,NULL,NULL),(868,16,'Aporo',1,NULL,NULL),(869,16,'Angangueo',1,NULL,NULL),(870,16,'Tuxpan',1,NULL,NULL),(871,16,'Ocampo',1,NULL,NULL),(872,16,'Jungapeo',1,NULL,NULL),(873,16,'Zitácuaro',1,NULL,NULL),(874,16,'Tuzantla',1,NULL,NULL),(875,16,'Juárez',1,NULL,NULL),(876,16,'Susupuato',1,NULL,NULL),(877,16,'Pátzcuaro',1,NULL,NULL),(878,16,'Erongarícuaro',1,NULL,NULL),(879,16,'Huiramba',1,NULL,NULL),(880,16,'Tacámbaro',1,NULL,NULL),(881,16,'Turicato',1,NULL,NULL),(882,16,'Ziracuaretiro',1,NULL,NULL),(883,16,'Taretan',1,NULL,NULL),(884,16,'Gabriel Zamora',1,NULL,NULL),(885,16,'Nuevo Urecho',1,NULL,NULL),(886,16,'Múgica',1,NULL,NULL),(887,16,'Salvador Escalante',1,NULL,NULL),(888,16,'Ario',1,NULL,NULL),(889,16,'La Huacana',1,NULL,NULL),(890,16,'Churumuco',1,NULL,NULL),(891,16,'Nocupétaro',1,NULL,NULL),(892,16,'Carácuaro',1,NULL,NULL),(893,16,'Huetamo',1,NULL,NULL),(894,16,'San Lucas',1,NULL,NULL),(895,17,'Cuernavaca',1,NULL,NULL),(896,17,'Huitzilac',1,NULL,NULL),(897,17,'Tepoztlán',1,NULL,NULL),(898,17,'Tlalnepantla',1,NULL,NULL),(899,17,'Tlayacapan',1,NULL,NULL),(900,17,'Jiutepec',1,NULL,NULL),(901,17,'Temixco',1,NULL,NULL),(902,17,'Miacatlán',1,NULL,NULL),(903,17,'Coatlán del Río',1,NULL,NULL),(904,17,'Tetecala',1,NULL,NULL),(905,17,'Mazatepec',1,NULL,NULL),(906,17,'Amacuzac',1,NULL,NULL),(907,17,'Puente de Ixtla',1,NULL,NULL),(908,17,'Ayala',1,NULL,NULL),(909,17,'Yautepec',1,NULL,NULL),(910,17,'Cuautla',1,NULL,NULL),(911,17,'Emiliano Zapata',1,NULL,NULL),(912,17,'Tlaltizapán de Zapata',1,NULL,NULL),(913,17,'Zacatepec',1,NULL,NULL),(914,17,'Xochitepec',1,NULL,NULL),(915,17,'Tetela del Volcán',1,NULL,NULL),(916,17,'Yecapixtla',1,NULL,NULL),(917,17,'Totolapan',1,NULL,NULL),(918,17,'Atlatlahucan',1,NULL,NULL),(919,17,'Ocuituco',1,NULL,NULL),(920,17,'Temoac',1,NULL,NULL),(921,17,'Zacualpan',1,NULL,NULL),(922,17,'Jojutla',1,NULL,NULL),(923,17,'Tepalcingo',1,NULL,NULL),(924,17,'Jonacatepec',1,NULL,NULL),(925,17,'Axochiapan',1,NULL,NULL),(926,17,'Jantetelco',1,NULL,NULL),(927,17,'Tlaquiltenango',1,NULL,NULL),(928,18,'Tepic',1,NULL,NULL),(929,18,'Tuxpan',1,NULL,NULL),(930,18,'Santiago Ixcuintla',1,NULL,NULL),(931,18,'Acaponeta',1,NULL,NULL),(932,18,'Tecuala',1,NULL,NULL),(933,18,'Huajicori',1,NULL,NULL),(934,18,'Del Nayar',1,NULL,NULL),(935,18,'La Yesca',1,NULL,NULL),(936,18,'Ruíz',1,NULL,NULL),(937,18,'Rosamorada',1,NULL,NULL),(938,18,'Compostela',1,NULL,NULL),(939,18,'Bahía de Banderas',1,NULL,NULL),(940,18,'San Blas',1,NULL,NULL),(941,18,'Xalisco',1,NULL,NULL),(942,18,'San Pedro Lagunillas',1,NULL,NULL),(943,18,'Santa María del Oro',1,NULL,NULL),(944,18,'Jala',1,NULL,NULL),(945,18,'Ahuacatlán',1,NULL,NULL),(946,18,'Ixtlán del Río',1,NULL,NULL),(947,18,'Amatlán de Cañas',1,NULL,NULL),(948,19,'Monterrey',1,NULL,NULL),(949,19,'Anáhuac',1,NULL,NULL),(950,19,'Lampazos de Naranjo',1,NULL,NULL),(951,19,'Mina',1,NULL,NULL),(952,19,'Bustamante',1,NULL,NULL),(953,19,'Sabinas Hidalgo',1,NULL,NULL),(954,19,'Villaldama',1,NULL,NULL),(955,19,'Vallecillo',1,NULL,NULL),(956,19,'Parás',1,NULL,NULL),(957,19,'Salinas Victoria',1,NULL,NULL),(958,19,'Ciénega de Flores',1,NULL,NULL),(959,19,'Hidalgo',1,NULL,NULL),(960,19,'Abasolo',1,NULL,NULL),(961,19,'Higueras',1,NULL,NULL),(962,19,'General Zuazua',1,NULL,NULL),(963,19,'Agualeguas',1,NULL,NULL),(964,19,'General Treviño',1,NULL,NULL),(965,19,'Cerralvo',1,NULL,NULL),(966,19,'Melchor Ocampo',1,NULL,NULL),(967,19,'García',1,NULL,NULL),(968,19,'General Escobedo',1,NULL,NULL),(969,19,'Santa Catarina',1,NULL,NULL),(970,19,'San Pedro Garza García',1,NULL,NULL),(971,19,'San Nicolás de los Garza',1,NULL,NULL),(972,19,'El Carmen',1,NULL,NULL),(973,19,'Apodaca',1,NULL,NULL),(974,19,'Pesquería',1,NULL,NULL),(975,19,'Marín',1,NULL,NULL),(976,19,'Doctor González',1,NULL,NULL),(977,19,'Los Ramones',1,NULL,NULL),(978,19,'Los Herreras',1,NULL,NULL),(979,19,'Los Aldamas',1,NULL,NULL),(980,19,'Doctor Coss',1,NULL,NULL),(981,19,'General Bravo',1,NULL,NULL),(982,19,'China',1,NULL,NULL),(983,19,'Guadalupe',1,NULL,NULL),(984,19,'Juárez',1,NULL,NULL),(985,19,'Santiago',1,NULL,NULL),(986,19,'Allende',1,NULL,NULL),(987,19,'General Terán',1,NULL,NULL),(988,19,'Cadereyta Jiménez',1,NULL,NULL),(989,19,'Montemorelos',1,NULL,NULL),(990,19,'Rayones',1,NULL,NULL),(991,19,'Linares',1,NULL,NULL),(992,19,'Iturbide',1,NULL,NULL),(993,19,'Galeana',1,NULL,NULL),(994,19,'Hualahuises',1,NULL,NULL),(995,19,'Doctor Arroyo',1,NULL,NULL),(996,19,'Aramberri',1,NULL,NULL),(997,19,'General Zaragoza',1,NULL,NULL),(998,19,'Mier y Noriega',1,NULL,NULL),(999,20,'Oaxaca de Juárez',1,NULL,NULL),(1000,20,'Villa de Etla',1,NULL,NULL),(1001,20,'San Juan Bautista Atatlahuca',1,NULL,NULL),(1002,20,'San Jerónimo Sosola',1,NULL,NULL),(1003,20,'San Juan Bautista Jayacatlán',1,NULL,NULL),(1004,20,'San Francisco Telixtlahuaca',1,NULL,NULL),(1005,20,'Santiago Tenango',1,NULL,NULL),(1006,20,'San Pablo Huitzo',1,NULL,NULL),(1007,20,'San Juan del Estado',1,NULL,NULL),(1008,20,'Magdalena Apasco',1,NULL,NULL),(1009,20,'Santiago Suchilquitongo',1,NULL,NULL),(1010,20,'San Juan Bautista Guelache',1,NULL,NULL),(1011,20,'Reyes Etla',1,NULL,NULL),(1012,20,'Nazareno Etla',1,NULL,NULL),(1013,20,'San Andrés Zautla',1,NULL,NULL),(1014,20,'San Agustín Etla',1,NULL,NULL),(1015,20,'Soledad Etla',1,NULL,NULL),(1016,20,'Santo Tomás Mazaltepec',1,NULL,NULL),(1017,20,'Guadalupe Etla',1,NULL,NULL),(1018,20,'San Pablo Etla',1,NULL,NULL),(1019,20,'San Felipe Tejalápam',1,NULL,NULL),(1020,20,'San Lorenzo Cacaotepec',1,NULL,NULL),(1021,20,'Santa María Peñoles',1,NULL,NULL),(1022,20,'Santiago Tlazoyaltepec',1,NULL,NULL),(1023,20,'Tlalixtac de Cabrera',1,NULL,NULL),(1024,20,'San Jacinto Amilpas',1,NULL,NULL),(1025,20,'San Andrés Huayápam',1,NULL,NULL),(1026,20,'San Agustín Yatareni',1,NULL,NULL),(1027,20,'Santo Domingo Tomaltepec',1,NULL,NULL),(1028,20,'Santa María del Tule',1,NULL,NULL),(1029,20,'San Juan Bautista Tuxtepec',1,NULL,NULL),(1030,20,'Loma Bonita',1,NULL,NULL),(1031,20,'San José Independencia',1,NULL,NULL),(1032,20,'Cosolapa',1,NULL,NULL),(1033,20,'Acatlán de Pérez Figueroa',1,NULL,NULL),(1034,20,'San Miguel Soyaltepec',1,NULL,NULL),(1035,20,'Ayotzintepec',1,NULL,NULL),(1036,20,'San Pedro Ixcatlán',1,NULL,NULL),(1037,20,'San José Chiltepec',1,NULL,NULL),(1038,20,'San Felipe Jalapa de Díaz',1,NULL,NULL),(1039,20,'Santa María Jacatepec',1,NULL,NULL),(1040,20,'San Lucas Ojitlán',1,NULL,NULL),(1041,20,'San Juan Bautista Valle Nacional',1,NULL,NULL),(1042,20,'San Felipe Usila',1,NULL,NULL),(1043,20,'Huautla de Jiménez',1,NULL,NULL),(1044,20,'Santa María Chilchotla',1,NULL,NULL),(1045,20,'Santa Ana Ateixtlahuaca',1,NULL,NULL),(1046,20,'San Lorenzo Cuaunecuiltitla',1,NULL,NULL),(1047,20,'San Francisco Huehuetlán',1,NULL,NULL),(1048,20,'San Pedro Ocopetatillo',1,NULL,NULL),(1049,20,'Santa Cruz Acatepec',1,NULL,NULL),(1050,20,'Eloxochitlán de Flores Magón',1,NULL,NULL),(1051,20,'Santiago Texcalcingo',1,NULL,NULL),(1052,20,'Teotitlán de Flores Magón',1,NULL,NULL),(1053,20,'Santa María Teopoxco',1,NULL,NULL),(1054,20,'San Martín Toxpalan',1,NULL,NULL),(1055,20,'San Jerónimo Tecóatl',1,NULL,NULL),(1056,20,'Santa María la Asunción',1,NULL,NULL),(1057,20,'Huautepec',1,NULL,NULL),(1058,20,'San Juan Coatzóspam',1,NULL,NULL),(1059,20,'San Lucas Zoquiápam',1,NULL,NULL),(1060,20,'San Antonio Nanahuatípam',1,NULL,NULL),(1061,20,'San José Tenango',1,NULL,NULL),(1062,20,'San Mateo Yoloxochitlán',1,NULL,NULL),(1063,20,'San Bartolomé Ayautla',1,NULL,NULL),(1064,20,'Mazatlán Villa de Flores',1,NULL,NULL),(1065,20,'San Juan de los Cués',1,NULL,NULL),(1066,20,'Santa María Tecomavaca',1,NULL,NULL),(1067,20,'Santa María Ixcatlán',1,NULL,NULL),(1068,20,'San Juan Bautista Cuicatlán',1,NULL,NULL),(1069,20,'Cuyamecalco Villa de Zaragoza',1,NULL,NULL),(1070,20,'Santa Ana Cuauhtémoc',1,NULL,NULL),(1071,20,'Chiquihuitlán de Benito Juárez',1,NULL,NULL),(1072,20,'San Pedro Teutila',1,NULL,NULL),(1073,20,'San Miguel Santa Flor',1,NULL,NULL),(1074,20,'Santa María Tlalixtac',1,NULL,NULL),(1075,20,'San Andrés Teotilálpam',1,NULL,NULL),(1076,20,'San Francisco Chapulapa',1,NULL,NULL),(1077,20,'Concepción Pápalo',1,NULL,NULL),(1078,20,'Santos Reyes Pápalo',1,NULL,NULL),(1079,20,'San Juan Bautista Tlacoatzintepec',1,NULL,NULL),(1080,20,'Santa María Pápalo',1,NULL,NULL),(1081,20,'San Juan Tepeuxila',1,NULL,NULL),(1082,20,'San Pedro Sochiápam',1,NULL,NULL),(1083,20,'Valerio Trujano',1,NULL,NULL),(1084,20,'San Pedro Jocotipac',1,NULL,NULL),(1085,20,'Santa María Texcatitlán',1,NULL,NULL),(1086,20,'San Pedro Jaltepetongo',1,NULL,NULL),(1087,20,'Santiago Nacaltepec',1,NULL,NULL),(1088,20,'Natividad',1,NULL,NULL),(1089,20,'San Juan Quiotepec',1,NULL,NULL),(1090,20,'San Pedro Yólox',1,NULL,NULL),(1091,20,'Santiago Comaltepec',1,NULL,NULL),(1092,20,'Abejones',1,NULL,NULL),(1093,20,'San Pablo Macuiltianguis',1,NULL,NULL),(1094,20,'Ixtlán de Juárez',1,NULL,NULL),(1095,20,'San Juan Atepec',1,NULL,NULL),(1096,20,'San Pedro Yaneri',1,NULL,NULL),(1097,20,'San Miguel Aloápam',1,NULL,NULL),(1098,20,'Teococuilco de Marcos Pérez',1,NULL,NULL),(1099,20,'Santa Ana Yareni',1,NULL,NULL),(1100,20,'San Juan Evangelista Analco',1,NULL,NULL),(1101,20,'Santa María Jaltianguis',1,NULL,NULL),(1102,20,'San Miguel del Río',1,NULL,NULL),(1103,20,'San Juan Chicomezúchil',1,NULL,NULL),(1104,20,'Capulálpam de Méndez',1,NULL,NULL),(1105,20,'Nuevo Zoquiápam',1,NULL,NULL),(1106,20,'Santiago Xiacuí',1,NULL,NULL),(1107,20,'Guelatao de Juárez',1,NULL,NULL),(1108,20,'Santa Catarina Ixtepeji',1,NULL,NULL),(1109,20,'San Miguel Yotao',1,NULL,NULL),(1110,20,'Santa Catarina Lachatao',1,NULL,NULL),(1111,20,'San Miguel Amatlán',1,NULL,NULL),(1112,20,'Santa María Yavesía',1,NULL,NULL),(1113,20,'Santiago Laxopa',1,NULL,NULL),(1114,20,'San Ildefonso Villa Alta',1,NULL,NULL),(1115,20,'Santiago Camotlán',1,NULL,NULL),(1116,20,'San Juan Yaeé',1,NULL,NULL),(1117,20,'Santiago Lalopa',1,NULL,NULL),(1118,20,'San Juan Yatzona',1,NULL,NULL),(1119,20,'Villa Talea de Castro',1,NULL,NULL),(1120,20,'Tanetze de Zaragoza',1,NULL,NULL),(1121,20,'San Juan Juquila Vijanos',1,NULL,NULL),(1122,20,'San Cristóbal Lachirioag',1,NULL,NULL),(1123,20,'Santa María Temaxcalapa',1,NULL,NULL),(1124,20,'Santo Domingo Roayaga',1,NULL,NULL),(1125,20,'Santa María Yalina',1,NULL,NULL),(1126,20,'San Andrés Solaga',1,NULL,NULL),(1127,20,'San Juan Tabaá',1,NULL,NULL),(1128,20,'San Melchor Betaza',1,NULL,NULL),(1129,20,'San Andrés Yaá',1,NULL,NULL),(1130,20,'San Bartolomé Zoogocho',1,NULL,NULL),(1131,20,'San Baltazar Yatzachi el Bajo',1,NULL,NULL),(1132,20,'Santiago Zoochila',1,NULL,NULL),(1133,20,'Villa Hidalgo',1,NULL,NULL),(1134,20,'San Francisco Cajonos',1,NULL,NULL),(1135,20,'San Mateo Cajonos',1,NULL,NULL),(1136,20,'San Pedro Cajonos',1,NULL,NULL),(1137,20,'Santo Domingo Xagacía',1,NULL,NULL),(1138,20,'San Pablo Yaganiza',1,NULL,NULL),(1139,20,'Santiago Choápam',1,NULL,NULL),(1140,20,'Santiago Jocotepec',1,NULL,NULL),(1141,20,'San Juan Lalana',1,NULL,NULL),(1142,20,'Santiago Yaveo',1,NULL,NULL),(1143,20,'San Juan Petlapa',1,NULL,NULL),(1144,20,'San Juan Comaltepec',1,NULL,NULL),(1145,20,'Heroica Ciudad de Huajuapan de León',1,NULL,NULL),(1146,20,'Santiago Chazumba',1,NULL,NULL),(1147,20,'Cosoltepec',1,NULL,NULL),(1148,20,'San Pedro y San Pablo Tequixtepec',1,NULL,NULL),(1149,20,'San Juan Bautista Suchitepec',1,NULL,NULL),(1150,20,'Santa Catarina Zapoquila',1,NULL,NULL),(1151,20,'Santiago Miltepec',1,NULL,NULL),(1152,20,'San Jerónimo Silacayoapilla',1,NULL,NULL),(1153,20,'Zapotitlán Palmas',1,NULL,NULL),(1154,20,'San Andrés Dinicuiti',1,NULL,NULL),(1155,20,'Santiago Cacaloxtepec',1,NULL,NULL),(1156,20,'Asunción Cuyotepeji',1,NULL,NULL),(1157,20,'Santa María Camotlán',1,NULL,NULL),(1158,20,'Santiago Huajolotitlán',1,NULL,NULL),(1159,20,'Santiago Tamazola',1,NULL,NULL),(1160,20,'San Juan Cieneguilla',1,NULL,NULL),(1161,20,'Zapotitlán Lagunas',1,NULL,NULL),(1162,20,'San Juan Ihualtepec',1,NULL,NULL),(1163,20,'San Nicolás Hidalgo',1,NULL,NULL),(1164,20,'Guadalupe de Ramírez',1,NULL,NULL),(1165,20,'San Andrés Tepetlapa',1,NULL,NULL),(1166,20,'San Miguel Ahuehuetitlán',1,NULL,NULL),(1167,20,'San Mateo Nejápam',1,NULL,NULL),(1168,20,'San Juan Bautista Tlachichilco',1,NULL,NULL),(1169,20,'Tezoatlán de Segura y Luna',1,NULL,NULL),(1170,20,'Fresnillo de Trujano',1,NULL,NULL),(1171,20,'Santiago Ayuquililla',1,NULL,NULL),(1172,20,'San José Ayuquila',1,NULL,NULL),(1173,20,'San Martín Zacatepec',1,NULL,NULL),(1174,20,'San Miguel Amatitlán',1,NULL,NULL),(1175,20,'Mariscala de Juárez',1,NULL,NULL),(1176,20,'Santa Cruz Tacache de Mina',1,NULL,NULL),(1177,20,'San Simón Zahuatlán',1,NULL,NULL),(1178,20,'San Marcos Arteaga',1,NULL,NULL),(1179,20,'San Jorge Nuchita',1,NULL,NULL),(1180,20,'Santos Reyes Yucuná',1,NULL,NULL),(1181,20,'Santo Domingo Tonalá',1,NULL,NULL),(1182,20,'Santo Domingo Yodohino',1,NULL,NULL),(1183,20,'San Juan Bautista Coixtlahuaca',1,NULL,NULL),(1184,20,'Tepelmeme Villa de Morelos',1,NULL,NULL),(1185,20,'Concepción Buenavista',1,NULL,NULL),(1186,20,'Santiago Ihuitlán Plumas',1,NULL,NULL),(1187,20,'Tlacotepec Plumas',1,NULL,NULL),(1188,20,'San Francisco Teopan',1,NULL,NULL),(1189,20,'Santa Magdalena Jicotlán',1,NULL,NULL),(1190,20,'San Mateo Tlapiltepec',1,NULL,NULL),(1191,20,'San Miguel Tequixtepec',1,NULL,NULL),(1192,20,'San Miguel Tulancingo',1,NULL,NULL),(1193,20,'Santiago Tepetlapa',1,NULL,NULL),(1194,20,'San Cristóbal Suchixtlahuaca',1,NULL,NULL),(1195,20,'Santa María Nativitas',1,NULL,NULL),(1196,20,'Silacayoápam',1,NULL,NULL),(1197,20,'Santiago Yucuyachi',1,NULL,NULL),(1198,20,'San Lorenzo Victoria',1,NULL,NULL),(1199,20,'San Agustín Atenango',1,NULL,NULL),(1200,20,'Calihualá',1,NULL,NULL),(1201,20,'Santa Cruz de Bravo',1,NULL,NULL),(1202,20,'Ixpantepec Nieves',1,NULL,NULL),(1203,20,'San Francisco Tlapancingo',1,NULL,NULL),(1204,20,'Santiago del Río',1,NULL,NULL),(1205,20,'San Pedro y San Pablo Teposcolula',1,NULL,NULL),(1206,20,'La Trinidad Vista Hermosa',1,NULL,NULL),(1207,20,'Villa de Tamazulápam del Progreso',1,NULL,NULL),(1208,20,'San Pedro Nopala',1,NULL,NULL),(1209,20,'Teotongo',1,NULL,NULL),(1210,20,'San Antonio Acutla',1,NULL,NULL),(1211,20,'Villa Tejúpam de la Unión',1,NULL,NULL),(1212,20,'Santo Domingo Tonaltepec',1,NULL,NULL),(1213,20,'Villa de Chilapa de Díaz',1,NULL,NULL),(1214,20,'San Antonino Monte Verde',1,NULL,NULL),(1215,20,'San Andrés Lagunas',1,NULL,NULL),(1216,20,'San Pedro Yucunama',1,NULL,NULL),(1217,20,'San Juan Teposcolula',1,NULL,NULL),(1218,20,'San Bartolo Soyaltepec',1,NULL,NULL),(1219,20,'Santiago Yolomécatl',1,NULL,NULL),(1220,20,'San Sebastián Nicananduta',1,NULL,NULL),(1221,20,'Santo Domingo Tlatayápam',1,NULL,NULL),(1222,20,'Santa María Nduayaco',1,NULL,NULL),(1223,20,'San Vicente Nuñú',1,NULL,NULL),(1224,20,'San Pedro Topiltepec',1,NULL,NULL),(1225,20,'Santiago Nejapilla',1,NULL,NULL),(1226,20,'Asunción Nochixtlán',1,NULL,NULL),(1227,20,'San Miguel Huautla',1,NULL,NULL),(1228,20,'San Miguel Chicahua',1,NULL,NULL),(1229,20,'Santa María Apazco',1,NULL,NULL),(1230,20,'Santiago Apoala',1,NULL,NULL),(1231,20,'Santa María Chachoápam',1,NULL,NULL),(1232,20,'San Pedro Coxcaltepec Cántaros',1,NULL,NULL),(1233,20,'Santiago Huauclilla',1,NULL,NULL),(1234,20,'Santo Domingo Yanhuitlán',1,NULL,NULL),(1235,20,'San Andrés Sinaxtla',1,NULL,NULL),(1236,20,'San Juan Yucuita',1,NULL,NULL),(1237,20,'San Juan Sayultepec',1,NULL,NULL),(1238,20,'Santiago Tillo',1,NULL,NULL),(1239,20,'San Francisco Chindúa',1,NULL,NULL),(1240,20,'San Mateo Etlatongo',1,NULL,NULL),(1241,20,'Santa Inés de Zaragoza',1,NULL,NULL),(1242,20,'Santiago Juxtlahuaca',1,NULL,NULL),(1243,20,'San Miguel Tlacotepec',1,NULL,NULL),(1244,20,'San Sebastián Tecomaxtlahuaca',1,NULL,NULL),(1245,20,'Santos Reyes Tepejillo',1,NULL,NULL),(1246,20,'San Juan Mixtepec -Dto.  -',1,NULL,NULL),(1247,20,'San Martín Peras',1,NULL,NULL),(1248,20,'Coicoyán de las Flores',1,NULL,NULL),(1249,20,'Heroica Ciudad de Tlaxiaco',1,NULL,NULL),(1250,20,'San Juan Ñumí',1,NULL,NULL),(1251,20,'San Pedro Mártir Yucuxaco',1,NULL,NULL),(1252,20,'San Martín Huamelúlpam',1,NULL,NULL),(1253,20,'Santa Cruz Tayata',1,NULL,NULL),(1254,20,'Santiago Nundiche',1,NULL,NULL),(1255,20,'Santa María del Rosario',1,NULL,NULL),(1256,20,'San Juan Achiutla',1,NULL,NULL),(1257,20,'Santa Catarina Tayata',1,NULL,NULL),(1258,20,'San Cristóbal Amoltepec',1,NULL,NULL),(1259,20,'San Miguel Achiutla',1,NULL,NULL),(1260,20,'San Martín Itunyoso',1,NULL,NULL),(1261,20,'Magdalena Peñasco',1,NULL,NULL),(1262,20,'San Bartolomé Yucuañe',1,NULL,NULL),(1263,20,'Santa Cruz Nundaco',1,NULL,NULL),(1264,20,'San Agustín Tlacotepec',1,NULL,NULL),(1265,20,'Santo Tomás Ocotepec',1,NULL,NULL),(1266,20,'San Antonio Sinicahua',1,NULL,NULL),(1267,20,'San Mateo Peñasco',1,NULL,NULL),(1268,20,'Santa María Tataltepec',1,NULL,NULL),(1269,20,'San Pedro Molinos',1,NULL,NULL),(1270,20,'Santa María Yosoyúa',1,NULL,NULL),(1271,20,'San Juan Teita',1,NULL,NULL),(1272,20,'Magdalena Jaltepec',1,NULL,NULL),(1273,20,'Magdalena Yodocono de Porfirio Díaz',1,NULL,NULL),(1274,20,'San Miguel Tecomatlán',1,NULL,NULL),(1275,20,'Magdalena Zahuatlán',1,NULL,NULL),(1276,20,'San Francisco Nuxaño',1,NULL,NULL),(1277,20,'San Pedro Tidaá',1,NULL,NULL),(1278,20,'San Francisco Jaltepetongo',1,NULL,NULL),(1279,20,'Santiago Tilantongo',1,NULL,NULL),(1280,20,'San Juan Diuxi',1,NULL,NULL),(1281,20,'San Andrés Nuxiño',1,NULL,NULL),(1282,20,'San Juan Tamazola',1,NULL,NULL),(1283,20,'Santo Domingo Nuxaá',1,NULL,NULL),(1284,20,'Yutanduchi de Guerrero',1,NULL,NULL),(1285,20,'San Pedro Teozacoalco',1,NULL,NULL),(1286,20,'San Miguel Piedras',1,NULL,NULL),(1287,20,'San Mateo Sindihui',1,NULL,NULL),(1288,20,'Heroica Ciudad de Juchitán de Zaragoza',1,NULL,NULL),(1289,20,'Ciudad Ixtepec',1,NULL,NULL),(1290,20,'El Espinal',1,NULL,NULL),(1291,20,'Santo Domingo Ingenio',1,NULL,NULL),(1292,20,'Santa María Xadani',1,NULL,NULL),(1293,20,'Santiago Niltepec',1,NULL,NULL),(1294,20,'San Dionisio del Mar',1,NULL,NULL),(1295,20,'Asunción Ixtaltepec',1,NULL,NULL),(1296,20,'San Francisco del Mar',1,NULL,NULL),(1297,20,'Unión Hidalgo',1,NULL,NULL),(1298,20,'San Miguel Chimalapa',1,NULL,NULL),(1299,20,'Santo Domingo Zanatepec',1,NULL,NULL),(1300,20,'Reforma de Pineda',1,NULL,NULL),(1301,20,'San Francisco Ixhuatán',1,NULL,NULL),(1302,20,'San Pedro Tapanatepec',1,NULL,NULL),(1303,20,'Chahuites',1,NULL,NULL),(1304,20,'Santiago Zacatepec',1,NULL,NULL),(1305,20,'Santo Domingo Tepuxtepec',1,NULL,NULL),(1306,20,'San Juan Cotzocón',1,NULL,NULL),(1307,20,'San Juan Mazatlán',1,NULL,NULL),(1308,20,'Totontepec Villa de Morelos',1,NULL,NULL),(1309,20,'Mixistlán de la Reforma',1,NULL,NULL),(1310,20,'Santa María Tlahuitoltepec',1,NULL,NULL),(1311,20,'Santa María Alotepec',1,NULL,NULL),(1312,20,'Santiago Atitlán',1,NULL,NULL),(1313,20,'Tamazulápam del Espíritu Santo',1,NULL,NULL),(1314,20,'San Pedro y San Pablo Ayutla',1,NULL,NULL),(1315,20,'Santa María Tepantlali',1,NULL,NULL),(1316,20,'San Miguel Quetzaltepec',1,NULL,NULL),(1317,20,'Asunción Cacalotepec',1,NULL,NULL),(1318,20,'San Pedro Ocotepec',1,NULL,NULL),(1319,20,'San Lucas Camotlán',1,NULL,NULL),(1320,20,'Santiago Ixcuintepec',1,NULL,NULL),(1321,20,'Matías Romero Avendaño',1,NULL,NULL),(1322,20,'San Juan Guichicovi',1,NULL,NULL),(1323,20,'Santo Domingo Petapa',1,NULL,NULL),(1324,20,'Santa María Chimalapa',1,NULL,NULL),(1325,20,'Santa María Petapa',1,NULL,NULL),(1326,20,'El Barrio de la Soledad',1,NULL,NULL),(1327,20,'Tlacolula de Matamoros',1,NULL,NULL),(1328,20,'San Sebastián Abasolo',1,NULL,NULL),(1329,20,'Villa Díaz Ordaz',1,NULL,NULL),(1330,20,'Santa María Guelacé',1,NULL,NULL),(1331,20,'Teotitlán del Valle',1,NULL,NULL),(1332,20,'San Francisco Lachigoló',1,NULL,NULL),(1333,20,'San Sebastián Teitipac',1,NULL,NULL),(1334,20,'Santa Ana del Valle',1,NULL,NULL),(1335,20,'San Pablo Villa de Mitla',1,NULL,NULL),(1336,20,'Santiago Matatlán',1,NULL,NULL),(1337,20,'Santo Domingo Albarradas',1,NULL,NULL),(1338,20,'Rojas de Cuauhtémoc',1,NULL,NULL),(1339,20,'San Juan Teitipac',1,NULL,NULL),(1340,20,'Santa Cruz Papalutla',1,NULL,NULL),(1341,20,'Magdalena Teitipac',1,NULL,NULL),(1342,20,'San Jerónimo Tlacochahuaya',1,NULL,NULL),(1343,20,'San Juan Guelavía',1,NULL,NULL),(1344,20,'San Lucas Quiaviní',1,NULL,NULL),(1345,20,'San Juan del Río',1,NULL,NULL),(1346,20,'San Bartolomé Quialana',1,NULL,NULL),(1347,20,'San Lorenzo Albarradas',1,NULL,NULL),(1348,20,'San Pedro Totolápam',1,NULL,NULL),(1349,20,'San Pedro Quiatoni',1,NULL,NULL),(1350,20,'Santa María Zoquitlán',1,NULL,NULL),(1351,20,'San Dionisio Ocotepec',1,NULL,NULL),(1352,20,'San Carlos Yautepec',1,NULL,NULL),(1353,20,'San Juan Juquila Mixes',1,NULL,NULL),(1354,20,'Nejapa de Madero',1,NULL,NULL),(1355,20,'Santa Ana Tavela',1,NULL,NULL),(1356,20,'San Juan Lajarcia',1,NULL,NULL),(1357,20,'San Bartolo Yautepec',1,NULL,NULL),(1358,20,'Santa María Ecatepec',1,NULL,NULL),(1359,20,'Asunción Tlacolulita',1,NULL,NULL),(1360,20,'San Pedro Mártir Quiechapa',1,NULL,NULL),(1361,20,'Santa María Quiegolani',1,NULL,NULL),(1362,20,'Santa Catarina Quioquitani',1,NULL,NULL),(1363,20,'Santa Catalina Quierí',1,NULL,NULL),(1364,20,'Salina Cruz',1,NULL,NULL),(1365,20,'Santiago Lachiguiri',1,NULL,NULL),(1366,20,'Santa María Jalapa del Marqués',1,NULL,NULL),(1367,20,'Santa María Totolapilla',1,NULL,NULL),(1368,20,'Santiago Laollaga',1,NULL,NULL),(1369,20,'Guevea de Humboldt',1,NULL,NULL),(1370,20,'Santo Domingo Chihuitán',1,NULL,NULL),(1371,20,'Santa María Guienagati',1,NULL,NULL),(1372,20,'Magdalena Tequisistlán',1,NULL,NULL),(1373,20,'Magdalena Tlacotepec',1,NULL,NULL),(1374,20,'San Pedro Comitancillo',1,NULL,NULL),(1375,20,'Santa María Mixtequilla',1,NULL,NULL),(1376,20,'Santo Domingo Tehuantepec',1,NULL,NULL),(1377,20,'San Pedro Huamelula',1,NULL,NULL),(1378,20,'San Pedro Huilotepec',1,NULL,NULL),(1379,20,'San Mateo del Mar',1,NULL,NULL),(1380,20,'San Blas Atempa',1,NULL,NULL),(1381,20,'Santiago Astata',1,NULL,NULL),(1382,20,'San Miguel Tenango',1,NULL,NULL),(1383,20,'Miahuatlán de Porfirio Díaz',1,NULL,NULL),(1384,20,'San Nicolás',1,NULL,NULL),(1385,20,'San Simón Almolongas',1,NULL,NULL),(1386,20,'San Luis Amatlán',1,NULL,NULL),(1387,20,'San José Lachiguiri',1,NULL,NULL),(1388,20,'Sitio de Xitlapehua',1,NULL,NULL),(1389,20,'San Francisco Logueche',1,NULL,NULL),(1390,20,'Santa Ana',1,NULL,NULL),(1391,20,'Santa Cruz Xitla',1,NULL,NULL),(1392,20,'Monjas',1,NULL,NULL),(1393,20,'San Ildefonso Amatlán',1,NULL,NULL),(1394,20,'Santa Catarina Cuixtla',1,NULL,NULL),(1395,20,'San José del Peñasco',1,NULL,NULL),(1396,20,'San Cristóbal Amatlán',1,NULL,NULL),(1397,20,'San Juan Mixtepec -Dto.  -',1,NULL,NULL),(1398,20,'San Pedro Mixtepec -Dto.  -',1,NULL,NULL),(1399,20,'Santa Lucía Miahuatlán',1,NULL,NULL),(1400,20,'San Jerónimo Coatlán',1,NULL,NULL),(1401,20,'San Sebastián Coatlán',1,NULL,NULL),(1402,20,'San Pablo Coatlán',1,NULL,NULL),(1403,20,'San Mateo Río Hondo',1,NULL,NULL),(1404,20,'Santo Tomás Tamazulapan',1,NULL,NULL),(1405,20,'San Andrés Paxtlán',1,NULL,NULL),(1406,20,'Santa María Ozolotepec',1,NULL,NULL),(1407,20,'San Miguel Coatlán',1,NULL,NULL),(1408,20,'San Sebastián Río Hondo',1,NULL,NULL),(1409,20,'San Miguel Suchixtepec',1,NULL,NULL),(1410,20,'Santo Domingo Ozolotepec',1,NULL,NULL),(1411,20,'San Francisco Ozolotepec',1,NULL,NULL),(1412,20,'Santiago Xanica',1,NULL,NULL),(1413,20,'San Marcial Ozolotepec',1,NULL,NULL),(1414,20,'San Juan Ozolotepec',1,NULL,NULL),(1415,20,'San Pedro Pochutla',1,NULL,NULL),(1416,20,'Santo Domingo de Morelos',1,NULL,NULL),(1417,20,'Santa Catarina Loxicha',1,NULL,NULL),(1418,20,'San Agustín Loxicha',1,NULL,NULL),(1419,20,'San Baltazar Loxicha',1,NULL,NULL),(1420,20,'Santa María Colotepec',1,NULL,NULL),(1421,20,'San Bartolomé Loxicha',1,NULL,NULL),(1422,20,'Santa María Tonameca',1,NULL,NULL),(1423,20,'Candelaria Loxicha',1,NULL,NULL),(1424,20,'Pluma Hidalgo',1,NULL,NULL),(1425,20,'San Pedro el Alto',1,NULL,NULL),(1426,20,'San Mateo Piñas',1,NULL,NULL),(1427,20,'Santa María Huatulco',1,NULL,NULL),(1428,20,'San Miguel del Puerto',1,NULL,NULL),(1429,20,'Putla Villa de Guerrero',1,NULL,NULL),(1430,20,'Constancia del Rosario',1,NULL,NULL),(1431,20,'Mesones Hidalgo',1,NULL,NULL),(1432,20,'Santa María Zacatepec',1,NULL,NULL),(1433,20,'San Pedro Amuzgos',1,NULL,NULL),(1434,20,'La Reforma',1,NULL,NULL),(1435,20,'Santa María Ipalapa',1,NULL,NULL),(1436,20,'Chalcatongo de Hidalgo',1,NULL,NULL),(1437,20,'Santa María Yucuhiti',1,NULL,NULL),(1438,20,'San Esteban Atatlahuca',1,NULL,NULL),(1439,20,'Santa Catarina Ticuá',1,NULL,NULL),(1440,20,'Santiago Nuyoó',1,NULL,NULL),(1441,20,'Santa Catarina Yosonotú',1,NULL,NULL),(1442,20,'San Miguel el Grande',1,NULL,NULL),(1443,20,'Santo Domingo Ixcatlán',1,NULL,NULL),(1444,20,'San Pablo Tijaltepec',1,NULL,NULL),(1445,20,'Santa Cruz Tacahua',1,NULL,NULL),(1446,20,'Santa Lucía Monteverde',1,NULL,NULL),(1447,20,'San Andrés Cabecera Nueva',1,NULL,NULL),(1448,20,'Santa María Yolotepec',1,NULL,NULL),(1449,20,'Santiago Yosondúa',1,NULL,NULL),(1450,20,'Santa Cruz Itundujia',1,NULL,NULL),(1451,20,'Zimatlán de Álvarez',1,NULL,NULL),(1452,20,'San Bernardo Mixtepec',1,NULL,NULL),(1453,20,'Santa Cruz Mixtepec',1,NULL,NULL),(1454,20,'San Miguel Mixtepec',1,NULL,NULL),(1455,20,'Santa María Atzompa',1,NULL,NULL),(1456,20,'San Andrés Ixtlahuaca',1,NULL,NULL),(1457,20,'Santa Cruz Amilpas',1,NULL,NULL),(1458,20,'Santa Cruz Xoxocotlán',1,NULL,NULL),(1459,20,'Santa Lucía del Camino',1,NULL,NULL),(1460,20,'San Pedro Ixtlahuaca',1,NULL,NULL),(1461,20,'San Antonio de la Cal',1,NULL,NULL),(1462,20,'San Agustín de las Juntas',1,NULL,NULL),(1463,20,'San Pablo Huixtepec',1,NULL,NULL),(1464,20,'Ánimas Trujano',1,NULL,NULL),(1465,20,'San Jacinto Tlacotepec',1,NULL,NULL),(1466,20,'San Raymundo Jalpan',1,NULL,NULL),(1467,20,'Trinidad Zaachila',1,NULL,NULL),(1468,20,'Santa María Coyotepec',1,NULL,NULL),(1469,20,'San Bartolo Coyotepec',1,NULL,NULL),(1470,20,'Santa Inés Yatzeche',1,NULL,NULL),(1471,20,'Ciénega de Zimatlán',1,NULL,NULL),(1472,20,'San Antonio Huitepec',1,NULL,NULL),(1473,20,'Villa de Zaachila',1,NULL,NULL),(1474,20,'San Sebastián Tutla',1,NULL,NULL),(1475,20,'San Miguel Peras',1,NULL,NULL),(1476,20,'San Pablo Cuatro Venados',1,NULL,NULL),(1477,20,'Santa Inés del Monte',1,NULL,NULL),(1478,20,'Santa Gertrudis',1,NULL,NULL),(1479,20,'San Antonino el Alto',1,NULL,NULL),(1480,20,'Magdalena Mixtepec',1,NULL,NULL),(1481,20,'Santa Catarina Quiané',1,NULL,NULL),(1482,20,'Ayoquezco de Aldama',1,NULL,NULL),(1483,20,'Santa Ana Tlapacoyan',1,NULL,NULL),(1484,20,'Santa Cruz Zenzontepec',1,NULL,NULL),(1485,20,'San Francisco Cahuacuá',1,NULL,NULL),(1486,20,'San Mateo Yucutindoo',1,NULL,NULL),(1487,20,'Santiago Textitlán',1,NULL,NULL),(1488,20,'Santiago Amoltepec',1,NULL,NULL),(1489,20,'Santa María Zaniza',1,NULL,NULL),(1490,20,'Santo Domingo Teojomulco',1,NULL,NULL),(1491,20,'Cuilápam de Guerrero',1,NULL,NULL),(1492,20,'Villa Sola de Vega',1,NULL,NULL),(1493,20,'Santa María Lachixío',1,NULL,NULL),(1494,20,'San Vicente Lachixío',1,NULL,NULL),(1495,20,'San Lorenzo Texmelúcan',1,NULL,NULL),(1496,20,'Santa María Sola',1,NULL,NULL),(1497,20,'San Francisco Sola',1,NULL,NULL),(1498,20,'San Ildefonso Sola',1,NULL,NULL),(1499,20,'Santiago Minas',1,NULL,NULL),(1500,20,'Heroica Ciudad de Ejutla de Crespo',1,NULL,NULL),(1501,20,'San Martín Tilcajete',1,NULL,NULL),(1502,20,'Santo Tomás Jalieza',1,NULL,NULL),(1503,20,'San Juan Chilateca',1,NULL,NULL),(1504,20,'Ocotlán de Morelos',1,NULL,NULL),(1505,20,'Santa Ana Zegache',1,NULL,NULL),(1506,20,'Santiago Apóstol',1,NULL,NULL),(1507,20,'San Antonino Castillo Velasco',1,NULL,NULL),(1508,20,'Asunción Ocotlán',1,NULL,NULL),(1509,20,'San Pedro Mártir',1,NULL,NULL),(1510,20,'San Dionisio Ocotlán',1,NULL,NULL),(1511,20,'Magdalena Ocotlán',1,NULL,NULL),(1512,20,'San Miguel Tilquiápam',1,NULL,NULL),(1513,20,'Santa Catarina Minas',1,NULL,NULL),(1514,20,'San Baltazar Chichicápam',1,NULL,NULL),(1515,20,'San Pedro Apóstol',1,NULL,NULL),(1516,20,'Santa Lucía Ocotlán',1,NULL,NULL),(1517,20,'San Jerónimo Taviche',1,NULL,NULL),(1518,20,'San Andrés Zabache',1,NULL,NULL),(1519,20,'San José del Progreso',1,NULL,NULL),(1520,20,'Yaxe',1,NULL,NULL),(1521,20,'San Pedro Taviche',1,NULL,NULL),(1522,20,'San Martín de los Cansecos',1,NULL,NULL),(1523,20,'San Martín Lachilá',1,NULL,NULL),(1524,20,'La Pe',1,NULL,NULL),(1525,20,'La Compañía',1,NULL,NULL),(1526,20,'Coatecas Altas',1,NULL,NULL),(1527,20,'San Juan Lachigalla',1,NULL,NULL),(1528,20,'San Agustín Amatengo',1,NULL,NULL),(1529,20,'Taniche',1,NULL,NULL),(1530,20,'San Miguel Ejutla',1,NULL,NULL),(1531,20,'Yogana',1,NULL,NULL),(1532,20,'San Vicente Coatlán',1,NULL,NULL),(1533,20,'Santiago Pinotepa Nacional',1,NULL,NULL),(1534,20,'San Juan Cacahuatepec',1,NULL,NULL),(1535,20,'San Juan Bautista Lo de Soto',1,NULL,NULL),(1536,20,'Mártires de Tacubaya',1,NULL,NULL),(1537,20,'San Sebastián Ixcapa',1,NULL,NULL),(1538,20,'San Antonio Tepetlapa',1,NULL,NULL),(1539,20,'Santa María Cortijo',1,NULL,NULL),(1540,20,'Santiago Llano Grande',1,NULL,NULL),(1541,20,'San Miguel Tlacamama',1,NULL,NULL),(1542,20,'Santiago Tapextla',1,NULL,NULL),(1543,20,'San José Estancia Grande',1,NULL,NULL),(1544,20,'Santo Domingo Armenta',1,NULL,NULL),(1545,20,'Santiago Jamiltepec',1,NULL,NULL),(1546,20,'San Pedro Atoyac',1,NULL,NULL),(1547,20,'San Juan Colorado',1,NULL,NULL),(1548,20,'Santiago Ixtayutla',1,NULL,NULL),(1549,20,'San Pedro Jicayán',1,NULL,NULL),(1550,20,'Pinotepa de Don Luis',1,NULL,NULL),(1551,20,'San Lorenzo',1,NULL,NULL),(1552,20,'San Agustín Chayuco',1,NULL,NULL),(1553,20,'San Andrés Huaxpaltepec',1,NULL,NULL),(1554,20,'Santa Catarina Mechoacán',1,NULL,NULL),(1555,20,'Santiago Tetepec',1,NULL,NULL),(1556,20,'Santa María Huazolotitlán',1,NULL,NULL),(1557,20,'Villa de Tututepec de Melchor Ocampo',1,NULL,NULL),(1558,20,'Tataltepec de Valdés',1,NULL,NULL),(1559,20,'San Juan Quiahije',1,NULL,NULL),(1560,20,'San Miguel Panixtlahuaca',1,NULL,NULL),(1561,20,'Santa Catarina Juquila',1,NULL,NULL),(1562,20,'San Pedro Juchatengo',1,NULL,NULL),(1563,20,'Santiago Yaitepec',1,NULL,NULL),(1564,20,'San Juan Lachao',1,NULL,NULL),(1565,20,'Santa María Temaxcaltepec',1,NULL,NULL),(1566,20,'Santos Reyes Nopala',1,NULL,NULL),(1567,20,'San Gabriel Mixtepec',1,NULL,NULL),(1568,20,'San Pedro Mixtepec -Dto.  -',1,NULL,NULL),(1569,21,'Puebla',1,NULL,NULL),(1570,21,'Tlaltenango',1,NULL,NULL),(1571,21,'San Miguel Xoxtla',1,NULL,NULL),(1572,21,'Juan C. Bonilla',1,NULL,NULL),(1573,21,'Coronango',1,NULL,NULL),(1574,21,'Cuautlancingo',1,NULL,NULL),(1575,21,'San Pedro Cholula',1,NULL,NULL),(1576,21,'San Andrés Cholula',1,NULL,NULL),(1577,21,'Ocoyucan',1,NULL,NULL),(1578,21,'Amozoc',1,NULL,NULL),(1579,21,'Francisco Z. Mena',1,NULL,NULL),(1580,21,'Pantepec',1,NULL,NULL),(1581,21,'Venustiano Carranza',1,NULL,NULL),(1582,21,'Jalpan',1,NULL,NULL),(1583,21,'Tlaxco',1,NULL,NULL),(1584,21,'Tlacuilotepec',1,NULL,NULL),(1585,21,'Xicotepec',1,NULL,NULL),(1586,21,'Pahuatlán',1,NULL,NULL),(1587,21,'Honey',1,NULL,NULL),(1588,21,'Naupan',1,NULL,NULL),(1589,21,'Huauchinango',1,NULL,NULL),(1590,21,'Ahuazotepec',1,NULL,NULL),(1591,21,'Juan Galindo',1,NULL,NULL),(1592,21,'Tlaola',1,NULL,NULL),(1593,21,'Zihuateutla',1,NULL,NULL),(1594,21,'Jopala',1,NULL,NULL),(1595,21,'Tlapacoya',1,NULL,NULL),(1596,21,'Chignahuapan',1,NULL,NULL),(1597,21,'Zacatlán',1,NULL,NULL),(1598,21,'Chiconcuautla',1,NULL,NULL),(1599,21,'Ahuacatlán',1,NULL,NULL),(1600,21,'Tepetzintla',1,NULL,NULL),(1601,21,'San Felipe Tepatlán',1,NULL,NULL),(1602,21,'Amixtlán',1,NULL,NULL),(1603,21,'Tepango de Rodríguez',1,NULL,NULL),(1604,21,'Zongozotla',1,NULL,NULL),(1605,21,'Hermenegildo Galeana',1,NULL,NULL),(1606,21,'Olintla',1,NULL,NULL),(1607,21,'Coatepec',1,NULL,NULL),(1608,21,'Camocuautla',1,NULL,NULL),(1609,21,'Hueytlalpan',1,NULL,NULL),(1610,21,'Zapotitlán de Méndez',1,NULL,NULL),(1611,21,'Huitzilan de Serdán',1,NULL,NULL),(1612,21,'Xochitlán de Vicente Suárez',1,NULL,NULL),(1613,21,'Huehuetla',1,NULL,NULL),(1614,21,'Ixtepec',1,NULL,NULL),(1615,21,'Atlequizayan',1,NULL,NULL),(1616,21,'Tenampulco',1,NULL,NULL),(1617,21,'Tuzamapan de Galeana',1,NULL,NULL),(1618,21,'Caxhuacan',1,NULL,NULL),(1619,21,'Jonotla',1,NULL,NULL),(1620,21,'Zoquiapan',1,NULL,NULL),(1621,21,'Nauzontla',1,NULL,NULL),(1622,21,'Cuetzalan del Progreso',1,NULL,NULL),(1623,21,'Ayotoxco de Guerrero',1,NULL,NULL),(1624,21,'Hueytamalco',1,NULL,NULL),(1625,21,'Acateno',1,NULL,NULL),(1626,21,'Cuautempan',1,NULL,NULL),(1627,21,'Aquixtla',1,NULL,NULL),(1628,21,'Tetela de Ocampo',1,NULL,NULL),(1629,21,'Xochiapulco',1,NULL,NULL),(1630,21,'Zacapoaxtla',1,NULL,NULL),(1631,21,'Zaragoza',1,NULL,NULL),(1632,21,'Ixtacamaxtitlán',1,NULL,NULL),(1633,21,'Zautla',1,NULL,NULL),(1634,21,'Ocotepec',1,NULL,NULL),(1635,21,'Libres',1,NULL,NULL),(1636,21,'Teziutlán',1,NULL,NULL),(1637,21,'Tlatlauquitepec',1,NULL,NULL),(1638,21,'Yaonáhuac',1,NULL,NULL),(1639,21,'Hueyapan',1,NULL,NULL),(1640,21,'Teteles de Avila Castillo',1,NULL,NULL),(1641,21,'Atempan',1,NULL,NULL),(1642,21,'Chignautla',1,NULL,NULL),(1643,21,'Xiutetelco',1,NULL,NULL),(1644,21,'Cuyoaco',1,NULL,NULL),(1645,21,'Tepeyahualco',1,NULL,NULL),(1646,21,'San Martín Texmelucan',1,NULL,NULL),(1647,21,'Tlahuapan',1,NULL,NULL),(1648,21,'San Matías Tlalancaleca',1,NULL,NULL),(1649,21,'San Salvador el Verde',1,NULL,NULL),(1650,21,'San Felipe Teotlalcingo',1,NULL,NULL),(1651,21,'Chiautzingo',1,NULL,NULL),(1652,21,'Huejotzingo',1,NULL,NULL),(1653,21,'Domingo Arenas',1,NULL,NULL),(1654,21,'Calpan',1,NULL,NULL),(1655,21,'San Nicolás de los Ranchos',1,NULL,NULL),(1656,21,'Atlixco',1,NULL,NULL),(1657,21,'Nealtican',1,NULL,NULL),(1658,21,'San Jerónimo Tecuanipan',1,NULL,NULL),(1659,21,'San Gregorio Atzompa',1,NULL,NULL),(1660,21,'Tochimilco',1,NULL,NULL),(1661,21,'Tianguismanalco',1,NULL,NULL),(1662,21,'Santa Isabel Cholula',1,NULL,NULL),(1663,21,'Huaquechula',1,NULL,NULL),(1664,21,'San Diego la Mesa Tochimiltzingo',1,NULL,NULL),(1665,21,'Tepeojuma',1,NULL,NULL),(1666,21,'Izúcar de Matamoros',1,NULL,NULL),(1667,21,'Atzitzihuacán',1,NULL,NULL),(1668,21,'Acteopan',1,NULL,NULL),(1669,21,'Cohuecan',1,NULL,NULL),(1670,21,'Tepemaxalco',1,NULL,NULL),(1671,21,'Tlapanalá',1,NULL,NULL),(1672,21,'Tepexco',1,NULL,NULL),(1673,21,'Tilapa',1,NULL,NULL),(1674,21,'Chietla',1,NULL,NULL),(1675,21,'Atzala',1,NULL,NULL),(1676,21,'Teopantlán',1,NULL,NULL),(1677,21,'San Martín Totoltepec',1,NULL,NULL),(1678,21,'Xochiltepec',1,NULL,NULL),(1679,21,'Epatlán',1,NULL,NULL),(1680,21,'Ahuatlán',1,NULL,NULL),(1681,21,'Coatzingo',1,NULL,NULL),(1682,21,'Santa Catarina Tlaltempan',1,NULL,NULL),(1683,21,'Chigmecatitlán',1,NULL,NULL),(1684,21,'Zacapala',1,NULL,NULL),(1685,21,'Tepexi de Rodríguez',1,NULL,NULL),(1686,21,'Teotlalco',1,NULL,NULL),(1687,21,'Jolalpan',1,NULL,NULL),(1688,21,'Huehuetlán el Chico',1,NULL,NULL),(1689,21,'Chiautla',1,NULL,NULL),(1690,21,'Cohetzala',1,NULL,NULL),(1691,21,'Xicotlán',1,NULL,NULL),(1692,21,'Chila de la Sal',1,NULL,NULL),(1693,21,'Ixcamilpa de Guerrero',1,NULL,NULL),(1694,21,'Albino Zertuche',1,NULL,NULL),(1695,21,'Tulcingo',1,NULL,NULL),(1696,21,'Tehuitzingo',1,NULL,NULL),(1697,21,'Cuayuca de Andrade',1,NULL,NULL),(1698,21,'Santa Inés Ahuatempan',1,NULL,NULL),(1699,21,'Axutla',1,NULL,NULL),(1700,21,'Chinantla',1,NULL,NULL),(1701,21,'Ahuehuetitla',1,NULL,NULL),(1702,21,'San Pablo Anicano',1,NULL,NULL),(1703,21,'Tecomatlán',1,NULL,NULL),(1704,21,'Piaxtla',1,NULL,NULL),(1705,21,'Guadalupe',1,NULL,NULL),(1706,21,'Ixcaquixtla',1,NULL,NULL),(1707,21,'Coyotepec',1,NULL,NULL),(1708,21,'Xayacatlán de Bravo',1,NULL,NULL),(1709,21,'Totoltepec de Guerrero',1,NULL,NULL),(1710,21,'Acatlán',1,NULL,NULL),(1711,21,'San Jerónimo Xayacatlán',1,NULL,NULL),(1712,21,'San Pedro Yeloixtlahuaca',1,NULL,NULL),(1713,21,'Petlalcingo',1,NULL,NULL),(1714,21,'San Miguel Ixitlán',1,NULL,NULL),(1715,21,'Chila',1,NULL,NULL),(1716,21,'Rafael Lara Grajales',1,NULL,NULL),(1717,21,'San José Chiapa',1,NULL,NULL),(1718,21,'Oriental',1,NULL,NULL),(1719,21,'San Nicolás Buenos Aires',1,NULL,NULL),(1720,21,'Guadalupe Victoria',1,NULL,NULL),(1721,21,'Tlachichuca',1,NULL,NULL),(1722,21,'Lafragua',1,NULL,NULL),(1723,21,'Chilchotla',1,NULL,NULL),(1724,21,'Quimixtlán',1,NULL,NULL),(1725,21,'Chichiquila',1,NULL,NULL),(1726,21,'Tepatlaxco de Hidalgo',1,NULL,NULL),(1727,21,'Acajete',1,NULL,NULL),(1728,21,'Nopalucan',1,NULL,NULL),(1729,21,'Mazapiltepec de Juárez',1,NULL,NULL),(1730,21,'Soltepec',1,NULL,NULL),(1731,21,'Acatzingo',1,NULL,NULL),(1732,21,'San Salvador el Seco',1,NULL,NULL),(1733,21,'General Felipe Ángeles',1,NULL,NULL),(1734,21,'Aljojuca',1,NULL,NULL),(1735,21,'San Juan Atenco',1,NULL,NULL),(1736,21,'Tepeaca',1,NULL,NULL),(1737,21,'Cuautinchán',1,NULL,NULL),(1738,21,'Tecali de Herrera',1,NULL,NULL),(1739,21,'Mixtla',1,NULL,NULL),(1740,21,'Santo Tomás Hueyotlipan',1,NULL,NULL),(1741,21,'Tzicatlacoyan',1,NULL,NULL),(1742,21,'Huehuetlán el Grande',1,NULL,NULL),(1743,21,'La Magdalena Tlatlauquitepec',1,NULL,NULL),(1744,21,'San Juan Atzompa',1,NULL,NULL),(1745,21,'Huatlatlauca',1,NULL,NULL),(1746,21,'Los Reyes de Juárez',1,NULL,NULL),(1747,21,'Cuapiaxtla de Madero',1,NULL,NULL),(1748,21,'San Salvador Huixcolotla',1,NULL,NULL),(1749,21,'Quecholac',1,NULL,NULL),(1750,21,'Tecamachalco',1,NULL,NULL),(1751,21,'Palmar de Bravo',1,NULL,NULL),(1752,21,'Chalchicomula de Sesma',1,NULL,NULL),(1753,21,'Atzitzintla',1,NULL,NULL),(1754,21,'Esperanza',1,NULL,NULL),(1755,21,'Cañada Morelos',1,NULL,NULL),(1756,21,'Tlanepantla',1,NULL,NULL),(1757,21,'Tochtepec',1,NULL,NULL),(1758,21,'Atoyatempan',1,NULL,NULL),(1759,21,'Tepeyahualco de Cuauhtémoc',1,NULL,NULL),(1760,21,'Huitziltepec',1,NULL,NULL),(1761,21,'Molcaxac',1,NULL,NULL),(1762,21,'Xochitlán Todos Santos',1,NULL,NULL),(1763,21,'Yehualtepec',1,NULL,NULL),(1764,21,'Tlacotepec de Benito Juárez',1,NULL,NULL),(1765,21,'Juan N. Méndez',1,NULL,NULL),(1766,21,'Tehuacán',1,NULL,NULL),(1767,21,'Tepanco de López',1,NULL,NULL),(1768,21,'Chapulco',1,NULL,NULL),(1769,21,'Santiago Miahuatlán',1,NULL,NULL),(1770,21,'Nicolás Bravo',1,NULL,NULL),(1771,21,'Atexcal',1,NULL,NULL),(1772,21,'San Antonio Cañada',1,NULL,NULL),(1773,21,'Zapotitlán',1,NULL,NULL),(1774,21,'San Gabriel Chilac',1,NULL,NULL),(1775,21,'Caltepec',1,NULL,NULL),(1776,21,'Vicente Guerrero',1,NULL,NULL),(1777,21,'Ajalpan',1,NULL,NULL),(1778,21,'Eloxochitlán',1,NULL,NULL),(1779,21,'Zoquitlán',1,NULL,NULL),(1780,21,'San Sebastián Tlacotepec',1,NULL,NULL),(1781,21,'Altepexi',1,NULL,NULL),(1782,21,'Zinacatepec',1,NULL,NULL),(1783,21,'San José Miahuatlán',1,NULL,NULL),(1784,21,'Coxcatlán',1,NULL,NULL),(1785,21,'Coyomeapan',1,NULL,NULL),(1786,22,'Querétaro',1,NULL,NULL),(1787,22,'El Marqués',1,NULL,NULL),(1788,22,'Colón',1,NULL,NULL),(1789,22,'Pinal de Amoles',1,NULL,NULL),(1790,22,'Jalpan de Serra',1,NULL,NULL),(1791,22,'Landa de Matamoros',1,NULL,NULL),(1792,22,'Arroyo Seco',1,NULL,NULL),(1793,22,'Peñamiller',1,NULL,NULL),(1794,22,'Cadereyta de Montes',1,NULL,NULL),(1795,22,'San Joaquín',1,NULL,NULL),(1796,22,'Tolimán',1,NULL,NULL),(1797,22,'Ezequiel Montes',1,NULL,NULL),(1798,22,'Pedro Escobedo',1,NULL,NULL),(1799,22,'Tequisquiapan',1,NULL,NULL),(1800,22,'San Juan del Río',1,NULL,NULL),(1801,22,'Amealco de Bonfil',1,NULL,NULL),(1802,22,'Corregidora',1,NULL,NULL),(1803,22,'Huimilpan',1,NULL,NULL),(1804,23,'Othón P. Blanco',1,NULL,NULL),(1805,23,'Felipe Carrillo Puerto',1,NULL,NULL),(1806,23,'Lázaro Cárdenas',1,NULL,NULL),(1807,23,'Isla Mujeres',1,NULL,NULL),(1808,23,'Benito Juárez',1,NULL,NULL),(1809,23,'Cozumel',1,NULL,NULL),(1810,23,'Solidaridad',1,NULL,NULL),(1811,23,'Tulum',1,NULL,NULL),(1812,23,'José María Morelos',1,NULL,NULL),(1813,23,'Bacalar',1,NULL,NULL),(1814,24,'San Luis Potosí',1,NULL,NULL),(1815,24,'Soledad de Graciano Sánchez',1,NULL,NULL),(1816,24,'Cerro de San Pedro',1,NULL,NULL),(1817,24,'Ahualulco',1,NULL,NULL),(1818,24,'Mexquitic de Carmona',1,NULL,NULL),(1819,24,'Villa de Arriaga',1,NULL,NULL),(1820,24,'Vanegas',1,NULL,NULL),(1821,24,'Cedral',1,NULL,NULL),(1822,24,'Catorce',1,NULL,NULL),(1823,24,'Charcas',1,NULL,NULL),(1824,24,'Salinas',1,NULL,NULL),(1825,24,'Santo Domingo',1,NULL,NULL),(1826,24,'Villa de Ramos',1,NULL,NULL),(1827,24,'Matehuala',1,NULL,NULL),(1828,24,'Villa de la Paz',1,NULL,NULL),(1829,24,'Villa de Guadalupe',1,NULL,NULL),(1830,24,'Guadalcázar',1,NULL,NULL),(1831,24,'Moctezuma',1,NULL,NULL),(1832,24,'Venado',1,NULL,NULL),(1833,24,'Villa de Arista',1,NULL,NULL),(1834,24,'Villa Hidalgo',1,NULL,NULL),(1835,24,'Armadillo de los Infante',1,NULL,NULL),(1836,24,'Ciudad Valles',1,NULL,NULL),(1837,24,'Ebano',1,NULL,NULL),(1838,24,'Tamuín',1,NULL,NULL),(1839,24,'El Naranjo',1,NULL,NULL),(1840,24,'Ciudad del Maíz',1,NULL,NULL),(1841,24,'Alaquines',1,NULL,NULL),(1842,24,'Cárdenas',1,NULL,NULL),(1843,24,'Cerritos',1,NULL,NULL),(1844,24,'Villa Juárez',1,NULL,NULL),(1845,24,'San Nicolás Tolentino',1,NULL,NULL),(1846,24,'Villa de Reyes',1,NULL,NULL),(1847,24,'Zaragoza',1,NULL,NULL),(1848,24,'Santa María del Río',1,NULL,NULL),(1849,24,'Tierra Nueva',1,NULL,NULL),(1850,24,'Rioverde',1,NULL,NULL),(1851,24,'Ciudad Fernández',1,NULL,NULL),(1852,24,'San Ciro de Acosta',1,NULL,NULL),(1853,24,'Tamasopo',1,NULL,NULL),(1854,24,'Rayón',1,NULL,NULL),(1855,24,'Aquismón',1,NULL,NULL),(1856,24,'Lagunillas',1,NULL,NULL),(1857,24,'Santa Catarina',1,NULL,NULL),(1858,24,'Tancanhuitz',1,NULL,NULL),(1859,24,'Tanlajás',1,NULL,NULL),(1860,24,'San Vicente Tancuayalab',1,NULL,NULL),(1861,24,'San Antonio',1,NULL,NULL),(1862,24,'Tanquián de Escobedo',1,NULL,NULL),(1863,24,'Tampamolón Corona',1,NULL,NULL),(1864,24,'Coxcatlán',1,NULL,NULL),(1865,24,'Huehuetlán',1,NULL,NULL),(1866,24,'Xilitla',1,NULL,NULL),(1867,24,'Axtla de Terrazas',1,NULL,NULL),(1868,24,'Tampacán',1,NULL,NULL),(1869,24,'San Martín Chalchicuautla',1,NULL,NULL),(1870,24,'Tamazunchale',1,NULL,NULL),(1871,24,'Matlapa',1,NULL,NULL),(1872,25,'Culiacán',1,NULL,NULL),(1873,25,'Navolato',1,NULL,NULL),(1874,25,'Badiraguato',1,NULL,NULL),(1875,25,'Cosalá',1,NULL,NULL),(1876,25,'Mocorito',1,NULL,NULL),(1877,25,'Guasave',1,NULL,NULL),(1878,25,'Ahome',1,NULL,NULL),(1879,25,'Salvador Alvarado',1,NULL,NULL),(1880,25,'Angostura',1,NULL,NULL),(1881,25,'Choix',1,NULL,NULL),(1882,25,'El Fuerte',1,NULL,NULL),(1883,25,'Sinaloa',1,NULL,NULL),(1884,25,'Mazatlán',1,NULL,NULL),(1885,25,'Escuinapa',1,NULL,NULL),(1886,25,'Concordia',1,NULL,NULL),(1887,25,'Elota',1,NULL,NULL),(1888,25,'Rosario',1,NULL,NULL),(1889,25,'San Ignacio',1,NULL,NULL),(1890,26,'Hermosillo',1,NULL,NULL),(1891,26,'San Miguel de Horcasitas',1,NULL,NULL),(1892,26,'Carbó',1,NULL,NULL),(1893,26,'San Luis Río Colorado',1,NULL,NULL),(1894,26,'Puerto Peñasco',1,NULL,NULL),(1895,26,'General Plutarco Elías Calles',1,NULL,NULL),(1896,26,'Caborca',1,NULL,NULL),(1897,26,'Altar',1,NULL,NULL),(1898,26,'Tubutama',1,NULL,NULL),(1899,26,'Atil',1,NULL,NULL),(1900,26,'Oquitoa',1,NULL,NULL),(1901,26,'Sáric',1,NULL,NULL),(1902,26,'Benjamín Hill',1,NULL,NULL),(1903,26,'Trincheras',1,NULL,NULL),(1904,26,'Pitiquito',1,NULL,NULL),(1905,26,'Nogales',1,NULL,NULL),(1906,26,'Imuris',1,NULL,NULL),(1907,26,'Santa Cruz',1,NULL,NULL),(1908,26,'Magdalena',1,NULL,NULL),(1909,26,'Naco',1,NULL,NULL),(1910,26,'Agua Prieta',1,NULL,NULL),(1911,26,'Fronteras',1,NULL,NULL),(1912,26,'Nacozari de García',1,NULL,NULL),(1913,26,'Bavispe',1,NULL,NULL),(1914,26,'Bacerac',1,NULL,NULL),(1915,26,'Huachinera',1,NULL,NULL),(1916,26,'Nácori Chico',1,NULL,NULL),(1917,26,'Granados',1,NULL,NULL),(1918,26,'Bacadéhuachi',1,NULL,NULL),(1919,26,'Cumpas',1,NULL,NULL),(1920,26,'Huásabas',1,NULL,NULL),(1921,26,'Moctezuma',1,NULL,NULL),(1922,26,'Villa Hidalgo',1,NULL,NULL),(1923,26,'Santa Ana',1,NULL,NULL),(1924,26,'Cananea',1,NULL,NULL),(1925,26,'Arizpe',1,NULL,NULL),(1926,26,'Cucurpe',1,NULL,NULL),(1927,26,'Bacoachi',1,NULL,NULL),(1928,26,'San Pedro de la Cueva',1,NULL,NULL),(1929,26,'Divisaderos',1,NULL,NULL),(1930,26,'Tepache',1,NULL,NULL),(1931,26,'Villa Pesqueira',1,NULL,NULL),(1932,26,'Opodepe',1,NULL,NULL),(1933,26,'Huépac',1,NULL,NULL),(1934,26,'Banámichi',1,NULL,NULL),(1935,26,'Ures',1,NULL,NULL),(1936,26,'Aconchi',1,NULL,NULL),(1937,26,'Baviácora',1,NULL,NULL),(1938,26,'San Felipe de Jesús',1,NULL,NULL),(1939,26,'Rayón',1,NULL,NULL),(1940,26,'Cajeme',1,NULL,NULL),(1941,26,'Navojoa',1,NULL,NULL),(1942,26,'Huatabampo',1,NULL,NULL),(1943,26,'Bácum',1,NULL,NULL),(1944,26,'Etchojoa',1,NULL,NULL),(1945,26,'Benito Juárez',1,NULL,NULL),(1946,26,'Empalme',1,NULL,NULL),(1947,26,'Guaymas',1,NULL,NULL),(1948,26,'San Ignacio Río Muerto',1,NULL,NULL),(1949,26,'La Colorada',1,NULL,NULL),(1950,26,'Mazatán',1,NULL,NULL),(1951,26,'Suaqui Grande',1,NULL,NULL),(1952,26,'Sahuaripa',1,NULL,NULL),(1953,26,'San Javier',1,NULL,NULL),(1954,26,'Soyopa',1,NULL,NULL),(1955,26,'Bacanora',1,NULL,NULL),(1956,26,'Arivechi',1,NULL,NULL),(1957,26,'Rosario',1,NULL,NULL),(1958,26,'Quiriego',1,NULL,NULL),(1959,26,'Onavas',1,NULL,NULL),(1960,26,'Alamos',1,NULL,NULL),(1961,26,'Yécora',1,NULL,NULL),(1962,27,'Centro',1,NULL,NULL),(1963,27,'Jalpa de Méndez',1,NULL,NULL),(1964,27,'Nacajuca',1,NULL,NULL),(1965,27,'Comalcalco',1,NULL,NULL),(1966,27,'Huimanguillo',1,NULL,NULL),(1967,27,'Cárdenas',1,NULL,NULL),(1968,27,'Paraíso',1,NULL,NULL),(1969,27,'Cunduacán',1,NULL,NULL),(1970,27,'Macuspana',1,NULL,NULL),(1971,27,'Centla',1,NULL,NULL),(1972,27,'Jonuta',1,NULL,NULL),(1973,27,'Teapa',1,NULL,NULL),(1974,27,'Jalapa',1,NULL,NULL),(1975,27,'Tacotalpa',1,NULL,NULL),(1976,27,'Tenosique',1,NULL,NULL),(1977,27,'Balancán',1,NULL,NULL),(1978,27,'Emiliano Zapata',1,NULL,NULL),(1979,28,'Victoria',1,NULL,NULL),(1980,28,'Llera',1,NULL,NULL),(1981,28,'Güémez',1,NULL,NULL),(1982,28,'Casas',1,NULL,NULL),(1983,28,'Matamoros',1,NULL,NULL),(1984,28,'Valle Hermoso',1,NULL,NULL),(1985,28,'San Fernando',1,NULL,NULL),(1986,28,'Cruillas',1,NULL,NULL),(1987,28,'San Nicolás',1,NULL,NULL),(1988,28,'Soto la Marina',1,NULL,NULL),(1989,28,'Jiménez',1,NULL,NULL),(1990,28,'San Carlos',1,NULL,NULL),(1991,28,'Abasolo',1,NULL,NULL),(1992,28,'Padilla',1,NULL,NULL),(1993,28,'Hidalgo',1,NULL,NULL),(1994,28,'Mainero',1,NULL,NULL),(1995,28,'Villagrán',1,NULL,NULL),(1996,28,'Tula',1,NULL,NULL),(1997,28,'Jaumave',1,NULL,NULL),(1998,28,'Miquihuana',1,NULL,NULL),(1999,28,'Bustamante',1,NULL,NULL),(2000,28,'Palmillas',1,NULL,NULL),(2001,28,'Ocampo',1,NULL,NULL),(2002,28,'Nuevo Laredo',1,NULL,NULL),(2003,28,'Miguel Alemán',1,NULL,NULL),(2004,28,'Guerrero',1,NULL,NULL),(2005,28,'Mier',1,NULL,NULL),(2006,28,'Gustavo Díaz Ordaz',1,NULL,NULL),(2007,28,'Camargo',1,NULL,NULL),(2008,28,'Reynosa',1,NULL,NULL),(2009,28,'Río Bravo',1,NULL,NULL),(2010,28,'Méndez',1,NULL,NULL),(2011,28,'Burgos',1,NULL,NULL),(2012,28,'Tampico',1,NULL,NULL),(2013,28,'Ciudad Madero',1,NULL,NULL),(2014,28,'Altamira',1,NULL,NULL),(2015,28,'Aldama',1,NULL,NULL),(2016,28,'González',1,NULL,NULL),(2017,28,'Xicoténcatl',1,NULL,NULL),(2018,28,'Gómez Farías',1,NULL,NULL),(2019,28,'El Mante',1,NULL,NULL),(2020,28,'Antiguo Morelos',1,NULL,NULL),(2021,28,'Nuevo Morelos',1,NULL,NULL),(2022,29,'Tlaxcala',1,NULL,NULL),(2023,29,'Ixtacuixtla de Mariano Matamoros',1,NULL,NULL),(2024,29,'Santa Ana Nopalucan',1,NULL,NULL),(2025,29,'Panotla',1,NULL,NULL),(2026,29,'Totolac',1,NULL,NULL),(2027,29,'Tepeyanco',1,NULL,NULL),(2028,29,'Santa Isabel Xiloxoxtla',1,NULL,NULL),(2029,29,'San Juan Huactzinco',1,NULL,NULL),(2030,29,'Calpulalpan',1,NULL,NULL),(2031,29,'Sanctórum de Lázaro Cárdenas',1,NULL,NULL),(2032,29,'Benito Juárez',1,NULL,NULL),(2033,29,'Hueyotlipan',1,NULL,NULL),(2034,29,'Tlaxco',1,NULL,NULL),(2035,29,'Nanacamilpa de Mariano Arista',1,NULL,NULL),(2036,29,'Españita',1,NULL,NULL),(2037,29,'Apizaco',1,NULL,NULL),(2038,29,'Atlangatepec',1,NULL,NULL),(2039,29,'Muñoz de Domingo Arenas',1,NULL,NULL),(2040,29,'Tetla de la Solidaridad',1,NULL,NULL),(2041,29,'Xaltocan',1,NULL,NULL),(2042,29,'San Lucas Tecopilco',1,NULL,NULL),(2043,29,'Yauhquemehcan',1,NULL,NULL),(2044,29,'Xaloztoc',1,NULL,NULL),(2045,29,'Tocatlán',1,NULL,NULL),(2046,29,'Tzompantepec',1,NULL,NULL),(2047,29,'San José Teacalco',1,NULL,NULL),(2048,29,'Huamantla',1,NULL,NULL),(2049,29,'Terrenate',1,NULL,NULL),(2050,29,'Lázaro Cárdenas',1,NULL,NULL),(2051,29,'Emiliano Zapata',1,NULL,NULL),(2052,29,'Atltzayanca',1,NULL,NULL),(2053,29,'Cuapiaxtla',1,NULL,NULL),(2054,29,'El Carmen Tequexquitla',1,NULL,NULL),(2055,29,'Ixtenco',1,NULL,NULL),(2056,29,'Ziltlaltépec de Trinidad Sánchez Santos',1,NULL,NULL),(2057,29,'Apetatitlán de Antonio Carvajal',1,NULL,NULL),(2058,29,'Amaxac de Guerrero',1,NULL,NULL),(2059,29,'Santa Cruz Tlaxcala',1,NULL,NULL),(2060,29,'Cuaxomulco',1,NULL,NULL),(2061,29,'Contla de Juan Cuamatzi',1,NULL,NULL),(2062,29,'Tepetitla de Lardizábal',1,NULL,NULL),(2063,29,'Natívitas',1,NULL,NULL),(2064,29,'Santa Apolonia Teacalco',1,NULL,NULL),(2065,29,'Tetlatlahuca',1,NULL,NULL),(2066,29,'San Damián Texóloc',1,NULL,NULL),(2067,29,'San Jerónimo Zacualpan',1,NULL,NULL),(2068,29,'Zacatelco',1,NULL,NULL),(2069,29,'San Lorenzo Axocomanitla',1,NULL,NULL),(2070,29,'Santa Catarina Ayometla',1,NULL,NULL),(2071,29,'Xicohtzinco',1,NULL,NULL),(2072,29,'Papalotla de Xicohténcatl',1,NULL,NULL),(2073,29,'Chiautempan',1,NULL,NULL),(2074,29,'La Magdalena Tlaltelulco',1,NULL,NULL),(2075,29,'San Francisco Tetlanohcan',1,NULL,NULL),(2076,29,'Teolocholco',1,NULL,NULL),(2077,29,'Acuamanala de Miguel Hidalgo',1,NULL,NULL),(2078,29,'Santa Cruz Quilehtla',1,NULL,NULL),(2079,29,'Mazatecochco de José María Morelos',1,NULL,NULL),(2080,29,'Tenancingo',1,NULL,NULL),(2081,29,'San Pablo del Monte',1,NULL,NULL),(2082,30,'Xalapa',1,NULL,NULL),(2083,30,'Tlalnelhuayocan',1,NULL,NULL),(2084,30,'Xico',1,NULL,NULL),(2085,30,'Ixhuacán de los Reyes',1,NULL,NULL),(2086,30,'Ayahualulco',1,NULL,NULL),(2087,30,'Perote',1,NULL,NULL),(2088,30,'Banderilla',1,NULL,NULL),(2089,30,'Rafael Lucio',1,NULL,NULL),(2090,30,'Acajete',1,NULL,NULL),(2091,30,'Las Vigas de Ramírez',1,NULL,NULL),(2092,30,'Villa Aldama',1,NULL,NULL),(2093,30,'Tlacolulan',1,NULL,NULL),(2094,30,'Tonayán',1,NULL,NULL),(2095,30,'Coacoatzintla',1,NULL,NULL),(2096,30,'Jilotepec',1,NULL,NULL),(2097,30,'Naolinco',1,NULL,NULL),(2098,30,'Miahuatlán',1,NULL,NULL),(2099,30,'Acatlán',1,NULL,NULL),(2100,30,'Tepetlán',1,NULL,NULL),(2101,30,'Juchique de Ferrer',1,NULL,NULL),(2102,30,'Alto Lucero de Gutiérrez Barrios',1,NULL,NULL),(2103,30,'Actopan',1,NULL,NULL),(2104,30,'Coatepec',1,NULL,NULL),(2105,30,'Teocelo',1,NULL,NULL),(2106,30,'Cosautlán de Carvajal',1,NULL,NULL),(2107,30,'Emiliano Zapata',1,NULL,NULL),(2108,30,'Apazapan',1,NULL,NULL),(2109,30,'Puente Nacional',1,NULL,NULL),(2110,30,'Ursulo Galván',1,NULL,NULL),(2111,30,'Paso de Ovejas',1,NULL,NULL),(2112,30,'La Antigua',1,NULL,NULL),(2113,30,'Veracruz',1,NULL,NULL),(2114,30,'Pánuco',1,NULL,NULL),(2115,30,'Pueblo Viejo',1,NULL,NULL),(2116,30,'Tampico Alto',1,NULL,NULL),(2117,30,'Tempoal',1,NULL,NULL),(2118,30,'Ozuluama de Mascareñas',1,NULL,NULL),(2119,30,'Tantoyuca',1,NULL,NULL),(2120,30,'Platón Sánchez',1,NULL,NULL),(2121,30,'Chiconamel',1,NULL,NULL),(2122,30,'Chalma',1,NULL,NULL),(2123,30,'Chontla',1,NULL,NULL),(2124,30,'Citlaltépetl',1,NULL,NULL),(2125,30,'Ixcatepec',1,NULL,NULL),(2126,30,'Naranjos Amatlán',1,NULL,NULL),(2127,30,'El Higo',1,NULL,NULL),(2128,30,'Chinampa de Gorostiza',1,NULL,NULL),(2129,30,'Tantima',1,NULL,NULL),(2130,30,'Tamalín',1,NULL,NULL),(2131,30,'Cerro Azul',1,NULL,NULL),(2132,30,'Tepetzintla',1,NULL,NULL),(2133,30,'Tancoco',1,NULL,NULL),(2134,30,'Tamiahua',1,NULL,NULL),(2135,30,'Huayacocotla',1,NULL,NULL),(2136,30,'Ilamatlán',1,NULL,NULL),(2137,30,'Zontecomatlán de López y Fuentes',1,NULL,NULL),(2138,30,'Texcatepec',1,NULL,NULL),(2139,30,'Zacualpan',1,NULL,NULL),(2140,30,'Benito Juárez',1,NULL,NULL),(2141,30,'Tlachichilco',1,NULL,NULL),(2142,30,'Ixhuatlán de Madero',1,NULL,NULL),(2143,30,'Chicontepec',1,NULL,NULL),(2144,30,'Álamo Temapache',1,NULL,NULL),(2145,30,'Tuxpan',1,NULL,NULL),(2146,30,'Tihuatlán',1,NULL,NULL),(2147,30,'Castillo de Teayo',1,NULL,NULL),(2148,30,'Cazones de Herrera',1,NULL,NULL),(2149,30,'Zozocolco de Hidalgo',1,NULL,NULL),(2150,30,'Chumatlán',1,NULL,NULL),(2151,30,'Coxquihui',1,NULL,NULL),(2152,30,'Mecatlán',1,NULL,NULL),(2153,30,'Filomeno Mata',1,NULL,NULL),(2154,30,'Coahuitlán',1,NULL,NULL),(2155,30,'Coyutla',1,NULL,NULL),(2156,30,'Coatzintla',1,NULL,NULL),(2157,30,'Espinal',1,NULL,NULL),(2158,30,'Poza Rica de Hidalgo',1,NULL,NULL),(2159,30,'Papantla',1,NULL,NULL),(2160,30,'Gutiérrez Zamora',1,NULL,NULL),(2161,30,'Tecolutla',1,NULL,NULL),(2162,30,'Martínez de la Torre',1,NULL,NULL),(2163,30,'San Rafael',1,NULL,NULL),(2164,30,'Tlapacoyan',1,NULL,NULL),(2165,30,'Jalacingo',1,NULL,NULL),(2166,30,'Atzalan',1,NULL,NULL),(2167,30,'Altotonga',1,NULL,NULL),(2168,30,'Las Minas',1,NULL,NULL),(2169,30,'Tatatila',1,NULL,NULL),(2170,30,'Tenochtitlán',1,NULL,NULL),(2171,30,'Nautla',1,NULL,NULL),(2172,30,'Misantla',1,NULL,NULL),(2173,30,'Landero y Coss',1,NULL,NULL),(2174,30,'Chiconquiaco',1,NULL,NULL),(2175,30,'Yecuatla',1,NULL,NULL),(2176,30,'Colipa',1,NULL,NULL),(2177,30,'Vega de Alatorre',1,NULL,NULL),(2178,30,'Jalcomulco',1,NULL,NULL),(2179,30,'Tlaltetela',1,NULL,NULL),(2180,30,'Tenampa',1,NULL,NULL),(2181,30,'Totutla',1,NULL,NULL),(2182,30,'Sochiapa',1,NULL,NULL),(2183,30,'Tlacotepec de Mejía',1,NULL,NULL),(2184,30,'Huatusco',1,NULL,NULL),(2185,30,'Calcahualco',1,NULL,NULL),(2186,30,'Alpatláhuac',1,NULL,NULL),(2187,30,'Coscomatepec',1,NULL,NULL),(2188,30,'La Perla',1,NULL,NULL),(2189,30,'Chocamán',1,NULL,NULL),(2190,30,'Tomatlán',1,NULL,NULL),(2191,30,'Ixhuatlán del Café',1,NULL,NULL),(2192,30,'Tepatlaxco',1,NULL,NULL),(2193,30,'Comapa',1,NULL,NULL),(2194,30,'Zentla',1,NULL,NULL),(2195,30,'Camarón de Tejeda',1,NULL,NULL),(2196,30,'Soledad de Doblado',1,NULL,NULL),(2197,30,'Manlio Fabio Altamirano',1,NULL,NULL),(2198,30,'Jamapa',1,NULL,NULL),(2199,30,'Medellín',1,NULL,NULL),(2200,30,'Boca del Río',1,NULL,NULL),(2201,30,'Orizaba',1,NULL,NULL),(2202,30,'Rafael Delgado',1,NULL,NULL),(2203,30,'Mariano Escobedo',1,NULL,NULL),(2204,30,'Ixhuatlancillo',1,NULL,NULL),(2205,30,'Atzacan',1,NULL,NULL),(2206,30,'Ixtaczoquitlán',1,NULL,NULL),(2207,30,'Fortín',1,NULL,NULL),(2208,30,'Córdoba',1,NULL,NULL),(2209,30,'Maltrata',1,NULL,NULL),(2210,30,'Nogales',1,NULL,NULL),(2211,30,'Río Blanco',1,NULL,NULL),(2212,30,'Camerino Z. Mendoza',1,NULL,NULL),(2213,30,'Aquila',1,NULL,NULL),(2214,30,'Acultzingo',1,NULL,NULL),(2215,30,'Soledad Atzompa',1,NULL,NULL),(2216,30,'Huiloapan de Cuauhtémoc',1,NULL,NULL),(2217,30,'Tlaquilpa',1,NULL,NULL),(2218,30,'Astacinga',1,NULL,NULL),(2219,30,'Xoxocotla',1,NULL,NULL),(2220,30,'Atlahuilco',1,NULL,NULL),(2221,30,'Tequila',1,NULL,NULL),(2222,30,'San Andrés Tenejapan',1,NULL,NULL),(2223,30,'Tlilapan',1,NULL,NULL),(2224,30,'Magdalena',1,NULL,NULL),(2225,30,'Naranjal',1,NULL,NULL),(2226,30,'Coetzala',1,NULL,NULL),(2227,30,'Omealca',1,NULL,NULL),(2228,30,'Cuitláhuac',1,NULL,NULL),(2229,30,'Cuichapa',1,NULL,NULL),(2230,30,'Yanga',1,NULL,NULL),(2231,30,'Amatlán de los Reyes',1,NULL,NULL),(2232,30,'Atoyac',1,NULL,NULL),(2233,30,'Paso del Macho',1,NULL,NULL),(2234,30,'Carrillo Puerto',1,NULL,NULL),(2235,30,'Cotaxtla',1,NULL,NULL),(2236,30,'Zongolica',1,NULL,NULL),(2237,30,'Tehuipango',1,NULL,NULL),(2238,30,'Mixtla de Altamirano',1,NULL,NULL),(2239,30,'Los Reyes',1,NULL,NULL),(2240,30,'Texhuacán',1,NULL,NULL),(2241,30,'Tezonapa',1,NULL,NULL),(2242,30,'Tierra Blanca',1,NULL,NULL),(2243,30,'Tlalixcoyan',1,NULL,NULL),(2244,30,'Ignacio de la Llave',1,NULL,NULL),(2245,30,'Alvarado',1,NULL,NULL),(2246,30,'Lerdo de Tejada',1,NULL,NULL),(2247,30,'Tres Valles',1,NULL,NULL),(2248,30,'Carlos A. Carrillo',1,NULL,NULL),(2249,30,'Cosamaloapan de Carpio',1,NULL,NULL),(2250,30,'Ixmatlahuacan',1,NULL,NULL),(2251,30,'Acula',1,NULL,NULL),(2252,30,'Amatitlán',1,NULL,NULL),(2253,30,'Tlacotalpan',1,NULL,NULL),(2254,30,'Saltabarranca',1,NULL,NULL),(2255,30,'Otatitlán',1,NULL,NULL),(2256,30,'Tlacojalpan',1,NULL,NULL),(2257,30,'Tuxtilla',1,NULL,NULL),(2258,30,'Chacaltianguis',1,NULL,NULL),(2259,30,'José Azueta',1,NULL,NULL),(2260,30,'Playa Vicente',1,NULL,NULL),(2261,30,'Santiago Sochiapan',1,NULL,NULL),(2262,30,'Isla',1,NULL,NULL),(2263,30,'Juan Rodríguez Clara',1,NULL,NULL),(2264,30,'San Andrés Tuxtla',1,NULL,NULL),(2265,30,'Santiago Tuxtla',1,NULL,NULL),(2266,30,'Angel R. Cabada',1,NULL,NULL),(2267,30,'Hueyapan de Ocampo',1,NULL,NULL),(2268,30,'Catemaco',1,NULL,NULL),(2269,30,'Soteapan',1,NULL,NULL),(2270,30,'Mecayapan',1,NULL,NULL),(2271,30,'Tatahuicapan de Juárez',1,NULL,NULL),(2272,30,'Pajapan',1,NULL,NULL),(2273,30,'Chinameca',1,NULL,NULL),(2274,30,'Acayucan',1,NULL,NULL),(2275,30,'San Juan Evangelista',1,NULL,NULL),(2276,30,'Sayula de Alemán',1,NULL,NULL),(2277,30,'Oluta',1,NULL,NULL),(2278,30,'Soconusco',1,NULL,NULL),(2279,30,'Texistepec',1,NULL,NULL),(2280,30,'Jáltipan',1,NULL,NULL),(2281,30,'Zaragoza',1,NULL,NULL),(2282,30,'Oteapan',1,NULL,NULL),(2283,30,'Cosoleacaque',1,NULL,NULL),(2284,30,'Nanchital de Lázaro Cárdenas del Río',1,NULL,NULL),(2285,30,'Ixhuatlán del Sureste',1,NULL,NULL),(2286,30,'Moloacán',1,NULL,NULL),(2287,30,'Coatzacoalcos',1,NULL,NULL),(2288,30,'Agua Dulce',1,NULL,NULL),(2289,30,'Minatitlán',1,NULL,NULL),(2290,30,'Hidalgotitlán',1,NULL,NULL),(2291,30,'Jesús Carranza',1,NULL,NULL),(2292,30,'Las Choapas',1,NULL,NULL),(2293,30,'Uxpanapa',1,NULL,NULL),(2294,31,'Mérida',1,NULL,NULL),(2295,31,'Progreso',1,NULL,NULL),(2296,31,'Chicxulub Pueblo',1,NULL,NULL),(2297,31,'Ixil',1,NULL,NULL),(2298,31,'Conkal',1,NULL,NULL),(2299,31,'Yaxkukul',1,NULL,NULL),(2300,31,'Hunucmá',1,NULL,NULL),(2301,31,'Ucú',1,NULL,NULL),(2302,31,'Kinchil',1,NULL,NULL),(2303,31,'Tetiz',1,NULL,NULL),(2304,31,'Celestún',1,NULL,NULL),(2305,31,'Kanasín',1,NULL,NULL),(2306,31,'Timucuy',1,NULL,NULL),(2307,31,'Acanceh',1,NULL,NULL),(2308,31,'Tixpéhual',1,NULL,NULL),(2309,31,'Umán',1,NULL,NULL),(2310,31,'Telchac Pueblo',1,NULL,NULL),(2311,31,'Dzemul',1,NULL,NULL),(2312,31,'Telchac Puerto',1,NULL,NULL),(2313,31,'Cansahcab',1,NULL,NULL),(2314,31,'Sinanché',1,NULL,NULL),(2315,31,'Yobaín',1,NULL,NULL),(2316,31,'Motul',1,NULL,NULL),(2317,31,'Baca',1,NULL,NULL),(2318,31,'Mocochá',1,NULL,NULL),(2319,31,'Muxupip',1,NULL,NULL),(2320,31,'Cacalchén',1,NULL,NULL),(2321,31,'Bokobá',1,NULL,NULL),(2322,31,'Tixkokob',1,NULL,NULL),(2323,31,'Hoctún',1,NULL,NULL),(2324,31,'Tahmek',1,NULL,NULL),(2325,31,'Dzidzantún',1,NULL,NULL),(2326,31,'Temax',1,NULL,NULL),(2327,31,'Tekantó',1,NULL,NULL),(2328,31,'Teya',1,NULL,NULL),(2329,31,'Suma',1,NULL,NULL),(2330,31,'Tepakán',1,NULL,NULL),(2331,31,'Tekal de Venegas',1,NULL,NULL),(2332,31,'Izamal',1,NULL,NULL),(2333,31,'Hocabá',1,NULL,NULL),(2334,31,'Xocchel',1,NULL,NULL),(2335,31,'Seyé',1,NULL,NULL),(2336,31,'Cuzamá',1,NULL,NULL),(2337,31,'Homún',1,NULL,NULL),(2338,31,'Sanahcat',1,NULL,NULL),(2339,31,'Huhí',1,NULL,NULL),(2340,31,'Dzilam González',1,NULL,NULL),(2341,31,'Dzilam de Bravo',1,NULL,NULL),(2342,31,'Panabá',1,NULL,NULL),(2343,31,'San Felipe',1,NULL,NULL),(2344,31,'Buctzotz',1,NULL,NULL),(2345,31,'Sucilá',1,NULL,NULL),(2346,31,'Cenotillo',1,NULL,NULL),(2347,31,'Dzoncauich',1,NULL,NULL),(2348,31,'Tunkás',1,NULL,NULL),(2349,31,'Quintana Roo',1,NULL,NULL),(2350,31,'Dzitás',1,NULL,NULL),(2351,31,'Kantunil',1,NULL,NULL),(2352,31,'Sudzal',1,NULL,NULL),(2353,31,'Tekit',1,NULL,NULL),(2354,31,'Sotuta',1,NULL,NULL),(2355,31,'Tizimín',1,NULL,NULL),(2356,31,'Río Lagartos',1,NULL,NULL),(2357,31,'Espita',1,NULL,NULL),(2358,31,'Temozón',1,NULL,NULL),(2359,31,'Calotmul',1,NULL,NULL),(2360,31,'Tinum',1,NULL,NULL),(2361,31,'Chankom',1,NULL,NULL),(2362,31,'Chichimilá',1,NULL,NULL),(2363,31,'Tixcacalcupul',1,NULL,NULL),(2364,31,'Kaua',1,NULL,NULL),(2365,31,'Cuncunul',1,NULL,NULL),(2366,31,'Tekom',1,NULL,NULL),(2367,31,'Chemax',1,NULL,NULL),(2368,31,'Valladolid',1,NULL,NULL),(2369,31,'Uayma',1,NULL,NULL),(2370,31,'Maxcanú',1,NULL,NULL),(2371,31,'Samahil',1,NULL,NULL),(2372,31,'Opichén',1,NULL,NULL),(2373,31,'Chocholá',1,NULL,NULL),(2374,31,'Kopomá',1,NULL,NULL),(2375,31,'Tecoh',1,NULL,NULL),(2376,31,'Abalá',1,NULL,NULL),(2377,31,'Halachó',1,NULL,NULL),(2378,31,'Muna',1,NULL,NULL),(2379,31,'Sacalum',1,NULL,NULL),(2380,31,'Maní',1,NULL,NULL),(2381,31,'Dzán',1,NULL,NULL),(2382,31,'Chapab',1,NULL,NULL),(2383,31,'Ticul',1,NULL,NULL),(2384,31,'Oxkutzcab',1,NULL,NULL),(2385,31,'Santa Elena',1,NULL,NULL),(2386,31,'Mama',1,NULL,NULL),(2387,31,'Chumayel',1,NULL,NULL),(2388,31,'Mayapán',1,NULL,NULL),(2389,31,'Teabo',1,NULL,NULL),(2390,31,'Cantamayec',1,NULL,NULL),(2391,31,'Yaxcabá',1,NULL,NULL),(2392,31,'Peto',1,NULL,NULL),(2393,31,'Chikindzonot',1,NULL,NULL),(2394,31,'Tahdziú',1,NULL,NULL),(2395,31,'Tixmehuac',1,NULL,NULL),(2396,31,'Chacsinkín',1,NULL,NULL),(2397,31,'Tzucacab',1,NULL,NULL),(2398,31,'Tekax',1,NULL,NULL),(2399,31,'Akil',1,NULL,NULL),(2400,32,'Zacatecas',1,NULL,NULL),(2401,32,'Morelos',1,NULL,NULL),(2402,32,'Vetagrande',1,NULL,NULL),(2403,32,'Concepción del Oro',1,NULL,NULL),(2404,32,'Melchor Ocampo',1,NULL,NULL),(2405,32,'Mazapil',1,NULL,NULL),(2406,32,'El Salvador',1,NULL,NULL),(2407,32,'Juan Aldama',1,NULL,NULL),(2408,32,'Miguel Auza',1,NULL,NULL),(2409,32,'General Francisco R. Murguía',1,NULL,NULL),(2410,32,'Río Grande',1,NULL,NULL),(2411,32,'Villa de Cos',1,NULL,NULL),(2412,32,'Cañitas de Felipe Pescador',1,NULL,NULL),(2413,32,'Calera',1,NULL,NULL),(2414,32,'Pánuco',1,NULL,NULL),(2415,32,'General Enrique Estrada',1,NULL,NULL),(2416,32,'Guadalupe',1,NULL,NULL),(2417,32,'Trancoso',1,NULL,NULL),(2418,32,'Genaro Codina',1,NULL,NULL),(2419,32,'Cuauhtémoc',1,NULL,NULL),(2420,32,'Ojocaliente',1,NULL,NULL),(2421,32,'General Pánfilo Natera',1,NULL,NULL),(2422,32,'Luis Moya',1,NULL,NULL),(2423,32,'Loreto',1,NULL,NULL),(2424,32,'Villa González Ortega',1,NULL,NULL),(2425,32,'Noria de Ángeles',1,NULL,NULL),(2426,32,'Villa García',1,NULL,NULL),(2427,32,'Pinos',1,NULL,NULL),(2428,32,'Villa Hidalgo',1,NULL,NULL),(2429,32,'Fresnillo',1,NULL,NULL),(2430,32,'Sombrerete',1,NULL,NULL),(2431,32,'Sain Alto',1,NULL,NULL),(2432,32,'Valparaíso',1,NULL,NULL),(2433,32,'Chalchihuites',1,NULL,NULL),(2434,32,'Jiménez del Teul',1,NULL,NULL),(2435,32,'Jerez',1,NULL,NULL),(2436,32,'Monte Escobedo',1,NULL,NULL),(2437,32,'Susticacán',1,NULL,NULL),(2438,32,'Villanueva',1,NULL,NULL),(2439,32,'Tepetongo',1,NULL,NULL),(2440,32,'El Plateado de Joaquín Amaro',1,NULL,NULL),(2441,32,'Jalpa',1,NULL,NULL),(2442,32,'Tabasco',1,NULL,NULL),(2443,32,'Huanusco',1,NULL,NULL),(2444,32,'Tlaltenango de Sánchez Román',1,NULL,NULL),(2445,32,'Momax',1,NULL,NULL),(2446,32,'Atolinga',1,NULL,NULL),(2447,32,'Tepechitlán',1,NULL,NULL),(2448,32,'Benito Juárez',1,NULL,NULL),(2449,32,'Teúl de González Ortega',1,NULL,NULL),(2450,32,'Santa María de la Paz',1,NULL,NULL),(2451,32,'Trinidad García de la Cadena',1,NULL,NULL),(2452,32,'Mezquital del Oro',1,NULL,NULL),(2453,32,'Nochistlán de Mejía',1,NULL,NULL),(2454,32,'Apulco',1,NULL,NULL),(2455,32,'Apozol',1,NULL,NULL),(2456,32,'Juchipila',1,NULL,NULL),(2457,32,'Moyahua de Estrada',1,NULL,NULL),(2458,2,'AAAAAAABBBBBBBBBB',0,'2020-08-09 11:03:16','2020-08-09 11:04:52'),(2459,15,'LERMA2',1,'2020-08-11 04:50:17','2020-08-11 04:50:17'),(2460,2,'LERMA3',0,'2020-08-11 04:57:02','2020-08-11 04:58:13'),(2461,2,'LERMA6',0,'2020-08-11 05:10:15','2020-08-11 05:11:00'),(2462,39,'Ciudad de Buenos Aires',1,'2020-08-24 05:31:19','2020-08-24 05:31:19'),(2463,39,'Palermo',1,'2020-08-24 05:34:20','2020-08-24 05:34:20');
/*!40000 ALTER TABLE `municipios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-25  2:34:57
