-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 08, 2011 at 10:17 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `iklanmobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `IDCUSTOMER` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAMECUST` varchar(50) DEFAULT NULL,
  `PASSWORDCUST` varchar(50) DEFAULT NULL,
  `NAMACUST` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `ALAMATCUST` varchar(200) DEFAULT NULL,
  `KOTACUST` varchar(50) DEFAULT NULL,
  `NOTELP` varchar(15) DEFAULT NULL,
  `TGLJOIN` date DEFAULT NULL,
  `SALDO` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDCUSTOMER`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`IDCUSTOMER`, `USERNAMECUST`, `PASSWORDCUST`, `NAMACUST`, `email`, `ALAMATCUST`, `KOTACUST`, `NOTELP`, `TGLJOIN`, `SALDO`) VALUES
(1, 'jms1234', '04-07-90Jw', 'James Wijaya', 'jkit@gmail.com', 'Jl. manasaja No. 40', 'Surabaya', '081231221421', '2011-12-01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `iklan`
--

CREATE TABLE IF NOT EXISTS `iklan` (
  `IDIKLAN` int(11) NOT NULL AUTO_INCREMENT,
  `IDJENISKENDARAAN` int(11) NOT NULL,
  `IDPEMANSANGAN` int(11) NOT NULL,
  `IDCUSTOMER` int(11) NOT NULL,
  `JUDULIKLAN` varchar(150) DEFAULT NULL,
  `CONTACTPERSON` varchar(50) DEFAULT NULL,
  `NOTELEPON` varchar(15) DEFAULT NULL,
  `IDMERKMOBIL` int(11) NOT NULL,
  `TAHUN` varchar(4) NOT NULL,
  `location` varchar(500) DEFAULT NULL,
  `filename` varchar(500) NOT NULL,
  `HARGAJUALKENDARAAN` varchar(11) DEFAULT NULL,
  `DESKRIPSIIKLAN` text,
  `STATUSIKLAN` int(11) DEFAULT NULL,
  `TGLPASANG` date DEFAULT NULL,
  `LAMAPASANG` int(11) DEFAULT NULL,
  `HITVIEW` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDIKLAN`),
  KEY `FK_MEMASANG_IKLAN` (`IDCUSTOMER`),
  KEY `FK_MEMILIKI_JENIS` (`IDJENISKENDARAAN`),
  KEY `FK_PEMASANGAN_IKLAN` (`IDPEMANSANGAN`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `iklan`
--

INSERT INTO `iklan` (`IDIKLAN`, `IDJENISKENDARAAN`, `IDPEMANSANGAN`, `IDCUSTOMER`, `JUDULIKLAN`, `CONTACTPERSON`, `NOTELEPON`, `IDMERKMOBIL`, `TAHUN`, `location`, `filename`, `HARGAJUALKENDARAAN`, `DESKRIPSIIKLAN`, `STATUSIKLAN`, `TGLPASANG`, `LAMAPASANG`, `HITVIEW`) VALUES
(1, 1, 1, 1, 'Jual Mercy C Class', 'Steven R.', '08312312429412', 5, '2010', 'images/1.jpg', '1.jpg', '2000000', 'Dijual cepat butuh dana', 1, '2011-12-07', 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jeniskendaraan`
--

CREATE TABLE IF NOT EXISTS `jeniskendaraan` (
  `IDJENISKENDARAAN` int(11) NOT NULL AUTO_INCREMENT,
  `NAMAJENISKENDARAAN` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDJENISKENDARAAN`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `jeniskendaraan`
--

INSERT INTO `jeniskendaraan` (`IDJENISKENDARAAN`, `NAMAJENISKENDARAAN`) VALUES
(1, 'Sedan'),
(2, 'Jeep'),
(3, 'Pick Up'),
(4, 'Mini Bus'),
(5, 'Truck'),
(6, 'Bus'),
(7, 'SUV'),
(8, 'Limousine'),
(9, 'Sport Car');

-- --------------------------------------------------------

--
-- Table structure for table `komen`
--

CREATE TABLE IF NOT EXISTS `komen` (
  `IDKOMEN` int(11) NOT NULL AUTO_INCREMENT,
  `IDIKLAN` int(11) NOT NULL,
  `NAMAPENGKOMENTAR` varchar(50) DEFAULT NULL,
  `KOMENTAR` text,
  `STATUSKOMEN` int(11) DEFAULT NULL,
  `TGLKOMEN` date DEFAULT NULL,
  PRIMARY KEY (`IDKOMEN`),
  KEY `FK_MEMPUNYAI_KOMEN` (`IDIKLAN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `komen`
--


-- --------------------------------------------------------

--
-- Table structure for table `merkmobil`
--

CREATE TABLE IF NOT EXISTS `merkmobil` (
  `IDMERKMOBIL` int(11) NOT NULL AUTO_INCREMENT,
  `NAMAMERKMOBIL` varchar(50) NOT NULL,
  PRIMARY KEY (`IDMERKMOBIL`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `merkmobil`
--

INSERT INTO `merkmobil` (`IDMERKMOBIL`, `NAMAMERKMOBIL`) VALUES
(1, 'Alfa Romeo'),
(2, 'Aston Martin'),
(3, 'Audi'),
(4, 'Bentley'),
(5, 'BMW'),
(6, 'Chevrolet'),
(7, 'Chrysler'),
(8, 'Citroen'),
(9, 'Daihatsu'),
(10, 'Dodge'),
(11, 'Datsun'),
(12, 'Ferrari'),
(13, 'Fiar'),
(14, 'Ford'),
(15, 'Foton'),
(16, 'Gelly'),
(17, 'General Motors'),
(18, 'Volkswagen'),
(19, 'Hino'),
(20, 'Holden'),
(21, 'Honda'),
(22, 'Hummer'),
(23, 'Hyundai'),
(24, 'Infinity'),
(25, 'Isuzu'),
(26, 'Jaguar'),
(27, 'Jeep'),
(28, 'KIA'),
(29, 'Lamborghini'),
(30, 'Land Rover'),
(31, 'Lexus'),
(32, 'Lincoln'),
(33, 'Lotus'),
(34, 'Maserati'),
(35, 'Maybach'),
(36, 'Mazda'),
(37, 'Mercedes Benz'),
(38, 'Mini'),
(39, 'Mitsubishi'),
(40, 'Nissan'),
(41, 'Opel'),
(42, 'Peugeot'),
(43, 'Pontiac'),
(44, 'Porsche'),
(45, 'Proton'),
(46, 'Renault'),
(47, 'Rolls Royce'),
(48, 'Saab'),
(49, 'Smart'),
(50, 'SsangYong'),
(51, 'Suzuki'),
(52, 'Subaru'),
(53, 'Toyota'),
(54, 'Vauxhall'),
(55, 'Volvo');

-- --------------------------------------------------------

--
-- Table structure for table `pemansangan`
--

CREATE TABLE IF NOT EXISTS `pemansangan` (
  `IDPEMANSANGAN` int(11) NOT NULL AUTO_INCREMENT,
  `NAMAPEMASANGAN` varchar(20) DEFAULT NULL,
  `HARGAPEMASANGAN` int(11) DEFAULT NULL,
  `KUOTATERSEDIA` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDPEMANSANGAN`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pemansangan`
--

INSERT INTO `pemansangan` (`IDPEMANSANGAN`, `NAMAPEMASANGAN`, `HARGAPEMASANGAN`, `KUOTATERSEDIA`) VALUES
(1, 'HOME', 500000, 9),
(2, 'BACK', 150000, 100);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE IF NOT EXISTS `pembayaran` (
  `IDPEMBAYARAN` int(11) NOT NULL,
  `IDIKLAN` int(11) NOT NULL,
  `TGLPEMBAYARAN` date DEFAULT NULL,
  PRIMARY KEY (`IDPEMBAYARAN`),
  KEY `FK_PEMBAYARAN_IKLAN` (`IDIKLAN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `STATUSUSER` int(11) DEFAULT NULL,
  PRIMARY KEY (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USERNAME`, `PASSWORD`, `STATUSUSER`) VALUES
('ADMIN', 'ADMIN', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `iklan`
--
ALTER TABLE `iklan`
  ADD CONSTRAINT `FK_MEMASANG_IKLAN` FOREIGN KEY (`IDCUSTOMER`) REFERENCES `customer` (`IDCUSTOMER`),
  ADD CONSTRAINT `FK_MEMILIKI_JENIS` FOREIGN KEY (`IDJENISKENDARAAN`) REFERENCES `jeniskendaraan` (`IDJENISKENDARAAN`),
  ADD CONSTRAINT `FK_PEMASANGAN_IKLAN` FOREIGN KEY (`IDPEMANSANGAN`) REFERENCES `pemansangan` (`IDPEMANSANGAN`);

--
-- Constraints for table `komen`
--
ALTER TABLE `komen`
  ADD CONSTRAINT `FK_MEMPUNYAI_KOMEN` FOREIGN KEY (`IDIKLAN`) REFERENCES `iklan` (`IDIKLAN`);

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `FK_PEMBAYARAN_IKLAN` FOREIGN KEY (`IDIKLAN`) REFERENCES `iklan` (`IDIKLAN`);
