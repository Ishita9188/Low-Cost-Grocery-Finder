/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - shop
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shop` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `shop`;

/*Table structure for table `dataset` */

DROP TABLE IF EXISTS `dataset`;

CREATE TABLE `dataset` (
  `Resid` int(11) NOT NULL AUTO_INCREMENT,
  `dates` text,
  `pid` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `rate` int(20) DEFAULT NULL,
  `place` varchar(200) DEFAULT NULL,
  `dis` varchar(200) DEFAULT NULL,
  `ratelevel` varchar(200) DEFAULT NULL,
  `rating` varchar(200) DEFAULT NULL,
  `color` varchar(200) DEFAULT NULL,
  `word` varchar(200) DEFAULT NULL,
  `votes` varchar(200) DEFAULT NULL,
  `address` text,
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Resid`)
) ENGINE=InnoDB AUTO_INCREMENT=356 DEFAULT CHARSET=latin1;

/*Data for the table `dataset` */

insert  into `dataset`(`Resid`,`dates`,`pid`,`pname`,`rate`,`place`,`dis`,`ratelevel`,`rating`,`color`,`word`,`votes`,`address`,`image`) values (1,'01-01-2000','1','yogurt',790,'T. Nagar:','11','3','4.8','Dark Green','Excellent','314','Third Floor, Century City Mall, Kalayaan Avenue, Poblacion, Makati City','yogurt.jpg'),(2,'01-01-2000','1','pork',56,'Pondy Bazaar','23','3','4.8','Dark Green','Excellent','314','Third Floor, Century City Mall, Kalayaan Avenue, Poblacion, Makati City','pork.jpg'),(3,'01-01-2000','1','sandwich bags',2525,'Sowcarpet','45','3','4.5','Dark Green','Excellent','591','Little Tokyo, 2277 Chino Roces Avenue, Legaspi Village, Makati City','sandwich bags.jpg'),(4,'01-01-2000','1','lunch meat',24,'Ritchie Street','65','4','4.4','Green','Very Good','270','Edsa Shangri-La, 1 Garden Way, Ortigas, Mandaluyong City','lunch meat.jpg'),(5,'01-01-2000','1','all- purpose',254,'George Town','78','4','4.9','Dark Green','Excellent','365','Third Floor, Mega Fashion Hall, SM Megamall, Ortigas, Mandaluyong City','all- purpose.jpg'),(6,'01-01-2000','1','flour',254,'Panagal Park','90','4','4.8','Dark Green','Excellent','229','Third Floor, Mega Atrium, SM Megamall, Ortigas, Mandaluyong City','flour.jpg'),(7,'01-01-2000','1','soda',345,'Anna Nagar','35','3','4.4','Green','Very Good','336','Ground Floor, Mega Fashion Hall, SM Megamall, Ortigas, Mandaluyong City','soda.jpg'),(8,'01-01-2000','1','butter',64,'Nungambakkam','67','4','4','Green','Very Good','520','Building K, SM By The Bay, Sunset Boulevard, Mall of Asia Complex (MOA), Pasay City','butter.jpg'),(9,'01-01-2000','1','vegetables',34,'Forum Vijaya Mall','89','4','4.2','Green','Very Good','677','Building B, By The Bay, Seaside Boulevard, Mall of Asia Complex (MOA), Pasay City','vegetables.jpg'),(10,'01-01-2000','1','beef',80,'Phoenix Marketcity','9','4','4.9','Dark Green','Excellent','621','Plaza Level, Sofitel Philippine Plaza Manila, CCP Complex, Pasay City','beef.jpg'),(11,'01-01-2000','1','aluminum foil',70,'Spencer Plaza Mall','24','3','4.8','Dark Green','Excellent','532','Brixton Technology Center, 10 Brixton Street, Kapitolyo, Pasig City','aluminum foil.jpg'),(12,'01-01-2000','1','all- purpose',60,'Ramee Mall','45','3','4.9','Dark Green','Excellent','1070','75 East Capitol Drive, Kapitolyo, Pasig City','all- purpose.jpg'),(13,'01-01-2000','1','dinner rolls',59,'Ampa Skywalk','145','3','4.2','Green','Very Good','488','23 East Capitol Drive, Kapitolyo, Pasig City','dinner rolls.jpg'),(14,'01-01-2000','1','shampoo',60,'Challa Mall','13','3','4.8','Dark Green','Excellent','294','Second Floor, UP Town Center, Katipunan Avenue, Diliman, Quezon City','shampoo.jpg'),(15,'01-01-2000','1','all- purpose',98,'Alsa Mall','14','3','4.2','Green','Very Good','458','387 P. Guevarra Corner Argonne Street, Addition Hills, San Juan City','all- purpose.jpg'),(16,'01-01-2000','1','mixes',987,'Spectrum The Grand Venus Mall','56','3','4.3','Green','Very Good','223','17 J. Abad Santos Drive, Little Baguio, San Juan City','mixes.jpg'),(17,'01-01-2000','1','soap',790,'Express Avenue','45','3','3.6','Yellow','Good','29','Ayala Mall, Solenad, Nuvali, Santa Rosa - Tagaytay Road, Don Jose, Santa Rosa','soap.jpg'),(18,'01-01-2000','1','soap',7,'VR Chennai','78','3','4','Green','Very Good','72','Ground Floor, Building G, Solenad 3, Nuvali, Don Jose, Santa Rosa','soap.jpg'),(19,'01-01-2000','1','ice cream',23,'Chandra Metro Mall','345','3','4.5','Dark Green','Excellent','211','Aguinaldo Highway, Tagaytay City','ice cream.jpg'),(20,'01-01-2000','1','dinner rolls',93,'Grand Square','67','2','4.5','Dark Green','Excellent','118','Third Floor, BGC Stopover Pavillion, Rizal Drive Corner 31st Street, Bonifacio Global City, Taguig City','dinner rolls.jpg'),(21,'01-01-2000','2','toilet paper',956,'Welcome Shopping Mall','35','4','4.4','Green','Very Good','392','Ground Floor, Netlima Building, 4th Avenue Corner 26th Street, Bonifacio Global City, Taguig City','toilet paper.jpg'),(22,'01-01-2000','2','shampoo',586,'Palladium','63','4','4.7','Dark Green','Excellent','535','Sixth Floor, SM Aura Premier, C5 Road Corner 26th Street, Bonifacio Global City, Taguig City','shampoo.jpg'),(23,'01-01-2000','2','hand soap',536,'Phoenix Market City','4','4','4.5','Dark Green','Excellent','618','Fifth Floor, SM Aura Premier, C5 Corner 26th Street, Bonifacio Global City, Taguig City','hand soap.jpg'),(24,'01-01-2000','2','waffles',90,'Apple Shopping Mall','3','2','3','Orange','Average','6','SCLN, 208, Bloco A, Loja 30, Asa Norte, Brasí_lia','waffles.jpg'),(25,'01-01-2000','2','vegetables',80,'Parrys Corner Shopping','53','1','3.8','Yellow','Good','9','SCLN 104, Bloco A, Loja 26, Asa Norte, Brasí_lia','vegetables.jpg'),(26,'01-01-2000','2','cheeses',60,'Mayas Plaza','64','2','3.7','Yellow','Good','11','SCLN 210, Bloco D, Loja 36/48, Asa Norte, Brasí_lia','cheeses.jpg'),(27,'01-01-2000','2','mixes',50,'Mi Home Phoenix Market City Chennai','11','3','3.8','Yellow','Good','11','CLN 110, Bloco D, Loja 28, Asa Norte, Brasí_lia','mixes.jpg'),(28,'01-01-2000','2','milk',40,'Big Bazaar','23','2','3.2','Orange','Average','11','SCS 214, Bloco C, Loja 40, Asa Sul, Brasí_lia','milk.jpg'),(29,'01-01-2000','2','sandwich bags',40,'Abirami','45','3','3.1','Orange','Average','10','SCS 213, Bloco C, Loja 35, Asa Sul, Brasí_lia','sandwich bags.jpg'),(30,'01-01-2000','2','laundry detergent',20,'Doll Shop','65','3','3.7','Yellow','Good','8','CLS 109, Bloco A, Loja 2/6, Asa Sul, Brasí_lia','laundry detergent.jpg'),(31,'01-01-2000','2','dishwashing liquid/detergent',278,'Mi Home Phoenix Market City Chennai','78','4','3.7','Yellow','Good','5','SCS 212, Bloco B, Loja 26, Asa Sul, Brasí_lia','dishwashing liquid.jpg'),(32,'01-01-2000','2','waffles',20,'Saravana Stores Crown Mall','90','1','0','White','Not rated','2','Edifí_cio Josí© Severo, SCS 6, Bloco A, Loja 99, Asa Sul, Brasí_lia','waffles.jpg'),(33,'01-01-2000','2','individual meals',6,'Super Saravana Stores - Porur','35','4','4.1','Green','Very Good','12','CLS 115, Bloco A, Loja 2, Asa Sul, Brasí_lia','individual meals.jpg'),(34,'01-01-2000','2','hand soap',660,'FBB-CHENNAI-ANNANAGAR','67','4','3.1','Orange','Average','9','Rua 13 Norte, Lote 4, íguas Claras, Brasí_lia','hand soap.jpg'),(35,'01-01-2000','2','vegetables',80,'Chennai 50','89','3','3.6','Yellow','Good','9','Avenida Araucíçrias, 1325, Loja 19, íguas Claras, Brasí_lia','vegetables.jpg'),(36,'01-01-2000','2','individual meals',70,'10 Square Mall','9','4','4.3','Green','Very Good','29','Vila Malls, Avenida das Castanheiras, Lote 1060, í€guas Claras, Brasí_lia','individual meals.jpg'),(37,'01-01-2000','2','yogurt',80,'Saravana Stores The Crown Mall','24','4','4.2','Green','Very Good','17','Brasí_lia Shopping - Piso 2, SCN 5, Bloco A, Asa Norte, Brasí_lia','yogurt.jpg'),(38,'01-01-2000','2','cereals',90,'Amudham Angadi ,Fair Price Shop','745','4','3.6','Yellow','Good','5','Fashion Park, Shis Ql 17, Bloco G, Loja 208, Lago Sul, Brasí_lia','cereals.jpg'),(39,'01-01-2000','2','shampoo',80,'SUPER 99','145','4','4','Green','Very Good','10','ParkShopping - Piso 2, SAI/SO, írea 6580, Guaríç I, Brasí_lia','shampoo.jpg'),(40,'01-01-2000','2','vegetables',70,'Shopping Singapore','13','4','3.2','Orange','Average','6','Pontí£o Lago Sul, SHIS 10, Lote 9, Lago Sul, Brasí_lia','vegetables.jpg'),(41,'01-01-2000','2','aluminum foil',60,'Gold Souk Grande','14','4','4.9','Dark Green','Excellent','30','SCES, Trecho 2, Conjunto 13/36, Setor de Clubes Esportivos Sul, Brasí_lia','aluminum foil.jpg'),(42,'01-01-2000','2','tortillas',40,'CHENNAI CITI CENTRE','56','4','3.3','Orange','Average','8','Shopping Iguatemi - piso 1, SHIN CA 4, Lote A, Lago Norte, Brasí_lia','tortillas.jpg'),(43,'01-01-2000','2','mixes',48,'Pothys','45','2','3.6','Yellow','Good','9','CLSN 301, Bloco C, Loja 86, Sudoeste, Brasí_lia','mixes.jpg'),(44,'02-01-2000','3','soda',70,'Westside','78','4','4','Green','Very Good','7','Praia da Barra da Tijuca, Avenida Lí_cio Costa, Ilha 25, Barra da Tijuca, Rio de Janeiro','soda.jpg'),(45,'02-01-2000','3','pork',89,'Phoenix Marketcity','345','4','4.8','Dark Green','Excellent','29','Rua Goní_alves Dias, 32, Centro, Rio de Janeiro','pork.jpg'),(46,'02-01-2000','3','soap',9,'Grand Galada Centre Mall','67','3','4.7','Dark Green','Excellent','24','Rua Santa Clara, 36, Copabana, Rio de Janeiro','soap.jpg'),(47,'02-01-2000','3','ice cream',88,'Westside','35','3','4.5','Dark Green','Excellent','29','Avenida Prado Junior, 335 B, Copacabana, Rio de Janeiro','ice cream.jpg'),(48,'02-01-2000','3','toilet paper',50,'Shanthi Jewellers','63','4','4.2','Green','Very Good','11','Rua Ronald de Carvalho, 55, Copacabana, Rio de Janeiro','toilet paper.jpg'),(49,'02-01-2000','3','dinner rolls',90,'Lifestyle Stores','4','3','4.8','Dark Green','Excellent','19','Galeria River, Rua Francisco Otaviano, 67, Copacabana, Rio de Janeiro','dinner rolls.jpg'),(50,'02-01-2000','3','hand soap',5,'Currimbhoys Home Products Pvt.Ltd','3','4','4.9','Dark Green','Excellent','40','Praí_a Santos Dumont, 116, Gíçvea, Rio de Janeiro','hand soap.jpg'),(51,'02-01-2000','3','spaghetti sauce',60,'Max','53','3','4.6','Dark Green','Excellent','21','Rua Aní_bal de Mendoní_a, 37, Ipanema, Rio de Janeiro','spaghetti sauce.jpg'),(52,'02-01-2000','3','milk',30,'Gute Reise – Palladium Mall Chenna','11','4','4.9','Dark Green','Excellent','49','Rua Vinicius de Moraes, 49, Ipanema, Rio de Janeiro','milk.jpg'),(53,'02-01-2000','3','ketchup',396,'Lifestyle Stores','23','4','4.6','Dark Green','Excellent','21','Rua Joana Angí©lica, 40, Ipanema, Rio de Janeiro','ketchup.jpg'),(54,'02-01-2000','3','sandwich loaves',90,'TRENDS','45','3','4.3','Green','Very Good','14','Rua Jardim Botí¢nico, 731, Jardim Botí¢nico, Lagoa, Rio de Janeiro','sandwich loaves.jpg'),(55,'02-01-2000','3','poultry',80,'Souchii','65','4','4','Green','Very Good','5','Le Monde, Bloco 3, Lojas A/B, Avenida das Amí©ricas, 3500, Barra da Tijuca, Rio de Janeiro','poultry.jpg'),(56,'02-01-2000','3','toilet paper',1000,'A Cube','78','4','4.6','Dark Green','Excellent','25','Rua Dias Ferreira, 256, Leblon, Rio de Janeiro','toilet paper.jpg'),(57,'02-01-2000','3','ice cream',17,'metro shopping','90','4','4.4','Green','Very Good','13','Avenida Ataulfo de Paiva, 1022, Lojas A e B, Leblon, Rio de Janeiro','ice cream.jpg'),(58,'02-01-2000','3','ketchup',74,'Westside','35','2','4.2','Green','Very Good','7','Rua Gustavo Sampaio, 798, Leme, Rio de Janeiro','ketchup.jpg'),(59,'02-01-2000','3','vegetables',908,'Sundari Silks - India | Wedding Sarees Collection','67','4','4.2','Green','Very Good','8','Rua Gustavo Sampaio, 610, Leme, Rio de Janeiro','vegetables.jpg'),(60,'02-01-2000','3','laundry detergent',374,'Reliance Trends','89','3','0','White','Not rated','1','Madureira Shopping - Loja 289/290, Piso 2, Estrada do Portela, 222, Madureira, Rio de Janeiro, RJ','laundry detergent.jpg'),(61,'02-01-2000','3','spaghetti sauce',3749,'Meena Bazaar','9','4','4.7','Dark Green','Excellent','44','Rua Aprazí_vel, 62, Santa Teresa, Rio de Janeiro','spaghetti sauce.jpg'),(62,'02-01-2000','3','bagels',90,'Palam Silks','24','3','4.6','Dark Green','Excellent','24','Rua Barí£o de Iguatemi, 379, Tijuca, Rio de Janeiro','bagels.jpg'),(63,'02-01-2000','3','soap',50,'Sri Kaalikambal Temple','745','3','4.3','Green','Very Good','10','Avenida Joí£o Alves, 56, Urca, Rio de Janeiro','soap.jpg'),(64,'02-01-2000','3','ice cream',48,'T.Mangharam (The Fabric People','145','4','4.5','Dark Green','Excellent','49','Rua Avanhandava, 81, Bela Vista, Sí£o Paulo 10000','ice cream.jpg'),(65,'02-01-2000','3','shampoo',48,'Panagal Park','13','4','4.4','Green','Very Good','17','Rua Treze de Maio, 668, Bela Vista, Sí£o Paulo 01327000','shampoo.jpg'),(66,'02-01-2000','3','lunch meat',44,'Parrys Shopping Centre','14','3','3.1','Orange','Average','5','Rua Antonio Carlos, 429, Consolaí_í£o, Sí£o Paulo','lunch meat.jpg'),(67,'02-01-2000','3','cereals',49,'Kandhakottam Temple','56','4','4.1','Green','Very Good','15','Rua AntíÇnio Carlos, 268, Consolaí_í£o, Sí£o Paulo','cereals.jpg'),(68,'02-01-2000','3','spaghetti sauce',49,'Kovai Pazhamudir','45','4','4.8','Dark Green','Excellent','59','Hotel Unique, Avenida Brigadeiro Luí_s AntíÇnio, 4700, Jardim Paulista, Sí£o Paulo','spaghetti sauce.jpg'),(69,'02-01-2000','3','pork',80,'MAX Regional Office','78','4','4.6','Dark Green','Excellent','30','Rua Jesuí_no Arruda, 470, Itaim Bibi, Sí£o Paulo','pork.jpg'),(70,'02-01-2000','3','vegetables',49,'Marks & Spencer','345','3','3.9','Yellow','Good','5','Rua Tabapuí£, 1417, Itaim Bibi, Sí£o Paulo','vegetables.jpg'),(71,'02-01-2000','3','cheeses',48,'Sri Ramakrishna Math Chennai','67','2','0','White','Not rated','0','Rua Pedroso Alvarenga, 522, Itaim Bibi, Sí£o Paulo, SP','cheeses.jpg'),(72,'02-01-2000','3','eggs',40,'T. Nagar:','35','4','3.4','Orange','Average','73','Rua Haddock Lobo, 1240, Cerqueira Cí©sar, Jardim Paulista, Sí£o Paulo','eggs.jpg'),(73,'02-01-2000','3','vegetables',889,'Pondy Bazaar','63','4','3.5','Yellow','Good','9','Alameda Lorena, 300, Jardim Paulista, Sí£o Paulo','vegetables.jpg'),(74,'02-01-2000','3','vegetables',58,'Sowcarpet','4','4','4.3','Green','Very Good','39','Rua Haddock Lobo, 1738, Cerqueira Cí©sar, Jardim Paulista, Sí£o Paulo 10000','vegetables.jpg'),(75,'02-01-2000','4','cereals',5959,'Ritchie Street','3','4','3.9','Yellow','Good','12','Rua Jacques Fí©lix, 405, Vila Nova Conceií_í£o, Moema, Sí£o Paulo','cereals.jpg'),(76,'02-01-2000','4','juice',599,'George Town','53','4','4.3','Green','Very Good','68','Rua dos Pinheiros, 320, Pinheiros, Sí£o Paulo','juice.jpg'),(77,'02-01-2000','4','lunch meat',5,'Panagal Park','11','4','4.3','Green','Very Good','46','Praí_a Dom Josí© Gaspar, 42, Repí_blica, Sí£o Paulo 10000','lunch meat.jpg'),(78,'02-01-2000','4','soda',790,'Anna Nagar','23','4','4.4','Green','Very Good','37','Edifí_cio Itíçlia - 41ŒÁ Andar, Avenida Ipiranga, 344, Repí_blica, Sí£o Paulo','soda.jpg'),(79,'02-01-2000','4','toilet paper',56,'Nungambakkam','45','3','0','White','Not rated','2','Shopping MetríÇ Santa Cruz - Piso L2, Rua Domingos de Morais, 2564, Vila Mariana, Sí£o Paulo','toilet paper.jpg'),(80,'02-01-2000','4','all- purpose',2525,'Forum Vijaya Mall','65','2','0','White','Not rated','2','Shopping Morumbi - Piso Lazer, Avenida Roque Petroni Jí_nior, 1089, Santo Amaro, Sí£o Paulo','all- purpose.jpg'),(81,'02-01-2000','5','sandwich loaves',24,'Phoenix Marketcity','78','4','4.4','Green','Very Good','22','Avenida Nossa Senhora do Loreto, 1104, Vila Medeiros, Vila Maria, Sí£o Paulo','sandwich loaves.jpg'),(82,'02-01-2000','5','pasta',254,'Spencer Plaza Mall','90','3','4.6','Dark Green','Excellent','58','Rua Conceií_í£o Veloso, 56, Vila Mariana, Sí£o Paulo','pasta.jpg'),(83,'02-01-2000','5','tortillas',254,'Ramee Mall','35','4','4.1','Green','Very Good','11','Rua Dom Joí£o Batista da Costa, 70, Vila SíÇnia, Sí£o Paulo','tortillas.jpg'),(84,'02-01-2000','5','mixes',345,'Ampa Skywalk','67','2','3.3','Orange','Average','35','2820 Meredyth Dr, Albany, GA 31707','mixes.jpg'),(85,'02-01-2000','5','hand soap',64,'Challa Mall','89','1','3.3','Orange','Average','25','2401 Dawson Rd, Albany, GA 31707','hand soap.jpg'),(86,'02-01-2000','5','toilet paper',34,'Alsa Mall','9','1','3.4','Orange','Average','34','115 N Jackson St, Albany, GA 31701','toilet paper.jpg'),(87,'02-01-2000','5','vegetables',80,'Spectrum The Grand Venus Mall','24','1','3.4','Orange','Average','45','2700 Dawson Rd, Albany, GA 31707','vegetables.jpg'),(88,'02-01-2000','5','vegetables',70,'Express Avenue','745','1','3.4','Orange','Average','26','2726 Ledo Rd Ste 10, Albany, GA 31707','vegetables.jpg'),(89,'02-01-2000','5','paper towels',60,'VR Chennai','145','1','3.4','Orange','Average','36','814 N Slappey Blvd, Albany, GA 31701','paper towels.jpg'),(90,'02-01-2000','5','vegetables',59,'Chandra Metro Mall','13','1','3.5','Yellow','Good','67','2703 Dawson Rd, Albany, GA 31707','vegetables.jpg'),(91,'02-01-2000','5','flour',60,'Grand Square','14','1','3.9','Yellow','Good','141','1214 N Westover Blvd, Albany, GA 31707','flour.jpg'),(92,'02-01-2000','5','vegetables',98,'Welcome Shopping Mall','56','2','3.7','Yellow','Good','147','2347 Dawson Road, Albany, GA 31707','vegetables.jpg'),(93,'02-01-2000','5','pork',987,'Palladium','45','4','3.5','Yellow','Good','51','629 N. Westover Blvd, Albany, GA 31707','pork.jpg'),(94,'02-01-2000','5','poultry',790,'Phoenix Market City','78','2','3.6','Yellow','Good','88','2700 Dawson Rd, Albany, GA 31707','poultry.jpg'),(95,'02-01-2000','5','eggs',4570,'Apple Shopping Mall','345','1','3.8','Yellow','Good','153','2526 Dawson Rd Ste A, Albany, GA 31707','eggs.jpg'),(96,'02-01-2000','5','vegetables',23,'Parrys Corner Shopping','67','1','3.9','Yellow','Good','160','204 S Jackson St, Albany, GA 31701','vegetables.jpg'),(97,'02-01-2000','5','pork',93,'Mayas Plaza','35','2','3.5','Yellow','Good','57','547 N Westover Blvd, Albany, GA 31707','pork.jpg'),(98,'02-01-2000','5','spaghetti sauce',956,'Mi Home Phoenix Market City Chennai','63','2','3.5','Yellow','Good','58','2733 Dawson Rd, Albany, GA 31707','spaghetti sauce.jpg'),(99,'02-01-2000','5','vegetables',586,'Big Bazaar','4','3','3.6','Yellow','Good','115','2610 Dawson Rd, Albany, GA 31707','vegetables.jpg'),(100,'02-01-2000','5','milk',536,'Abirami','3','3','3.5','Yellow','Good','51','629 N Westover Blvd, Albany, GA 31707','milk.jpg'),(101,'02-01-2000','5','waffles',90,'Doll Shop','53','3','3.8','Yellow','Good','250','2332 Whispering Pines Road, Albany, GA 31707','waffles.jpg'),(102,'02-01-2000','5','individual meals',80,'Mi Home Phoenix Market City Chennai','11','1','3.7','Yellow','Good','117','1604 N Slappey Blvd, Albany, GA 31701','individual meals.jpg'),(103,'02-01-2000','5','vegetables',60,'Saravana Stores Crown Mall','23','1','3.4','Orange','Average','20','202 W Franklin St, Sylvester, GA 31791','vegetables.jpg'),(104,'02-01-2000','5','dinner rolls',50,'Super Saravana Stores - Porur','45','2','3.5','Yellow','Good','25','117 Marsh St, Armidale, NSW','dinner rolls.jpg'),(105,'02-01-2000','5','all- purpose',40,'FBB-CHENNAI-ANNANAGAR','65','3','4.5','Dark Green','Excellent','1821','184 W Clayton St, Athens, GA 30601','all- purpose.jpg'),(106,'02-01-2000','5','soda',40,'Chennai 50','78','1','4.5','Dark Green','Excellent','849','197 Oak St, GA 30601','soda.jpg'),(107,'02-01-2000','5','yogurt',20,'10 Square Mall','90','1','4.6','Dark Green','Excellent','917','175 Tallassee Rd, Athens, GA 30606','yogurt.jpg'),(108,'02-01-2000','6','laundry detergent',278,'Saravana Stores The Crown Mall','35','1','3.9','Yellow','Good','439','1055 Gaines School Rd Ste 100, Athens, GA 30605','laundry detergent.jpg'),(109,'02-01-2000','6','toilet paper',20,'Amudham Angadi ,Fair Price Shop','67','1','3.7','Yellow','Good','289','171 College Ave, Athens, GA 30601','toilet paper.jpg'),(110,'02-01-2000','6','eggs',6,'SUPER 99','89','1','4.3','Green','Very Good','558','393 N Finley St, Athens, GA 30601','eggs.jpg'),(111,'02-01-2000','6','toilet paper',660,'Shopping Singapore','9','1','4.2','Green','Very Good','613','259 W Washington St, Athens, GA 30601','toilet paper.jpg'),(112,'02-01-2000','6','vegetables',80,'Gold Souk Grande','24','2','4','Green','Very Good','353','401 E Broad St, Athens, GA 30601','vegetables.jpg'),(113,'02-01-2000','6','bagels',70,'CHENNAI CITI CENTRE','745','2','4.1','Green','Very Good','387','1965 Barnett Shoals Rd, Athens, GA 30605','bagels.jpg'),(114,'02-01-2000','6','dishwashing liquid/detergent',80,'Pothys','145','3','4.3','Green','Very Good','755','1073 South Milledge Ave, Athens, GA 30605','dishwashing liquid.jpg'),(115,'02-01-2000','6','cereals',90,'Westside','13','1','4.2','Green','Very Good','800','199 Prince Ave, Athens, GA 30601','cereals.jpg'),(116,'02-01-2000','6','paper towels',80,'Phoenix Marketcity','14','1','4.1','Green','Very Good','350','1307 Prince Ave, Athens, GA 30606','paper towels.jpg'),(117,'02-01-2000','6','laundry detergent',70,'Grand Galada Centre Mall','56','3','4.1','Green','Very Good','464','323 E Broad St, Athens, GA 30601','laundry detergent.jpg'),(118,'02-01-2000','6','butter',60,'Westside','45','2','4.2','Green','Very Good','550','251 W Clayton St, Athens, GA 30601','butter.jpg'),(119,'02-01-2000','6','cereals',40,'Shanthi Jewellers','78','1','4.1','Green','Very Good','543','334 Prince Ave, Athens, GA 30601','cereals.jpg'),(120,'02-01-2000','6','bagels',48,'Lifestyle Stores','345','3','4.1','Green','Very Good','465','232 W. Hancock Ave., Athens, GA 30601','bagels.jpg'),(121,'02-01-2000','6','paper towels',70,'Currimbhoys Home Products Pvt.Ltd','67','1','4.4','Green','Very Good','546','1675 S. Lumpkin St., Athens, GA 30606','paper towels.jpg'),(122,'02-01-2000','6','shampoo',89,'Max','35','1','4.4','Green','Very Good','1098','145 E Clayton St, Athens, GA 30601','shampoo.jpg'),(123,'02-01-2000','6','toilet paper',9,'Gute Reise – Palladium Mall Chenna','63','2','4.2','Green','Very Good','579','269 N Hull St, Athens, GA 30601','toilet paper.jpg'),(124,'02-01-2000','6','soap',88,'Lifestyle Stores','4','1','4.1','Green','Very Good','374','247 Prince Ave, Athens, GA 30601','soap.jpg'),(125,'02-01-2000','6','soap',50,'TRENDS','3','3','4.6','Dark Green','Excellent','717','1315 Augusta West Pkwy, Augusta, GA 30909','soap.jpg'),(126,'02-01-2000','6','pasta',90,'Souchii','53','3','4.9','Dark Green','Excellent','548','3208 W Wimbledon Dr, Augusta, GA 30909','pasta.jpg'),(127,'02-01-2000','6','coffee/tea',5,'A Cube','11','2','4.5','Dark Green','Excellent','631','211 10th Street, Augusta, GA 30901','coffee-tea.jpg'),(128,'02-01-2000','6','poultry',60,'metro shopping','23','1','3.9','Yellow','Good','372','10 9th St, Augusta, GA 30901','poultry.jpg'),(129,'02-01-2000','6','bagels',30,'Westside','45','2','3.9','Yellow','Good','201','1204 Broad St, Augusta, GA 30901','bagels.jpg'),(130,'02-01-2000','6','aluminum foil',396,'Sundari Silks - India | Wedding Sarees Collection','65','3','3.8','Yellow','Good','332','505 Railroad Ave, North Augusta, GA 29841','aluminum foil.jpg'),(131,'02-01-2000','6','butter',90,'Reliance Trends','78','2','3.5','Yellow','Good','304','2250 Sconyers Way, Augusta, GA 30906','butter.jpg'),(132,'02-01-2000','6','spaghetti sauce',80,'Meena Bazaar','90','3','4.3','Green','Very Good','368','1282 broad street, Augusta, GA 30901','spaghetti sauce.jpg'),(133,'02-01-2000','6','ketchup',1000,'Palam Silks','35','2','4.1','Green','Very Good','430','3690 Wheeler Rd, Augusta, GA 30909','ketchup.jpg'),(134,'02-01-2000','6','all- purpose',17,'Sri Kaalikambal Temple','67','2','4.4','Green','Very Good','433','1167 Broad St, Augusta, GA 30901','all- purpose.jpg'),(135,'02-01-2000','6','milk',74,'T.Mangharam (The Fabric People','89','1','4','Green','Very Good','380','976 Broad St, Augusta, GA 30901','milk.jpg'),(136,'03-01-2000','7','individual meals',908,'Panagal Park','9','2','4','Green','Very Good','456','3051 Washington Rd, Augusta, GA 30907','individual meals.jpg'),(137,'03-01-2000','7','paper towels',374,'Parrys Shopping Centre','24','3','4.2','Green','Very Good','647','437 Highland Ave, Augusta, GA 30909','paper towels.jpg'),(138,'03-01-2000','7','tortillas',3749,'Kandhakottam Temple','745','3','4','Green','Very Good','360','Augusta Mall, Augusta, GA 30909','tortillas.jpg'),(139,'03-01-2000','7','vegetables',90,'Kovai Pazhamudir','145','2','4','Green','Very Good','227','502 Furys Ferry Rd, Augusta, GA 30907','vegetables.jpg'),(140,'03-01-2000','7','milk',50,'MAX Regional Office','13','2','3.9','Yellow','Good','290','4460 Washington Road, Evans, GA 30809','milk.jpg'),(141,'03-01-2000','7','ice cream',48,'Marks & Spencer','14','1','4.1','Green','Very Good','270','4300 Towne Centre, Evans, GA 30809','ice cream.jpg'),(142,'03-01-2000','7','juice',48,'Sri Ramakrishna Math Chennai','56','2','4','Green','Very Good','326','303 North Bel Air Rd, Evans, GA 30809','juice.jpg'),(143,'03-01-2000','7','dishwashing liquid/detergent',44,'T. Nagar:','45','3','4.3','Green','Very Good','317','4357 Washington Road, Evans, GA 30809','dishwashing liquid.jpg'),(144,'03-01-2000','7','soap',49,'Pondy Bazaar','78','1','4.2','Green','Very Good','300','5174 Wrightsboro Rd, Grovetown, GA 30813','soap.jpg'),(145,'03-01-2000','7','sandwich bags',49,'Sowcarpet','345','2','3.2','Orange','Average','21','63 South Western Hwy, Balingup, WA','sandwich bags.jpg'),(146,'03-01-2000','7','pasta',80,'Ritchie Street','67','2','4.6','Dark Green','Excellent','237','Old Coach House 50 Ford St, Beechworth, Beechworth, VIC','pasta.jpg'),(147,'03-01-2000','7','ketchup',49,'George Town','35','2','4.5','Dark Green','Excellent','879','610 W Grove St, Boise, ID 83702','ketchup.jpg'),(148,'03-01-2000','7','all- purpose',48,'Panagal Park','63','2','4.6','Dark Green','Excellent','615','800 W Main Suite 230, Boise, ID 83702','all- purpose.jpg'),(149,'03-01-2000','7','yogurt',40,'Anna Nagar','4','2','4.5','Dark Green','Excellent','879','108 S Capitol Blvd, Boise, ID 83702','yogurt.jpg'),(150,'03-01-2000','7','mixes',889,'Nungambakkam','3','4','3.9','Yellow','Good','379','981 W Grove St, Boise, ID 83702','mixes.jpg'),(151,'03-01-2000','7','mixes',58,'Forum Vijaya Mall','53','1','4.3','Green','Very Good','303','202 S Capitol Blvd, Boise, ID 83702','mixes.jpg'),(152,'03-01-2000','7','toilet paper',5959,'Phoenix Marketcity','11','4','4.1','Green','Very Good','538','276 Bobwhite Ct, Boise, ID 83706','toilet paper.jpg'),(153,'03-01-2000','7','vegetables',599,'Spencer Plaza Mall','23','1','4.2','Green','Very Good','334','1289 Protest Rd, Boise, ID 83706','vegetables.jpg'),(154,'03-01-2000','7','beef',5,'Ramee Mall','45','2','4.3','Green','Very Good','555','246 N 8th St, Boise, ID 83702','beef.jpg'),(155,'03-01-2000','7','sandwich bags',790,'Ampa Skywalk','65','1','4.4','Green','Very Good','823','204 N Capitol Blvd, Boise, ID 83702','sandwich bags.jpg'),(156,'03-01-2000','7','eggs',56,'Challa Mall','78','2','4.1','Green','Very Good','550','6508 W Fairview Ave, Boise, ID 83704','eggs.jpg'),(157,'03-01-2000','7','spaghetti sauce',2525,'Alsa Mall','90','2','4.4','Green','Very Good','650','199 N 8th St, Boise, ID 83702','spaghetti sauce.jpg'),(158,'03-01-2000','7','fruits',24,'Spectrum The Grand Venus Mall','35','1','4.3','Green','Very Good','410','235 N 5th St, Boise, ID 83702','fruits.jpg'),(159,'03-01-2000','7','toilet paper',254,'Express Avenue','67','1','4.4','Green','Very Good','660','5220 W Fairview Ave, Boise, ID 83706','toilet paper.jpg'),(160,'04-01-2000','8','ice cream',254,'VR Chennai','89','2','4.4','Green','Very Good','360','11 N Orchard St, Boise, ID 83706','ice cream.jpg'),(161,'04-01-2000','8','juice',345,'Chandra Metro Mall','9','3','4','Green','Very Good','340','750 W Idaho St, Boise, ID 83702','juice.jpg'),(162,'04-01-2000','8','paper towels',64,'Grand Square','24','2','4.1','Green','Very Good','393','100 N 8th St, Boise, ID 83702','paper towels.jpg'),(163,'04-01-2000','8','waffles',34,'Welcome Shopping Mall','745','1','4.3','Green','Very Good','422','8061 W Fairview Ave, Boise, ID 83704','waffles.jpg'),(164,'04-01-2000','8','soda',80,'Palladium','145','3','4','Green','Very Good','435','1388 S Entertainment Ave, Boise, ID 83709','soda.jpg'),(165,'04-01-2000','8','cheeses',70,'Phoenix Market City','13','2','4','Green','Very Good','369','3801 E Fairview Avenue, Meridian, Boise, ID 83642','cheeses.jpg'),(166,'04-01-2000','8','poultry',60,'Apple Shopping Mall','14','3','4.4','Green','Very Good','487','320 11th Avenue S, Nampa, ID 83651','poultry.jpg'),(167,'04-01-2000','8','toilet paper',59,'Parrys Corner Shopping','56','3','3.7','Yellow','Good','98','3847 1st Ave SE, Cedar Rapids, IA 52402','toilet paper.jpg'),(168,'04-01-2000','8','vegetables',60,'Mayas Plaza','45','3','4.1','Green','Very Good','365','320 Collins Rd NE, Cedar Rapids, IA 52402','vegetables.jpg'),(169,'04-01-2000','9','juice',98,'Mi Home Phoenix Market City Chennai','78','1','4.1','Green','Very Good','190','3300 Johnson Ave NW, Cedar Rapids, IA 52405','juice.jpg'),(170,'04-01-2000','9','poultry',987,'Big Bazaar','345','3','4.1','Green','Very Good','429','4755 1st Ave SE, Cedar Rapids, IA 52402','poultry.jpg'),(171,'04-01-2000','9','coffee/tea',790,'Abirami','67','2','4.4','Green','Very Good','430','3207 1st Ave SE, Cedar Rapids, IA 52402','coffee-tea.jpg'),(172,'04-01-2000','9','coffee/tea',4570,'Doll Shop','35','2','4.2','Green','Very Good','186','1060 Old Marion Rd NE, Cedar Rapids, IA 52402','coffee-tea.jpg'),(173,'04-01-2000','9','dishwashing liquid/detergent',23,'Mi Home Phoenix Market City Chennai','63','1','4.2','Green','Very Good','220','4362 16th Ave SW, Cedar Rapids, IA 52404','dishwashing liquid.jpg'),(174,'05-01-2000','10','ketchup',93,'Saravana Stores Crown Mall','4','1','4.2','Green','Very Good','347','540 Boyson Rd NE, Cedar Rapids, IA 52402','ketchup.jpg'),(175,'05-01-2000','10','coffee/tea',956,'Super Saravana Stores - Porur','3','2','3.8','Yellow','Good','161','303 2nd Street, Coralville, IA 52241','coffee/tea.jpg'),(176,'05-01-2000','10','toilet paper',586,'FBB-CHENNAI-ANNANAGAR','53','2','4.1','Green','Very Good','160','102 2nd Ave, Coralville, IA 52241','toilet paper.jpg'),(177,'05-01-2000','10','pork',536,'Chennai 50','11','1','4.9','Dark Green','Excellent','820','18 S Clinton St, Iowa City, IA 52240','pork.jpg'),(178,'05-01-2000','10','flour',90,'10 Square Mall','23','1','4.5','Dark Green','Excellent','488','214 N Linn St, Iowa City, IA 52245','flour.jpg'),(179,'05-01-2000','10','milk',80,'Saravana Stores The Crown Mall','45','2','3.6','Yellow','Good','253','330 E Market St, Iowa City, IA 52245','milk.jpg'),(180,'05-01-2000','10','soda',60,'Amudham Angadi ,Fair Price Shop','65','3','3.8','Yellow','Good','220','115 East College St, Iowa City, IA 52240','soda.jpg'),(181,'05-01-2000','10','dishwashing liquid/detergent',50,'SUPER 99','78','2','4.3','Green','Very Good','485','302 E Bloomington St, Iowa City, IA 52245','dishwashing liquid.jpg'),(182,'05-01-2000','10','eggs',40,'Shopping Singapore','90','3','4.3','Green','Very Good','428','127 Iowa Ave, Iowa City, IA 52240','eggs.jpg'),(183,'05-01-2000','10','tortillas',40,'Gold Souk Grande','35','2','4.1','Green','Very Good','294','503 Westbury Dr Ste 1, Iowa City, IA 52245','tortillas.jpg'),(184,'05-01-2000','10','tortillas',20,'CHENNAI CITI CENTRE','67','3','4','Green','Very Good','380','117 N Linn St, Iowa City, IA 52245','tortillas.jpg'),(185,'05-01-2000','10','vegetables',278,'Pothys','89','2','4.2','Green','Very Good','259','1940 Lower Muscatine Rd, Iowa City, IA 52240','vegetables.jpg'),(186,'05-01-2000','10','fruits',20,'Westside','9','2','4.7','Dark Green','Excellent','433','690 10th St, Marion, IA 52302','fruits.jpg'),(187,'05-01-2000','10','sugar',6,'Phoenix Marketcity','24','2','3.7','Yellow','Good','176','150 Richmond St, Chatham-Kent, ON N7M2V2','sugar.jpg'),(188,'05-01-2000','10','soap',660,'Grand Galada Centre Mall','745','1','4.3','Green','Very Good','96','49289 Us-30, Westport, OR 97016','soap.jpg'),(189,'05-01-2000','10','dishwashing liquid/detergent',80,'Westside','145','2','3.1','Orange','Average','6','130 Quarry Street, Unit 20, Cochrane, AB T4C 0W5','dishwashing liquid/detergent.jpg'),(190,'05-01-2000','10','juice',70,'Shanthi Jewellers','13','1','3.3','Orange','Average','33','1250 Broadway, Columbus, GA 31901','juice.jpg'),(191,'05-01-2000','10','sandwich loaves',80,'Lifestyle Stores','14','2','4.6','Dark Green','Excellent','489','2523 Airport Thruway, Columbus, GA 31904','sandwich loaves.jpg'),(192,'05-01-2000','10','poultry',90,'Currimbhoys Home Products Pvt.Ltd','56','2','4.5','Dark Green','Excellent','345','7160 moon road, Columbus, GA 31909','poultry.jpg'),(193,'05-01-2000','10','eggs',80,'Max','45','2','3.8','Yellow','Good','149','7600 Veterans Pkwy, Columbus, GA 31909','eggs.jpg'),(194,'05-01-2000','10','flour',70,'Gute Reise – Palladium Mall Chenna','78','2','3.9','Yellow','Good','330','1041 Broadway, Columbus, GA 31901','flour.jpg'),(195,'05-01-2000','10','bagels',60,'Lifestyle Stores','345','3','3.9','Yellow','Good','247','6499 Veterans Pkwy, Columbus, GA 31909','bagels.jpg'),(196,'05-01-2000','10','soda',40,'TRENDS','67','1','3.7','Yellow','Good','123','941 Veterans Parkway, Columbus, GA 31901','soda.jpg'),(197,'05-01-2000','10','bagels',48,'Souchii','35','3','3.6','Yellow','Good','109','1009 Broadway, Columbus, GA 31901','bagels.jpg'),(198,'05-01-2000','10','soda',70,'A Cube','63','3','3.7','Yellow','Good','134','1639 Bradley Park Dr, Columbus, GA 31904','soda.jpg'),(199,'05-01-2000','10','beef',89,'metro shopping','4','3','4.2','Green','Very Good','722','5010 Armour Rd, Columbus, GA 31904','beef.jpg'),(200,'05-01-2000','10','coffee/tea',9,'Westside','3','2','4.3','Green','Very Good','213','2932 Warm Springs Rd, Columbus, GA 31909','coffee-tea.jpg'),(201,'05-01-2000','10','dishwashing liquid/detergent',88,'Sundari Silks - India | Wedding Sarees Collection','53','2','4','Green','Very Good','335','6100 Bradley Park Dr, Columbus, GA 31904','dishwashing liquid.jpg'),(202,'05-01-2000','10','cheeses',50,'Reliance Trends','11','2','4','Green','Very Good','353','3137 Mercury Dr, Columbus, GA 31906','cheeses.jpg'),(203,'05-01-2000','10','beef',90,'Meena Bazaar','23','1','4','Green','Very Good','170','3201 Macon Rd Ste 167, Columbus, GA 31906','beef.jpg'),(204,'05-01-2000','10','soap',5,'Palam Silks','45','2','4.1','Green','Very Good','192','6100 Veterans Pkwy, Columbus, GA 31909','soap.jpg'),(205,'05-01-2000','10','lunch meat',60,'Sri Kaalikambal Temple','65','3','4.1','Green','Very Good','302','1039 1st Ave, Columbus, GA 31901','lunch meat.jpg'),(206,'05-01-2000','10','pork',30,'T.Mangharam (The Fabric People','78','1','4.2','Green','Very Good','355','7830 - E Veterans Pkwy, Columbus, GA 31909','pork.jpg'),(207,'05-01-2000','10','waffles',396,'Panagal Park','90','2','4.3','Green','Very Good','287','115 A 12th St, Columbus, GA 31901','waffles.jpg'),(208,'05-01-2000','11','sandwich loaves',90,'Parrys Shopping Centre','35','3','4','Green','Very Good','264','5739 Whitesville Rd, Columbus, GA 31904','sandwich loaves.jpg'),(209,'05-01-2000','11','ice cream',80,'Kandhakottam Temple','67','3','4.4','Green','Very Good','235','11269 GA Hwy 219, Hamilton, GA 31811','ice cream.jpg'),(210,'05-01-2000','11','soda',1000,'Kovai Pazhamudir','89','2','3','Orange','Average','6','4931 50th Street, Consort, AB T0C 1B0','soda.jpg'),(211,'05-01-2000','11','bagels',17,'MAX Regional Office','9','2','3.7','Yellow','Good','38','1214 N Wall St, Calhoun, GA 30701','bagels.jpg'),(212,'05-01-2000','11','dishwashing liquid/detergent',74,'Marks & Spencer','24','1','4.4','Green','Very Good','122','555 Georgia Hwy 53, Calhoun, GA 30701','dishwashing liquid.jpg'),(213,'05-01-2000','11','eggs',908,'Sri Ramakrishna Math Chennai','745','2','4.4','Green','Very Good','207','349 S Wall St, Calhoun, GA 30701','eggs.jpg'),(214,'05-01-2000','11','sugar',374,'T. Nagar:','145','1','3.9','Yellow','Good','66','500 S. 3rd Avenue, Chatsworth, GA 30705','sugar.jpg'),(215,'05-01-2000','11','waffles',3749,'Pondy Bazaar','13','1','4.9','Dark Green','Excellent','249','201 West Cuyler Street, Dalton, GA 30720','waffles.jpg'),(216,'05-01-2000','11','individual meals',90,'Sowcarpet','14','2','3.8','Yellow','Good','63','881 College Dr, Dalton, GA 30720','individual meals.jpg'),(217,'05-01-2000','11','toilet paper',50,'Ritchie Street','56','3','3.8','Yellow','Good','145','1321 W Walnut Ave, Dalton, GA 30720','toilet paper.jpg'),(218,'05-01-2000','11','pasta',48,'George Town','45','1','3.8','Yellow','Good','83','1331 W Walnut Ave, Dalton, GA 30720','pasta.jpg'),(219,'05-01-2000','11','sandwich loaves',48,'Panagal Park','78','2','3.7','Yellow','Good','116','933 Market St, Dalton, GA 30720','sandwich loaves.jpg'),(220,'05-01-2000','11','cheeses',44,'Anna Nagar','345','1','4.1','Green','Very Good','122','316 N Hamilton St, Dalton, GA 30720','cheeses.jpg'),(221,'05-01-2000','11','vegetables',49,'Nungambakkam','67','1','4.1','Green','Very Good','142','1303 W. Walnut Ave., Dalton, GA 30720','vegetables.jpg'),(222,'05-01-2000','11','hand soap',49,'Forum Vijaya Mall','35','1','4.1','Green','Very Good','114','1513 W Walnut Ave Ste 6, Dalton, GA 30720','hand soap.jpg'),(223,'05-01-2000','11','vegetables',80,'Phoenix Marketcity','63','2','4.6','Dark Green','Excellent','214','2603 Battlefield Pkwy, Fort Oglethorpe, GA 30742','vegetables.jpg'),(224,'05-01-2000','11','vegetables',49,'Spencer Plaza Mall','4','1','4.3','Green','Very Good','116','1014 Battlefield Parkway, Fort Oglethorpe, GA 30742','vegetables.jpg'),(225,'05-01-2000','11','ketchup',48,'Ramee Mall','3','2','4.2','Green','Very Good','111','685 Battlefield Pkwy, Fort Oglethorpe, GA 30742','ketchup.jpg'),(226,'05-01-2000','11','poultry',40,'Ampa Skywalk','53','1','3.7','Yellow','Good','25','300 W Patton St., Lafayette, GA 30728','poultry.jpg'),(227,'05-01-2000','11','dinner rolls',889,'Challa Mall','11','1','4.1','Green','Very Good','128','5540 Highway 41, Ringgold, GA 30736','dinner rolls.jpg'),(228,'05-01-2000','11','dishwashing liquid/detergent',58,'Alsa Mall','23','1','4.3','Green','Very Good','244','118 Remco Shops Lane, Ringgold, GA 30736','dishwashing liquid.jpg'),(229,'05-01-2000','11','coffee/tea',5959,'Spectrum The Grand Venus Mall','45','1','4.2','Green','Very Good','112','7807 Nashville St, Ringgold, GA 30736','coffee-tea.jpg'),(230,'05-01-2000','11','milk',599,'Express Avenue','65','1','4.1','Green','Very Good','144','56A Fieldstone Village Drive, Rock Spring, GA 30739','milk.jpg'),(231,'05-01-2000','11','shampoo',5,'VR Chennai','78','2','4.6','Dark Green','Excellent','166','2513 53rd Avenue, Bettendorf, IA 52722','shampoo.jpg'),(232,'05-01-2000','11','ketchup',790,'Chandra Metro Mall','90','3','4.5','Dark Green','Excellent','208','793 Middle Rd, Bettendorf, IA 52722','ketchup.jpg'),(233,'05-01-2000','11','sandwich loaves',56,'Grand Square','35','2','3.9','Yellow','Good','136','2561 E 53rd Ave, Bettendorf, IA 52722','sandwich loaves.jpg'),(234,'05-01-2000','11','hand soap',2525,'Welcome Shopping Mall','67','1','4','Green','Very Good','85','2521 - 18th St., Bettendorf, IA 52722','hand soap.jpg'),(235,'05-01-2000','11','bagels',24,'Palladium','89','2','4.1','Green','Very Good','117','1804 State St, Bettendorf, IA 52722','bagels.jpg'),(236,'05-01-2000','11','flour',254,'Phoenix Market City','9','2','3.4','Orange','Average','53','100 W 76th St, Davenport, IA 52806','flour.jpg'),(237,'05-01-2000','11','vegetables',254,'Apple Shopping Mall','24','2','4.9','Dark Green','Excellent','474','589 East 53rd St, Davenport, IA 52807','vegetables.jpg'),(238,'05-01-2000','11','pork',345,'Parrys Corner Shopping','745','1','3.9','Yellow','Good','125','320 W Kimberly Rd, Davenport, IA 52806','pork.jpg'),(239,'06-01-2000','12','pork',64,'Mayas Plaza','145','4','3.7','Yellow','Good','201','115 E 3rd St, Davenport, IA 52801','pork.jpg'),(240,'06-01-2000','12','tortillas',34,'Mi Home Phoenix Market City Chennai','13','2','0','White','Not rated','2','1402 W 3rd Street, IA 52802','tortillas.jpg'),(241,'06-01-2000','12','pork',80,'Big Bazaar','14','2','0','White','Not rated','3','4882 Utica Ridge Rd, Davenport, IA 52807','pork.jpg'),(242,'06-01-2000','12','shampoo',70,'Abirami','56','1','4.3','Green','Very Good','167','4811 N Brady St Ste 3, Davenport, IA 52806','shampoo.jpg'),(243,'06-01-2000','12','lunch meat',60,'Doll Shop','45','2','4','Green','Very Good','112','3018 E 53rd St, Davenport, IA 52807','lunch meat.jpg'),(244,'06-01-2000','12','pasta',59,'Mi Home Phoenix Market City Chennai','78','2','4.1','Green','Very Good','256','2303 E 53rd St, Davenport, IA 52807','pasta.jpg'),(245,'06-01-2000','12','juice',60,'Saravana Stores Crown Mall','345','1','4.3','Green','Very Good','123','208 E River Dr, Davenport, IA 52801','juice.jpg'),(246,'06-01-2000','12','bagels',98,'Super Saravana Stores - Porur','67','2','4','Green','Very Good','199','5270 Utica Ridge Rd, Davenport, IA 52807','bagels.jpg'),(247,'06-01-2000','12','vegetables',987,'FBB-CHENNAI-ANNANAGAR','35','2','4.1','Green','Very Good','157','3852 N Brady St, Davenport, IA 52806','vegetables.jpg'),(248,'06-01-2000','12','bagels',790,'Chennai 50','63','2','4.1','Green','Very Good','100','7250 Northwest Blvd, Davenport, IA 52806','bagels.jpg'),(249,'06-01-2000','12','vegetables',4570,'10 Square Mall','4','3','4.2','Green','Very Good','141','4901 Utica Ridge Rd, Davenport, IA 52807','vegetables.jpg'),(250,'06-01-2000','12','laundry detergent',23,'Saravana Stores The Crown Mall','3','2','4.2','Green','Very Good','197','4005 E 53rd Street, Davenport, IA 52807','laundry detergent.jpg'),(251,'06-01-2000','12','yogurt',93,'Amudham Angadi ,Fair Price Shop','53','2','4.5','Dark Green','Excellent','1025','1404 S Duff Ave, Ames, IA 50010','yogurt.jpg'),(252,'06-01-2000','12','sugar',956,'SUPER 99','11','2','4.9','Dark Green','Excellent','570','2616 Northridge Pkwy, Ames, IA 50010','sugar.jpg'),(253,'06-01-2000','12','waffles',586,'Shopping Singapore','23','3','4.5','Dark Green','Excellent','674','4345 Hickman Rd, Des Moines, IA 50310','waffles.jpg'),(254,'06-01-2000','12','hand soap',536,'Gold Souk Grande','45','2','4.1','Green','Very Good','496','8801 University Ave, Clive, IA 50325','hand soap.jpg'),(255,'06-01-2000','12','hand soap',90,'CHENNAI CITI CENTRE','65','2','4','Green','Very Good','411','4100 University Avenue, West Des Moines, IA 50266','hand soap.jpg'),(256,'06-01-2000','12','butter',80,'Pothys','78','2','3.2','Orange','Average','113','900 Mulberry Street, Des Moines, IA 50309','butter.jpg'),(257,'06-01-2000','12','juice',60,'Westside','90','3','4.5','Dark Green','Excellent','1109','1007 Locust St, Des Moines, IA 50309','juice.jpg'),(258,'06-01-2000','12','spaghetti sauce',50,'Phoenix Marketcity','35','2','4.6','Dark Green','Excellent','728','223 4th Street, Des Moines, IA 50309','spaghetti sauce.jpg'),(259,'06-01-2000','12','vegetables',40,'Grand Galada Centre Mall','67','1','4.4','Green','Very Good','659','1511 High Street, Des Moines, IA 50309','vegetables.jpg'),(260,'06-01-2000','12','flour',40,'Westside','89','3','4.2','Green','Very Good','370','309 Court Ave, Des Moines, IA 50309','flour.jpg'),(261,'07-01-2000','13','sugar',20,'Shanthi Jewellers','9','3','4.3','Green','Very Good','532','210 10th Street, Des Moines, IA 50309','sugar.jpg'),(262,'07-01-2000','13','fruits',278,'Lifestyle Stores','24','2','4.8','Dark Green','Excellent','860','512 E Grand Ave, Des Moines, IA 50309','fruits.jpg'),(263,'07-01-2000','13','all- purpose',20,'Currimbhoys Home Products Pvt.Ltd','745','1','4.2','Green','Very Good','943','300 E. Grand Ave., Des Moines, IA 50309','all- purpose.jpg'),(264,'07-01-2000','13','aluminum foil',6,'Max','145','4','4.1','Green','Very Good','476','2200 Hubbell Ave, Des Moines, IA 50317','aluminum foil.jpg'),(265,'07-01-2000','13','laundry detergent',660,'Gute Reise – Palladium Mall Chenna','13','1','4.1','Green','Very Good','218','4230 Fleur Dr, Des Moines, IA 50321','laundry detergent.jpg'),(266,'07-01-2000','13','individual meals',80,'Lifestyle Stores','14','1','4','Green','Very Good','214','5340 Merle Hay Road, Johnston, IA 50131','individual meals.jpg'),(267,'07-01-2000','13','flour',70,'TRENDS','56','2','4.3','Green','Very Good','699','3100 Forest Ave, Des Moines, IA 50311','flour.jpg'),(268,'07-01-2000','13','pork',80,'Souchii','45','2','3.8','Yellow','Good','308','11151 Hickman Road, Urbandale, IA 50322','pork.jpg'),(269,'07-01-2000','13','shampoo',90,'A Cube','78','2','4','Green','Very Good','157','1410 22nd St., West Des Moines, IA 50266','shampoo.jpg'),(270,'07-01-2000','13','sugar',80,'metro shopping','345','3','4.2','Green','Very Good','530','2900 University Ave, West Des Moines, IA 50266','sugar.jpg'),(271,'07-01-2000','13','aluminum foil',70,'Westside','67','1','3.6','Yellow','Good','29','14 Beerburrum St, Dicky Beach, QLD','aluminum foil.jpg'),(272,'07-01-2000','13','shampoo',60,'Sundari Silks - India | Wedding Sarees Collection','35','1','3.4','Orange','Average','33','1220 Iowa St, Dubuque, IA 52001','shampoo.jpg'),(273,'07-01-2000','13','soap',40,'Reliance Trends','63','2','3.3','Orange','Average','40','1630 E 16th St, Dubuque, IA 52001','soap.jpg'),(274,'07-01-2000','13','bagels',48,'Meena Bazaar','4','1','3.4','Orange','Average','153','1091 Main St, Dubuque, IA 52001','bagels.jpg'),(275,'07-01-2000','13','toilet paper',70,'Palam Silks','3','2','3.3','Orange','Average','65','350 Bell St, Dubuque, IA 52001','toilet paper.jpg'),(276,'07-01-2000','13','juice',89,'Sri Kaalikambal Temple','53','2','3.4','Orange','Average','58','180 Main Street, Dubuque, IA 52001','juice.jpg'),(277,'07-01-2000','13','ice cream',9,'T.Mangharam (The Fabric People','11','2','3.5','Yellow','Good','100','3100 Dodge St., Dubuque, IA 52003','ice cream.jpg'),(278,'07-01-2000','13','ice cream',88,'Panagal Park','23','1','3.6','Yellow','Good','156','2515 NW Arterial, Dubuque, IA 52002','ice cream.jpg'),(279,'07-01-2000','13','sandwich loaves',50,'Parrys Shopping Centre','45','1','3.5','Yellow','Good','74','855 Century Dr, Dubuque, IA 52002','sandwich loaves.jpg'),(280,'07-01-2000','13','soap',90,'Kandhakottam Temple','65','2','3.6','Yellow','Good','117','1795 Greyhound Park Rd, Dubuque, IA 52001','soap.jpg'),(281,'07-01-2000','13','sugar',5,'Kovai Pazhamudir','78','3','3.7','Yellow','Good','83','3187 University Ave, Dubuque, IA 52001','sugar.jpg'),(282,'07-01-2000','13','paper towels',60,'MAX Regional Office','90','2','3.6','Yellow','Good','48','1097 Jackson St, Dubuque, IA 52001','paper towels.jpg'),(283,'07-01-2000','13','vegetables',30,'Marks & Spencer','35','3','3.8','Yellow','Good','198','1072 Main St, Dubuque, IA 52001','vegetables.jpg'),(284,'07-01-2000','14','fruits',396,'Sri Ramakrishna Math Chennai','67','1','3.5','Yellow','Good','126','2700 Dodge St, Dubuque, IA 52003','fruits.jpg'),(285,'07-01-2000','14','dinner rolls',90,'T. Nagar:','89','1','3.5','Yellow','Good','119','700 Locust St, Dubuque, IA 52001','dinner rolls.jpg'),(286,'07-01-2000','14','individual meals',80,'Pondy Bazaar','9','2','3.6','Yellow','Good','140','1298 Main St, Dubuque, IA 52001','individual meals.jpg'),(287,'07-01-2000','14','shampoo',1000,'Sowcarpet','24','3','3.6','Yellow','Good','159','378 Main St, Dubuque, IA 52001','shampoo.jpg'),(288,'07-01-2000','14','ketchup',17,'Ritchie Street','745','2','3.6','Yellow','Good','131','290 Locust St, Dubuque, IA 52001','ketchup.jpg'),(289,'07-01-2000','14','cereals',74,'George Town','145','1','3.5','Yellow','Good','60','401 Central Ave, Dubuque, IA 52001','cereals.jpg'),(290,'07-01-2000','14','sandwich bags',908,'Panagal Park','13','2','3.7','Yellow','Good','89','51 W 32nd Street, Dubuque, IA 52001','sandwich bags.jpg'),(291,'07-01-2000','14','laundry detergent',374,'Anna Nagar','14','4','3.6','Yellow','Good','72','301 Bell Street, Dubuque, IA 52001','laundry detergent.jpg'),(292,'07-01-2000','14','vegetables',3749,'Nungambakkam','56','2','4.1','Green','Very Good','56','12 Shelly Beach Rd, East Ballina, NSW','vegetables.jpg'),(293,'07-01-2000','14','sandwich loaves',90,'Forum Vijaya Mall','45','1','3.7','Yellow','Good','83','135 W. Main Street, Fernley, NV 89408','sandwich loaves.jpg'),(294,'07-01-2000','14','cheeses',50,'Phoenix Marketcity','78','3','3.5','Yellow','Good','37','313 Flaxton Drive, Flaxton, QLD','cheeses.jpg'),(295,'07-01-2000','14','vegetables',48,'Spencer Plaza Mall','345','2','3.7','Yellow','Good','29','16 Grant St, Forrest, VIC','vegetables.jpg'),(296,'07-01-2000','15','individual meals',48,'Ramee Mall','67','2','4.4','Green','Very Good','239','6323 Grand Hickory Dr Ste 200A, Braselton, GA 30517','individual meals.jpg'),(297,'07-01-2000','15','ice cream',44,'Ampa Skywalk','35','1','4.1','Green','Very Good','235','515 Grant Street, Clarkesville, GA 30523','ice cream.jpg'),(298,'07-01-2000','15','cereals',49,'Challa Mall','63','2','3.8','Yellow','Good','88','90 Public Sq N, Dahlonega, GA 30533','cereals.jpg'),(299,'07-01-2000','15','paper towels',49,'Alsa Mall','4','3','3.9','Yellow','Good','209','51 W Main St, Dahlonega, GA 30533','paper towels.jpg'),(300,'07-01-2000','15','bagels',80,'Spectrum The Grand Venus Mall','3','1','3.9','Yellow','Good','133','59 E Main St, Dahlonega, GA 30533','bagels.jpg'),(301,'07-01-2000','15','mixes',49,'Express Avenue','53','1','4.4','Green','Very Good','267','617 North Grove Street, Dahlonega, GA 30533','mixes.jpg'),(302,'07-01-2000','15','lunch meat',48,'VR Chennai','11','2','4.1','Green','Very Good','171','87 N. Chestatee St., Dahlonega, GA 30533','lunch meat.jpg'),(303,'07-01-2000','15','juice',40,'Chandra Metro Mall','23','2','3.8','Yellow','Good','107','6330 Mitchell Street, Flowery Branch, GA 30542','juice.jpg'),(304,'07-01-2000','15','toilet paper',889,'Grand Square','45','3','4.3','Green','Very Good','164','5510 Church Street, Flowery Branch, GA 30542','toilet paper.jpg'),(305,'07-01-2000','15','cheeses',58,'Welcome Shopping Mall','65','1','4.1','Green','Very Good','182','5545 Atlanta Highway, Flowery Branch, GA 30542','cheeses.jpg'),(306,'07-01-2000','15','paper towels',5959,'Palladium','78','2','4.9','Dark Green','Excellent','681','227 Atlanta Highway Suite 900, Gainesville, GA 30501','paper towels.jpg'),(307,'07-01-2000','15','paper towels',599,'Phoenix Market City','90','1','4.6','Dark Green','Excellent','357','975 Dawsonville Hwy, Gainesville, GA 30501','paper towels.jpg'),(308,'07-01-2000','15','juice',5,'Apple Shopping Mall','35','2','3.8','Yellow','Good','89','3205 Atlanta Hwy, Atlanta Highway, Gainesville, GA, Gainesville, GA 30507','juice.jpg'),(309,'07-01-2000','15','aluminum foil',60,'Parrys Corner Shopping','67','2','4.2','Green','Very Good','350','317 Spring St SE, Gainesville, GA 30501','aluminum foil.jpg'),(310,'07-01-2000','15','fruits',30,'Mayas Plaza','89','1','4.3','Green','Very Good','298','1043 Riverside Terrace, Gainesville, GA 30501','fruits.jpg'),(311,'07-01-2000','15','butter',396,'Mi Home Phoenix Market City Chennai','9','2','4.2','Green','Very Good','319','118 Bradford St NE, Gainesville, GA 30501','butter.jpg'),(312,'07-01-2000','15','sandwich loaves',90,'Big Bazaar','24','3','3.8','Yellow','Good','114','64 Munich Strasse, Helen, GA 30545','sandwich loaves.jpg'),(313,'07-01-2000','15','tortillas',80,'Abirami','745','1','3.9','Yellow','Good','136','8758 N Main St, Helen, GA 30545','tortillas.jpg'),(314,'07-01-2000','15','spaghetti sauce',1000,'Doll Shop','145','2','2.2','Red','Poor','108','8590 N Main St Ste B, Helen, GA 30545','spaghetti sauce.jpg'),(315,'07-01-2000','15','hand soap',17,'Mi Home Phoenix Market City Chennai','13','1','4','Green','Very Good','161','7275 S Main St., Helen, GA 30545','hand soap.jpg'),(316,'08-01-2000','16','sugar',74,'Saravana Stores Crown Mall','14','2','3.8','Yellow','Good','192','115 Main Rd, Hepburn Springs, Hepburn Springs, VIC','sugar.jpg'),(317,'08-01-2000','16','sandwich bags',908,'Super Saravana Stores - Porur','56','1','3.8','Yellow','Good','93','350 Hepburn-Newstead Road, Hepburn Springs, VIC','sandwich bags.jpg'),(318,'08-01-2000','16','flour',374,'FBB-CHENNAI-ANNANAGAR','45','2','4.1','Green','Very Good','40','64 Owen St, Huskisson, NSW','flour.jpg'),(319,'08-01-2000','16','juice',3749,'Chennai 50','78','1','3.7','Yellow','Good','100','6a Ramsay Blvd, Inverloch, VIC','juice.jpg'),(320,'08-01-2000','16','milk',90,'10 Square Mall','345','1','3.8','Yellow','Good','97','26 Myer street, Lakes Entrance, VIC','milk.jpg'),(321,'08-01-2000','16','paper towels',50,'Saravana Stores The Crown Mall','67','1','3.6','Yellow','Good','41','109 S F St, Lakeview, OR 97630','paper towels.jpg'),(322,'08-01-2000','16','cereals',48,'Amudham Angadi ,Fair Price Shop','35','2','4.5','Dark Green','Excellent','799','129 N 10th St, Lincoln, NE 68508','cereals.jpg'),(323,'08-01-2000','16','sandwich bags',48,'SUPER 99','63','2','3.6','Yellow','Good','18','27 Belmore Rd,, Lorn, NSW','sandwich bags.jpg'),(324,'08-01-2000','16','pasta',44,'Shopping Singapore','4','2','3.5','Yellow','Good','31','23 Victoria St, Macedon, VIC','pasta.jpg'),(325,'08-01-2000','16','soda',49,'Gold Souk Grande','3','2','3.9','Yellow','Good','146','402 Ga. Highway 247, Bonaire, GA 31005','soda.jpg'),(326,'08-01-2000','16','dishwashing liquid/detergent',49,'CHENNAI CITI CENTRE','53','1','4.9','Dark Green','Excellent','478','2395 Ingleside Ave, Macon, GA 31204','dishwashing liquid.jpg'),(327,'08-01-2000','16','ice cream',80,'Pothys','11','2','4.6','Dark Green','Excellent','467','3040 Vineville Ave, Macon, GA 31204','ice cream.jpg'),(328,'08-01-2000','16','soap',49,'Westside','23','2','4.5','Dark Green','Excellent','302','3086 Riverside Dr, Macon, GA 31210','soap.jpg'),(329,'08-01-2000','16','cheeses',48,'Phoenix Marketcity','45','2','4.5','Dark Green','Excellent','289','543 Cherry St, Macon, GA 31201','cheeses.jpg'),(330,'08-01-2000','16','beef',40,'Grand Galada Centre Mall','65','3','3.8','Yellow','Good','102','543 Cherry St, Macon, GA 31201','beef.jpg'),(331,'08-01-2000','16','flour',889,'Westside','78','3','4.1','Green','Very Good','293','5080 Riverside Dr, Macon, GA 31210','flour.jpg'),(332,'08-01-2000','16','dinner rolls',58,'Shanthi Jewellers','90','4','4','Green','Very Good','195','562 Mulberry St, Macon, GA 31201','dinner rolls.jpg'),(333,'08-01-2000','17','milk',5959,'Lifestyle Stores','35','1','4.3','Green','Very Good','244','587 Cherry St, Macon, GA 31201','milk.jpg'),(334,'08-01-2000','17','hand soap',599,'Currimbhoys Home Products Pvt.Ltd','67','4','4.2','Green','Very Good','379','201 North Macon St., Macon, GA 31210','hand soap.jpg'),(335,'08-01-2000','17','pasta',5,'Max','89','1','4.2','Green','Very Good','223','121 Tom Hill Sr Blvd, Macon, GA 31210','pasta.jpg'),(336,'08-01-2000','17','individual meals',60,'Gute Reise – Palladium Mall Chenna','9','2','3.7','Yellow','Good','243','1289 S Houston Lake Rd, Warner Robins, GA 31088','individual meals.jpg'),(337,'08-01-2000','17','spaghetti sauce',30,'Lifestyle Stores','24','2','3.7','Yellow','Good','104','2507 Moody Rd, Warner Robins, GA 31088','spaghetti sauce.jpg'),(338,'08-01-2000','17','cereals',396,'TRENDS','745','1','3.7','Yellow','Good','153','2624 Watson Blvd Ste D, Warner Robins, GA 31093','cereals.jpg'),(339,'08-01-2000','17','sandwich loaves',90,'Souchii','145','2','3.8','Yellow','Good','323','710 Lake Joy Road, Warner Robins, GA 31088','sandwich loaves.jpg'),(340,'08-01-2000','17','hand soap',80,'A Cube','13','1','4.1','Green','Very Good','181','1224 Russell Pkwy, Warner Robins, GA 31088','hand soap.jpg'),(341,'08-01-2000','17','individual meals',1000,'metro shopping','14','2','4','Green','Very Good','316','1801 Watson Blvd, Warner Robins, GA 31093','individual meals.jpg'),(342,'08-01-2000','18','sandwich bags',17,'Westside','56','2','4.2','Green','Very Good','288','102 S Armed Forces Boulevard, Warner Robins, GA 31088','sandwich bags.jpg'),(343,'08-01-2000','18','toilet paper',74,'Sundari Silks - India | Wedding Sarees Collection','45','1','4','Green','Very Good','232','1806 Russell Parkway, Warner Robins, GA 31088','toilet paper.jpg'),(344,'08-01-2000','18','bagels',908,'Reliance Trends','78','3','4.1','Green','Very Good','314','4086 Watson Blvd, Warner Robins, GA 31093','bagels.jpg'),(345,'08-01-2000','18','shampoo',374,'Meena Bazaar','345','2','2.9','Orange','Average','11','58 Hanbury St, Mayfield, NSW','shampoo.jpg'),(346,'08-01-2000','18','coffee/tea',3749,'Palam Silks','67','1','2.4','Red','Poor','17','21053 State Hwy M28, Mc Millan, MI 49853','coffee-tea.jpg'),(347,'09-01-2000','19','individual meals',90,'Sri Kaalikambal Temple','35','3','3.8','Yellow','Good','176','2 Flinders Pde, Middleton Beach, WA','individual meals.jpg'),(348,'09-01-2000','19','laundry detergent',50,'T.Mangharam (The Fabric People','63','1','3.4','Orange','Average','11','109 N Broadway Ave, Miller, SD 57362','laundry detergent.jpg'),(349,'09-01-2000','19','coffee/tea',48,'Panagal Park','4','2','3.6','Yellow','Good','65','619 4th Ave, Monroe, WI 53566','coffee-tea.jpg'),(350,'09-01-2000','19','eggs',48,'Parrys Shopping Centre','3','3','2.4','Red','Poor','193','167 Main St, Montville, QLD','eggs.jpg'),(351,'09-01-2000','19','aluminum foil',44,'Kandhakottam Temple','53','3','3.6','Yellow','Good','30','Ojo Caliente Mineral Springs Resort And Spa 50 Los Banos Rd, Ojo Caliente, NM 87549','aluminum foil.jpg'),(352,'09-01-2000','19','beef',49,'Kovai Pazhamudir','89','3','4.4','Green','Very Good','981','125 West Church Street, Orlando, FL 32801','beef.jpg'),(353,'09-01-2000','19','juice',49,'MAX Regional Office','67','3','4.5','Dark Green','Excellent','1151','1600 Seven Seas Drive, Lake Buena Vista, FL 32830','juice.jpg'),(354,'09-01-2000','19','flour',80,'Marks & Spencer','45','3','4.7','Dark Green','Excellent','1341','1750 E Buena Vista Drive, Lake Buena Vista, FL 32830','flour.jpg'),(355,'09-01-2000','19','sugar',49,'Sri Ramakrishna Math Chennai','45','4','4.3','Green','Very Good','782','1640 E Buena Vista Drive, Lake Buena Vista, FL 32830','sugar.jpg');

/*Table structure for table `minres` */

DROP TABLE IF EXISTS `minres`;

CREATE TABLE `minres` (
  `id` varchar(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `pid` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `dis` varchar(200) DEFAULT NULL,
  `rate` varchar(200) DEFAULT NULL,
  `place` varchar(200) DEFAULT NULL,
  `address` text,
  `color` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `minres` */

/*Table structure for table `minshop` */

DROP TABLE IF EXISTS `minshop`;

CREATE TABLE `minshop` (
  `id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `pid` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `dis` varchar(200) DEFAULT NULL,
  `rate` varchar(200) DEFAULT NULL,
  `place` varchar(200) DEFAULT NULL,
  `adds` text,
  `color` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `minshop` */

insert  into `minshop`(`id`,`name`,`pid`,`pname`,`dis`,`rate`,`place`,`adds`,`color`,`image`) values ('1','praba','1','soap','45','5','Express Avenue','Ayala Mall, Solenad, Nuvali, Santa Rosa - Tagaytay Road, Don Jose, Santa Rosa','Yellow','soap.jpg'),('1','praba','1','shampoo','13','5','Challa Mall','Second Floor, UP Town Center, Katipunan Avenue, Diliman, Quezon City','Dark Green','shampoo.jpg'),('1','praba','1','lunch meat','65','5','Ritchie Street','Edsa Shangri-La, 1 Garden Way, Ortigas, Mandaluyong City','Green','lunch meat.jpg'),('1','praba','1','ice cream','345','9','Chandra Metro Mall','Aguinaldo Highway, Tagaytay City','Dark Green','ice cream.jpg'),('1','praba','5','paper towels','145','49','VR Chennai','814 N Slappey Blvd, Albany, GA 31701','Orange','paper towels.jpg');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `profile` varchar(200) DEFAULT NULL,
  `cont` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`id`,`name`,`pass`,`mail`,`dob`,`gender`,`profile`,`cont`,`address`) values (1,'praba','praba','cvsathyavani1999@gmail.com','21/01/1999','female','event.jpg','8884930399','CHENNAI'),(2,'preethi','preethi','preethi@gmail.com','21/01/1996','FEMALE','event.jpg','9380938739','chennai'),(3,'keerthi','keerthi','keerthi@gmail.com','7/10/1997','female','event.jpg','8884930399','chennai`'),(4,'sathyapraba','dddd','ammaorphanage@gmail.com','21/01/1999','female','ammam.jpg','8098098008','thirichy');

/*Table structure for table `shop` */

DROP TABLE IF EXISTS `shop`;

CREATE TABLE `shop` (
  `sid` varchar(200) DEFAULT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `id` varchar(200) DEFAULT NULL,
  `pid` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `cost` varchar(200) DEFAULT NULL,
  `place` varchar(200) DEFAULT NULL,
  `distance` varchar(200) DEFAULT NULL,
  `dates` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `shop` */

insert  into `shop`(`sid`,`sname`,`id`,`pid`,`pname`,`cost`,`place`,`distance`,`dates`,`image`) values ('1','praba','18','1','soap','7','VR Chennai','78','01/10/20 15:01:46','soap.jpg'),('1','praba','231','11','shampoo','5','VR Chennai','78','01/10/20 15:01:52','shampoo.jpg'),('1','praba','302','15','lunch meat','48','VR Chennai','11','01/10/20 15:01:58','lunch meat.jpg'),('1','praba','160','8','ice cream','254','VR Chennai','89','01/10/20 15:02:08','ice cream.jpg'),('1','praba','89','5','paper towels','60','VR Chennai','145','01/10/20 15:02:14','paper towels.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
UPDATE `dataset` SET dates = CONCAT(SUBSTRING(dates, 1, 6), '2025') WHERE SUBSTRING(dates, 7, 4) = '2000';
ALTER TABLE `dataset` DROP COLUMN color;
ALTER TABLE `dataset` DROP COLUMN dis;
ALTER TABLE `shop` DROP COLUMN distance;
ALTER TABLE `minshop` DROP COLUMN dis;
ALTER TABLE `minshop` DROP COLUMN color;
UPDATE `dataset` SET place="Freshco Supermarket" WHERE place="T. Nagar:";
UPDATE `dataset` SET address="Sait Colony, Egmore, Chennai" WHERE place="Freshco Supermarket";
UPDATE `dataset` SET place="Santhosh Hyper Market" WHERE place="Pondy Bazaar";
UPDATE `dataset` SET address="Jayalakshmi nagar, Medavakkam Main Rd, Chennai" WHERE place="Santhosh Hyper Market";
UPDATE `dataset` SET place="Fresh Smart Bazaar" WHERE place="Sowcarpet";
UPDATE `dataset` SET address="Club House Road, Anna Salai, Royapettah, Chennai" WHERE place="Fresh Smart Bazaar";
UPDATE `dataset` SET place="Family Supermarket" WHERE place="Ritchie Street";
UPDATE `dataset` SET address="Venkatakrishna Road, Jeth Nagar, Chennai" WHERE place="Family Supermarket";
UPDATE `dataset` SET place="Daily Supermarket" WHERE place="Panagal Park";
UPDATE `dataset` SET address="Arcot Road, Rajeswari Colony, Chennai" WHERE place="Daily Supermarket";
UPDATE `dataset` SET place="Shopy Mart" WHERE place="George Town";
UPDATE `dataset` SET address="Gandhi Road, Karunabigai Colony, Chennai" WHERE place="Shopy Mart";
UPDATE `dataset` SET place="Annanagar Super Market" WHERE place="Anna Nagar";
UPDATE `dataset` SET address="11th Main Road, Anna Nagar, Chennai" WHERE place="Annanagar Super Market";
UPDATE `dataset` SET place="Vimala Super Market" WHERE place="Nungambakkam";
UPDATE `dataset` SET address="Ramaswamy Salai, KK Nagar West,Chennai" WHERE place="Vimala Super Market";
UPDATE `dataset` SET place="Grace Supermarket" WHERE place="Forum Vijaya Mall";
UPDATE `dataset` SET address="Viswanathapuram  Road, Kodambakkam, Chennai" WHERE place="Grace Supermarket";
UPDATE `dataset` SET place="Vijay Super Market" WHERE place="Phoenix Marketcity";
UPDATE `dataset` SET address="Mahalingapuram  Road, Nungambakkam, Chennai" WHERE place="Vijay Super Market";
UPDATE `dataset` SET place="Shoppers Mart" WHERE place="Spencer Plaza Mall";
UPDATE `dataset` SET address="Usman Rd, T Nagar, Chennai" WHERE place="Shoppers Mart";
UPDATE `dataset` SET place="Murugan Super Mart" WHERE place="Ramee Mall";
UPDATE `dataset` SET address="Saidapet Road, Vadapalani, Chennai" WHERE place="Murugan Super Mart";
UPDATE `dataset` SET place="Smart Supermarket" WHERE place="Ampa Skywalk";
UPDATE `dataset` SET address="Lakshmi road, Kodambakkam, Chennai" WHERE place="Smart Supermarket";
UPDATE `dataset` SET place="Day2Day Mart" WHERE place="Challa Mall";
UPDATE `dataset` SET address="Abdulla Street, Cholaimedu, Chennai" WHERE place="Day2Day Mart";
UPDATE `dataset` SET place="Variety Supermarket" WHERE place="Alsa Mall";
UPDATE `dataset` SET address="Ambedkar Road, Kodambakkam, Chennai" WHERE place="Variety Supermarket";
UPDATE `dataset` SET place="Santa Supermarket" WHERE place="Spectrum The Grand Venus Mall";
UPDATE `dataset` SET address="Bajanai road, Choolaimedu, Chennai" WHERE place="Santa Supermarket";
UPDATE `dataset` SET place="Sky Super Mart" WHERE place="Express Avenue";
UPDATE `dataset` SET address="Gangaiamman Koil Street, Kodambakkam, Chennai" WHERE place="Sky Super Mart";
UPDATE `dataset` SET place="Nilgiri Supermarket" WHERE place="VR Chennai";
UPDATE `dataset` SET address="West Mambalam, Chennai" WHERE place="Nilgiri Supermarket";
UPDATE `dataset` SET place="More Supermarket" WHERE place="Chandra Metro Mall";
UPDATE `dataset` SET address="Choolaimedu High Road, Sriramapuram, Chennai" WHERE place="More Supermarket";
UPDATE `dataset` SET place="Modern Mart" WHERE place="Grand Square";
UPDATE `dataset` SET address="Lake View Road, West Mambalam, Chennai" WHERE place="Modern Mart";
UPDATE `dataset` SET place="Adyar Supermarket" WHERE place="Welcome Shopping Mall";
UPDATE `dataset` SET address="2nd  Main Road, Kakkan Nagar,  Chennai" WHERE place="Adyar Supermarket";
UPDATE `dataset` SET place="Kovai Supermarket" WHERE place="Palladium";
UPDATE `dataset` SET address="3rd Cross Street, Adyar, Chennai" WHERE place="Kovai Supermarket";
UPDATE `dataset` SET place="Heritage Mart" WHERE place="Phoenix Market City";
UPDATE `dataset` SET address="Bazullah Road, T Nagar, Chennai" WHERE place="Heritage Mart";
UPDATE `dataset` SET place="Garden Supermarket" WHERE place="Apple Shopping Mall";
UPDATE `dataset` SET address="Sivan Koil Street, Vadapalani, Chennai" WHERE place="Garden Supermarket";
UPDATE `dataset` SET place="Value Supermarket" WHERE place="Parrys Corner Shopping";
UPDATE `dataset` SET address="Lakshmi Apartment road, Choolaimedu, Chennai" WHERE place="Value Supermarket";
UPDATE `dataset` SET place="Vanga Supermarket" WHERE place="Mayas Plaza";
UPDATE `dataset` SET address="3rd Main Rd, Gandhi Nagar, Chennai" WHERE place="Vanga Supermarket";
UPDATE `dataset` SET place="Seetharam Mart" WHERE place="Mi Home Phoenix Market City Chennai";
UPDATE `dataset` SET address="6th Cross Street, Adyar, Chennai" WHERE place="Seetharam Mart";
UPDATE `dataset` SET place="Aruna Mart" WHERE place="Big Bazaar";
UPDATE `dataset` SET address="Paper Mills Road, Peravallur, Chennai" WHERE place="Aruna Mart";
UPDATE `dataset` SET place="Pothys Supermarket" WHERE place="Abirami";
UPDATE `dataset` SET address="Station Road, Avadi, Chennai" WHERE place="Pothys Supermarket";
UPDATE `dataset` SET place="Selvi Supermarket" WHERE place="Doll Shop";
UPDATE `dataset` SET address="Poonamalle High Road, Aminjikarai, Chennai" WHERE place="Selvi Supermarket";
UPDATE `dataset` SET place="Cheers Mart" WHERE place="Saravana Stores Crown Mall";
UPDATE `dataset` SET address="LB Road, Baktavatsalm Nagar, Chennai" WHERE place="Cheers Mart";
UPDATE `dataset` SET place="Kamatchi  Super Mart" WHERE place="Super Saravana Stores - Porur";
UPDATE `dataset` SET address="Durai Arasan Street, Saligramam, Chennai" WHERE place="Kamatchi  Super Mart";
UPDATE `dataset` SET place="Aruvi Supermarket" WHERE place="FBB-CHENNAI-ANNANAGAR";
UPDATE `dataset` SET address="Sulochana Nagar, Moulivakkam, Chennai" WHERE place="Aruvi Supermarket";
UPDATE `dataset` SET place="Grand Super Market" WHERE place="Chennai 50";
UPDATE `dataset` SET address="8th Avenue road, Ashok Nagar, Chennai" WHERE place="Grand Super Market";
UPDATE `dataset` SET place="Royal Mart" WHERE place="10 Square Mall";
UPDATE `dataset` SET address="Sarvamangala Colony, Ashok Nagar, Chennai" WHERE place="Royal Mart";
UPDATE `dataset` SET place="Happy Supermarket" WHERE place="Saravana Stores The Crown Mall";
UPDATE `dataset` SET address="MG road, Besant Nagar, Chennai" WHERE place="Happy Supermarket";
UPDATE `dataset` SET place="Jagadeesh Mart" WHERE place="Amudham Angadi ,Fair Price Shop";
UPDATE `dataset` SET address="Poonamalle Road, Balaji Nagar, Chennai" WHERE place="Jagadeesh Mart";
UPDATE `dataset` SET place="Mini Supermarket" WHERE place="SUPER 99";
UPDATE `dataset` SET address="16th Street, Ashok Nagar, Chennai" WHERE place="Mini Supermarket";
UPDATE `dataset` SET place="TN Supermarket" WHERE place="Shopping Singapore";
UPDATE `dataset` SET address="Barracks Road, Periyamet, Chennai" WHERE place="TN Supermarket";
UPDATE `dataset` SET place="Suman Supermarket" WHERE place="Gold Souk Grande";
UPDATE `dataset` SET address="Raja Street, Pondy Bazaar, Chennai" WHERE place="Suman Supermarket";
UPDATE `dataset` SET place="Amma Naana Mart" WHERE place="CHENNAI CITI CENTRE";
UPDATE `dataset` SET address="Muthuramalinga Thevar Road, Raja Annamalai Puram, Chennai" WHERE place="Amma Naana Mart";
UPDATE `dataset` SET place="National Mart" WHERE place="Pothys";
UPDATE `dataset` SET address="Alapakkam Main Road, Maduravoyal, Chennai" WHERE place="National Mart";
UPDATE `dataset` SET place="Saravana Super Market" WHERE place="Westside";
UPDATE `dataset` SET address="Pulla Avenue Road, Shenoy Nagar, Chennai" WHERE place="Saravana Super Market";
UPDATE `dataset` SET place="Eswari Super Market" WHERE place="Grand Galada Centre Mall";
UPDATE `dataset` SET address="Thiruvottiyur High Road,  Vasantha Nagar,  Tiruvottiyur, Chennai" WHERE place="Eswari Super Market";
UPDATE `dataset` SET place="All Day Mart" WHERE place="Shanthi Jewellers";
UPDATE `dataset` SET address="Railway colony, 3rd street, Laxman Nagar, Chennai" WHERE place="All Day Mart";
UPDATE `dataset` SET place="Angel Super Mart" WHERE place="Lifestyle Stores";
UPDATE `dataset` SET address="Muthuramalinga Street, Ekkatuthangal, Chennai" WHERE place="Angel Super Mart";
UPDATE `dataset` SET place="Value Mart" WHERE place="Currimbhoys Home Products Pvt.Ltd";
UPDATE `dataset` SET address="Poonamallee High Road, Vepery, Periyamet, Chennai" WHERE place="Value Mart";
UPDATE `dataset` SET place="Jaya Mart" WHERE place="Max";
UPDATE `dataset` SET address="Mills Road, Venkatesan Nagar, Peravallur, Chennai" WHERE place="Jaya Mart";
UPDATE `dataset` SET place="Nice Mart" WHERE place="Gute Reise – Palladium Mall Chenna";
UPDATE `dataset` SET address="Balaraman Street, Baktavatsalm Nagar, Chennai" WHERE place="Nice Mart";
UPDATE `dataset` SET place="Mangalam Super Market" WHERE place="TRENDS";
UPDATE `dataset` SET address="City Link Road, Adambakkam, Chennai" WHERE place="Mangalam Super Market";
UPDATE `dataset` SET address="Andavar Nagar, 2nd Street, Kodambakkam, Chennai" WHERE place="Regular Super Market";
UPDATE `dataset` SET place="Five Star Mart" WHERE place="A Cube";
UPDATE `dataset` SET address="2nd Cross Street, Sunder Nagar, Chennai" WHERE place="Five Star Mart";
UPDATE `dataset` SET place="Shanthi Mart" WHERE place="metro shopping";
UPDATE `dataset` SET address="Karunanidhi Road, MGR Nagar, Chennai" WHERE place="Shanthi Mart";
UPDATE `dataset` SET place="Jovial Supermarket" WHERE place="Sundari Silks - India | Wedding Sarees Collection";
UPDATE `dataset` SET address="VOC Nagar Main Road, Arumbakkam, Chennai" WHERE place="Jovial Supermarket";
UPDATE `dataset` SET place="Venkateshwara Super Mart" WHERE place="Reliance Trends";
UPDATE `dataset` SET address="11th Main Road, Vijaya Nagar, Velachery, Chennai" WHERE place="Venkateshwara Super Mart";
UPDATE `dataset` SET place="Parvathy Mart" WHERE place="Meena Bazaar";
UPDATE `dataset` SET address="Vandi Pathai Street, Ekkatuthangal, Chennai" WHERE place="Parvathy Mart";
UPDATE `dataset` SET place="Lingam Supermarket" WHERE place="Palam Silks";
UPDATE `dataset` SET address="Kolathur Street, Kolathur, Chennai" WHERE place="Lingam Supermarket";
UPDATE `dataset` SET place="Shwetha Super Market" WHERE place="Sri Kaalikambal Temple";
UPDATE `dataset` SET address="Mounasamy Madam Street, Ambattur, Chennai" WHERE place="Shwetha Super Market";
UPDATE `dataset` SET place="Famous Mart" WHERE place="T.Mangharam (The Fabric People";
UPDATE `dataset` SET address="Sarathy Nagar, Saidapet, Chennai" WHERE place="Famous Mart";
UPDATE `dataset` SET place="Trust Super Mart" WHERE place="Parrys Shopping Centre";
UPDATE `dataset` SET address="Bazaar Main Road, Madipakkam, Chennai" WHERE place="Trust Super Mart";
UPDATE `dataset` SET place="Efficient Mart" WHERE place="Kandhakottam Temple";
UPDATE `dataset` SET address="Bazaar Main Road, Madipakkam, Chennai" WHERE place="Efficient Mart";
UPDATE `dataset` SET place="Delight Mart" WHERE place="Kovai Pazhamudir";
UPDATE `dataset` SET address="Thirumurugan Street, Radhanagar, Chromepet, Chennai" WHERE place="Delight Mart";
UPDATE `dataset` SET place="Classic Supermarket" WHERE place="MAX Regional Office";
UPDATE `dataset` SET address="Valmiki Road, Kannappa Nagar, Chennai" WHERE place="Classic Supermarket";
UPDATE `dataset` SET place="Latta Super Market" WHERE place="Marks & Spencer";
UPDATE `dataset` SET address="Dandeeshwaram Main Road, Dhandeeswaram, Velachery, Chennai" WHERE place="Latta Super Market";
UPDATE `dataset` SET place="Senthil Supermarket" WHERE place="Sri Ramakrishna Math Chennai";
UPDATE `dataset` SET address="MMD Colony, Arumbakkam, Chennai" WHERE place="Senthil Supermarket";
UPDATE `dataset` SET pname="100g yogurt" WHERE pname="yogurt";
UPDATE `dataset`SET rate=79 WHERE pname="100g yogurt" AND place="Freshco Supermarket";
UPDATE `dataset`SET rate=90 WHERE pname="100g yogurt" AND place="Happy Supermarket";
UPDATE `dataset` SET rate=60 WHERE pname="100g yogurt" AND place="Royal Mart";
UPDATE `dataset` SET rate=80 WHERE pname="100g yogurt" AND place="Annanagar Super Market";
UPDATE `dataset` SET rate=100 WHERE pname="100g yogurt" AND place="Jagadeesh Mart";
UPDATE `dataset` SET pname="100g pork" WHERE pname="pork";
UPDATE `dataset` SET `rate` = '60' WHERE `dataset`.`Resid` = 69;
UPDATE `dataset` SET `rate` = '87' WHERE `dataset`.`Resid` = 93;
UPDATE `dataset` SET `rate` = '65' WHERE `dataset`.`Resid` = 97;
UPDATE `dataset` SET `rate` = '75' WHERE `dataset`.`Resid` = 177;
UPDATE `dataset` SET `rate` = '95' WHERE `dataset`.`Resid` = 206;
UPDATE `dataset` SET `rate` = '50' WHERE `dataset`.`Resid` = 238;
UPDATE `dataset` SET `rate` = '90' WHERE `dataset`.`Resid` = 239;
UPDATE `dataset` SET `rate` = '70' WHERE `dataset`.`Resid` = 241;
UPDATE `dataset` SET pname="5 sandwich bags" WHERE pname="sandwich bags";
UPDATE `dataset` SET `rate` = '25' WHERE `dataset`.`Resid` = 3;
UPDATE `dataset` SET `rate` = '50' WHERE `dataset`.`Resid` = 145;
UPDATE `dataset` SET `rate` = '30' WHERE `dataset`.`Resid` = 155;
UPDATE `dataset` SET `rate` = '55' WHERE `dataset`.`Resid` = 290;
UPDATE `dataset` SET `rate` = '70' WHERE `dataset`.`Resid` = 317;
UPDATE `dataset` SET `rate` = '15' WHERE `dataset`.`Resid` = 342;
UPDATE `dataset` SET pname="100g meat" WHERE pname="lunch meat";
UPDATE `dataset` SET `rate` = '220' WHERE `dataset`.`Resid` = 4;
UPDATE `dataset` SET `rate` = '270' WHERE `dataset`.`Resid` = 66;
UPDATE `dataset` SET `rate` = '150' WHERE `dataset`.`Resid` = 77;
UPDATE `dataset` SET `rate` = '250' WHERE `dataset`.`Resid` = 205;
UPDATE `dataset` SET `rate` = '180' WHERE `dataset`.`Resid` = 243;
UPDATE `dataset` SET `rate` = '200' WHERE `dataset`.`Resid` = 302;
UPDATE `dataset` SET pname="1kg wheat flour" WHERE pname="all- purpose";
UPDATE `dataset` SET `rate` = '54' WHERE `dataset`.`Resid` = 5;
UPDATE `dataset` SET `rate` = '80' WHERE `dataset`.`Resid` = 12;
UPDATE `dataset` SET `rate` = '65' WHERE `dataset`.`Resid` = 80;
UPDATE `dataset` SET `rate` = '90' WHERE `dataset`.`Resid` = 105;
UPDATE `dataset` SET `rate` = '70' WHERE `dataset`.`Resid` = 134;
UPDATE `dataset` SET `rate` = '40' WHERE `dataset`.`Resid` = 148;
UPDATE `dataset` SET `rate` = '85' WHERE `dataset`.`Resid` = 263;
UPDATE `dataset` SET pname="1kg rice flour" WHERE pname="flour";
UPDATE `dataset` SET pname="1kg rice" WHERE pname="100g pork";
UPDATE `dataset` SET pname="1l soda" WHERE pname="soda";
UPDATE `dataset` SET `rate` = '45' WHERE `dataset`.`Resid` = 7;
UPDATE `dataset` SET `rate` = '60' WHERE `dataset`.`Resid` = 44;
UPDATE `dataset` SET `rate` = '70' WHERE `dataset`.`Resid` = 78;
UPDATE `dataset` SET `rate` = '50' WHERE `dataset`.`Resid` = 106;
UPDATE `dataset` SET `rate` = '35' WHERE `dataset`.`Resid` = 164;
UPDATE `dataset` SET `rate` = '20' WHERE `dataset`.`Resid` = 180;
UPDATE `dataset` SET `rate` = '65' WHERE `dataset`.`Resid` = 325;
UPDATE `dataset` SET `rate` = '25' WHERE `dataset`.`Resid` = 210;
UPDATE `dataset` SET pname="100g butter" WHERE pname="butter";
UPDATE `dataset` SET `rate` = '75' WHERE `dataset`.`Resid` = 118;
UPDATE `dataset` SET `rate` = '50' WHERE `dataset`.`Resid` = 131;
UPDATE `dataset` SET `rate` = '40' WHERE `dataset`.`Resid` = 311;
UPDATE `dataset` SET pname="200g vegetables" WHERE pname="vegetables";
UPDATE `dataset` SET `rate` = '60' WHERE `dataset`.`Resid` = 35;
UPDATE `dataset` SET `rate` = '90' WHERE `dataset`.`Resid` = 59;
UPDATE `dataset` SET `rate` = '85' WHERE `dataset`.`Resid` = 73;
UPDATE `dataset` SET `rate` = '110' WHERE `dataset`.`Resid` = 96;
UPDATE `dataset` SET `rate` = '40' WHERE `dataset`.`Resid` = 99;
UPDATE `dataset` SET `rate` = '100' WHERE `dataset`.`Resid` = 153;
UPDATE `dataset` SET `rate` = '65' WHERE `dataset`.`Resid` = 168;
UPDATE `dataset` SET `rate` = '25' WHERE `dataset`.`Resid` = 185;
UPDATE `dataset` SET `rate` = '55' WHERE `dataset`.`Resid` = 224;
UPDATE `dataset` SET `rate` = '105' WHERE `dataset`.`Resid` = 237;
UPDATE `dataset` SET `rate` = '40' WHERE `dataset`.`Resid` = 247;
UPDATE `dataset` SET `rate` = '120' WHERE `dataset`.`Resid` = 249;
UPDATE `dataset` SET `rate` = '75' WHERE `dataset`.`Resid` = 259;
UPDATE `dataset` SET `rate` = '100' WHERE `dataset`.`Resid` = 283;
UPDATE `dataset` SET `rate` = '90' WHERE `dataset`.`Resid` = 292;
UPDATE `dataset` SET `rate` = '60' WHERE `dataset`.`Resid` = 295;
UPDATE `dataset` SET pname="1kg tea" WHERE pname="beef";
UPDATE `dataset` SET `rate` = '350' WHERE `dataset`.`Resid` = 10;
UPDATE `dataset` SET `rate` = '500' WHERE `dataset`.`Resid` = 154;
UPDATE `dataset` SET `rate` = '250' WHERE `dataset`.`Resid` = 199;
UPDATE `dataset` SET `rate` = '400' WHERE `dataset`.`Resid` = 203;
UPDATE `dataset` SET `rate` = '490' WHERE `dataset`.`Resid` = 330;
UPDATE `dataset` SET `rate` = '550' WHERE `dataset`.`Resid` = 352;
UPDATE `dataset` SET image="rice1.jpg" WHERE pname="1kg rice";
UPDATE `dataset` SET pname="10 aluminium foils" WHERE pname="aluminum foil";
UPDATE `dataset` SET `rate` = '80' WHERE `dataset`.`Resid` = 130;
UPDATE `dataset` SET `rate` = '50' WHERE `dataset`.`Resid` = 264;
UPDATE `dataset` SET `rate` = '65' WHERE `dataset`.`Resid` = 271;
UPDATE `dataset` SET `rate` = '75' WHERE `dataset`.`Resid` = 309;
UPDATE `dataset` SET pname="5 dinner rolls" WHERE pname="dinner rolls";
UPDATE `dataset` SET `rate` = '80' WHERE `dataset`.`Resid` = 49;
UPDATE `dataset` SET `rate` = '70' WHERE `dataset`.`Resid` = 227;
UPDATE `dataset` SET `rate` = '85' WHERE `dataset`.`Resid` = 285;
UPDATE `dataset` SET `rate` = '75' WHERE `dataset`.`Resid` = 332;
UPDATE `dataset` SET pname="1l shampoo" WHERE pname="shampoo";
UPDATE `dataset` SET `rate` = '90' WHERE `dataset`.`Resid` = 14;
UPDATE `dataset` SET `rate` = '58' WHERE `dataset`.`Resid` = 22;
UPDATE `dataset` SET `rate` = '180' WHERE `dataset`.`Resid` = 65;
UPDATE `dataset` SET `rate` = '70' WHERE `dataset`.`Resid` = 122;
UPDATE `dataset` SET `rate` = '150' WHERE `dataset`.`Resid` = 231;
UPDATE `dataset` SET `rate` = '100' WHERE `dataset`.`Resid` = 242;
UPDATE `dataset` SET `rate` = '85' WHERE `dataset`.`Resid` = 269;
UPDATE `dataset` SET `rate` = '120' WHERE `dataset`.`Resid` = 272;
UPDATE `dataset` SET `rate` = '110' WHERE `dataset`.`Resid` = 287;
UPDATE `dataset` SET `rate` = '140' WHERE `dataset`.`Resid` = 345;
UPDATE `dataset` SET pname="200g dosa mix" WHERE pname="mixes";
UPDATE `dataset` SET `rate` = '187' WHERE `dataset`.`Resid` = 16;
UPDATE `dataset` SET `rate` = '100' WHERE `dataset`.`Resid` = 43;
UPDATE `dataset` SET `rate` = '70' WHERE `dataset`.`Resid` = 84;
UPDATE `dataset` SET `rate` = '163' WHERE `dataset`.`Resid` = 150;
UPDATE `dataset` SET `rate` = '140' WHERE `dataset`.`Resid` = 151;
UPDATE `dataset` SET `rate` = '121' WHERE `dataset`.`Resid` = 301;
UPDATE `dataset` SET pname="3 soaps" WHERE pname="soap";
UPDATE `dataset` SET `rate` = '24' WHERE `dataset`.`Resid` = 6;
UPDATE `dataset` SET `rate` = '40' WHERE `dataset`.`Resid` = 236;
UPDATE `dataset` SET `rate` = '80' WHERE `dataset`.`Resid` = 318;
UPDATE `dataset` SET `rate` = '75' WHERE `dataset`.`Resid` = 331;
UPDATE `dataset` SET `rate` = '90' WHERE `dataset`.`Resid` = 17;
UPDATE `dataset` SET `rate` = '70' WHERE `dataset`.`Resid` = 18;
UPDATE `dataset` SET `rate` = '120' WHERE `dataset`.`Resid` = 46;
UPDATE `dataset` SET `rate` = '100' WHERE `dataset`.`Resid` = 125;
UPDATE `dataset` SET `rate` = '65' WHERE `dataset`.`Resid` = 144;
UPDATE `dataset` SET `rate` = '95' WHERE `dataset`.`Resid` = 188;
UPDATE `dataset` SET `rate` = '105' WHERE `dataset`.`Resid` = 204;
UPDATE `dataset` SET `rate` = '80' WHERE `dataset`.`Resid` = 328;
UPDATE `dataset` SET pname="500ml ice cream" WHERE pname="ice cream";
UPDATE `dataset` SET `rate` = '230' WHERE `dataset`.`Resid` = 19;
UPDATE `dataset` SET `rate` = '188' WHERE `dataset`.`Resid` = 47;
UPDATE `dataset` SET `rate` = '210' WHERE `dataset`.`Resid` = 57;
UPDATE `dataset` SET `rate` = '250' WHERE `dataset`.`Resid` = 64;
UPDATE `dataset` SET `rate` = '300' WHERE `dataset`.`Resid` = 141;
UPDATE `dataset` SET `rate` = '268' WHERE `dataset`.`Resid` = 160;
UPDATE `dataset` SET `rate` = '280' WHERE `dataset`.`Resid` = 209;
UPDATE `dataset` SET `rate` = '320' WHERE `dataset`.`Resid` = 277;
UPDATE `dataset` SET `rate` = '290' WHERE `dataset`.`Resid` = 278;
UPDATE `dataset` SET `rate` = '310' WHERE `dataset`.`Resid` = 297;
UPDATE `dataset` SET `rate` = '200' WHERE `dataset`.`Resid` = 327;
UPDATE `dataset` SET pname="2 toilet paper rolls" WHERE pname="toilet paper";
UPDATE `dataset` SET `rate` = '95' WHERE `dataset`.`Resid` = 21;
UPDATE `dataset` SET `rate` = '110' WHERE `dataset`.`Resid` = 48;
UPDATE `dataset` SET `rate` = '120' WHERE `dataset`.`Resid` = 56;
UPDATE `dataset` SET `rate` = '80' WHERE `dataset`.`Resid` = 79;
UPDATE `dataset` SET `rate` = '100' WHERE `dataset`.`Resid` = 86;
UPDATE `dataset` SET `rate` = '130' WHERE `dataset`.`Resid` = 109;
UPDATE `dataset` SET pname="1l Hand Wash" WHERE pname="hand soap";
UPDATE `dataset` SET `rate` = '150' WHERE `dataset`.`Resid` = 23;
UPDATE `dataset` SET `rate` = '136' WHERE `dataset`.`Resid` = 34;
UPDATE `dataset` SET `rate` = '162' WHERE `dataset`.`Resid` = 50;
UPDATE `dataset` SET `rate` = '95' WHERE `dataset`.`Resid` = 85;
UPDATE `dataset` SET `rate` = '80' WHERE `dataset`.`Resid` = 222;
UPDATE `dataset` SET `rate` = '100' WHERE `dataset`.`Resid` = 234;
UPDATE `dataset` SET `rate` = '120' WHERE `dataset`.`Resid` = 254;
UPDATE `dataset` SET `rate` = '140' WHERE `dataset`.`Resid` = 334;
UPDATE `dataset` SET `rate` = '100' WHERE `dataset`.`Resid` = 315;
UPDATE `dataset` SET `rate` = '160' WHERE `dataset`.`Resid` = 340;
UPDATE `dataset` SET pname="100g waffles" WHERE pname="waffles";
UPDATE `dataset` SET `rate` = '80' WHERE `dataset`.`Resid` = 32;
UPDATE `dataset` SET `rate` = '60' WHERE `dataset`.`Resid` = 101;
UPDATE `dataset` SET `rate` = '100' WHERE `dataset`.`Resid` = 163;
UPDATE `dataset` SET `rate` = '70' WHERE `dataset`.`Resid` = 207;
UPDATE `dataset` SET `rate` = '110' WHERE `dataset`.`Resid` = 215;
UPDATE `dataset` SET `rate` = '85' WHERE `dataset`.`Resid` = 253;
UPDATE `dataset` SET pname="100g cheese" WHERE pname="cheeses";
UPDATE `dataset` SET `rate` = '85' WHERE `dataset`.`Resid` = 71;
UPDATE `dataset` SET `rate` = '110' WHERE `dataset`.`Resid` = 202;
UPDATE `dataset` SET `rate` = '95' WHERE `dataset`.`Resid` = 220;
UPDATE `dataset` SET `rate` = '120' WHERE `dataset`.`Resid` = 294;
UPDATE `dataset` SET `rate` = '75' WHERE `dataset`.`Resid` = 305;
UPDATE `dataset` SET `rate` = '100' WHERE `dataset`.`Resid` = 329;
UPDATE `dataset` SET pname="1l milk" WHERE pname="milk";
UPDATE `dataset` SET `rate` = '72' WHERE `dataset`.`Resid` = 100;
UPDATE `dataset` SET `rate` = '99' WHERE `dataset`.`Resid` = 135;
UPDATE `dataset` SET `rate` = '59' WHERE `dataset`.`Resid` = 230;
UPDATE `dataset` SET `rate` = '65' WHERE `dataset`.`Resid` = 333;
UPDATE `dataset` SET pname="1l detergent" WHERE pname="laundry detergent";
UPDATE `dataset` SET `rate` = '200' WHERE `dataset`.`Resid` = 30;
UPDATE `dataset` SET `rate` = '170' WHERE `dataset`.`Resid` = 117;
UPDATE `dataset` SET `rate` = '230' WHERE `dataset`.`Resid` = 250;
UPDATE `dataset` SET `rate` = '300' WHERE `dataset`.`Resid` = 265;
UPDATE `dataset` SET `rate` = '350' WHERE `dataset`.`Resid` = 291;
UPDATE `dataset` SET `rate` = '210' WHERE `dataset`.`Resid` = 348;
UPDATE `dataset` SET pname="1l dishwashing liquid" WHERE pname="dishwashing liquid/detergent";
UPDATE `dataset` SET `rate` = '200' WHERE `dataset`.`Resid` = 31;
UPDATE `dataset` SET `rate` = '150' WHERE `dataset`.`Resid` = 114;
UPDATE `dataset` SET `rate` = '210' WHERE `dataset`.`Resid` = 143;
UPDATE `dataset` SET `rate` = '230' WHERE `dataset`.`Resid` = 173;
UPDATE `dataset` SET `rate` = '180' WHERE `dataset`.`Resid` = 181;
UPDATE `dataset` SET `rate` = '160' WHERE `dataset`.`Resid` = 189;
UPDATE `dataset` SET `rate` = '193' WHERE `dataset`.`Resid` = 201;
UPDATE `dataset` SET `rate` = '240' WHERE `dataset`.`Resid` = 212;
UPDATE `dataset` SET `rate` = '170' WHERE `dataset`.`Resid` = 228;
UPDATE `dataset` SET `rate` = '140' WHERE `dataset`.`Resid` = 326;
UPDATE `dataset` SET pname="1 mini meal" WHERE pname="individual meals";
UPDATE `dataset` SET `rate` = '60' WHERE `dataset`.`Resid` = 33;
UPDATE `dataset` SET `rate` = '90' WHERE `dataset`.`Resid` = 136;
UPDATE `dataset` SET `rate` = '75' WHERE `dataset`.`Resid` = 216;
UPDATE `dataset` SET `rate` = '100' WHERE `dataset`.`Resid` = 266;
UPDATE `dataset` SET `rate` = '120' WHERE `dataset`.`Resid` = 286;
UPDATE `dataset` SET `rate` = '105' WHERE `dataset`.`Resid` = 296;
UPDATE `dataset` SET `rate` = '70' WHERE `dataset`.`Resid` = 336;
UPDATE `dataset` SET `rate` = '130' WHERE `dataset`.`Resid` = 341;
UPDATE `dataset` SET pname="100g breakfast cereal" WHERE pname="cereals";
UPDATE `dataset` SET `rate` = '60' WHERE `dataset`.`Resid` = 75;
UPDATE `dataset` SET `rate` = '88' WHERE `dataset`.`Resid` = 322;
UPDATE `dataset` SET `rate` = '100' WHERE `dataset`.`Resid` = 338;
UPDATE `dataset` SET pname="300g tortillas" WHERE pname="tortillas";
UPDATE `dataset` SET `rate` = '140' WHERE `dataset`.`Resid` = 42;
UPDATE `dataset` SET `rate` = '190' WHERE `dataset`.`Resid` = 83;
UPDATE `dataset` SET `rate` = '119' WHERE `dataset`.`Resid` = 138;
UPDATE `dataset` SET `rate` = '130' WHERE `dataset`.`Resid` = 183;
UPDATE `dataset` SET `rate` = '125' WHERE `dataset`.`Resid` = 184;
UPDATE `dataset` SET `rate` = '174' WHERE `dataset`.`Resid` = 240;
UPDATE `dataset` SET `rate` = '180' WHERE `dataset`.`Resid` = 313;
UPDATE `dataset` SET image="handwash.jpg" WHERE pname="1l Hand Wash";
UPDATE `dataset` SET image="tea.jpg" WHERE pname="1kg tea";
UPDATE `dataset` SET pname="200ml spaghetti sauce" WHERE pname="spaghetti sauce";
UPDATE `dataset` SET `rate` = '79' WHERE `dataset`.`Resid` = 61;
UPDATE `dataset` SET `rate` = '95' WHERE `dataset`.`Resid` = 98;
UPDATE `dataset` SET `rate` = '100' WHERE `dataset`.`Resid` = 157;
UPDATE `dataset` SET `rate` = '70' WHERE `dataset`.`Resid` = 258;
UPDATE `dataset` SET `rate` = '100' WHERE `dataset`.`Resid` = 314;
UPDATE `dataset` SET pname="200ml ketchup" WHERE pname="ketchup";
UPDATE `dataset` SET `rate` = '39' WHERE `dataset`.`Resid` = 53;
UPDATE `dataset` SET `rate` = '50' WHERE `dataset`.`Resid` = 133;
UPDATE `dataset` SET `rate` = '69' WHERE `dataset`.`Resid` = 147;
UPDATE `dataset` SET `rate` = '88' WHERE `dataset`.`Resid` = 225;
UPDATE `dataset` SET `rate` = '60' WHERE `dataset`.`Resid` = 232;
UPDATE `dataset` SET `rate` = '90' WHERE `dataset`.`Resid` = 288;
UPDATE `dataset` SET pname="2 sandwich loaves" WHERE pname="sandwich loaves";
UPDATE `dataset` SET `rate` = '70' WHERE `dataset`.`Resid` = 81;
UPDATE `dataset` SET `rate` = '100' WHERE `dataset`.`Resid` = 219;
UPDATE `dataset` SET `rate` = '85' WHERE `dataset`.`Resid` = 233;
UPDATE `dataset` SET `rate` = '75' WHERE `dataset`.`Resid` = 279;
UPDATE `dataset` SET `rate` = '80' WHERE `dataset`.`Resid` = 293;
UPDATE `dataset` SET `rate` = '72' WHERE `dataset`.`Resid` = 312;
UPDATE `dataset` SET `rate` = '60' WHERE `dataset`.`Resid` = 339;
UPDATE `dataset` SET place="Souchii Mart" WHERE place="Souchii";
UPDATE `dataset` SET pname="1kg chicken" WHERE pname="poultry";
UPDATE `dataset` SET `rate` = '90' WHERE `dataset`.`Resid` = 94;
UPDATE `dataset` SET `rate` = '100' WHERE `dataset`.`Resid` = 128;
UPDATE `dataset` SET `rate` = '120' WHERE `dataset`.`Resid` = 166;
UPDATE `dataset` SET `rate` = '86' WHERE `dataset`.`Resid` = 170;
UPDATE `dataset` SET `rate` = '70' WHERE `dataset`.`Resid` = 192;
UPDATE `dataset` SET `rate` = '110' WHERE `dataset`.`Resid` = 226;
UPDATE `dataset` SET pname="5 bagels" WHERE pname="bagels";
UPDATE `dataset` SET `rate` = '58' WHERE `dataset`.`Resid` = 120;
UPDATE `dataset` SET `rate` = '80' WHERE `dataset`.`Resid` = 129;
UPDATE `dataset` SET `rate` = '88' WHERE `dataset`.`Resid` = 197;
UPDATE `dataset` SET `rate` = '50' WHERE `dataset`.`Resid` = 235;
UPDATE `dataset` SET `rate` = '100' WHERE `dataset`.`Resid` = 211;
UPDATE `dataset` SET `rate` = '95' WHERE `dataset`.`Resid` = 246;
UPDATE `dataset` SET `rate` = '75' WHERE `dataset`.`Resid` = 248;
UPDATE `dataset` SET `rate` = '98' WHERE `dataset`.`Resid` = 274;
UPDATE `dataset` SET `rate` = '110' WHERE `dataset`.`Resid` = 344;
UPDATE `dataset` SET pname="6 eggs" WHERE pname="eggs";
UPDATE `dataset` SET `rate` = '70' WHERE `dataset`.`Resid` = 95;
UPDATE `dataset` SET `rate` = '31' WHERE `dataset`.`Resid` = 110;
UPDATE `dataset` SET `rate` = '60' WHERE `dataset`.`Resid` = 156;
UPDATE `dataset` SET `rate` = '100' WHERE `dataset`.`Resid` = 182;
UPDATE `dataset` SET `rate` = '90' WHERE `dataset`.`Resid` = 213;
UPDATE `dataset` SET pname="1l juice" WHERE pname="juice";
UPDATE `dataset` SET `rate` = '199' WHERE `dataset`.`Resid` = 76;
UPDATE `dataset` SET `rate` = '148' WHERE `dataset`.`Resid` = 142;
UPDATE `dataset` SET `rate` = '90' WHERE `dataset`.`Resid` = 161;
UPDATE `dataset` SET `rate` = '126' WHERE `dataset`.`Resid` = 245;
UPDATE `dataset` SET `rate` = '80' WHERE `dataset`.`Resid` = 276;
UPDATE `dataset` SET `rate` = '165' WHERE `dataset`.`Resid` = 308;
UPDATE `dataset` SET `rate` = '135' WHERE `dataset`.`Resid` = 319;
UPDATE `dataset` SET `rate` = '85' WHERE `dataset`.`Resid` = 353;
UPDATE `dataset` SET pname="500g pasta" WHERE pname="pasta";
UPDATE `dataset` SET `rate` = '154' WHERE `dataset`.`Resid` = 82;
UPDATE `dataset` SET `rate` = '100' WHERE `dataset`.`Resid` = 126;
UPDATE `dataset` SET `rate` = '120' WHERE `dataset`.`Resid` = 146;
UPDATE `dataset` SET `rate` = '144' WHERE `dataset`.`Resid` = 218;
UPDATE `dataset` SET `rate` = '159' WHERE `dataset`.`Resid` = 244;
UPDATE `dataset` SET `rate` = '110' WHERE `dataset`.`Resid` = 324;
UPDATE `dataset` SET `rate` = '135' WHERE `dataset`.`Resid` = 335;
UPDATE `dataset` SET pname="1 roll paper towels" WHERE pname="paper towels";
UPDATE `dataset` SET `rate` = '50' WHERE `dataset`.`Resid` = 137;
UPDATE `dataset` SET `rate` = '92' WHERE `dataset`.`Resid` = 162;
UPDATE `dataset` SET `rate` = '100' WHERE `dataset`.`Resid` = 299;
UPDATE `dataset` SET `rate` = '85' WHERE `dataset`.`Resid` = 306;
UPDATE `dataset` SET `rate` = '75' WHERE `dataset`.`Resid` = 307;
UPDATE `dataset` SET `rate` = '105' WHERE `dataset`.`Resid` = 321;
UPDATE `dataset` SET pname="100g coffee" WHERE pname="coffee/tea";
UPDATE `dataset` SET `rate` = '150' WHERE `dataset`.`Resid` = 127;
UPDATE `dataset` SET `rate` = '200' WHERE `dataset`.`Resid` = 171;
UPDATE `dataset` SET `rate` = '175' WHERE `dataset`.`Resid` = 175;
UPDATE `dataset` SET `rate` = '190' WHERE `dataset`.`Resid` = 200;
UPDATE `dataset` SET `rate` = '220' WHERE `dataset`.`Resid` = 229;
UPDATE `dataset` SET `rate` = '180' WHERE `dataset`.`Resid` = 346;
UPDATE `dataset` SET `rate` = '210' WHERE `dataset`.`Resid` = 349;
UPDATE `dataset` SET pname="1kg fruits" WHERE pname="fruits";
UPDATE `dataset` SET `rate` = '240' WHERE `dataset`.`Resid` = 158;
UPDATE `dataset` SET `rate` = '220' WHERE `dataset`.`Resid` = 186;
UPDATE `dataset` SET `rate` = '310' WHERE `dataset`.`Resid` = 284;
UPDATE `dataset` SET `rate` = '300' WHERE `dataset`.`Resid` = 310;
UPDATE `dataset` SET pname="1kg vegetables" WHERE pname="200g vegetables";
UPDATE `dataset` SET `rate` = '200' WHERE `dataset`.`Resid` = 9;
UPDATE `dataset` SET `rate` = '90' WHERE `dataset`.`Resid` = 25;
UPDATE `dataset` SET `rate` = '150' WHERE `dataset`.`Resid` = 35;
UPDATE `dataset` SET `rate` = '170' WHERE `dataset`.`Resid` = 40;
UPDATE `dataset` SET `rate` = '100' WHERE `dataset`.`Resid` = 59;
UPDATE `dataset` SET `rate` = '187' WHERE `dataset`.`Resid` = 70;
UPDATE `dataset` SET `rate` = '185' WHERE `dataset`.`Resid` = 73;
UPDATE `dataset` SET `rate` = '158' WHERE `dataset`.`Resid` = 74;
UPDATE `dataset` SET `rate` = '110' WHERE `dataset`.`Resid` = 87;
UPDATE `dataset` SET `rate` = '180' WHERE `dataset`.`Resid` = 88;
UPDATE `dataset` SET `rate` = '159' WHERE `dataset`.`Resid` = 90;
UPDATE `dataset` SET `rate` = '140' WHERE `dataset`.`Resid` = 99;
UPDATE `dataset` SET `rate` = '190' WHERE `dataset`.`Resid` = 103;
UPDATE `dataset` SET `rate` = '95' WHERE `dataset`.`Resid` = 168;
UPDATE `dataset` SET `rate` = '125' WHERE `dataset`.`Resid` = 185;
UPDATE `dataset` SET `rate` = '149' WHERE `dataset`.`Resid` = 221;
UPDATE `dataset` SET `rate` = '130' WHERE `dataset`.`Resid` = 223;
UPDATE `dataset` SET `rate` = '145' WHERE `dataset`.`Resid` = 224;
UPDATE `dataset` SET `rate` = '120' WHERE `dataset`.`Resid` = 247;
UPDATE `dataset` SET pname="1kg sugar" WHERE pname="sugar";
UPDATE `dataset` SET `rate` = '50' WHERE `dataset`.`Resid` = 187;
UPDATE `dataset` SET `rate` = '60' WHERE `dataset`.`Resid` = 214;
UPDATE `dataset` SET `rate` = '70' WHERE `dataset`.`Resid` = 252;
UPDATE `dataset` SET `rate` = '35' WHERE `dataset`.`Resid` = 281;
UPDATE `dataset` SET pname="500g meat" WHERE pname="100g meat";
UPDATE `dataset` SET `pname` = '1kg sugar' WHERE `dataset`.`Resid` = 145;
UPDATE `dataset` SET `image` = 'sugar.jpg' WHERE `dataset`.`Resid` = 145;
UPDATE `dataset` SET `pname` = '6 eggs' WHERE `dataset`.`Resid` = 78;
UPDATE `dataset` SET `image` = 'eggs.jpg' WHERE `dataset`.`Resid` = 78;
UPDATE `dataset` SET `pname` = '500g pasta' WHERE `dataset`.`Resid` = 221;
UPDATE `dataset` SET `image` = 'pasta.jpg' WHERE `dataset`.`Resid` = 221;
UPDATE `dataset` SET `pname` = '100g breakfast cereal' WHERE `dataset`.`Resid` = 294;
UPDATE `dataset` SET `image` = 'cereals.jpg' WHERE `dataset`.`Resid` = 294;
UPDATE `dataset` SET `pname` = '100g coffee' WHERE `dataset`.`Resid` = 224;
UPDATE `dataset` SET `image` = 'coffee-tea.jpg' WHERE `dataset`.`Resid` = 224;
UPDATE `dataset` SET `pname` = '1 roll paper towels' WHERE `dataset`.`Resid` = 153;
UPDATE `dataset` SET `image` = 'paper towels.jpg' WHERE `dataset`.`Resid` = 153;
DELETE FROM `shop` WHERE sname="praba";
UPDATE `dataset` SET `pname` = '1l Hand Wash' WHERE `dataset`.`Resid` = 303;
UPDATE `dataset` SET `image` = 'handwash.jpg' WHERE `dataset`.`Resid` = 303;
UPDATE `dataset` SET `pname` = '100g butter' WHERE `dataset`.`Resid` = 25;
UPDATE `dataset` SET `image` = 'butter.jpg' WHERE `dataset`.`Resid` = 25;
UPDATE `dataset` SET `pname` = '10 aluminium foils' WHERE `dataset`.`Resid` = 97;
UPDATE `dataset` SET `image` = 'aluminum foil.jpg' WHERE `dataset`.`Resid` = 97;
UPDATE `dataset` SET `pname` = '500ml ice cream' WHERE `dataset`.`Resid` = 31;
UPDATE `dataset` SET `image` = 'ice cream.jpg' WHERE `dataset`.`Resid` = 31;
UPDATE `dataset` SET `image` = 'coffee-tea.jpg' WHERE `dataset`.`Resid` = 175;
UPDATE `dataset` SET `pname` = '1kg fruits' WHERE `dataset`.`Resid` = 108;
UPDATE `dataset` SET `image` = 'fruits.jpg' WHERE `dataset`.`Resid` = 108;
UPDATE `dataset` SET `pname` = '1kg wheat flour' WHERE `dataset`.`Resid` = 38;
UPDATE `dataset` SET `image` = 'all- purpose.jpg' WHERE `dataset`.`Resid` = 38;
UPDATE `dataset` SET `pname` = '1 mini meal' WHERE `dataset`.`Resid` = 184;
UPDATE `dataset` SET `image` = 'individual meals.jpg' WHERE `dataset`.`Resid` = 184;
UPDATE `dataset` SET `image` = 'dishwashing liquid.jpg' WHERE `dataset`.`Resid` = 189;
UPDATE `dataset` SET `pname` = '1kg wheat flour' WHERE `dataset`.`Resid` = 331;
UPDATE `dataset` SET `image` = 'all- purpose.jpg' WHERE `dataset`.`Resid` = 331;
UPDATE `dataset` SET `pname` = '1l shampoo' WHERE `dataset`.`Resid` = 188;
UPDATE `dataset` SET `image` = 'shampoo.jpg' WHERE `dataset`.`Resid` = 188;
UPDATE `dataset` SET `pname` = '200g vegetables' WHERE `dataset`.`Resid` = 195;
UPDATE `dataset` SET `image` = 'vegetables.jpg' WHERE `dataset`.`Resid` = 195;
UPDATE `dataset` SET `pname` = '300g tortillas' WHERE `dataset`.`Resid` = 334;
UPDATE `dataset` SET `image` = 'tortillas.jpg' WHERE `dataset`.`Resid` = 334;
UPDATE `dataset` SET `pname` = '2 sandwich loaves' WHERE `dataset`.`Resid` = 132;
UPDATE `dataset` SET `image` = 'sandwich loaves.jpg' WHERE `dataset`.`Resid` = 132;
UPDATE `dataset` SET `pname` = '1kg tea' WHERE `dataset`.`Resid` = 277;
UPDATE `dataset` SET `image` = 'tea.jpg' WHERE `dataset`.`Resid` = 277;
UPDATE `dataset` SET `pname` = '5 bagels' WHERE `dataset`.`Resid` = 279;
UPDATE `dataset` SET `image` = 'bagels.jpg' WHERE `dataset`.`Resid` = 279;
UPDATE `dataset` SET `pname` = '100g coffee' WHERE `dataset`.`Resid` = 70;
UPDATE `dataset` SET `image` = 'coffee-tea.jpg' WHERE `dataset`.`Resid` = 70;
DROP TABLE `minres` ;
ALTER TABLE `dataset` DROP COLUMN ratelevel;
DELETE FROM `minshop` WHERE id=1;