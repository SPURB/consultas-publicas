-- MySQL dump 10.16  Distrib 10.1.21-MariaDB, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: 127.0.0.1
-- ------------------------------------------------------
-- Server version	10.1.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `memid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `commentdate` datetime NOT NULL,
  `public` tinyint(1) NOT NULL,
  `postid` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL,
  `commentid` int(11) NOT NULL,
  `commentcontext` text NOT NULL,
  PRIMARY KEY (`memid`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (62,'Thomas','yubathom@gmail.com','load test 3','2018-02-23 12:33:03',0,3,1,2001,'Anexo 2'),(63,'Thomas','yubathom@gmail.com','teste','2018-02-23 13:22:20',0,1,1,1,'A presente Consulta PÃºblica, promovida pela Prefeitura do MunicÃ­pio de SÃ£o Paulo por intermÃ©dio da Secretaria Municipal de Urbanismo e Licenciamento (SMUL) e da SÃ£o Paulo Urbanismo (SP-URBANISMO), tem como objeto desencadear o processo administrativo tendente a instaurar o Projeto de IntervenÃ§Ã£o Urbana (PIU) Sumidouro, a ser realizada entre os dias 21 de fevereiro e 21 de marÃ§o de 2018, apresentando os elementos preliminares ao desenvolvimento do PIU, com vistas a colher contribuiÃ§Ãµes da sociedade civil ao desenvolvimento posterior do projeto. A consulta tem por base a legislaÃ§Ã£o em vigor e os instrumentos urbanÃ­sticos que permitem aÃ§Ãµes especÃ­ficas no territÃ³rio da cidade.insert_comment'),(64,'Thomas','yubathom@gmail.com','teste','2018-02-23 13:25:31',1,1,1,2,'De acordo com o Art. 2Âº do Decreto nÂº 56.901/2016, o processo de instruÃ§Ã£o do PIU se inicia pela publicaÃ§Ã£o dos elementos preliminares a seu desenvolvimento, constituÃ­dos de um diagnÃ³stico socioterritorial da Ã¡rea estudada e de um programa de interesse pÃºblico, trazendo as questÃµes a serem enfrentadas no contexto urbano em que estÃ¡ inserido. Esses documentos sÃ£o entÃ£o submetidos Ã  consulta pÃºblica para receber subsÃ­dios ao seu posterior desenvolvimento, apÃ³s prÃ©via autorizaÃ§Ã£o da Secretaria Municipal de Urbanismo e Licenciamento â€“ SMUL. Num segundo momento, sÃ£o apresentados os elementos constituintes do PIU (definidos no Art. 4Âº do mesmo decreto) para nova consulta pÃºblica, de forma que possa ser avaliado e ajustado atÃ© a publicaÃ§Ã£o de sua versÃ£o final, que servirÃ¡ como base para a definiÃ§Ã£o de parÃ¢metros de parcelamento, uso e ocupaÃ§Ã£o do solo a serem instituÃ­dos por Decreto do Executivo ou por intermÃ©dio de lei regularmente aprovada pela CÃ¢mara Municipal de SÃ£o Paulo.\r\n insert_comment'),(65,'teste','yubathom@gmail.com','mais item','2018-03-01 19:06:15',0,1,1,1,'A presente Consulta PÃºblica, promovida pela Prefeitura do MunicÃ­pio de SÃ£o Paulo por intermÃ©dio da Secretaria Municipal de Urbanismo e Licenciamento (SMUL) e da SÃ£o Paulo Urbanismo (SP-URBANISMO), tem como objeto desencadear o processo administrativo tendente a instaurar o Projeto de IntervenÃ§Ã£o Urbana (PIU) Sumidouro, a ser realizada entre os dias 23 de fevereiro e 23 de marÃ§o de 2018, apresentando os elementos preliminares ao desenvolvimento do PIU, com vistas a colher contribuiÃ§Ãµes da sociedade civil ao desenvolvimento posterior do projeto. A consulta tem por base a legislaÃ§Ã£o em vigor e os instrumentos urbanÃ­sticos que permitem aÃ§Ãµes especÃ­ficas no territÃ³rio da cidade. insert_comment'),(66,'Thomas','yubathom@gmail.com','Teste em anexo um, atÃ© de boa este','2018-03-01 21:54:47',1,2,0,1001,'Anexo 1'),(67,'Thomas','yubathom@gmail.com','02/03/2018, 1:19:XX ','2018-03-02 16:18:30',0,1,1,1,'A presente Consulta PÃºblica, promovida pela Prefeitura do MunicÃ­pio de SÃ£o Paulo por intermÃ©dio da Secretaria Municipal de Urbanismo e Licenciamento (SMUL) e da SÃ£o Paulo Urbanismo (SP-URBANISMO), tem como objeto desencadear o processo administrativo tendente a instaurar o Projeto de IntervenÃ§Ã£o Urbana (PIU) Sumidouro, a ser realizada entre os dias 23 de fevereiro e 23 de marÃ§o de 2018, apresentando os elementos preliminares ao desenvolvimento do PIU, com vistas a colher contribuiÃ§Ãµes da sociedade civil ao desenvolvimento posterior do projeto. A consulta tem por base a legislaÃ§Ã£o em vigor e os instrumentos urbanÃ­sticos que permitem aÃ§Ãµes especÃ­ficas no territÃ³rio da cidade.'),(68,'Thomas','yubathom@gmail.com','02/03/2018 15:33','2018-03-02 18:33:23',1,1,0,1,'A presente Consulta PÃºblica, promovida pela Prefeitura do MunicÃ­pio de SÃ£o Paulo por intermÃ©dio da Secretaria Municipal de Urbanismo e Licenciamento (SMUL) e da SÃ£o Paulo Urbanismo (SP-URBANISMO), tem como objeto desencadear o processo administrativo tendente a instaurar o Projeto de IntervenÃ§Ã£o Urbana (PIU) Sumidouro, a ser realizada entre os dias 23 de fevereiro e 23 de marÃ§o de 2018, apresentando os elementos preliminares ao desenvolvimento do PIU, com vistas a colher contribuiÃ§Ãµes da sociedade civil ao desenvolvimento posterior do projeto. A consulta tem por base a legislaÃ§Ã£o em vigor e os instrumentos urbanÃ­sticos que permitem aÃ§Ãµes especÃ­ficas no territÃ³rio da cidade.'),(69,'Thomas','yubathom@gmail.com','Distante dos olhos da maioria dos paulistanos, cresce uma SÃ£o Paulo verde e comestÃ­vel. A mancha rural, que parece inimaginÃ¡vel na floresta de concreto, mas que ocupa cerca de 30% do territÃ³rio da metrÃ³pole, de acordo com o Plano Diretor EstratÃ©gico, espalha-se em especial pela regiÃ£o de Parelheiros, no extremo da Zona Sul. Ã‰ lÃ¡ que trabalham agricultores ligados Ã  Cooperativa AgroecolÃ³gica dos Produtores Rurais e de Ãgua Limpa da RegiÃ£o Sul de SÃ£o Paulo (Cooperapas) que ilustram algumas fotos desta reportagem, como a sitiante Maria de Lourdes Januario Bispo e sua filha, Regiane. Na propriedade, com 4 hectares, onde foi feito o ensaio, ela mantÃ©m hÃ¡ dois anos hortas com alface, beterraba, cenoura, manjericÃ£o, milho e mandioca cultivados de maneira orgÃ¢nica. Aos sÃ¡bados, dona Lourdes embarca seus produtos e os dos colegas cooperados para venda no ModelÃ³dromo do Ibirapuera.','2018-03-02 21:51:38',1,1,0,1,'A presente Consulta PÃºblica, promovida pela Prefeitura do MunicÃ­pio de SÃ£o Paulo por intermÃ©dio da Secretaria Municipal de Urbanismo e Licenciamento (SMUL) e da SÃ£o Paulo Urbanismo (SP-URBANISMO), tem como objeto desencadear o processo administrativo tendente a instaurar o Projeto de IntervenÃ§Ã£o Urbana (PIU) Sumidouro, a ser realizada entre os dias 23 de fevereiro e 23 de marÃ§o de 2018, apresentando os elementos preliminares ao desenvolvimento do PIU, com vistas a colher contribuiÃ§Ãµes da sociedade civil ao desenvolvimento posterior do projeto. A consulta tem por base a legislaÃ§Ã£o em vigor e os instrumentos urbanÃ­sticos que permitem aÃ§Ãµes especÃ­ficas no territÃ³rio da cidade. insert_comment'),(70,'Thomas','yubathom@gmail.com','Na propriedade, com 4 hectares, onde foi feito o ensaio, ela mantÃ©m hÃ¡ dois anos hortas com alface, beterraba, cenoura, manjericÃ£o, milho e mandioca cultivados de maneira orgÃ¢nica. Aos sÃ¡bados, dona Lourdes embarca seus produtos e os dos colegas cooperados para venda no ModelÃ³dromo do Ibirapuera. Numa escala bem menor, na Zona Leste, hÃ¡ uma concentraÃ§Ã£o de hortas urbanas, particularmente no bairro de SÃ£o Mateus. Nas duas regiÃµes da cidade, parte dessas produÃ§Ãµes, livre de pesticidas e fertilizantes quÃ­micos, tem em comum o fato de ser orgÃ¢nica ou estar em fase de transiÃ§Ã£o. Um dos primeiros chefs a descobrir e valorizar a capital agrÃ­cola foi a argentina Paola Carosella, conhecida no Brasil todo por sua participaÃ§Ã£o como jurada do reality culinÃ¡rio MasterChef, que estreia a nova temporada na terÃ§a (6). â€œDesde a Ã©poca que tinha o (extinto) Julia Cocina, queria servir orgÃ¢nicos produzidos em SÃ£o Pauloâ€, conta a premiada cozinheira.','2018-03-02 22:06:09',0,1,0,2,'De acordo com o Art. 2Âº do Decreto nÂº 56.901/2016, o processo de instruÃ§Ã£o do PIU se inicia pela publicaÃ§Ã£o dos elementos preliminares a seu desenvolvimento, constituÃ­dos de um diagnÃ³stico socioterritorial da Ã¡rea estudada e de um programa de interesse pÃºblico, trazendo as questÃµes a serem enfrentadas no contexto urbano em que estÃ¡ inserido. Esses documentos sÃ£o entÃ£o submetidos Ã  consulta pÃºblica para receber subsÃ­dios ao seu posterior desenvolvimento, apÃ³s prÃ©via autorizaÃ§Ã£o da Secretaria Municipal de Urbanismo e Licenciamento â€“ SMUL. Num segundo momento, sÃ£o apresentados os elementos constituintes do PIU (definidos no Art. 4Âº do mesmo decreto) para nova consulta pÃºblica, de forma que possa ser avaliado e ajustado atÃ© a publicaÃ§Ã£o de sua versÃ£o final, que servirÃ¡ como base para a definiÃ§Ã£o de parÃ¢metros de parcelamento, uso e ocupaÃ§Ã£o do solo a serem instituÃ­dos por Decreto do Executivo ou por intermÃ©dio de lei regularmente aprovada pela CÃ¢mara Municipal de SÃ£o Paulo.\r\n insert_comment');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-06 18:19:13
