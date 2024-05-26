CREATE DATABASE  IF NOT EXISTS `rinconbotanico` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rinconbotanico`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: rinconbotanico
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idCategorias` int NOT NULL,
  `CategoriaDescripcion` varchar(100) NOT NULL,
  `RangoidPlantas` varchar(50) NOT NULL,
  PRIMARY KEY (`idCategorias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Categorias';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Acuáticas','0 a 999'),(2,'Exteriores','1000 a 199'),(3,'Interiores','2000 a 299');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataplantas`
--

DROP TABLE IF EXISTS `dataplantas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dataplantas` (
  `idPlantas` int NOT NULL,
  `Ubicacion` varchar(200) NOT NULL,
  `Suelo` varchar(200) NOT NULL,
  `Riego` varchar(200) NOT NULL,
  `Floracion` varchar(200) NOT NULL,
  `Tamano` varchar(200) NOT NULL,
  `Observaciones` varchar(600) NOT NULL,
  PRIMARY KEY (`idPlantas`),
  UNIQUE KEY `idPlantas_UNIQUE` (`idPlantas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Datos de las Plantas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataplantas`
--

LOCK TABLES `dataplantas` WRITE;
/*!40000 ALTER TABLE `dataplantas` DISABLE KEYS */;
INSERT INTO `dataplantas` VALUES (1,'Interior con buena luz o exterior en un espacio de media sombra.','Húmedo. Suelo bien drenado.','Abundante.','Verano.','Tamaño 40 cm alto x diam 20 cm.','Esta herbácea siempreverde forma matas densas y ornamentales todo el año. En verano abre sus grandes flores de color blanco que contrastan con el verde brillante del follaje. Esta especie es ideal para las orillas de cursos de agua como riberas de ríos y arroyos. También puede tenerse en macetas, idealmente en jardineras. follaje. Esta especie es ideal para las orillas de cursos de agua como riberas de ríos y arroyos. También puede tenerse en macetas, idealmente en jardineras.\''),(2,'Apta sol directo.','Húmedo. Suelo bien drenado.','Abundante.','Primavera y Verano.','3 m alto x diam 1 m.','Planta palustre (requiere agua en forma permanente) de gran porte y flores grandes y muy llamativas. Es ideal para riberas de laguna, ríos y arroyos en su zona de distribución, donde cumple importantes funciones ambientales como fitoremediadoras, contenedoras de sustratos, amortiguación de crecidas u oleajes, entre otras. También puede tenerse en grandes estanques y en macetas sumergidas. Posee rizomas comestibles.'),(3,'Apta sol directo.','Húmedo. Suelo bien drenado.','Abundante.','Primavera y Verano.','2 m alto x 40 cm diam.','Es una herbácea costera, ideal para bordes de cuerpos de agua. A esta especie le gustan los suelos bien húmedos y puede ponerse a orillas de estanques. Sus grandes flores le otorgan gran valor ornamental. Posee aguijones en el tallo.'),(4,'Apta sol directo.','Húmedo. Suelo bien drenado.','Abundante.','Primavera y Verano.','1,3 m alto x 40 cm diam.','Es una planta acuática ideal para ambientes ribereños, lagunas o ríos de su área de distribución. Puede tenerse perfectamente en macetas bien regadas o en estanques. Posee una inflorescencia (conjunto de flores) grande de color violáceo. Posee rizomas. Fuera de su área de distribución natural puede convertirse en invasora debido a la ausencia de controladores naturales de la especie'),(5,'Apta sol directo.','Húmedo. Suelo bien drenado.','Abundante.','Primavera y Verano.','2,5 m alto x 1 m diam.','Herbácea de gran porte y exuberante floración. Tiene altos requerimientos hídricos, por lo que tolera muy bien los suelos encharcados de orillas de cuerpos de agua resultando ideal para zonas aledañas a las costas de lagunas, arroyos y ríos. Puede tenerse en macetas de gran tamaño debe evitarse la falta de agua.'),(6,'Apta sol directo.','Sólo agua en forma permanente.','En agua','Verano y Otoño.','1,5 m alto x ,50 cm diam.','Es una planta palustre y requiere agua en forma permanente. Posee hojas de gran tamaño y con forma sagitada - como la de una flecha partida- que resultan muy ornamentales. Sus flores se ubican en el extremo del escapo floral -un tallo herbáceo- de coloración blanca. Es una planta ideal para riberas de lagunas, ríos y arroyos, donde cumplen importantes funciones ambientales como fitoremediadoras, contenedoras de sustratos, amortiguadoras de crecidas u oleajes, entre otras. En zonas con heladas puede desaparecer en invierno para luego rebrotar rápidamente de los rizomas.'),(1001,'Apta sol directo.','Suelo bien drenado.','Medio.','Primavera y Verano.','90 cm alto x 30 cm diam.','Es una herbácea que puede ser de vida anual o perenne según el ejemplar. Por eso, es conveniente juntar sus semillas para resembrarlas. El cultivo a partir de las mismas es muy simple. Las flores pueden ser naranjas, rojizas, rosadas, púrpuras o lilas, lo que le confiere gran valor ornamental. Es una planta que requiere poco cuidado y es ideal para borduras y roquedales.'),(1002,'Apta sol directo.','Suelo bien drenado.','Medio.','Primavera y Verano.','1 m alto x 60 cm diam.','Es una planta de base leñosa, cuya parte aérea suele desaparecer en invierno para rebrotar de forma abundante en primavera y comienzos del verano. Requiere poco mantenimiento y es tóxica para el ganado.'),(1003,'Apta sol directo.','Seco bien drenado.','Escaso.','Primavera, Verano y Otoño.','40 cm alto x diam 20 cm.','Esta herbácea tiene tallos altos, elongados y floración apical. Sus flores son de color lila o morado y tienen perfume. Es una especie ideal para intercalar con otras más bajas. Resiste a las heladas y algunos ejemplares pueden comportarse como plantas anuales.'),(1004,'Sol/ Media sombra.','Suelo bien drenado.','Medio.','Primavera, Verano y Otoño.','8 m alto x 3 m diam.','Arból que tiene flores en grandes racimos apicales y muy ornamentales. Sus ramas jóvenes poseen aguijones. Esta especie puede tenerse en macetas de buen tamaño.'),(1005,'Apta sol directo.','Suelo bien drenado.','Medio.','Primavera, Verano y Otoño.','12 m alto x 5 m diam.','Este árbol puede plantarse en veredas. El color verde glauco del follaje genera un conjunto muy ornamental en contraste con sus flores abundantes de color violáceo. Es una planta muy resistente y de pocos requerimientos. Es una especie cicatrizante en selvas ya que luego de un desmonte son las primeras en prosperar y comenzar con la regeneración del ambiente.'),(1006,'Apta sol directo.','Seco bien drenado.','Escaso.','Primavera y Verano.','5 m alto x 30 cm diam.','Es una trepadora de vistosas flores blancas con centro violeta y llamativos filamentos. Sus frutos comestibles. Esta especie es ideal para cercos y alambrados. Se debe evitar su uso en lugares de mucho tránsito.'),(2001,'La iluminación debe ser intensa para mantener vivos los colores. Aunque evitando siempre el sol directo.','Prefiere suelos fértiles y bien drenados.','Se debe mantener la tierra húmeda sin encharcarla, lo ideal es regar cada 2/3 días en primavera-verano y cada 4/5 días en invierno.','Flores sin atractivo ornamental.','Puede llegar a medir unos 90 cm.','Es importante protegerlos de cambios bruscos de temperatura (no poner en habitaciones con aire acondicionado) ya que se le caerán las hojas.'),(2002,'Interior con buena luz o exterior en un espacio de media sombra con un poco de luz solar leve.','Compost ácido o neutro.','Normal (cuando su tierra está casi seca).','Desde finales del otoño hasta finalizar el invierno o comienzos de la primavera.','El tamaño en una maceta pequeña varía entre los 30 a 60 cm de altura, pero en tierra puede llegar a alcanzar 4 metros de altura.','Fertilizar en primavera-verano. Cuidar del frío cuando la planta es joven.'),(2003,'De interior. Espacio bien luminoso, evitando sol directo.','Húmedo. Mezcla de turba, arena o perlita y vermiculita.','Frecuente pero siempre evitando encharcamientos. Es importante mantener la humedad ambiente pulverizando sus hojas.','En primavera, su flor no es muy vistosa.','Son pequeñas, alcanzan los 15cm de altura.','Remover las flores a medida que aparecen (si es que la planta las produce). No tienen ningún interés y le quitan energía a la planta.'),(2004,'Interior o exterior media sombra. Necesita luz de calidad, no sol directo.','Requiere un suelo muy rico en materia orgánica y con buen drenaje.','Riega siempre por abajo, es decir, colocando la maceta un rato sobre un plato con agua.','Se reproduce por esporas.','Dependiendo del envase en el que se encuentre y las condiciones de cultivo, puede alcanzar gran tamaño.','La humedad es un requisito indispensable en el ambiente donde acojamos a esta planta. Si no poseemos, por clima,esta humedad, tendremos que creerla con pulverizadores sobre las hojas y echando agua en el plato de la maceta, permitiendo así que la humedad entre por abajo y no llegue a pudrir el tronco.'),(2005,'Necesita un lugar luminoso pero sin sol directo.','Lo ideal es utilizar un sustrato bien drenado y algo ácido (utilizar turba).','Riego poco frecuente, es una planta sensible al exceso de agua y puede pudrirse. Dejar secar el sustrato entre riegos.','De manera natural es muy rara su floración, la reproducción se realiza por medio de esquejes.','Plantas colgantes que pueden alcanzar 10-15 m de largo en su madurez, con tallos de hasta 4 cm de diámetro.','Pulverizar con agua el follaje de vez en cuando. Es recomendable dejar el agua que se utilice un día al sol para sacarle el cloro.'),(2006,'El Singonio no es exigente en cuanto a luz, pero una habitación luminosa le viene mejor, especialmente para que no pierda el color variegado blanco de las hojas.','Con alto contenido orgánico.','En verano riega 2 ó 3 veces por semana, y en invierno, 1 ó 2, especialmente si hay calefacción.','Puede florecer en invierno, sin valor ornamental.','En las mejores condiciones alcanza una longitud de aproximadamente metro y medio.','La multiplicación ocurre cortando esquejes de los tallos.');
/*!40000 ALTER TABLE `dataplantas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagenes`
--

DROP TABLE IF EXISTS `imagenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagenes` (
  `idPlantas` int NOT NULL,
  `ImagenesLinkFoto` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idPlantas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Imagenes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagenes`
--

LOCK TABLES `imagenes` WRITE;
/*!40000 ALTER TABLE `imagenes` DISABLE KEYS */;
INSERT INTO `imagenes` VALUES (1,'./img/000001.jpg'),(2,'./img/000002.jpg'),(3,'./img/000003.jpg'),(4,'./img/000004.jpg'),(5,'./img/000005.jpg'),(6,'./img/000006.jpg'),(1001,'./img/001001.jpg'),(1002,'./img/001002.jpg'),(1003,'./img/001003.jpg'),(1004,'./img/001004.jpg'),(1005,'./img/001005.jpg'),(1006,'./img/001006.jpg'),(2001,'./img/002001.jpg'),(2002,'./img/002002.jpg'),(2003,'./img/002003.jpg'),(2004,'./img/002004.jpg'),(2005,'./img/002005.jpg'),(2006,'./img/002006.jpg');
/*!40000 ALTER TABLE `imagenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plantas`
--

DROP TABLE IF EXISTS `plantas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plantas` (
  `idPlantas` int NOT NULL,
  `PlantasNombre` varchar(100) NOT NULL,
  `idCategoria` int NOT NULL,
  `CategoriaDescripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idPlantas`,`idCategoria`),
  KEY `idx_plantas_idCategoria` (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Plantas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plantas`
--

LOCK TABLES `plantas` WRITE;
/*!40000 ALTER TABLE `plantas` DISABLE KEYS */;
INSERT INTO `plantas` VALUES (1,'Azucenita de Bañado',1,'Acuaticas'),(2,'Achira Amarilla',1,'Acuaticas'),(3,'Rosa de Rio',1,'Acuaticas'),(4,'Aguape',1,'Acuaticas'),(5,'Margarita del Bañado',1,'Acuaticas'),(6,'Saeta',1,'Acuaticas'),(1001,'Chinita del Campo',2,'Exterior'),(1002,'Margarita del Campo',2,'Exterior'),(1003,'Verbena de Buenos Aires',2,'Exterior'),(1004,'Ceibo',2,'Exterior'),(1005,'Fumo Bravo',2,'Exterior'),(1006,'Maracuya',2,'Exterior'),(2001,'Croton',3,'Interior'),(2002,'Estrella Federal',3,'Interior'),(2003,'Fitonia',3,'Interior'),(2004,'Helecho',3,'Interior'),(2005,'Potus',3,'Interior'),(2006,'Sigonium',3,'Interior');
/*!40000 ALTER TABLE `plantas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'rinconbotanico'
--

--
-- Dumping routines for database 'rinconbotanico'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-13 23:25:42
