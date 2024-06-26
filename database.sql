/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 10.1.48-MariaDB : Database - a112214485
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`a112214485` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `a112214485`;

/*Table structure for table `Barang` */

DROP TABLE IF EXISTS `Barang`;

CREATE TABLE `Barang` (
  `Kd_brg` varchar(4) NOT NULL,
  `Nm_brg` varchar(20) DEFAULT NULL,
  `Kd_sup` varchar(3) DEFAULT NULL,
  `Hrg_brg` int(11) DEFAULT NULL,
  PRIMARY KEY (`Kd_brg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `Barang` */

insert  into `Barang`(`Kd_brg`,`Nm_brg`,`Kd_sup`,`Hrg_brg`) values 
('A001','Tablet PC','001',2590),
('A003','Scanner','001',172),
('B002','Laser Printer','028',615),
('B004','Notebook','002',1610);

/*Table structure for table `Supplier` */

DROP TABLE IF EXISTS `Supplier`;

CREATE TABLE `Supplier` (
  `Kd_sup` varchar(3) NOT NULL,
  `Nm_sup` varchar(20) DEFAULT NULL,
  `Alamat` varchar(20) DEFAULT NULL,
  `Status` char(1) DEFAULT NULL,
  PRIMARY KEY (`Kd_sup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `Supplier` */

insert  into `Supplier`(`Kd_sup`,`Nm_sup`,`Alamat`,`Status`) values 
('001','PT Canon','Jakarta','1'),
('002','PT Asus','Bekasi','1'),
('011','PT Fujitsu','Surabaya','1'),
('028','PT HP','Bogor','2');

/*Table structure for table `Table_1` */

DROP TABLE IF EXISTS `Table_1`;

CREATE TABLE `Table_1` (
  `Student_ID` varchar(4) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `Table_1` */

insert  into `Table_1`(`Student_ID`,`Name`) values 
('1001','A'),
('1002','B'),
('1003','C'),
('1004','D');

/*Table structure for table `Table_2` */

DROP TABLE IF EXISTS `Table_2`;

CREATE TABLE `Table_2` (
  `Student_ID` varchar(4) NOT NULL,
  `Department` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `Table_2` */

insert  into `Table_2`(`Student_ID`,`Department`) values 
('1004','Mathematics'),
('1005','Mathematics'),
('1006','History'),
('1007','Physics'),
('1008','Computer Science');

/*Table structure for table `anggota` */

DROP TABLE IF EXISTS `anggota`;

CREATE TABLE `anggota` (
  `no_anggota` varchar(5) NOT NULL,
  `nama` varchar(15) DEFAULT NULL,
  `alamat` varchar(35) DEFAULT NULL,
  `telephon` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`no_anggota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `anggota` */

insert  into `anggota`(`no_anggota`,`nama`,`alamat`,`telephon`) values 
('08001','Andhika','Jl. Amarta no.1','08110010002'),
('08002','Bella','Jl. Bima no.14','08110010034'),
('08003','Candra','Jl. Citra no.3','08110016634');

/*Table structure for table `biaya` */

DROP TABLE IF EXISTS `biaya`;

CREATE TABLE `biaya` (
  `modul` varchar(15) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `biaya` */

insert  into `biaya`(`modul`,`biaya`) values 
('VB.Net',250000),
('Prolog',100000),
('Delphi 6',150000);

/*Table structure for table `buku` */

DROP TABLE IF EXISTS `buku`;

CREATE TABLE `buku` (
  `ID` char(3) DEFAULT NULL,
  `Judul` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `buku` */

insert  into `buku`(`ID`,`Judul`) values 
('B01','Dilan 1990'),
('B02','Laskar Pelangi'),
('B03','Ayat-Ayat Cinta'),
('B04','Pengantas Basis Data'),
('B05','Big Data for Dummies');

/*Table structure for table `buku2` */

DROP TABLE IF EXISTS `buku2`;

CREATE TABLE `buku2` (
  `kode_buku` varchar(4) NOT NULL,
  `judul_buku` varchar(50) DEFAULT NULL,
  `jenis` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`kode_buku`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `buku2` */

insert  into `buku2`(`kode_buku`,`judul_buku`,`jenis`) values 
('F002','Panglima Pamungkas','Fiksi'),
('K003','Karateka Anak','Komik'),
('M001','Mentari Pagi','Majalah'),
('N001','Bandung Lautan Api','Non Fiksi');

/*Table structure for table `ci4_migrations` */

DROP TABLE IF EXISTS `ci4_migrations`;

CREATE TABLE `ci4_migrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `ci4_migrations` */

insert  into `ci4_migrations`(`id`,`version`,`class`,`group`,`namespace`,`time`,`batch`) values 
(1,'2024-05-22-041300','App\\Database\\Migrations\\User','default','App',1716351519,1),
(2,'2024-05-22-041329','App\\Database\\Migrations\\Produk','default','App',1716351519,1),
(3,'2024-05-22-041344','App\\Database\\Migrations\\Transaction','default','App',1716351520,1),
(4,'2024-05-22-041348','App\\Database\\Migrations\\TransactionDetail','default','App',1716351520,1);

/*Table structure for table `ci4_product` */

DROP TABLE IF EXISTS `ci4_product`;

CREATE TABLE `ci4_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `jumlah` int(5) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `ci4_product` */

insert  into `ci4_product`(`id`,`nama`,`harga`,`jumlah`,`foto`,`created_at`,`updated_at`) values 
(1,'ASUS TUF A15 FA506NF',10899000,5,'asus_tuf_a15.jpg','2024-05-22 04:23:40',NULL),
(2,'Asus Vivobook 14 A1404ZA',6899000,7,'asus_vivobook_14.jpg','2024-05-22 04:23:40',NULL),
(3,'Lenovo IdeaPad Slim 3-14IAU7',6299000,5,'lenovo_idepad_slim_3.jpg','2024-05-22 04:23:40',NULL);

/*Table structure for table `ci4_transaction` */

DROP TABLE IF EXISTS `ci4_transaction`;

CREATE TABLE `ci4_transaction` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `total_harga` double NOT NULL,
  `alamat` text NOT NULL,
  `ongkir` double DEFAULT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ci4_transaction` */

/*Table structure for table `ci4_transaction_detail` */

DROP TABLE IF EXISTS `ci4_transaction_detail`;

CREATE TABLE `ci4_transaction_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) unsigned NOT NULL,
  `product_id` int(11) unsigned NOT NULL,
  `jumlah` int(5) NOT NULL,
  `diskon` double DEFAULT NULL,
  `subtotal_harga` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ci4_transaction_detail` */

/*Table structure for table `ci4_user` */

DROP TABLE IF EXISTS `ci4_user`;

CREATE TABLE `ci4_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

/*Data for the table `ci4_user` */

insert  into `ci4_user`(`id`,`username`,`email`,`password`,`role`,`created_at`,`updated_at`) values 
(1,'rahmawati.luwes','damanik.umaya@thamrin.in','$2y$10$RD0/NU968MSPh4oULVkl/.7xNBIwGg1Qno//HDN.ozx4ZnwJA926e','guest','2024-05-22 04:24:22',NULL),
(2,'ifa50','lsaragih@fujiati.biz.id','$2y$10$3r8Ic5O/NUUpAWVKJwW5J.cGBWtPisdr/.eT5zR4ENYX7HGdRW.mm','guest','2024-05-22 04:24:22',NULL),
(3,'ayolanda','surya.sudiati@waluyo.asia','$2y$10$HG.Sb0Pmazci4qjisu5VBOnaYQwvVSByW9cF7/vpIycO1urDcc1w2','guest','2024-05-22 04:24:23',NULL),
(4,'jhariyah','imam.prakasa@gmail.com','$2y$10$YYgD2WQhVBUlQb9EWYlji.NToodcpoaw.SpoAl.TROpguvfaU6rwa','guest','2024-05-22 04:24:23',NULL),
(5,'bajragin.pratama','hastuti@puspita.mil.id','$2y$10$w47cu.dRLAktBtlIdbErFeKqCxqlXJ740tj4JZV1XscPAs2MO5HLG','admin','2024-05-22 04:24:23',NULL),
(6,'simbolon.nabila','fpuspita@gmail.com','$2y$10$WiRWDkp96GhN6VOWOeja1eTCOTL3Cg.jr.5OgMgQdvIJWZftn0FUC','guest','2024-05-22 04:24:23',NULL),
(7,'hfirgantoro','talia.nurdiyanti@gmail.com','$2y$10$o65AiTP2FSZzY.fJSBwL9O8ntev.y.ZQoa9kpgIsNYtpWyRxdj1Km','admin','2024-05-22 04:24:23',NULL),
(8,'twibowo','zaenab62@hasanah.go.id','$2y$10$xsJ./OZcYOHvGFXc1uMEqe70EmVI4brQRfCEw89.tdt01e1hl3Jae','guest','2024-05-22 04:24:23',NULL),
(9,'eka19','aryani.imam@yahoo.co.id','$2y$10$0/UNoRcHARzbiomAg2HbeeI1ItiBjwiM1eO5TE5AeruuMg0pZ98le','admin','2024-05-22 04:24:23',NULL),
(10,'namaga.siska','utama.salwa@gmail.co.id','$2y$10$0E21gxGAjPWksRp8NUYIc.khDsxZo/o7Bk6W.Geb6lub10/jQSq3K','guest','2024-05-22 04:24:23',NULL),
(11,'septi27','iyulianti@gmail.com','$2y$10$cyCVjlSiAj1m8VWBd42LROq6uI1FJNaaCPJcnmtF.2R22k3BeCtG6','admin','2024-05-22 04:28:15',NULL),
(12,'chelsea.natsir','csiregar@gmail.co.id','$2y$10$jdIeFXr9.R5lvYJPaUkbguAFSbjVhU9YdToLJczOLMziJ/8AaBQPe','admin','2024-05-22 04:28:15',NULL),
(13,'wibowo.ilsa','anita44@aryani.mil.id','$2y$10$PuiEiDjYwYoz1GuO/dg/8.c8lJI0U2rIHv8ufr5XrAaSaBetwm5sq','guest','2024-05-22 04:28:15',NULL),
(14,'gangsa77','widiastuti.zulfa@yahoo.com','$2y$10$LCOPdKH/M8zYRfnqCWhpEOcLdHvJqy6xzS3mosPRNA1BtTJb82CNW','guest','2024-05-22 04:28:15',NULL),
(15,'capa49','hsitorus@budiyanto.tv','$2y$10$0qAiwLXslwhHf55GIY/3IuTysY86O4SNwNjRshPQW6qZ2LAeIH/YG','admin','2024-05-22 04:28:15',NULL),
(16,'sitompul.saiful','kayla.rahimah@yahoo.com','$2y$10$urUMbacScRBbenhGzVFEgu3cOlD2QIR6fkmSzops65MpSsoZRLpYW','guest','2024-05-22 04:28:15',NULL),
(17,'yulia.purwanti','sirait.warsita@zulkarnain.my.id','$2y$10$7AI9ztgtBrsY1bXRazRFFuKfwat4iXBRVvQ4YOOx6KThpuTxT4NjS','guest','2024-05-22 04:28:16',NULL),
(18,'imegantara','anovitasari@yahoo.com','$2y$10$eCxETn1FTGcD8bgw/AmKZuLVGofAzTXpur8xwigvqgwQ2oGxgpt0a','admin','2024-05-22 04:28:16',NULL),
(19,'astuti.laswi','prahayu@yahoo.com','$2y$10$G4fxt3Yz7XResfbd0HuCQOUTUkTemIku.zZKere2iLWG0uiyY.L5O','guest','2024-05-22 04:28:16',NULL),
(20,'nrima.nainggolan','firmansyah.balidin@palastri.com','$2y$10$6FHPEFUIXpnuG5zNSuTit.G2E8tTV/3k8u.xhWGkd4urCMjxq8zYm','admin','2024-05-22 04:28:16',NULL),
(21,'bsaputra','vinsen.laksmiwati@gmail.co.id','$2y$10$y0ftMOPLv5eXTMBHSBkLr.tLNE2vIl9uY8BPUpcJMgBR2Zzk1Dy0m','guest','2024-05-22 04:28:26',NULL),
(22,'padma79','permata.rahmi@yahoo.co.id','$2y$10$OgurYgVkAu07.Jvy9pUuQuLoaZELFYDwzSkXnZPF4n8IMcZ1n/Y2y','admin','2024-05-22 04:28:26',NULL),
(23,'baktiono73','lurhur62@adriansyah.id','$2y$10$Es0lWFljmJpmbopYZzY6dOBmlmmYYwRbwu16qCzn/sQJhFdm7N4bi','admin','2024-05-22 04:28:26',NULL),
(24,'warta37','zalindra.prastuti@yahoo.com','$2y$10$HbqxbBE6PiRLSiQLrVrdmOY1BT6/mu0O3AvERdI8GhmYl/70HOBXa','guest','2024-05-22 04:28:26',NULL),
(25,'kasiran.lestari','lagustina@hutagalung.id','$2y$10$OG3KwWT.wDYEza1xyo70lu06GhB7ZuI.EWGht2aJEl4OJll2ChygW','guest','2024-05-22 04:28:26',NULL),
(26,'tkusumo','andriani.atmaja@gmail.com','$2y$10$SL1mYQE98wrAuX.wZ4ZjPeEoEcUN5SLy9oraKXILN5FHL8iuerFuK','admin','2024-05-22 04:28:27',NULL),
(27,'chelsea99','zulaika.putri@gmail.com','$2y$10$PPqpYi7PcvcU1TvDYqaH7eOkq2e5Xd8k4XoCk9gnxsfD29U7GX7HO','admin','2024-05-22 04:28:27',NULL),
(28,'utama.soleh','maida.hassanah@gmail.co.id','$2y$10$WXmtXe5nXVGHKjiSflCFjet13OZWvfWNxnoCDN0ypRTpvxmIo4Azi','guest','2024-05-22 04:28:27',NULL),
(29,'habibi.bakidin','hasanah.karta@rahmawati.web.id','$2y$10$CXebZ0V1oo.KBCAVsueSuu8rZJtyC9L5OwiZMIqnL7pYhbE95Sjc2','admin','2024-05-22 04:28:27',NULL),
(30,'widiastuti.galiono','lazuardi.darijan@gmail.com','$2y$10$G0db4k3cLbcRNb2wWRcFbe4PGtNB13yrCg4ZYGxoEGYl.xYOo8UG2','admin','2024-05-22 04:28:27',NULL),
(61,'Dziellan','','$2y$10$G0db4k3cLbcRNb2wWRcFbe4PGtNB13yrCg4ZYGxoEGYl.xYOo8UG2','admin',NULL,NULL);

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `dept_name` varchar(20) NOT NULL,
  `building` varchar(15) DEFAULT NULL,
  `budget` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `department` */

insert  into `department`(`dept_name`,`building`,`budget`) values 
('Ilmu Komputer','H1',1525000.90);

/*Table structure for table `dosen` */

DROP TABLE IF EXISTS `dosen`;

CREATE TABLE `dosen` (
  `kd_dos` char(5) NOT NULL,
  `nm_dos` varchar(20) NOT NULL,
  PRIMARY KEY (`kd_dos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dosen` */

insert  into `dosen`(`kd_dos`,`nm_dos`) values 
('D0001','Agung'),
('D0002','Budi'),
('D0003','Cahaya');

/*Table structure for table `film` */

DROP TABLE IF EXISTS `film`;

CREATE TABLE `film` (
  `ID` char(3) DEFAULT NULL,
  `Judul` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `film` */

insert  into `film`(`ID`,`Judul`) values 
('F01','Dilan 1990'),
('F02','Ayat-Ayat Cinta'),
('F03','Money Heist'),
('F04','Squid Game'),
('F05','Laskar Pelangi');

/*Table structure for table `jenis_buku` */

DROP TABLE IF EXISTS `jenis_buku`;

CREATE TABLE `jenis_buku` (
  `jenis` varchar(15) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jenis_buku` */

insert  into `jenis_buku`(`jenis`,`biaya`) values 
('Non Fiksi',3000),
('Fiksi',2500),
('Komik',2000),
('Majalah',3500);

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `id_kategori` char(3) NOT NULL,
  `jenis` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kategori` */

insert  into `kategori`(`id_kategori`,`jenis`) values 
('001','Handphone'),
('002','Laptop'),
('003','Tablet'),
('004','Kamera'),
('005','Gaming');

/*Table structure for table `kuliah` */

DROP TABLE IF EXISTS `kuliah`;

CREATE TABLE `kuliah` (
  `kd_kul` char(5) NOT NULL,
  `nm_kul` varchar(20) NOT NULL,
  `sks` int(1) NOT NULL,
  PRIMARY KEY (`kd_kul`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kuliah` */

insert  into `kuliah`(`kd_kul`,`nm_kul`,`sks`) values 
('K0001','Algoritma',3),
('K0002','Basis Data',4),
('K0003','Jaringan Komputer',3);

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`version`,`class`,`group`,`namespace`,`time`,`batch`) values 
(1,'2024-05-22-041300','App\\Database\\Migrations\\User','default','App',1716351299,1),
(2,'2024-05-22-041329','App\\Database\\Migrations\\Produk','default','App',1716351299,1),
(3,'2024-05-22-041344','App\\Database\\Migrations\\Transaction','default','App',1716351299,1),
(4,'2024-05-22-041348','App\\Database\\Migrations\\TransactionDetail','default','App',1716351300,1);

/*Table structure for table `nota` */

DROP TABLE IF EXISTS `nota`;

CREATE TABLE `nota` (
  `no_nota` varchar(7) NOT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `no_anggota` varchar(5) DEFAULT NULL,
  `jaminan` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`no_nota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `nota` */

insert  into `nota`(`no_nota`,`tanggal_pinjam`,`tanggal_kembali`,`no_anggota`,`jaminan`) values 
('0804001','2023-01-12','2023-03-12','08001','KTP'),
('0804002','2023-01-13','2023-03-14','08002','KTP'),
('0804003','2023-01-13','2023-03-14','08003','KTP');

/*Table structure for table `nota_detail` */

DROP TABLE IF EXISTS `nota_detail`;

CREATE TABLE `nota_detail` (
  `no_nota` varchar(7) DEFAULT NULL,
  `kode_buku` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `nota_detail` */

insert  into `nota_detail`(`no_nota`,`kode_buku`) values 
('0804001','N001'),
('0804001','F002'),
('0804001','K003'),
('0804001','M001'),
('0804002','F002'),
('0804002','K003'),
('0804002','M001'),
('0804003','K003'),
('0804003','M001');

/*Table structure for table `olshop` */

DROP TABLE IF EXISTS `olshop`;

CREATE TABLE `olshop` (
  `id_produk` varchar(5) NOT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `satuan` varchar(10) DEFAULT NULL,
  `harga_satuan` int(11) DEFAULT NULL,
  `id_penjual` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `olshop` */

insert  into `olshop`(`id_produk`,`nama`,`satuan`,`harga_satuan`,`id_penjual`) values 
('ATK01','Kertas Fotocopy A4 70gr','Rim',30000,'P0001'),
('COM01','Speaker N730','Buah',250000,'P0002'),
('MEB01','Rak 4 Pintu','Buah',200000,NULL);

/*Table structure for table `pelanggan` */

DROP TABLE IF EXISTS `pelanggan`;

CREATE TABLE `pelanggan` (
  `id` char(3) NOT NULL,
  `nama` varchar(10) DEFAULT NULL,
  `usia` int(11) DEFAULT NULL,
  `kota` varchar(15) DEFAULT NULL,
  `gaji` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pelanggan` */

insert  into `pelanggan`(`id`,`nama`,`usia`,`kota`,`gaji`) values 
('001','Nathan',35,'Surabaya',5000000),
('002','Andini',25,'Solo',9000000),
('003','Sita',23,'Bandung',8000000),
('004','Soni',25,'Bekasi',5000000),
('005','Dedi',27,'Palembang',6000000),
('006','Ega',22,'Semarang',5000000),
('007','Vika',24,'Pemalang',7000000),
('008','Galih',26,'Rembang',6500000);

/*Table structure for table `pengajaran` */

DROP TABLE IF EXISTS `pengajaran`;

CREATE TABLE `pengajaran` (
  `kd_kul` char(5) NOT NULL,
  `kd_dos` char(5) NOT NULL,
  `kd_rg` char(5) NOT NULL,
  `waktu` datetime DEFAULT NULL,
  PRIMARY KEY (`kd_kul`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pengajaran` */

insert  into `pengajaran`(`kd_kul`,`kd_dos`,`kd_rg`,`waktu`) values 
('K0001','D0001','D.2.B','2023-02-11 00:00:00'),
('K0002','D0003','D.2.A','2023-10-11 00:00:00'),
('K0003','D0002','D.2.C','2023-10-11 00:00:00');

/*Table structure for table `peserta` */

DROP TABLE IF EXISTS `peserta`;

CREATE TABLE `peserta` (
  `nim` varchar(13) NOT NULL,
  `modul` varchar(15) DEFAULT NULL,
  `grade` char(1) DEFAULT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `peserta` */

insert  into `peserta`(`nim`,`modul`,`grade`) values 
('P11.2004.0129','VB.Net','A'),
('P11.2004.0130','Prolog','A'),
('P11.2004.0131','Prolog','B'),
('P11.2004.0201','Delphi 6','A'),
('P11.2004.0250','VB.Net','B');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `jumlah` int(5) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `product` */

/*Table structure for table `produk` */

DROP TABLE IF EXISTS `produk`;

CREATE TABLE `produk` (
  `id_produk` char(3) DEFAULT NULL,
  `merk` varchar(20) DEFAULT NULL,
  `id_kategori` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `produk` */

insert  into `produk`(`id_produk`,`merk`,`id_kategori`) values 
('P01','Xiaomi','001'),
('P02','Samsung','001'),
('P03','Asus','002'),
('P04','Dell','002'),
('P05','Apple','003'),
('P06','Nikon','004'),
('P07','Playstation',NULL);

/*Table structure for table `ruangan` */

DROP TABLE IF EXISTS `ruangan`;

CREATE TABLE `ruangan` (
  `kd_rg` char(5) NOT NULL,
  `nm_rg` varchar(20) DEFAULT NULL,
  `kap` int(2) DEFAULT NULL,
  PRIMARY KEY (`kd_rg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ruangan` */

insert  into `ruangan`(`kd_rg`,`nm_rg`,`kap`) values 
('R0001','D.2.A',40),
('R0002','D.2.B',38),
('R0003','D.2.C',39);

/*Table structure for table `staf` */

DROP TABLE IF EXISTS `staf`;

CREATE TABLE `staf` (
  `nip` varchar(4) NOT NULL,
  `nama` varchar(15) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `posisi` varchar(15) DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `gaji` int(11) DEFAULT NULL,
  PRIMARY KEY (`nip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `staf` */

insert  into `staf`(`nip`,`nama`,`sex`,`posisi`,`tgl_masuk`,`gaji`) values 
('A001','Dani','L','Asisten','2014-02-01',3800000),
('M001','Slamet','L','Manajer','2004-01-01',7500000),
('S001','Siti','P','Supervisor','1997-07-10',7000000);

/*Table structure for table `transaction` */

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `total_harga` double NOT NULL,
  `alamat` text NOT NULL,
  `ongkir` double DEFAULT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `transaction` */

/*Table structure for table `transaction_detail` */

DROP TABLE IF EXISTS `transaction_detail`;

CREATE TABLE `transaction_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) unsigned NOT NULL,
  `product_id` int(11) unsigned NOT NULL,
  `jumlah` int(5) NOT NULL,
  `diskon` double DEFAULT NULL,
  `subtotal_harga` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `transaction_detail` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/* Procedure structure for procedure `panggil1` */

/*!50003 DROP PROCEDURE IF EXISTS  `panggil1` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`a112214485`@`%` PROCEDURE `panggil1`()
begin
select * from pelanggan;
end */$$
DELIMITER ;

/* Procedure structure for procedure `tambah1` */

/*!50003 DROP PROCEDURE IF EXISTS  `tambah1` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`a112214485`@`%` PROCEDURE `tambah1`(id char(3), nama varchar(10), usia int, kota varchar(15), gaji int)
begin
insert into pelanggan values(id, nama, usia, kota, gaji);
end */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
