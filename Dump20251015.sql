-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: project_tesis
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.20.04.1

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
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add compilado',1,'add_compilado'),(2,'Can change compilado',1,'change_compilado'),(3,'Can delete compilado',1,'delete_compilado'),(4,'Can view compilado',1,'view_compilado'),(5,'Can add Docente',2,'add_docente'),(6,'Can change Docente',2,'change_docente'),(7,'Can delete Docente',2,'delete_docente'),(8,'Can view Docente',2,'view_docente'),(9,'Can add Estudiante',3,'add_estudiante'),(10,'Can change Estudiante',3,'change_estudiante'),(11,'Can delete Estudiante',3,'delete_estudiante'),(12,'Can view Estudiante',3,'view_estudiante'),(13,'Can add log entry',4,'add_logentry'),(14,'Can change log entry',4,'change_logentry'),(15,'Can delete log entry',4,'delete_logentry'),(16,'Can view log entry',4,'view_logentry'),(17,'Can add permission',5,'add_permission'),(18,'Can change permission',5,'change_permission'),(19,'Can delete permission',5,'delete_permission'),(20,'Can view permission',5,'view_permission'),(21,'Can add group',6,'add_group'),(22,'Can change group',6,'change_group'),(23,'Can delete group',6,'delete_group'),(24,'Can view group',6,'view_group'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add content type',8,'add_contenttype'),(30,'Can change content type',8,'change_contenttype'),(31,'Can delete content type',8,'delete_contenttype'),(32,'Can view content type',8,'view_contenttype'),(33,'Can add session',9,'add_session'),(34,'Can change session',9,'change_session'),(35,'Can delete session',9,'delete_session'),(36,'Can view session',9,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$vT7YSFF6aN23pzIEgajDjC$I4s8X4Xv1YCjm3Kpguazn7mrEbnj5lkT11E1x2rhYFQ=','2025-10-16 01:37:26.852140',0,'Lautaro','','','',0,1,'2025-10-10 19:00:06.051229'),(8,'pbkdf2_sha256$600000$5sbNAsmg8HXRn1CkCBlelm$EiMAGn9dA+fWrAk/xbd5LZlzu874n2pD68E5u5sxen0=','2025-10-15 00:40:59.616114',0,'valery','','','',0,1,'2025-10-13 23:15:49.473337');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (4,'admin','logentry'),(6,'auth','group'),(5,'auth','permission'),(7,'auth','user'),(8,'contenttypes','contenttype'),(1,'projects','compilado'),(2,'projects','docente'),(3,'projects','estudiante'),(9,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-09-30 21:17:41.974400'),(2,'auth','0001_initial','2025-09-30 21:17:43.221803'),(3,'admin','0001_initial','2025-09-30 21:17:43.523077'),(4,'admin','0002_logentry_remove_auto_add','2025-09-30 21:17:43.535106'),(5,'admin','0003_logentry_add_action_flag_choices','2025-09-30 21:17:43.551721'),(6,'contenttypes','0002_remove_content_type_name','2025-09-30 21:17:43.756584'),(7,'auth','0002_alter_permission_name_max_length','2025-09-30 21:17:43.881834'),(8,'auth','0003_alter_user_email_max_length','2025-09-30 21:17:43.912908'),(9,'auth','0004_alter_user_username_opts','2025-09-30 21:17:43.923203'),(10,'auth','0005_alter_user_last_login_null','2025-09-30 21:17:44.036228'),(11,'auth','0006_require_contenttypes_0002','2025-09-30 21:17:44.041926'),(12,'auth','0007_alter_validators_add_error_messages','2025-09-30 21:17:44.056076'),(13,'auth','0008_alter_user_username_max_length','2025-09-30 21:17:44.194995'),(14,'auth','0009_alter_user_last_name_max_length','2025-09-30 21:17:44.333230'),(15,'auth','0010_alter_group_name_max_length','2025-09-30 21:17:44.363157'),(16,'auth','0011_update_proxy_permissions','2025-09-30 21:17:44.373421'),(17,'auth','0012_alter_user_first_name_max_length','2025-09-30 21:17:44.505322'),(18,'projects','0001_initial','2025-10-10 17:27:05.145934'),(19,'projects','0002_alter_compilado_options_alter_compilado_director_and_more','2025-10-10 17:27:06.044188'),(20,'sessions','0001_initial','2025-10-10 17:27:06.175504');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7ajy4rbwn6t7sodt7tnc2i0loas64bcg','e30:1v8pXr:dWrkHE3l4mDl_q-s2iSR7ap-CGFOM68KruQqw4I5GH0','2025-10-29 00:39:11.474986'),('iyd30b7z4578eisatercuqw2du0874la','.eJxVjDsOwjAQBe_iGln-O1DScwZr7d3FAeRIcVIh7o4spYD2zcx7iwT7VtPeaU0ziovQ4vS7ZShPagPgA9p9kWVp2zpnORR50C5vC9Lrerh_BxV6HbUnisxKAaBxJVrWxbmQrUKTrSF05wIlkFfINOngPbAOZuIcWTunxecLCos4gg:1v9Cvm:EW5XtkT9wtNmyCkQ-abmP8rAvID0kS_LR4fu8nmdFUk','2025-10-30 01:37:26.856867');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `docentes`
--

LOCK TABLES `docentes` WRITE;
/*!40000 ALTER TABLE `docentes` DISABLE KEYS */;
INSERT INTO `docentes` VALUES (1,'CAMACHO BENAVIDES RUBEN ARMANDO','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','ruben@unicauca.edu.co\r'),(2,'LEDEZMA MUÑOZ MARIA CRISTINA','DEPTO ING. AMBIENTAL Y SANIT.','FACULTAD DE INGENIERIA CIVIL','cledezma@unicauca.edu.co\r'),(3,'PAREDES GUEVARA MARIA JIMENA','DEPTO HIDRAULICA','FACULTAD DE INGENIERIA CIVIL','mjparedes@unicauca.edu.co\r'),(4,'GONZALEZ IDROBO NANCY PAOLA','DEPTO VIAS Y TRANSPORTE','FACULTAD DE INGENIERIA CIVIL','paogon76@unicauca.edu.co\r'),(5,'CALDAS CONSTAIN ALBERTO JOSE','DEPTO HIDRAULICA','FACULTAD DE INGENIERIA CIVIL','ajcaldasc@unicauca.edu.co\r'),(6,'CABRERA MARTINEZ EDNA ROCIO','DEPTO ING. AMBIENTAL Y SANIT.','FACULTAD DE INGENIERIA CIVIL','ecabrera@unicauca.edu.co\r'),(7,'ESPINOSA ECHEVERRI PAULO MAURICIO','DEPTO ING. AMBIENTAL Y SANIT.','FACULTAD DE INGENIERIA CIVIL','pespinosa@unicauca.edu.co\r'),(8,'CALERO VALENZUELA CARLOS ANIBAL','DEPTO VIAS Y TRANSPORTE','FACULTAD DE INGENIERIA CIVIL','ccalero@unicauca.edu.co\r'),(9,'OBANDO ANTE JAIME RAFAEL','DEPTO GEOTECNIA','FACULTAD DE INGENIERIA CIVIL','jaimeobando@unicauca.edu.co\r'),(10,'DIAGO FRANCO JULIO CESAR','DEPTO ESTRUCTURAS','FACULTAD DE INGENIERIA CIVIL','jdiago@unicauca.edu.co\r'),(11,'GONZALEZ FERNANDEZ ALDEMAR JOSE','DEPTO VIAS Y TRANSPORTE','FACULTAD DE INGENIERIA CIVIL','ajgonza@unicauca.edu.co\r'),(12,'BOLAÑOS ANDRADE LUIS ILDEMAR','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','luisboan@unicauca.edu.co\r'),(13,'JARAMILLO OTERO FREDDY ARTURO','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','fotero@unicauca.edu.co\r'),(14,'RIVAS MUÑOZ NELSON','DEPTO VIAS Y TRANSPORTE','FACULTAD DE INGENIERIA CIVIL','nrivas@unicauca.edu.co\r'),(15,'FERNANDEZ MERA JAVIER ERNESTO','DEPTO ING. AMBIENTAL Y SANIT.','FACULTAD DE INGENIERIA CIVIL','jefernandez@unicauca.edu.co\r'),(16,'HURTADO ASTAIZA CARLOS ARIEL','DEPTO ESTRUCTURAS','FACULTAD DE INGENIERIA CIVIL','cah@unicauca.edu.co\r'),(17,'AGUIRRE GOMEZ MAURICIO HERNAN','DEPTO HIDRAULICA','FACULTAD DE INGENIERIA CIVIL','mauroaguirre@unicauca.edu.co\r'),(18,'BETANCOURT VILLALOBOS WILSON ANDRES','DEPTO ING. AMBIENTAL Y SANIT.','FACULTAD DE INGENIERIA CIVIL','wilanbevi@unicauca.edu.co\r'),(19,'MARTINEZ CABANILLAS DIEGO FERNANDO','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','diegomartinez@unicauca.edu.co\r'),(20,'CHAVARRO BARRETO EUGENIO','DEPTO GEOTECNIA','FACULTAD DE INGENIERIA CIVIL','ebarreto@unicauca.edu.co\r'),(21,'MUÑOZ VALENCIA VICTORIA EUGENIA','DEPTO GEOTECNIA','FACULTAD DE INGENIERIA CIVIL','vickyv@unicauca.edu.co\r'),(22,'CASAS ZAPATA JUAN CARLOS','DEPTO ING. AMBIENTAL Y SANIT.','FACULTAD DE INGENIERIA CIVIL','jccasas@unicauca.edu.co\r'),(23,'GALLARDO BARRERA CARLOS ARMANDO','DEPTO HIDRAULICA','FACULTAD DE INGENIERIA CIVIL','cgallard@unicauca.edu.co\r'),(24,'SILVA CERON ALFER LEIBER','DEPTO ESTRUCTURAS','FACULTAD DE INGENIERIA CIVIL','alfer@unicauca.edu.co\r'),(25,'MONTENEGRO ARBOLEDA LADY SUSANA','DEPTO ING. AMBIENTAL Y SANIT.','FACULTAD DE INGENIERIA CIVIL','lsmontenegro@unicauca.edu.co\r'),(26,'VALENCIA RENGIFO VIVIANA','DEPTO ING. AMBIENTAL Y SANIT.','FACULTAD DE INGENIERIA CIVIL','vivianavr@unicauca.edu.co\r'),(27,'ROSAS LOPEZ CRISTIAN DAVID','DEPTO VIAS Y TRANSPORTE','FACULTAD DE INGENIERIA CIVIL','cdrosas@unicauca.edu.co\r'),(28,'MUÑOZ TROCHEZ HENRY MAURICIO','DEPTO GEOTECNIA','FACULTAD DE INGENIERIA CIVIL','hmauricio88@unicauca.edu.co\r'),(29,'CASTILLO ÑAÑEZ VICTOR RENAN','DEPTO VIAS Y TRANSPORTE','FACULTAD DE INGENIERIA CIVIL','renancastillo@unicauca.edu.co\r'),(30,'LOPEZ DAZA FREDY EDUARDO','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','fredyld@unicauca.edu.co\r'),(31,'BENAVIDES BARCO ALBERTO','DEPTO ING. AMBIENTAL Y SANIT.','FACULTAD DE INGENIERIA CIVIL','albertob@unicauca.edu.co\r'),(32,'GARCES MUÑOZ LUIS FERNANDO','DEPTO GEOTECNIA','FACULTAD DE INGENIERIA CIVIL','luisgarces@unicauca.edu.co\r'),(33,'ADRADA GOMEZ HECTOR EDUARDO','DEPTO GEOTECNIA','FACULTAD DE INGENIERIA CIVIL','eduardogomez@unicauca.edu.co\r'),(34,'PEREZ ORDOÑEZ JULIAN RODRIGO','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','jrperez@unicauca.edu.co\r'),(35,'OÑATE BASTIDAS CARLOS EDUARDO','DEPTO VIAS Y TRANSPORTE','FACULTAD DE INGENIERIA CIVIL','carloseduardo@unicauca.edu.co\r'),(36,'GARCIA LOPEZ MARTHA CECILIA','DEPTO GEOTECNIA','FACULTAD DE INGENIERIA CIVIL','marthagarcia@unicauca.edu.co\r'),(37,'IMBACHI CERON YENNY PATRICIA','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','yennypa@unicauca.edu.co\r'),(38,'MUÑOZ PEÑA INES DAMARIS','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','idmunoz@unicauca.edu.co\r'),(39,'MENZA CALAMBAS YESSICA MILENA','DEPTO ESTRUCTURAS','FACULTAD DE INGENIERIA CIVIL','yessica@unicauca.edu.co\r'),(40,'BOLAÑOS RODRIGUEZ ANDREA MARCELA','DEPTO HIDRAULICA','FACULTAD DE INGENIERIA CIVIL','andreamarcela@unicauca.edu.co\r'),(41,'HURTADO ECHEVERRY JUAN DAVID','DEPTO VIAS Y TRANSPORTE','FACULTAD DE INGENIERIA CIVIL','juanhurtadoe@unicauca.edu.co\r'),(42,'FIGUEROA LOZANO LUZ STELLA','DEPTO ING. AMBIENTAL Y SANIT.','FACULTAD DE INGENIERIA CIVIL','lsfigueroa@unicauca.edu.co\r'),(43,'CAJAS JOAQUI JOSE JULIAN','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','juliancajas@unicauca.edu.co\r'),(44,'GOMEZ FERNANDEZ CARLOS ALBERTO','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','caalgomez@unicauca.edu.co\r'),(45,'ACEVEDO DOMINGUEZ DIEGO FELIPE','DEPTO VIAS Y TRANSPORTE','FACULTAD DE INGENIERIA CIVIL','dacevedo@unicauca.edu.co\r'),(46,'ELJACH CANENCIO FABIAN ANDRES','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','feljach@unicauca.edu.co\r'),(47,'BARRERA GUZMAN JAVIER','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','javierbarrera@unicauca.edu.co\r'),(48,'PAREDES CERON ANDREA CAROLINA','DEPTO GEOTECNIA','FACULTAD DE INGENIERIA CIVIL','acparedes@unicauca.edu.co\r'),(49,'BRAVO EGUIZABAL JOSE DARIO','DEPTO ESTRUCTURAS','FACULTAD DE INGENIERIA CIVIL','josedariobravo@unicauca.edu.co\r'),(50,'CALDERON MINDA JORGE EDUARDO','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','eduardocalderon@unicauca.edu.co\r'),(51,'YANZA LOPEZ JEFFREY ALEXANDER','DEPTO ING. AMBIENTAL Y SANIT.','FACULTAD DE INGENIERIA CIVIL','jeffrey@unicauca.edu.co\r'),(52,'POTES GALARZA MANUEL JULIAN CAMILO','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','manuelpotes@unicauca.edu.co\r'),(53,'VELASCO VELASCO MAURICIO','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','mauriciov@unicauca.edu.co\r'),(54,'OLIVAR CASTILLO JUAN CARLOS','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','juanolivar@unicauca.edu.co\r'),(55,'VELASCO GALVIS DIANA','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','dvelasco@unicauca.edu.co\r'),(56,'MELO ORTIZ JUAN PABLO','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','jpmelo@unicauca.edu.co\r'),(57,'GONZALEZ MUÑOZ LUIS JORGE','DEPTO HIDRAULICA','FACULTAD DE INGENIERIA CIVIL','ljgonza@unicauca.edu.co\r'),(58,'TURBAY VARONA MARIA ISABEL','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','mariaturbay@unicauca.edu.co\r'),(59,'CASTRO CAICEDO MARIA ELENA ISABEL','DEPTO ING. AMBIENTAL Y SANIT.','FACULTAD DE INGENIERIA CIVIL','maelis@unicauca.edu.co\r'),(60,'AGREDO CAMPUZANO OSCAR FELIPE','DEPTO HIDRAULICA','FACULTAD DE INGENIERIA CIVIL','felipeagredo@unicauca.edu.co\r'),(61,'CORAL VARGAS ANDRES FELIPE','DEPTO ESTRUCTURAS','FACULTAD DE INGENIERIA CIVIL','pipecoral@unicauca.edu.co\r'),(62,'LOPEZ MORENO CAROL PATRICIA','DEPTO GEOTECNIA','FACULTAD DE INGENIERIA CIVIL','carollopez@unicauca.edu.co\r'),(63,'APONTE REYES ALEXANDER','DEPTO ING. AMBIENTAL Y SANIT.','FACULTAD DE INGENIERIA CIVIL','reyesalex@unicauca.edu.co\r'),(64,'DELGADO ESPINOSA NASLY YANID','DEPTO ING. AMBIENTAL Y SANIT.','FACULTAD DE INGENIERIA CIVIL','naslydelgadoq@unicauca.edu.co\r'),(65,'MUÑOZ ARBOLEDA DIANA ALEJANDRA','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','dianaalejandra@unicauca.edu.co\r'),(66,'MUÑOZ CORREA VICTOR IGNACIO','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','victormunoz@unicauca.edu.co\r'),(67,'GUERRERO CONDE HECTOR ENRIQUE','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','hegconde@unicauca.edu.co\r'),(68,'QUINTERO QUINTERO JULIAN ALBERTO','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','julianquintero@unicauca.edu.co\r'),(69,'ARANGO CUARTAS STEFANIA','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','stefaniarango@unicauca.edu.co\r'),(70,'POLO GARZON CAROLINA','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','carolinapolo@unicauca.edu.co\r'),(71,'TORRES ORTIZ DENNY MARIANA','DEPTO ESTRUCTURAS','FACULTAD DE INGENIERIA CIVIL','dmtorres@unicauca.edu.co\r'),(72,'DOMINGUEZ PEREZ HERNANDO','DEPTO GEOTECNIA','FACULTAD DE INGENIERIA CIVIL','hdominguezperez@unicauca.edu.co\r'),(73,'PIAMBA ASTAIZA BRAYAN ANDRES','DEPTO ESTRUCTURAS','FACULTAD DE INGENIERIA CIVIL','bapiamba@unicauca.edu.co\r'),(74,'JIMENEZ CERON YINA FERNANDA','DEPTO ING. AMBIENTAL Y SANIT.','FACULTAD DE INGENIERIA CIVIL','yfceron@unicauca.edu.co\r'),(75,'PINO FIGUEROA PABLO EDUARDO','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','pablop@unicauca.edu.co\r'),(76,'LEYTON LUNA JAVIER','DEPTO ING. AMBIENTAL Y SANIT.','FACULTAD DE INGENIERIA CIVIL','javierleyton@unicauca.edu.co\r'),(77,'VILLAQUIRAN LOPEZ LORENA','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','lorenavillaquiran@unicauca.edu.co\r'),(78,'RODRIGUEZ CASTIBLANCO EDGAR ALEXANDER','DEPTO GEOTECNIA','FACULTAD DE INGENIERIA CIVIL','edgararodriguez@unicauca.edu.co\r'),(79,'BOLAÑOS NUPAN EDUARD FABIAN','DEPTO ESTRUCTURAS','FACULTAD DE INGENIERIA CIVIL','eduardbolanos@unicauca.edu.co\r'),(80,'ZAPE OROZCO LIGIA MARCELA','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','marcelazo@unicauca.edu.co\r'),(81,'SILVA SILVA ALBA LORENA','DEPTO VIAS Y TRANSPORTE','FACULTAD DE INGENIERIA CIVIL','asilva@unicauca.edu.co\r'),(82,'ROSAS PALOMINO ALEXANDRA','DEPTO VIAS Y TRANSPORTE','FACULTAD DE INGENIERIA CIVIL','aropa@unicauca.edu.co\r'),(83,'DELGADO BRAVO MARIA ALEJANDRA','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','alejadelgado@unicauca.edu.co\r'),(84,'ZAMORA OROZCO LAURA SOFIA','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','laurazamora@unicauca.edu.co\r'),(85,'MEDINA BELLO ENIF','DEPTO HIDRAULICA','FACULTAD DE INGENIERIA CIVIL','enifmedina@unicauca.edu.co\r'),(86,'SEGURA LONDOÑO VALENTINA','DEPTO GEOTECNIA','FACULTAD DE INGENIERIA CIVIL','vsegura@unicauca.edu.co\r'),(87,'SANTANILLA SANDOVAL LUIS ALBERTO','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','santanillarq@unicauca.edu.co\r'),(88,'RAMIREZ ORTIZ CRISTHIAN','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','cristhianramirez@unicauca.edu.co\r'),(89,'CABALLERO JAIMES OSCAR FERNANDO','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','oscarcaballero@unicauca.edu.co\r'),(90,'QUIÑONES MANRIQUE LUIS DAVID','DEPTO HIDRAULICA','FACULTAD DE INGENIERIA CIVIL','ldquinones@unicauca.edu.co\r'),(91,'CALVO VALENZUELA JOSE GABRIEL','DEPTO GEOTECNIA','FACULTAD DE INGENIERIA CIVIL','cvjose@unicauca.edu.co\r'),(92,'MANRIQUE URREA SANDRA CATERINE','DEPTO GEOTECNIA','FACULTAD DE INGENIERIA CIVIL','scmanrique@unicauca.edu.co\r'),(93,'LASSO PORTILLA DANIELA CAROLINA','DEPTO GEOTECNIA','FACULTAD DE INGENIERIA CIVIL','danielalp@unicauca.edu.co\r'),(94,'CASTRO VILLAMARIN NESTOR','DEPTO GEOTECNIA','FACULTAD DE INGENIERIA CIVIL','nestorcastro@unicauca.edu.co\r'),(95,'DELGADO BURBANO CHRISTIAN ALEXANDER','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','bdelgado@unicauca.edu.co\r'),(96,'MARTINEZ MARTINEZ MARIA VIRGINIA','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','mariavmartinez@unicauca.edu.co\r'),(97,'MORALES FERNANDEZ SORY ALEXANDER','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','sorymorales@unicauca.edu.co\r'),(98,'CRUZ VELASCO LUCIO GERARDO','DEPTO GEOTECNIA','FACULTAD DE INGENIERIA CIVIL','lucruz@unicauca.edu.co\r'),(99,'BENAVIDES BASTIDAS CARLOS ALBERTO','DEPTO GEOTECNIA','FACULTAD DE INGENIERIA CIVIL','calber@unicauca.edu.co\r'),(100,'SANCHEZ PEÑA NAZLY EFREDIS','DEPTO ING. AMBIENTAL Y SANIT.','FACULTAD DE INGENIERIA CIVIL','nsanchez@unicauca.edu.co\r'),(101,'SOLANO FAJARDO EFRAIN DE JESUS','DEPTO VIAS Y TRANSPORTE','FACULTAD DE INGENIERIA CIVIL','esolano@unicauca.edu.co\r'),(102,'CORREA MUÑOZ NIXON ALEXANDER','DEPTO VIAS Y TRANSPORTE','FACULTAD DE INGENIERIA CIVIL','nico@unicauca.edu.co\r'),(103,'NOPE RODRIGUEZ HERNAN','DEPTO VIAS Y TRANSPORTE','FACULTAD DE INGENIERIA CIVIL','hernannope@unicauca.edu.co\r'),(104,'OROZCO DUENAS HUGO YAIR','DEPTO VIAS Y TRANSPORTE','FACULTAD DE INGENIERIA CIVIL','horozco@unicauca.edu.co\r'),(105,'QUIÑONEZ SINISTERRA FERNEY','DEPTO GEOTECNIA','FACULTAD DE INGENIERIA CIVIL','ferneyquinones@unicauca.edu.co\r'),(106,'ORTEGA CARABALLO ROGER','DEPTO ESTRUCTURAS','FACULTAD DE INGENIERIA CIVIL','roger@unicauca.edu.co\r'),(107,'ANGEL VERA GUSTAVO ADOLFO','DEPTO CONSTRUCCION','FACULTAD DE INGENIERIA CIVIL','gustangel@unicauca.edu.co\r'),(108,'CABEZAS CORDOBA CARLOS CESAR','DEPTO ING. AMBIENTAL Y SANIT.','FACULTAD DE INGENIERIA CIVIL','carlosc@unicauca.edu.co\r'),(115,'Lautaro','abogacia','leyes','lautidelamano@gmail.com');
/*!40000 ALTER TABLE `docentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estudiantes`
--

LOCK TABLES `estudiantes` WRITE;
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `projects_compilado`
--

LOCK TABLES `projects_compilado` WRITE;
/*!40000 ALTER TABLE `projects_compilado` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_compilado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-15 23:26:25
