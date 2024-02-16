/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.11-MariaDB : Database - coachoneself
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`coachoneself` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `coachoneself`;

/*Table structure for table `feedans` */

DROP TABLE IF EXISTS `feedans`;

CREATE TABLE `feedans` (
  `faid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(33) NOT NULL,
  `fid` varchar(33) NOT NULL,
  `ans` varchar(33) NOT NULL,
  PRIMARY KEY (`faid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedans` */

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(100) NOT NULL,
  `a` varchar(50) NOT NULL,
  `b` varchar(50) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`fid`,`question`,`a`,`b`) values 
(1,'Where you able to complete the session?','Yes','No');

/*Table structure for table `images` */

DROP TABLE IF EXISTS `images`;

CREATE TABLE `images` (
  `imid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `age` varchar(40) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `description` varchar(400) NOT NULL,
  `file` longblob NOT NULL,
  PRIMARY KEY (`imid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `images` */

insert  into `images`(`imid`,`name`,`age`,`gender`,`description`,`file`) values 
(1,'Women Self-defence','b','female','How to defend yourself when you are cornered.','download.png'),
(2,'Men Self-defence ','b','male','defend yourself using your knees.','images.jfif'),
(3,'boys self_defence','a','male','Vulnerable points to remember to defend yourself.','self-defence.jpg'),
(4,'girls self_defence','a','female','Karate moves','KFK-Blog_Diff-Karate-SelfDefence.jpg'),
(5,'Senior men Self-defence','c','male','Defend with Your walking stick.','Cane_fu.jpg'),
(6,'Senior Women Self-defence','c','female','defend with your walking stick','senior-self-defense.webp'),
(7,'boys self_defence','a','male','aa','download.png');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(22) NOT NULL,
  `uname` varchar(33) NOT NULL,
  `psw` varchar(33) NOT NULL,
  `type` varchar(33) NOT NULL,
  `age` varchar(44) NOT NULL,
  `gender` varchar(44) NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`lid`,`uid`,`uname`,`psw`,`type`,`age`,`gender`) values 
(1,'0','admin@gmail.com','admin@123','admin','0','0'),
(2,'1','meghna2002@gmail.com','meghna21','user','b','female'),
(5,'4','rachel78@gmail.com','rachel78','user','c','female');

/*Table structure for table `pdf` */

DROP TABLE IF EXISTS `pdf`;

CREATE TABLE `pdf` (
  `pdid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `age` varchar(40) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `description` varchar(400) NOT NULL,
  `file` longblob NOT NULL,
  PRIMARY KEY (`pdid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `pdf` */

insert  into `pdf`(`pdid`,`name`,`age`,`gender`,`description`,`file`) values 
(1,'Women Self-defence','b','female','Information about self defence','defend yourself1.pdf'),
(2,'Men Self-defence ','b','male','Information about self defence','defend yourself2.pdf'),
(4,'boys self_defence','a','male','Information of self-defence.','selfdefence.pdf');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(400) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `price` varchar(40) NOT NULL,
  `url` longblob NOT NULL,
  `img` longblob NOT NULL,
  `mprice` varchar(40) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`pid`,`pname`,`description`,`price`,`url`,`img`,`mprice`) values 
(1,'NSV Folding Push Button Pocket Knife','NSV Folding Pocket Knife Is Made of High quality Stainless Steel. With modern professional production and traditional technology, fine, appearance .It Features excellent Sharpness, its standing home and most useful in travelling stainless steel handle and frame lock design With torch, and it delivers the same positive blade engagement and balanced feel, even at this size. product worth each penny spent.','399','https://www.flipkart.com/nsv-folding-push-button-pocket-knife-hiking-camping-travelling-self-defence-knife-survival/p/itm934a9b4ec2c46?pid=KFTFVZXKAYDEZUNU&lid=LSTKFTFVZXKAYDEZUNUSX6PIA&marketplace=FLIPKART&q=self+defence&store=search.flipkart.com&srno=s_1_1&otracker=AS_Query_OrganicAutoSuggest_5_5_na_na_na&otracker1=AS_Query_OrganicAutoSuggest_5_5_na_na_na&fm=organic&iid=898c1923-a4b5-4e48-958e-df304bb43a54.KFTFVZXKAYDEZUNU.SEARCH&ppt=None&ppn=None&ssid=wjhsycktyo0000001628576873800&qH=1a9b9ff06ab00b90','set-of-2-folding-push-button-lock-knife-for-hiking-camping-original-imafwyvtat3nyqdz.jpeg','900'),
(2,'SECURE SHIELD Women Self Defence Pepper Spray for Safety','SECURE SHIELD Women Self Defence Pepper Spray for Safety/Protection Pepper Stream Spray','195','https://www.flipkart.com/secure-shield-women-self-defence-pepper-spray-safety-protection-stream/p/itm71f8724562435?pid=PSFFGAHHUSF8HS5U&lid=LSTPSFFGAHHUSF8HS5U06OKDJ&marketplace=FLIPKART&q=self+defence&store=search.flipkart.com&srno=s_1_11&otracker=AS_Query_OrganicAutoSuggest_5_5_na_na_na&otracker1=AS_Query_OrganicAutoSuggest_5_5_na_na_na&fm=organic&iid=9652cf2e-4b6e-42f5-ad3e-b6bfe08e3482.PSFFGAHHUSF8HS5U.SEARCH&ppt=sp&ppn=sp&ssid=eddfd4x7nk0000001628576945965&qH=1a9b9ff06ab00b90','Secure.jpeg','400'),
(3,'Self Defence For Women Pepper Stream Spray','Cone Spray for widest coverage to push away multiple attackers, Twist-type safety cap to avoid accidental discharge, Tested and certified by Govt. of India Recognised Industrial Research Lab, Shriram Institute of Industrial Research, New Delhi, for complete safety on human use','269','https://www.flipkart.com/knockout-punch-super-strong-self-defense-pepper-spray-safety-lock-key-ring-self-defence-women-stream/p/itmfhbqwfajywqxa?pid=PSFFH9KCFGHUCR9E&lid=LSTPSFFH9KCFGHUCR9E8YNVLN&marketplace=FLIPKART&q=self+defence&store=search.flipkart.com&srno=s_1_29&otracker=AS_Query_OrganicAutoSuggest_5_5_na_na_na&otracker1=AS_Query_OrganicAutoSuggest_5_5_na_na_na&fm=organic&iid=9652cf2e-4b6e-42f5-ad3e-b6bfe08e3482.PSFFH9KCFGHUCR9E.SEARCH&ppt=sp&ppn=sp&qH=1a9b9ff06ab00b90','knockout-original.jpeg','500'),
(4,'TrustShip Outdoor Self Defence','TrustShip Outdoor Self Defence Paracord Steel Ball Key Ring Key Chain  (Green)','450','https://www.flipkart.com/trustship-outdoor-self-defence-paracord-steel-ball-key-ring-chain/p/itm497024713e183?pid=CBRG23JGBTDFFCEG&lid=LSTCBRG23JGBTDFFCEGB1UVNA&marketplace=FLIPKART&q=self+defence&store=search.flipkart.com&srno=s_1_7&otracker=AS_Query_OrganicAutoSuggest_5_5_na_na_na&otracker1=AS_Query_OrganicAutoSuggest_5_5_na_na_na&fm=organic&iid=66c357b7-1350-41b6-bd88-61081c3f5fe7.CBRG23JGBTDFFCEG.SEARCH&ppt=None&ppn=None&ssid=lxkpfkxo4w0000001628579306673&qH=1a9b9ff06ab00b90','outdoor.jpeg','800'),
(5,'Pepper Stream Spray','CHEVALIER Ultra Strong Women Self Defence Pepper Spray for Safety/Protection, Compact Size with Clip | Max Protection - 45 shots | 55 ml Pepper Stream Spray','199','https://www.flipkart.com/chevalier-ultra-strong-women-self-defence-pepper-spray-safety-protection-compact-size-clip-max-protection-45-shots-55-ml-stream/p/itmfdkcnay4guffp?pid=PSFFDB9UGEN4XQZH&lid=LSTPSFFDB9UGEN4XQZHUWYV2E&marketplace=FLIPKART&q=self+defence&store=search.flipkart.com&srno=s_1_40&otracker=AS_Query_OrganicAutoSuggest_5_5_na_na_na&otracker1=AS_Query_OrganicAutoSuggest_5_5_na_na_na&fm=organic&iid=cb8e80b6-2c07-4dad-9f51-2caf6e65655e.PSFFDB9UGEN4XQZH.SEARCH&ppt=sp&ppn=sp&ssid=pvmf0p545c0000001628580580169&qH=1a9b9ff06ab00b90','pepper.jpeg','360'),
(8,'Healthgenie Self Defence','Healthgenie Self Defence, Protection & Safety Pepper Spray For Men & Women | 50 Shots, Upto 10 Feet Range | 55 mL / 35 gms of Dispensable | Pack of 2 Pepper Stream Spray','329','https://www.flipkart.com/healthgenie-self-defence-protection-safety-pepper-spray-men-women-50-shots-upto-10-feet-range-55-ml-35-gms-dispensable-pack-2-stream/p/itm7f23662592390?pid=PSFE7H864HTEGCVH&lid=LSTPSFE7H864HTEGCVHIDUM6K&marketplace=FLIPKART&q=self+defence&store=search.flipkart.com&srno=s_1_27&otracker=AS_Query_OrganicAutoSuggest_5_5_na_na_na&otracker1=AS_Query_OrganicAutoSuggest_5_5_na_na_na&fm=organic&iid=2d18af19-6b0b-4ba2-8ad2-e013f10f3ecb.PSFE7H864HTEGCVH.SEARCH&ppt=sp&ppn=sp&ssid=ketk45ffjk0000001628916831714&qH=1a9b9ff06ab00b90','abc.jpeg','998');

/*Table structure for table `questions` */

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(400) NOT NULL,
  `a` varchar(100) NOT NULL,
  `b` varchar(100) NOT NULL,
  `c` varchar(100) NOT NULL,
  `d` varchar(100) NOT NULL,
  `age` varchar(40) NOT NULL,
  `gender` varchar(40) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `questions` */

insert  into `questions`(`qid`,`question`,`a`,`b`,`c`,`d`,`age`,`gender`) values 
(1,'Do u like outdoor or indoor games ?','outdoor','indoor','I dont play any games','I play both games','a','male'),
(2,'Do u like outdoor or indoor games ?','outdoor','indoor','I dont play any games','I play both games','a','female'),
(3,'Are you physically active in daily basis?','yes','no','Sometimes','Never','b','male'),
(4,'Are you physically active in daily basis?','yes','no','Sometimes','Never','b','female'),
(5,'What kind of job have u done desktop or labor jobs?','Desktop job','labor job','Have worked both jobs','prefer not to say','b','male'),
(6,'What kind of job have u done desktop or labor jobs?','Desktop job','labor job','Have worked both jobs','prefer not to say','c','female'),
(7,'Do you exercise ?','daily','never','Sometimes','regularly','a','male'),
(8,'Do you exercise ?','daily','never','Sometimes','regularly','a','female'),
(9,'Do you exercise ?','daily','never','Sometimes','regularly','b','male'),
(10,'Do you exercise ?','daily','never','Sometimes','regularly','b','female'),
(11,'Do you exercise ?','daily','never','Sometimes','regularly','c','male'),
(12,'Do you exercise ?','daily','never','Sometimes','regularly','c','female'),
(13,'Choose your health status?','Underweight','Healthy','Overweight','obese','a','male'),
(14,'Choose your health status?','Underweight','Healthy','Overweight','obese','a','female'),
(15,'Choose your health status?','Underweight','Healthy','Overweight','obese','b','male'),
(16,'Choose your health status?','Underweight','Healthy','Overweight','obese','b','female'),
(17,'Choose your health status?','Underweight','Healthy','Overweight','obese','c','female'),
(19,'Do you eat healthy?','daily','never','Sometimes','I try to','b','female'),
(20,'demo','a','b','c','d','a','female');

/*Table structure for table `senddoc` */

DROP TABLE IF EXISTS `senddoc`;

CREATE TABLE `senddoc` (
  `sdid` int(11) NOT NULL AUTO_INCREMENT,
  `did` varchar(33) NOT NULL,
  `uid` varchar(33) NOT NULL,
  PRIMARY KEY (`sdid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `senddoc` */

insert  into `senddoc`(`sdid`,`did`,`uid`) values 
(1,'1','1');

/*Table structure for table `sendimg` */

DROP TABLE IF EXISTS `sendimg`;

CREATE TABLE `sendimg` (
  `smid` int(11) NOT NULL AUTO_INCREMENT,
  `imid` varchar(33) NOT NULL,
  `uid` varchar(44) NOT NULL,
  PRIMARY KEY (`smid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `sendimg` */

insert  into `sendimg`(`smid`,`imid`,`uid`) values 
(1,'1','1'),
(2,'1','3');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `address` varchar(400) NOT NULL,
  `age` varchar(40) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contact` varchar(40) NOT NULL,
  `aadhar` varchar(50) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`uid`,`name`,`address`,`age`,`gender`,`email`,`contact`,`aadhar`) values 
(1,'Meghna Raghu','th','23','female','meghna2002@gmail.com','9400842052','123456666666'),
(2,'Rohan Sharma','Mumbai','12','male','rohan123@gmail.com','7025200726','234556786900'),
(3,'Judith David','kochi','20','female','davidjudith2001@gmail.com','8592077654','235565893345'),
(4,'Rachel Williams','th','80','female','rachel78@gmail.com','6789127777','234517789001');

/*Table structure for table `userans` */

DROP TABLE IF EXISTS `userans`;

CREATE TABLE `userans` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `qid` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `uid` varchar(50) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `userans` */

insert  into `userans`(`aid`,`qid`,`ans`,`uid`) values 
(1,'4','Sometimes','1'),
(2,'10','Sometimes','1'),
(3,'16','Healthy','1'),
(4,'19','never','1'),
(5,'4','Sometimes','3'),
(6,'16','Healthy','3'),
(7,'10','Sometimes','3'),
(8,'19','never','3'),
(9,'6','Have worked both jobs','4'),
(10,'12','never','4'),
(11,'17','Healthy','4');

/*Table structure for table `uservideo` */

DROP TABLE IF EXISTS `uservideo`;

CREATE TABLE `uservideo` (
  `vsid` int(11) NOT NULL AUTO_INCREMENT,
  `vid` varchar(44) NOT NULL,
  `uid` varchar(44) NOT NULL,
  PRIMARY KEY (`vsid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `uservideo` */

insert  into `uservideo`(`vsid`,`vid`,`uid`) values 
(1,'1','1'),
(2,'5','4');

/*Table structure for table `video` */

DROP TABLE IF EXISTS `video`;

CREATE TABLE `video` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `age` varchar(40) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `description` varchar(400) NOT NULL,
  `file` longblob NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `video` */

insert  into `video`(`vid`,`name`,`age`,`gender`,`description`,`file`) values 
(1,'Women Self-defence','b','female','This video is to defend yourself when an attackers chokes you.','women_sd.mp4'),
(2,'Men Self-defence ','b','male','This video is to defend yourself with your hands when an attacker grabs your cloth.','men_sd.mp4'),
(3,'boys self_defence','a','male','How to defend yourself when someone attacks by holding your wrist.','boys_sd1.mp4'),
(4,'girls self_defence','a','female','how to defend yourself by locking your legs.','girls_sd1.mp4'),
(5,'Senior Women Self-defence','c','female','How to feel confident and Strong when you go out','sd_olderwomen.mp4'),
(6,'Senior men Self-defence','c','male','How to defend yourself with help of walking stick.','sd_oldermen.mp4');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
