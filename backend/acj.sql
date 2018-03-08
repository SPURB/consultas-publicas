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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (72,'ana_s_campos','ana_s_campos@outlook.com','ContribuiÃ§Ã£o: Quadros VII e VIII.\r\nJustificativa: A resposta que obtive para o prolongamento da Av. Sarg. Lourival Alves de Souza foi que estava sendo estudada uma \"alternativa de melhorar a ligaÃ§Ã£o entre a Av. Eng. Alberto de Zagottis e a Av. Sarg. Geraldo Santana, utilizando-se para isso de uma reserva de Ã¡reas pÃºblicas e privadas garantidas pela Lei 5.829/1961 no entroncamento das avenidas Eng. Alberto de Zagottis, Sarg. Geraldo Santana, Sarg. Lourival Alves de Souza e Nossa Senhora de SabarÃ¡\" (http://gestaourbana.prefeitura.sp.gov.br/wp-content/uploads/2017/06/ACJ_consulta-publica.pdf). NÃ£o vejo qualquer alteraÃ§Ã£o nos mapas ou nos quadros. HÃ¡ uns \"traÃ§os\" neste cruzamento no mapa, mas sem detalhamento no quadro do que serÃ¡ feito. Gostaria que se detalhasse o projeto, para que se reduza, de fato, o trÃ¢nsito de ZER-1 que se localiza atrÃ¡s do CemitÃ©rio de Congonhas (Jd. Marajoara), consoante solicitado na idÃ©ia original.','2018-02-09 13:02:31',1,1,0,1,'Estabelece objetivos, diretrizes, estratÃ©gias e mecanismos para a implantaÃ§Ã£o do Projeto de IntervenÃ§Ã£o Urbana para o perÃ­metro do Arco Jurubatuba e cria as Ãreas de IntervenÃ§Ã£o Urbana Vila Andrade, Jurubatuba e Interlagos insert_comment');
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

-- Dump completed on 2018-03-08 15:49:06
