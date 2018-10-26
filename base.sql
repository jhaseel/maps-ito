-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: tecnologico
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `descripccion` varchar(250) DEFAULT NULL,
  `encargado` varchar(150) DEFAULT NULL,
  `correo` varchar(150) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'dirección','oficina','DR.Juan Cruz Nieto','direccion@itoaxaca.edu.mx',17.077439,-96.745216),(2,'subdireccion','oficina','Dr. Rafael Gabriel Reyes Morales','subdireccion.academica@itoaxaca.edu.mx',17.077429,-96.745227),(3,'servicios administrativos','oficina','Ing. José Antonio González Zamudio','subdireccion.administrativa@itoaxaca.edu.mx',NULL,NULL),(4,'planeación y vinculación','oficina','Ing. Pedro Ortíz Armenta','subdireccion.planeacion@itoaxaca.edu.mx',17.07745,-96.745184),(5,'Depto. de Comunicación y Difusión','depto','Lic. Alfonso E. Dávila García','jefatura.comunicacion@itoaxaca.edu.mx',17.077476,-96.745141),(6,'Depto. de Planeación, Programación y Presupuestación','depto','Ing. María Eva García García','jefatura.planeacion@itoaxaca.edu.mx',17.077532,-96.745248),(7,'Depto. de Gestión Tecnológica y Vinculación','depto','M.F.E.P. Germán Maldonado Velazco','jefatura.vinculacion@itoaxaca.edu.mx',17.07742,-96.745238),(8,'Depto. de Actividades Extraescolares','depto','Prof. Luis Rey Luna Díaz','jefatura.extraescolares@itoaxaca.edu.mx',NULL,NULL),(9,'Depto. de Servicios Escolares','depto','M.C. María de Jesús Gil Gallegos','jefatura.escolares@itoaxaca.edu.mx',17.077676,-96.745061),(10,'Depto. de Ciencias Básicas','depto','MC. Huitzili Díaz Jaimes','jefatura.basicas@itoaxaca.edu.mx',17.076922,-96.744541),(11,'Depto. de Sistemas y Computación','depto','Dra. Marisol Altamirano Cabrera','jefatura.sistemas@itoaxaca.edu.mx',17.076163,-96.744825),(12,'Depto. de Metal-Mecánica','depto','Ing. Roberto Cándido Jiménez Piñon','jefatura.mecanica@itoaxaca.edu.mx',17.078773,-96.744551),(13,'Depto. de Ciencias de la Tierra','depto','M.C. Luis Alberto Martínez Santiago','jefatura.tierra@itoaxaca.edu.mx',17.078445,-96.744203),(14,'Depto. de Química','depto','M.C. Minerva Donají Méndez López','jefatura.quimica@itoaxaca.edu.mx',17.079501,-96.743994),(15,'Depto. de Ing. Industrial','depto','M.A. Martha Hilaria Bartolo Alemán','jefatura.industrial@itoaxaca.edu.mx',17.07946,-96.743876),(16,'Depto. de Ing. Eléctrica','depto','Ing. Silvino Hernández López','jefatura.electrica@itoaxaca.edu.mx',17.078788,-96.745389),(17,'Depto. de Ing. Electrónica','depto','Ing. Enrique Rodríguez Calvo','jefatura.ingelectronica@itoaxaca.edu.mx',NULL,NULL),(18,'Depto. de Ciencias Económico Administrativas','depto','M.C. Manuel de Jesús L. Díaz Ojeda','jefatura.administracion@itoaxaca.edu.mx',17.07626,-96.74459),(19,'Depto. de Desarrollo Académico','depto','M.A. Claudia Esther Padilla Velásquez','jefatura.desarrollo@itoaxaca.edu.mx',17.077933,-96.745491),(20,'División de Estudios Profesionales','depto','Lic. Juana Isabel Ramírez Hernández','jefatura.division@itoaxaca.edu.mx',17.077692,-96.745115),(21,'División de Estudios de Posgrado e Investigación','oficina','Dra. Alma Dolores Pèrez Santiago','posgrado@itoaxaca.edu.mx',17.078974,-96.743581),(22,'Depto. de Recursos Humanos','oficina','M.A. Juana Niño Hernández','jefatura.humanos@itoaxaca.edu.mx',17.077359,-96.745158),(23,'Depto. de Recursos Financieros','oficina','L.C. Selene del Carmen Cruz Alemán','jefatura.financieros@itoaxaca.edu.mx',17.077369,-96.745233),(24,'Depto. de Recursos Materiales','oficina','Ing. Gerardo Raymundo Blanco Sarmiento','jefatura.materiales@itoaxaca.edu.mx',17.079133,-96.744267),(25,'Depto. de Mantenimiento y Equipo','oficina','Ing. Arturo Raymundo Cruz Victoria','jefatura.mantenimiento@itoaxaca.edu.mx',NULL,NULL),(26,'Laboratorio de Eléctrica','lab',NULL,NULL,17.079028,-96.74497),(27,'Laboratorio de simulación de ing Industrial','lab',NULL,NULL,17.079236,-96.74482),(28,'Laboratorio de Quimica','lab',NULL,NULL,17.078598,-96.744648),(29,'Laboratorio de ing Mecanica','lab',NULL,NULL,17.078795,-96.744584),(30,'Laboratorio de quimica(cuantitativo, cualitativo)','lab',NULL,NULL,17.07811,-96.744471),(31,'laboratorio de ing. Civil','lab',NULL,NULL,17.078692,-96.744224),(32,'Laboratorio  de ing Electronica','lab',NULL,NULL,NULL,NULL),(33,'Laboratorio ing Industrial','lab',NULL,NULL,17.076766,-96.743484);
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edificios`
--

DROP TABLE IF EXISTS `edificios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `edificios` (
  `idEdificios` int(11) NOT NULL,
  `nombre_edificio` varchar(250) DEFAULT NULL,
  `descripccion` varchar(200) DEFAULT NULL,
  `lat1` double DEFAULT NULL,
  `lng1` double DEFAULT NULL,
  `lat2` double DEFAULT NULL,
  `lng2` double DEFAULT NULL,
  `lat3` double DEFAULT NULL,
  `lng3` double DEFAULT NULL,
  `lat4` double DEFAULT NULL,
  `lng4` double DEFAULT NULL,
  `descripccion2` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idEdificios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edificios`
--

LOCK TABLES `edificios` WRITE;
/*!40000 ALTER TABLE `edificios` DISABLE KEYS */;
INSERT INTO `edificios` VALUES (1,'I','ingenieria en sistemas computacionales',17.076188,-96.744952,17.076282,-96.744763,17.075964,-96.744559,17.075867,-96.744752,'nulo'),(2,'J','tipo',17.076255,-96.744337,17.076152,-96.744377,17.076249,-96.744677,17.076344,-96.74464,NULL),(3,'Delegación sindicar y Audiovisual de Licenciatura',NULL,17.076421,-96.744844,17.076577,-96.744785,17.076492,-96.744474,17.076323,-96.744536,NULL),(4,'sala de titulación maestría',NULL,17.076151,-96.744285,17.076226,-96.74425,17.076168,-96.744102,17.076082,-96.744145,NULL),(5,'G','G1,G2,G3,G4',17.076445,-96.74433,17.076551,-96.74429,17.076459,-96.744009,17.076347,-96.744048,NULL),(6,'H','H1,H2',17.076709,-96.744838,17.07681,-96.744803,17.076686,-96.744406,17.076587,-96.744438,NULL),(7,'Ciencias Basicas',NULL,17.076935,-96.744694,17.077011,-96.744662,17.076923,-96.74438,17.076835,-96.744418,NULL),(8,'F','F1,F2,F3,F4,F5,F6,F7,F8',17.076693,-96.744308,17.076815,-96.744262,17.076719,-96.743929,17.076587,-96.743969,NULL),(9,'K','K1',17.076324,-96.743856,17.076648,-96.743727,17.076613,-96.743636,17.076294,-96.743749,NULL),(10,'Laboratorio Ing. Industrial',NULL,17.076749,-96.743674,17.076925,-96.743604,17.076813,-96.743274,17.076637,-96.743338,NULL),(11,'E','E1,E2,E3',17.076979,-96.744304,17.077093,-96.744266,17.076987,-96.743933,17.076878,-96.743976,NULL),(12,'EIDIFIO12',NULL,17.076931,-96.743434,17.076976,-96.743418,17.076933,-96.743274,17.07688,-96.743298,NULL),(13,'D','D1,D2,D3,D4',17.077184,-96.743754,17.077285,-96.743714,17.077204,-96.743489,17.077098,-96.743529,NULL),(14,'Cafeteria',NULL,17.077218,-96.744135,17.077409,-96.744071,17.077354,-96.743902,17.077166,-96.743966,NULL),(15,'Chapulin','explanada del instituto tecnologico de oaxaca',17.077489,-96.744812,17.077557,-96.744782,17.077489,-96.744554,17.077416,-96.744581,NULL),(16,'Dirección, Subdireccion, planeacion y vinculacion',NULL,17.077369,-96.745321,17.077547,-96.745246,17.077451,-96.74497,17.077278,-96.745034,NULL),(17,'Estudios profesionales y servicios escolares',NULL,17.077623,-96.745227,17.077788,-96.745163,17.077694,-96.744879,17.077526,-96.744943,NULL),(18,'Sala de Maestros',NULL,17.077666,-96.744675,17.077788,-96.744629,17.07773,-96.744468,17.077611,-96.744519,NULL),(19,'Biblioteca',NULL,17.077587,-96.744393,17.077968,-96.74427,17.07788,-96.743978,17.077497,-96.744107,NULL),(20,'Gimnasio',NULL,17.077526,-96.743879,17.077909,-96.74375,17.077826,-96.743455,17.077438,-96.743578,NULL),(21,' Dessarrollo Academico',NULL,17.07794,-96.745724,17.078059,-96.745676,17.077947,-96.745368,17.077843,-96.745414,NULL),(22,'Audiovisual de Ingenieria',NULL,17.078242,-96.746017,17.078359,-96.745974,17.078263,-96.745679,17.078151,-96.745719,NULL),(23,'edificiio23',NULL,17.078475,-96.746065,17.078604,-96.746019,17.078557,-96.745869,17.078422,-96.745915,NULL),(24,'A','A1,A2,A3,A4,A5,A6,A7,A8',17.078457,-96.745826,17.078571,-96.745786,17.078457,-96.745451,17.078345,-96.745494,NULL),(25,'Sala de titulación',NULL,17.078075,-96.745376,17.078448,-96.745242,17.078416,-96.745137,17.07804,-96.745274,NULL),(26,'C','C1,C2,C3,C4,C5,C6,C7,C8,C9',17.078041,-96.745,17.078122,-96.744973,17.078026,-96.744699,17.07795,-96.744734,NULL),(27,'laboratorio quimica','(cuantitativo ,cualitativo,analisis clinico y fisico quimico)',17.077946,-96.744578,17.078319,-96.744444,17.078282,-96.744331,17.077904,-96.744468,NULL),(28,'L','L1,L2',17.078104,-96.744197,17.078177,-96.744197,17.078153,-96.744004,17.078085,-96.744004,NULL),(29,'B','B1,B2,B3,B4,B5,B6,B7,B8,B9',17.078326,-96.745007,17.078404,-96.74498,17.078272,-96.744615,17.078189,-96.744647,NULL),(30,'Maestria en Construcción',NULL,17.078888,-96.745916,17.078974,-96.745736,17.078919,-96.745704,17.078831,-96.745892,NULL),(31,'Depto. ing electrica, serv. generales y programa de tutorias',NULL,17.078727,-96.745519,17.0789,-96.745455,17.078822,-96.745208,17.078636,-96.745267,NULL),(32,'edificio32',NULL,17.078517,-96.745243,17.078644,-96.745197,17.078576,-96.744993,17.078444,-96.745039,NULL),(33,'Educación a Distancia',NULL,17.078709,-96.745177,17.078895,-96.745115,17.07883,-96.744911,17.078642,-96.744978,NULL),(34,'Laboratorio Eléctrica',NULL,17.078966,-96.745128,17.079162,-96.745066,17.079081,-96.744811,17.078885,-96.744883,NULL),(35,'Laboratorio Simulación ing. Industrial ',NULL,17.079202,-96.744883,17.079319,-96.74484,17.079279,-96.744722,17.079152,-96.74477,NULL),(36,'edificio36',NULL,17.079031,-96.744705,17.079122,-96.74467,17.079095,-96.744595,17.079002,-96.74463,NULL),(37,'Laboratorio ing. Quimica y laboratorio ing. Mecanica',NULL,17.078575,-96.744783,17.078863,-96.74467,17.078831,-96.744557,17.078535,-96.744667,NULL),(38,'Laboratorio ing. Quimica y laboratorio ing. Mecanica',NULL,17.078535,-96.744667,17.078831,-96.744557,17.078798,-96.744452,17.078504,-96.744565,NULL),(39,'Laboratorio ing. civil y  edificios M,N','M1,N1',17.078616,-96.744345,17.078822,-96.744273,17.078734,-96.74401,17.078528,-96.744082,NULL),(40,'Depto. Ciencias de la Tierra',NULL,17.078404,-96.744289,17.078523,-96.744246,17.078468,-96.744093,17.078354,-96.744133,NULL),(41,'Centro de compúto',NULL,17.079027,-96.744503,17.079262,-96.74442,17.079186,-96.744176,17.078939,-96.744262,NULL),(42,'edificio42',NULL,17.078615,-96.743908,17.078847,-96.743836,17.078779,-96.743638,17.078555,-96.743713,NULL),(43,'laboratorio quimica(control Ambiental ,Microbiologia,simulación de procesos)',NULL,17.079374,-96.74408,17.079562,-96.744016,17.079476,-96.743753,17.079285,-96.743823,NULL),(44,'Ñ','Ñ1',17.079276,-96.743729,17.079336,-96.743705,17.079319,-96.743641,17.079254,-96.743662,NULL),(45,'Posgrado(claustro Doctoral)',NULL,17.078932,-96.743662,17.079079,-96.743611,17.079001,-96.74338,17.078854,-96.743431,NULL),(46,'edificio46',NULL,17.078491,-96.74342,17.078659,-96.743423,17.078655,-96.74334,17.078484,-96.743337,NULL),(47,'edificio47',NULL,17.07848,-96.743401,17.078458,-96.743272,17.078393,-96.743272,17.078389,-96.743398,NULL),(48,'O','O1,O2',17.078052,-96.743368,17.078148,-96.743338,17.078136,-96.743274,17.078027,-96.743301,NULL),(49,'P','P1,P2',17.077943,-96.743416,17.078026,-96.743384,17.077981,-96.743247,17.0779,-96.743277,NULL),(50,'edificio50',NULL,17.077683,-96.743277,17.077689,-96.743194,17.07757,-96.743173,17.077561,-96.743259,NULL);
/*!40000 ALTER TABLE `edificios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tecnologico'
--

--
-- Dumping routines for database 'tecnologico'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-23  9:53:38
