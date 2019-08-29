-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2019 at 02:11 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestion_treso_arba`
--
CREATE DATABASE IF NOT EXISTS `gestion_treso_arba` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gestion_treso_arba`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id_categorie` varchar(5) NOT NULL,
  `id_typ_op` tinyint(1) NOT NULL,
  `libelle_categorie` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id_categorie`, `id_typ_op`, `libelle_categorie`) VALUES
('CAT01', 1, 'ADHESION'),
('CAT02', 1, 'COTISATION'),
('CAT03', 0, 'FESTIVITE'),
('CAT04', 0, 'LOCATION'),
('CAT05', 1, 'DON');

-- --------------------------------------------------------

--
-- Table structure for table `communes`
--

CREATE TABLE `communes` (
  `id_commune` varchar(6) NOT NULL,
  `libelle_commune` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `communes`
--

INSERT INTO `communes` (`id_commune`, `libelle_commune`) VALUES
('COM001', 'ABENGOUROU'),
('COM002', 'ABOBO'),
('COM003', 'ABOISSO'),
('COM004', 'ADIAKE'),
('COM005', 'ADJAME'),
('COM006', 'ADZOPE'),
('COM007', 'AFFERY'),
('COM008', 'AGBOVILLE'),
('COM009', 'AGNIBILEKROU'),
('COM010', 'AGOU'),
('COM011', 'AKOUPE'),
('COM012', 'ALEPE'),
('COM013', 'ANOUMABA'),
('COM014', 'ANYAMA'),
('COM015', 'ARRAH'),
('COM016', 'ASSINIE'),
('COM017', 'ASSUEFFRY'),
('COM018', 'ATTECOUBE'),
('COM019', 'ATTIEGOUAKRO'),
('COM020', 'AYAME'),
('COM021', 'AZAGUIE'),
('COM022', 'BAKO'),
('COM023', 'BANGOLO'),
('COM024', 'BASSAWA'),
('COM025', 'BEDIALA'),
('COM026', 'BEOUMI'),
('COM027', 'BETTIE'),
('COM028', 'BIANKOUMA'),
('COM029', 'BINGERVILLE'),
('COM030', 'BIN-HOUYE'),
('COM031', 'BLOLEQUIN'),
('COM032', 'BOCANDA'),
('COM033', 'BODOKRO'),
('COM034', 'BONDOUKOU'),
('COM035', 'BONGOUANOU'),
('COM036', 'BONIEREDOUGOU'),
('COM037', 'BONON'),
('COM038', 'BONOUA'),
('COM039', 'BOOKO'),
('COM040', 'BOROTOU'),
('COM041', 'BOTRO'),
('COM042', 'BOUAFLE'),
('COM043', 'BOUAKE'),
('COM044', 'BOUNA'),
('COM045', 'BOUNDIALI'),
('COM046', 'BROBO'),
('COM047', 'BUYO'),
('COM048', 'COCODY'),
('COM049', 'DABAKALA'),
('COM050', 'DABOU'),
('COM051', 'DALOA'),
('COM052', 'DANANE'),
('COM053', 'DAOUKRO'),
('COM054', 'DIABO'),
('COM055', 'DIANRA'),
('COM056', 'DIAWALA'),
('COM057', 'DIDIEVI'),
('COM058', 'DIEGONEFLA'),
('COM059', 'DIKODOUGOU'),
('COM060', 'DIMBOKRO'),
('COM061', 'DIOULATIEDOUGOU'),
('COM062', 'DIVO'),
('COM063', 'DJEBONOUA'),
('COM065', 'DJIBROSSO'),
('COM066', 'DOROPO'),
('COM067', 'DUALLA'),
('COM068', 'DUEKOUE'),
('COM069', 'ETTROKRO'),
('COM070', 'FACOBLY'),
('COM071', 'FERKESSEDOUGOU'),
('COM072', 'FOUMBOLO'),
('COM073', 'FRESCO'),
('COM074', 'FRONAN'),
('COM075', 'GAGNOA'),
('COM076', 'GBELEBAN'),
('COM077', 'GBOGUHE'),
('COM078', 'GBON'),
('COM079', 'GBONNE'),
('COM080', 'GOHITAFLA'),
('COM081', 'GOULIA'),
('COM082', 'GRABO'),
('COM083', 'GRAND-BASSAM'),
('COM084', 'GRAND-BEREBY'),
('COM085', 'GRAND-LAHOU'),
('COM086', 'GRAND-ZATTRY'),
('COM087', 'GUEYO'),
('COM088', 'GUIBEROUA'),
('COM089', 'GUIEMBE'),
('COM090', 'GUIGLO'),
('COM091', 'GUINTEGUELA'),
('COM092', 'GUITRY'),
('COM093', 'HIRE'),
('COM094', 'ISSIA'),
('COM095', 'JACQUEVILLE'),
('COM096', 'KANAKONO'),
('COM097', 'KANI'),
('COM098', 'KANIASSO'),
('COM099', 'KARAKORO'),
('COM100', 'KASSERE'),
('COM101', 'KATIOLA'),
('COM102', 'KOKOUMBO'),
('COM103', 'KOLIA'),
('COM104', 'KOMBORODOUGOU'),
('COM105', 'KONG'),
('COM106', 'KONGASSO'),
('COM107', 'KOONAN'),
('COM108', 'KORHOGO'),
('COM109', 'KORO'),
('COM110', 'KOUASSI-DATEKRO'),
('COM111', 'KOUASSI-KOUASSIKRO'),
('COM112', 'KOUIBLY'),
('COM113', 'KOUMASSI'),
('COM114', 'KOUMBALA'),
('COM115', 'KOUNAHIRI'),
('COM116', 'KOUN-FAO'),
('COM117', 'KOUTO'),
('COM118', 'LAKOTA'),
('COM119', 'LOGOUALE'),
('COM120', 'MADINANI'),
('COM121', 'MAFERE'),
('COM122', 'MAN'),
('COM123', 'MANKONO'),
('COM124', 'MARCORY'),
('COM125', 'MASSALA'),
('COM126', 'MAYO'),
('COM127', 'M\'BAHIAKRO'),
('COM128', 'M\'BATTO'),
('COM129', 'M\'BENGUE'),
('COM130', 'MEAGUI'),
('COM131', 'MINIGNAN'),
('COM132', 'MORONDO'),
('COM133', 'NAPIE'),
('COM134', 'NASSIAN'),
('COM135', 'N\'DOUCI'),
('COM136', 'NIABLE'),
('COM137', 'NIAKARAMANDOUGOU'),
('COM138', 'NIELLE'),
('COM139', 'NIOFOIN'),
('COM140', 'ODIENNE'),
('COM141', 'OUANGOLODOUGOU'),
('COM142', 'OUANINOU'),
('COM143', 'OUELLE'),
('COM144', 'OUME'),
('COM145', 'OURAGAHIO'),
('COM146', 'PLATEAU'),
('COM148', 'PRIKRO'),
('COM149', 'RUBINO'),
('COM151', 'SAKASSOU'),
('COM152', 'SAMATIGUILA'),
('COM153', 'SAN PEDRO'),
('COM154', 'SANDEGUE'),
('COM155', 'SANGOUINE'),
('COM156', 'SARHALA'),
('COM157', 'SASSANDRA'),
('COM158', 'SATAMA-SOKORO'),
('COM159', 'SATAMA-SOKOURA'),
('COM160', 'SEGUELA'),
('COM161', 'SEGUELON'),
('COM162', 'SEYDOUGOU'),
('COM163', 'SIFIE'),
('COM164', 'SIKENSI'),
('COM165', 'SINEMATIALI'),
('COM166', 'SINFRA'),
('COM167', 'SIPILOU'),
('COM168', 'SIRASSO'),
('COM169', 'SONGON'),
('COM170', 'SOUBRE'),
('COM171', 'TAABO'),
('COM172', 'TABOU'),
('COM173', 'TAFIRE'),
('COM175', 'TANDA'),
('COM176', 'TEHINI'),
('COM177', 'TENGRELA'),
('COM178', 'TIAPOUM'),
('COM179', 'TIASSALE'),
('COM180', 'TIEBISSOU'),
('COM181', 'TIEME'),
('COM182', 'TIEMELEKRO'),
('COM183', 'TIE-N\'DIEKRO'),
('COM184', 'TIENINGBOUE'),
('COM185', 'TIENKO'),
('COM186', 'TIORONIARADOUGOU'),
('COM187', 'TORTIYA'),
('COM188', 'TOUBA'),
('COM189', 'TOULEPLEU'),
('COM190', 'TOUMODI'),
('COM191', 'TRANSUA'),
('COM192', 'TREICHVILLE'),
('COM193', 'VAVOUA'),
('COM194', 'WOROFLA'),
('COM195', 'YAKASSE-ATTOBROU'),
('COM196', 'YAMOUSSOUKRO'),
('COM197', 'YOPOUGON'),
('COM198', 'ZIKISSO'),
('COM199', 'ZOUAN-HOUNIEN'),
('COM200', 'ZOUKOUGBEU'),
('COM201', 'ZUENOULA');

-- --------------------------------------------------------

--
-- Table structure for table `fonctions`
--

CREATE TABLE `fonctions` (
  `id_fonction` varchar(5) NOT NULL,
  `id_groupe` varchar(5) NOT NULL,
  `libelle_fonction` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fonctions`
--

INSERT INTO `fonctions` (`id_fonction`, `id_groupe`, `libelle_fonction`) VALUES
('FCT01', 'GRP02', 'REGULIER'),
('FCT02', 'GRP01', 'PRESIDENT'),
('FCT03', 'GRP01', 'VICE-PRESIDENT 1'),
('FCT04', 'GRP01', 'VICE-PRESIDENT 2'),
('FCT05', 'GRP01', 'SECRETAIRE GENERAL'),
('FCT06', 'GRP01', 'SECRETAIRE GENERAL ADJOINT'),
('FCT07', 'GRP01', 'TRESORIER GENERAL'),
('FCT08', 'GRP01', 'TRESORIER GENERAL ADJOINT'),
('FCT09', 'GRP01', 'COMMISSAIRE AUX COMPTES'),
('FCT10', 'GRP01', 'CHARGE DES AFFAIRES SOCIALES'),
('FCT11', 'GRP01', 'CHARGE DES AFFAIRES SOCIALES ADJOINT 1'),
('FCT12', 'GRP01', 'CHARGE DES AFFAIRES SOCIALES ADJOINT 2'),
('FCT13', 'GRP01', 'CHARGE DES AFFAIRES SOCIALES ADJOINT 3'),
('FCT14', 'GRP01', 'CHARGE DE L\'ORGANISATION'),
('FCT15', 'GRP01', 'CHARGE DE L\'ORGANISATION ADJOINT 1'),
('FCT16', 'GRP01', 'CHARGE DE L\'ORGANISATION ADJOINT 2'),
('FCT17', 'GRP02', 'RESPONSABLE DE COMMUNE');

-- --------------------------------------------------------

--
-- Table structure for table `groupes`
--

CREATE TABLE `groupes` (
  `id_groupe` varchar(5) NOT NULL,
  `libelle_groupe` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groupes`
--

INSERT INTO `groupes` (`id_groupe`, `libelle_groupe`) VALUES
('GRP01', 'BUREAU'),
('GRP02', 'ORDINAIRE');

-- --------------------------------------------------------

--
-- Table structure for table `interlocuteurs`
--

CREATE TABLE `interlocuteurs` (
  `id_interlocuteur` varchar(6) NOT NULL,
  `nom_interlocuteur` varchar(30) NOT NULL,
  `pren_interlocuteur` varchar(30) NOT NULL,
  `titre_interlocuteur` varchar(30) NOT NULL,
  `contact_interlocuteur` varchar(30) NOT NULL,
  `localite_interlocuteur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interlocuteurs`
--

INSERT INTO `interlocuteurs` (`id_interlocuteur`, `nom_interlocuteur`, `pren_interlocuteur`, `titre_interlocuteur`, `contact_interlocuteur`, `localite_interlocuteur`) VALUES
('ITL01', 'ADJE', 'LEOPOLD', 'GARDIEN', '20 21 22 04', 'ADJAME'),
('ITL02', 'TECHMY', 'LUC', '', '56 20 30 10', 'TREICHVILLE');

-- --------------------------------------------------------

--
-- Table structure for table `membres`
--

CREATE TABLE `membres` (
  `id_membre` varchar(10) NOT NULL,
  `id_fonction` varchar(5) NOT NULL,
  `id_commune` varchar(6) NOT NULL,
  `id_ville` varchar(6) NOT NULL,
  `nom_membre` varchar(20) NOT NULL,
  `pren_membre` varchar(30) NOT NULL,
  `genre_membre` char(1) NOT NULL COMMENT 'F/H',
  `contact_membre` varchar(11) DEFAULT NULL,
  `date_crea_membre` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membres`
--

INSERT INTO `membres` (`id_membre`, `id_fonction`, `id_commune`, `id_ville`, `nom_membre`, `pren_membre`, `genre_membre`, `contact_membre`, `date_crea_membre`) VALUES
('M19001', 'FCT07', 'COM048', 'VIL02', 'KOUAKOU', 'ANGE', 'H', '47 11 29 97', NULL),
('M19002', 'FCT08', 'COM197', 'VIL02', 'KOUADIO', 'AMENAN JOELLE', 'F', '48 97 09 40', NULL),
('M19003', 'FCT01', 'COM048', 'VIL02', 'KOUASSI', 'LOUKOU DONALD', 'H', NULL, NULL),
('M19004', 'FCT01', 'COM048', 'VIL02', 'KOUASSI', 'BROU SAMUEL', 'H', NULL, NULL),
('M19005', 'FCT01', 'COM048', 'VIL02', 'DJAN', 'KATO ALBERT', 'H', NULL, NULL),
('M19006', 'FCT01', 'COM002', 'VIL02', 'LOKOSSUE', 'PAUL', 'H', '07 02 03 05', NULL),
('M19007', 'FCT01', 'COM113', 'VIL02', 'BROU', 'SOUMAN', 'H', '01 02 03 04', NULL),
('M19008', 'FCT02', 'COM048', 'VIL03', 'M\'BRA', 'KOUASSI RICHARD', 'H', '47 30 40 41', NULL),
('M19009', 'FCT03', 'COM197', 'VIL04', 'KOUADIO', 'MARIE', 'F', '09 96 37 56', NULL),
('M19010', 'FCT04', 'COM048', 'VIL05', 'KOUASSI', 'N\'GORAN LAURENT', 'H', '47 08 29 57', NULL),
('M19011', 'FCT05', 'COM048', 'VIL06', 'DIBY', 'SYLVESTRE', 'H', '07 96 09 09', NULL),
('M19012', 'FCT06', 'COM113', 'VIL07', 'N\'DRI', 'KOUASSI FRANCOIS', 'H', NULL, NULL),
('M19013', 'FCT09', 'COM197', 'VIL08', 'KOUAKOU', 'AMENAN CECILE', 'F', '04 00 11 06', NULL),
('M19014', 'FCT10', 'COM002', 'VIL09', 'KONAN', 'KONAN PIERRE', 'H', '58 33 48 84', NULL),
('M19015', 'FCT11', 'COM048', 'VIL10', 'KONGO', 'FIRMIN', 'H', '07 66 34 98', NULL),
('M19016', 'FCT12', 'COM197', 'VIL11', 'N\'GOHISSE', 'LUCIE', 'F', '06 91 39 06', NULL),
('M19017', 'FCT13', 'COM197', 'VIL12', 'BROU', 'MARIETTE', 'F', NULL, NULL),
('M19018', 'FCT14', 'COM002', 'VIL13', 'KOFFI', 'JONAS', 'H', '07 79 88 57', NULL),
('M19019', 'FCT15', 'COM048', 'VIL14', 'KONAN', 'KAN GEORGES', 'H', '05 36 66 92', NULL),
('M19020', 'FCT16', 'COM048', 'VIL15', 'TANOH', 'KOUAME PARFAIT', 'H', '49 12 05 16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mois`
--

CREATE TABLE `mois` (
  `id_mois` varchar(3) NOT NULL,
  `libelle_mois` varchar(15) NOT NULL,
  `numero_mois` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mois`
--

INSERT INTO `mois` (`id_mois`, `libelle_mois`, `numero_mois`) VALUES
('M01', 'janvier', '01'),
('M02', 'fevrier', '02'),
('M03', 'mars', '03'),
('M04', 'avril', '04'),
('M05', 'mai', '05'),
('M06', 'juin', '06'),
('M07', 'juillet', '07'),
('M08', 'aout', '08'),
('M09', 'septembre', '09'),
('M10', 'octobre', '10'),
('M11', 'novembre', '11'),
('M12', 'decembre', '12');

-- --------------------------------------------------------

--
-- Table structure for table `operations`
--

CREATE TABLE `operations` (
  `id_operation` varchar(10) NOT NULL,
  `id_membre` varchar(10) NOT NULL,
  `id_mois` varchar(3) NOT NULL,
  `id_categorie` varchar(5) NOT NULL,
  `id_interlocuteur` varchar(6) DEFAULT NULL,
  `montant_operation` int(10) NOT NULL,
  `obs_operation` varchar(100) NOT NULL,
  `date_saisie_operation` date NOT NULL,
  `date_operation` date NOT NULL,
  `annee_operation` smallint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operations`
--

INSERT INTO `operations` (`id_operation`, `id_membre`, `id_mois`, `id_categorie`, `id_interlocuteur`, `montant_operation`, `obs_operation`, `date_saisie_operation`, `date_operation`, `annee_operation`) VALUES
('19-OP-0001', 'M19001', 'M08', 'CAT01', NULL, 2000, 'FRAIS ADHESION', '2019-08-02', '2019-08-02', 2019),
('19-OP-0002', 'M19002', 'M08', 'CAT01', NULL, 1000, 'FRAIS ADHESION', '2019-08-02', '2019-08-02', 2019),
('19-OP-0003', 'M19001', 'M01', 'CAT02', NULL, 2000, 'COTISATION MENSUELLE', '2019-08-02', '2019-08-02', 2019),
('19-OP-0004', 'M19001', 'M02', 'CAT02', NULL, 2000, 'COTISATION MENSUELLE', '2019-08-02', '2019-08-02', 2019),
('19-OP-0005', 'M19001', 'M03', 'CAT02', NULL, 2000, 'COTISATION MENSUELLE', '2019-08-02', '2019-08-02', 2019),
('19-OP-0006', 'M19001', 'M04', 'CAT02', NULL, 2000, 'COTISATION MENSUELLE', '2019-08-02', '2019-08-02', 2019),
('19-OP-0007', 'M19001', 'M05', 'CAT02', NULL, 2000, 'COTISATION MENSUELLE', '2019-08-02', '2019-08-02', 2019),
('19-OP-0008', 'M19001', 'M06', 'CAT02', NULL, 2000, 'COTISATION MENSUELLE', '2019-08-02', '2019-08-02', 2019),
('19-OP-0009', 'M19001', 'M07', 'CAT02', NULL, 2000, 'COTISATION MENSUELLE', '2019-08-02', '2019-08-02', 2019),
('19-OP-0010', 'M19002', 'M01', 'CAT02', NULL, 1000, 'COTISATION MENSUELLE', '2019-08-02', '2019-08-02', 2019),
('19-OP-0011', 'M19002', 'M02', 'CAT02', NULL, 1000, 'COTISATION MENSUELLE', '2019-08-02', '2019-08-02', 2019),
('19-OP-0012', 'M19002', 'M03', 'CAT02', NULL, 1000, 'COTISATION MENSUELLE', '2019-08-02', '2019-08-02', 2019),
('19-OP-0013', 'M19003', 'M08', 'CAT01', NULL, 2000, 'FRAIS ADHESION', '2019-08-03', '2019-08-03', 2019),
('19-OP-0014', 'M19004', 'M08', 'CAT01', NULL, 2000, 'FRAIS ADHESION', '2019-08-03', '2019-08-03', 2019),
('19-OP-0015', 'M19005', 'M08', 'CAT01', NULL, 2000, 'FRAIS ADHESION', '2019-08-03', '2019-08-03', 2019),
('19-OP-0016', 'M19006', 'M08', 'CAT01', NULL, 2000, 'FRAIS ADHESION', '2019-08-04', '2019-08-04', 2019),
('19-OP-0017', 'M19002', 'M04', 'CAT02', NULL, 1000, 'COTISATION MENSUELLE', '2019-08-03', '2019-08-04', 2019),
('19-OP-0018', 'M19002', 'M05', 'CAT02', NULL, 1000, 'COTISATION MENSUELLE', '2019-08-03', '2019-08-04', 2019),
('19-OP-0019', 'M19002', 'M06', 'CAT02', NULL, 1000, 'COTISATION MENSUELLE', '2019-08-03', '2019-08-04', 2019),
('19-OP-0020', 'M19007', 'M08', 'CAT01', NULL, 2000, 'FRAIS ADHESION', '2019-08-04', '2019-08-04', 2019),
('19-OP-0021', 'M19002', 'M07', 'CAT02', NULL, 1000, 'COTISATION MENSUELLE', '2019-08-04', '2019-08-04', 2019),
('19-OP-0022', 'M19001', 'M08', 'CAT02', NULL, 2000, 'COTISATION MENSUELLE', '2019-08-04', '2019-08-04', 2019),
('19-OP-0023', 'M19002', 'M08', 'CAT04', NULL, 3000, 'A l\'ordre de GARDIEN.\nPour les frais de location de la salle Ã  ce jour.', '2019-08-19', '2019-08-04', 2019),
('19-OP-0024', 'M19006', 'M08', 'CAT03', NULL, 200000, 'A l\'ordre de LOKOSSUE PAUL.\nPour le compte des frais de l\'AG', '2019-08-19', '2019-02-03', 2019),
('19-OP-0025', 'M19008', 'M08', 'CAT01', NULL, 2000, 'FRAIS ADHESION', '2019-08-21', '2019-08-21', 2019),
('19-OP-0026', 'M19008', 'M08', 'CAT02', NULL, 1000, 'COTISATION MENSUELLE', '2019-08-21', '2019-08-21', 2019),
('19-OP-0027', 'M19002', 'M08', 'CAT04', 'ITL01', 3000, 'FRAIS DE LOCATION DE LA SALLE DE REUNION.', '2019-08-22', '2019-08-22', 2019),
('19-OP-0028', 'M19001', 'M08', 'CAT05', 'ITL02', 50000, 'DON EN REMERCIEMENT DU SOUTIEN APPORTE PENDANT L\'ENTERREMENT.', '2019-08-27', '2019-08-27', 2019);

-- --------------------------------------------------------

--
-- Table structure for table `types_operation`
--

CREATE TABLE `types_operation` (
  `id_typ_op` tinyint(1) NOT NULL,
  `libelle_typ_op` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `types_operation`
--

INSERT INTO `types_operation` (`id_typ_op`, `libelle_typ_op`) VALUES
(0, 'DECAISSEMENT'),
(1, 'ENCAISSEMENT');

-- --------------------------------------------------------

--
-- Table structure for table `villes`
--

CREATE TABLE `villes` (
  `id_ville` varchar(6) NOT NULL,
  `libelle_ville` varchar(20) NOT NULL,
  `region_ville` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `villes`
--

INSERT INTO `villes` (`id_ville`, `libelle_ville`, `region_ville`) VALUES
('VIL01', 'ABENGOUROU', 'MOYEN-COMOE'),
('VIL02', 'ABIDJAN', 'LAGUNES'),
('VIL03', 'ADZOPE', 'ME'),
('VIL04', 'AGBOVILLE', 'AGNEBY-TIASSA'),
('VIL05', 'AGNIBILEKROU', 'MOYEN-COMOE'),
('VIL06', 'AKOUPE', 'AGNEBY'),
('VIL07', 'ANYAMA', 'LAGUNES'),
('VIL08', 'BINGERVILLE', 'LAGUNES'),
('VIL09', 'BONDOUKOU', 'GONTOUGO'),
('VIL10', 'BOUAFLE', 'MARAHOUE'),
('VIL11', 'BOUAKE', 'GBEKE'),
('VIL12', 'BOUNDIALI', 'SAVANES'),
('VIL13', 'DABOU', 'LAGUNES'),
('VIL14', 'DALOA', 'HAUT-SASSANDRA'),
('VIL15', 'DANANE', 'DIX-HUIT MONTAGNES'),
('VIL16', 'DAOUKRO', 'N\'ZI-COMOE'),
('VIL17', 'DIMBOKRO', 'N\'ZI'),
('VIL18', 'DIVO', 'LOH-DJIBOUA'),
('VIL19', 'DUEKOUE', 'GUEMON'),
('VIL20', 'FERKESSEDOUGOU', 'TCHOLOGO'),
('VIL21', 'GAGNOA', 'GOH'),
('VIL22', 'GRAND-BASSAM', 'SUD-COMOE'),
('VIL23', 'GUIGLO', 'MOYEN-CAVALLY'),
('VIL24', 'ISSIA', 'HAUT-SASSANDRA'),
('VIL25', 'KATIOLA', 'HAMBOL'),
('VIL26', 'KORHOGO', 'PORO'),
('VIL27', 'LAKOTA', 'LOH-DJIBOUA'),
('VIL28', 'MAN', 'TONKPI'),
('VIL29', 'ODIENNE', 'DENGUELE'),
('VIL30', 'OUME', 'GOH'),
('VIL31', 'SAN-PEDRO', 'BAS-SASSANDRA'),
('VIL32', 'SEGUELA', 'BERE'),
('VIL33', 'SINFRA', 'MARAHOUE'),
('VIL34', 'SOUBRE', 'NAWA'),
('VIL35', 'TIASSALE', 'LAGUNES'),
('VIL36', 'TINGRELA', 'SAVANES'),
('VIL37', 'TOUMODI', 'LACS'),
('VIL38', 'VAVOUA', 'HAUT-SASSANDRA'),
('VIL39', 'YAMOUSSOUKRO', 'BELIER'),
('VIL40', 'ZUENOULA', 'MARAHOUE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categorie`),
  ADD KEY `id_typ_op` (`id_typ_op`);

--
-- Indexes for table `communes`
--
ALTER TABLE `communes`
  ADD PRIMARY KEY (`id_commune`);

--
-- Indexes for table `fonctions`
--
ALTER TABLE `fonctions`
  ADD PRIMARY KEY (`id_fonction`),
  ADD KEY `id_groupe` (`id_groupe`);

--
-- Indexes for table `groupes`
--
ALTER TABLE `groupes`
  ADD PRIMARY KEY (`id_groupe`);

--
-- Indexes for table `interlocuteurs`
--
ALTER TABLE `interlocuteurs`
  ADD PRIMARY KEY (`id_interlocuteur`);

--
-- Indexes for table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`id_membre`),
  ADD KEY `id_commune` (`id_commune`),
  ADD KEY `id_ville` (`id_ville`),
  ADD KEY `id_fonction` (`id_fonction`);

--
-- Indexes for table `mois`
--
ALTER TABLE `mois`
  ADD PRIMARY KEY (`id_mois`);

--
-- Indexes for table `operations`
--
ALTER TABLE `operations`
  ADD PRIMARY KEY (`id_operation`),
  ADD KEY `id_mois` (`id_mois`),
  ADD KEY `id_categorie` (`id_categorie`),
  ADD KEY `id_membre` (`id_membre`),
  ADD KEY `id_interlocuteur` (`id_interlocuteur`);

--
-- Indexes for table `types_operation`
--
ALTER TABLE `types_operation`
  ADD PRIMARY KEY (`id_typ_op`);

--
-- Indexes for table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id_ville`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`id_typ_op`) REFERENCES `types_operation` (`id_typ_op`);

--
-- Constraints for table `fonctions`
--
ALTER TABLE `fonctions`
  ADD CONSTRAINT `fonctions_ibfk_1` FOREIGN KEY (`id_groupe`) REFERENCES `groupes` (`id_groupe`);

--
-- Constraints for table `membres`
--
ALTER TABLE `membres`
  ADD CONSTRAINT `membres_ibfk_1` FOREIGN KEY (`id_commune`) REFERENCES `communes` (`id_commune`),
  ADD CONSTRAINT `membres_ibfk_2` FOREIGN KEY (`id_ville`) REFERENCES `villes` (`id_ville`),
  ADD CONSTRAINT `membres_ibfk_3` FOREIGN KEY (`id_fonction`) REFERENCES `fonctions` (`id_fonction`);

--
-- Constraints for table `operations`
--
ALTER TABLE `operations`
  ADD CONSTRAINT `operations_ibfk_2` FOREIGN KEY (`id_mois`) REFERENCES `mois` (`id_mois`),
  ADD CONSTRAINT `operations_ibfk_3` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id_categorie`),
  ADD CONSTRAINT `operations_ibfk_4` FOREIGN KEY (`id_membre`) REFERENCES `membres` (`id_membre`),
  ADD CONSTRAINT `operations_ibfk_5` FOREIGN KEY (`id_interlocuteur`) REFERENCES `interlocuteurs` (`id_interlocuteur`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
