
-- Autore : Urbanelli Nicholas 1087743
-- Autore : Romandini Lorenzo 1091156
-- Gruppo 1420


--  ATTENZIONE !!!!!
-- Le chiavi primarie sono aggiunte alla fine delle tabelle tramite il comando "alter table _____ add primary key (_____)"

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multibrand`
--
CREATE DATABASE `multibrand` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `multibrand`;

-- --------------------------------------------------------

--
-- Struttura della tabella `accesso`
--

CREATE TABLE `accesso` (
  `User` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PiattOnline` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `accesso`
--

INSERT INTO `accesso` (`User`, `PiattOnline`) VALUES
('0h_v1nz', 'Multibrand'),
('chefspino', 'Amazon'),
('chefspino', 'eBay'),
('derrick180196', 'Amazon'),
('derrick180196', 'eBay'),
('el_king', 'AliExpress'),
('el_king', 'Amazon'),
('fabio_il_buonista', 'Amazon'),
('matty99', 'Multibrand'),
('mister_food', 'Amazon'),
('mister_food', 'Multibrand'),
('paccamath', 'AliExpress'),
('paccamath', 'Multibrand'),
('paccasax', 'eBay'),
('rinolubuffo', 'Amazon');

-- --------------------------------------------------------

--
-- Struttura della tabella `bustapaga`
--

CREATE TABLE `bustapaga` (
  `CodBustaP` int NOT NULL,
  `Mese` tinyint NOT NULL,
  `Anno` int NOT NULL,
  `Dipend` varchar(16) NOT NULL,
  `Mansione` varchar(30) NOT NULL,
  `Importo` float(6,2) NOT NULL,
  `DataPag` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `bustapaga`
--

INSERT INTO `bustapaga` (`CodBustaP`, `Mese`, `Anno`, `Dipend`, `Mansione`, `Importo`, `DataPag`) VALUES
(1, 11, 2020, 'BRNBCC93P03ESC87', 'addetto alla vendita online', 800.00, '2020-12-10'),
(2, 12, 2020, 'SLVRNN50P01HGH66', 'amministratore contabile', 500.00, '2021-01-10'),
(3, 1, 2021, 'SLVRNN50P01HGH66', 'amministratore contabile', 500.00, NULL),
(4, 12, 2020, 'FRDKRG45P05HJB88', 'commesso', 1100.00, NULL),
(5, 11, 2020, 'KNZBCS89P06VJB89', 'commesso', 1100.00, '2020-12-10'),
(6, 12, 2020, 'DRMCCC89P08ZTD33', 'amministratore contabile', 500.00, '2021-01-10'),
(7, 1, 2021, 'MCHMYR78P10JIY99', 'commesso', 1100.00, '2021-02-10'),
(8, 12, 2020, 'CHRKTK88P05XWF76', 'tecnico informatico', 600.00, '2021-01-10'),
(9, 11, 2020, 'DVHSGG45P12JHC69', 'magazziniere', 900.00, '2020-12-10');

-- --------------------------------------------------------

--
-- Struttura della tabella `clientefis`
--

CREATE TABLE `clientefis` (
  `CF` varchar(16) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `Citta` varchar(40) DEFAULT NULL,
  `CAP` varchar(5) DEFAULT NULL,
  `Via` varchar(45) DEFAULT NULL,
  `Civico` smallint DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `clientefis`
--

INSERT INTO `clientefis` (`CF`, `Nome`, `Citta`, `CAP`, `Via`, `Civico`, `Email`) VALUES
('ASMRZZ99P07F7G99', 'cristian adreas marzi', 'san benedetto del tronto', '63074', NULL, 15, 'kingred@gmail.com'),
('DNSSKR99P05GCJ99', 'denisa skhreta', 'monteprandone', '55733', 'manara', 22, NULL),
('DRDRLZ94P06DOI03', 'edoardo orlowski', 'ascoli piceno', NULL, 'poveracci', 5, 'piranhamuto@gmail.com'),
('DVDRPQ99P05NWR98', 'davide ercd pasquali', 'ascoli piceno', '66099', 'lupino e serafino', 1, 'ercapodroga@gmail.com'),
('GRNGVN87P08SCG89', 'giorno giovanna', 'napoli', '66440', 'vento aureo', 17, 'gangstar@gmail.com'),
('LCTRNN86P11CBH97', 'luca traini', 'macerata', '98676', 'pistola', 12, 'pamelativendico@gmail.com'),
('LDSCRZ89P03FGH00', 'lida sciarroni', 'san benedetto del tronto', '63074', 'san gallo', 13, 'martinenzis@gmail.com'),
('MCHPST98P09TGH99', 'michelozzo pistaferri', NULL, '63074', 'angolo del dolce', 2, 'sambriacato@gmail.com'),
('MRVNNG78P07CHG88', 'mario vanni', 'san casciano', '55689', 'coltello', NULL, 'merendinaconpacciani@mostro.firenze '),
('RNSLDT77P12CFV79', 'rino soldato', 'san benedetto del tronto', '63074', NULL, 7, 'rhynosoldato@live.it');

-- --------------------------------------------------------

--
-- Struttura della tabella `colore`
--

CREATE TABLE `colore` (
  `Tinta` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `colore`
--

INSERT INTO `colore` (`Tinta`) VALUES
('argento'),
('beige'),
('bianco'),
('blu'),
('bordeaux'),
('cargo'),
('celeste'),
('cipria'),
('giallo'),
('grigio'),
('marrone'),
('nero'),
('oro'),
('rosa'),
('rosso'),
('verde');

-- --------------------------------------------------------

--
-- Struttura della tabella `contracquisto`
--

CREATE TABLE `contracquisto` (
  `CodAcquisto` int NOT NULL,
  `CodFornitore` varchar(11) NOT NULL,
  `ScadPag` date NOT NULL,
  `DataPag` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `contracquisto`
--

INSERT INTO `contracquisto` (`CodAcquisto`, `CodFornitore`, `ScadPag`, `DataPag`) VALUES
(1, '11234678890', '2020-12-30', '2020-12-10'),
(2, '12345678901', '2020-12-08', '2020-12-24'),
(3, '34769500234', '2021-01-20', '2020-12-10'),
(4, '57863457900', '2020-12-10', NULL),
(5, '58823757021', '2021-01-14', '2020-12-21');

-- --------------------------------------------------------

--
-- Struttura della tabella `contratto`
--

CREATE TABLE `contratto` (
  `CodContratto` int NOT NULL,
  `Importo` float(7,2) DEFAULT NULL,
  `Data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `contratto`
--

INSERT INTO `contratto` (`CodContratto`, `Importo`, `Data`) VALUES
(1, 95.00, '2020-06-10'),
(2, 85.00, '2020-01-18'),
(3, 21.00, '2020-10-08'),
(4, 73.00, '2020-09-20'),
(5, 290.00, '2020-08-10'),
(6, 12.00, '2020-11-18'),
(7, 15.00, '2020-07-09'),
(8, 20.00, '2020-06-24'),
(9, 10.00, '2020-12-16'),
(10, 13.00, '2020-11-20'),
(11, 180.00, '2020-10-31'),
(12, 95.00, '2020-09-09'),
(13, 105.00, '2020-12-10'),
(14, 180.00, '2020-08-09'),
(15, 230.00, '2020-11-07'),
(16, 180.00, '2020-09-16'),
(17, 30.00, '2020-10-24'),
(18, 60.00, '2020-12-16'),
(19, 140.00, '2020-06-05'),
(20, 105.00, '2020-07-22'),
(21, 4.99, '2020-12-31'),
(22, 7.99, '2020-12-15'),
(23, 12.99, '2020-09-25'),
(24, 14.99, '2020-10-03'),
(25, 21.99, '2020-08-22'),
(26, 125.00, '2020-12-17'),
(27, 245.00, '2020-12-23'),
(28, 90.00, '2020-12-29'),
(29, 354.00, '2020-12-02'),
(30, 410.00, '2020-11-19');

-- --------------------------------------------------------

--
-- Struttura della tabella `contrreso`
--

CREATE TABLE `contrreso` (
  `CodReso` int NOT NULL,
  `Utent` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `VendOnl` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `contrreso`
--

INSERT INTO `contrreso` (`CodReso`, `Utent`, `VendOnl`) VALUES
(16, 'fabio_il_buonista', 14),
(17, '0h_v1nz', 11),
(18, 'chefspino', 12),
(19, 'rinolubuffo', 15),
(20, 'matty99', 13);

-- --------------------------------------------------------

--
-- Struttura della tabella `contrriparazione`
--

CREATE TABLE `contrriparazione` (
  `CodRiparaz` int NOT NULL,
  `Cliente` varchar(20) NOT NULL,
  `StatoRip` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `contrriparazione`
--

INSERT INTO `contrriparazione` (`CodRiparaz`, `Cliente`, `StatoRip`) VALUES
(6, 'ASMRZZ99P07F7G99', 'da riparare'),
(7, 'DNSSKR99P05GCJ99', 'in riparazione'),
(8, 'DRDRLZ94P06DOI03', 'in riparazione'),
(9, 'DVDRPQ99P05NWR98', 'da riparare'),
(10, 'GRNGVN87P08SCG89', 'riparato');

-- --------------------------------------------------------

--
-- Struttura della tabella `contrspedizione`
--

CREATE TABLE `contrspedizione` (
  `CodSpediz` int NOT NULL,
  `ScadPag` date NOT NULL,
  `DataPag` date DEFAULT NULL,
  `Corr` varchar(11) NOT NULL,
  `VendOnl` int NOT NULL,
  `StatoSpediz` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `contrspedizione`
--

INSERT INTO `contrspedizione` (`CodSpediz`, `ScadPag`, `DataPag`, `Corr`, `VendOnl`, `StatoSpediz`) VALUES
(21, '2021-01-16', NULL, '15714511002', 11, 'da spedire'),
(22, '2021-01-20', NULL, '48304759004', 12, 'consegnato'),
(23, '2020-12-29', '2020-12-03', '58495603918', 14, 'in spedizione'),
(24, '2021-01-08', '2020-12-22', '64507990150', 13, 'consegnato'),
(25, '2020-12-09', '2020-11-15', '95037480492', 15, 'da spedire');

-- --------------------------------------------------------

--
-- Struttura della tabella `contrvenditafis`
--

CREATE TABLE `contrvenditafis` (
  `CodVendFis` int NOT NULL,
  `Cliente` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `contrvenditafis`
--

INSERT INTO `contrvenditafis` (`CodVendFis`, `Cliente`) VALUES
(26, 'ASMRZZ99P07F7G99'),
(27, 'DNSSKR99P05GCJ99'),
(28, 'DRDRLZ94P06DOI03'),
(29, 'DVDRPQ99P05NWR98'),
(30, 'GRNGVN87P08SCG89');

-- --------------------------------------------------------

--
-- Struttura della tabella `contrvenditaonl`
--

CREATE TABLE `contrvenditaonl` (
  `CodVendOnl` int NOT NULL,
  `User` varchar(20) NOT NULL,
  `Piattaforma` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `contrvenditaonl`
--

INSERT INTO `contrvenditaonl` (`CodVendOnl`, `User`, `Piattaforma`) VALUES
(11, '0h_v1nz', 'Multibrand'),
(12, 'chefspino', 'eBay'),
(13, 'paccamath', 'AliExpress'),
(14, 'fabio_il_buonista', 'Amazon'),
(15, 'rinolubuffo', 'Amazon');

-- --------------------------------------------------------

--
-- Struttura della tabella `corriere`
--

CREATE TABLE `corriere` (
  `IVACorr` varchar(11) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `CItta` varchar(40) NOT NULL,
  `CAP` varchar(5) DEFAULT NULL,
  `Via` varchar(45) DEFAULT NULL,
  `Civico` smallint DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `TempoSped` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `corriere`
--

INSERT INTO `corriere` (`IVACorr`, `Nome`, `CItta`, `CAP`, `Via`, `Civico`, `Email`, `TempoSped`) VALUES
('15714511002', 'sda', 'roma', '00144', NULL, NULL, 'sdaexpress@gmail.com', 7),
('48304759004', 'poste italiane', 'roma', NULL, NULL, NULL, 'posteitaliane@libero.it', 21),
('58495603918', 'dhl', 'san benedetto del tronto', '63074', 'valle piana', 13, 'dhldelivery@gmail.com', 14),
('64507990150', 'bartolini', 'milano', '20019', 'zazzetti', 84, NULL, NULL),
('95037480492', 'packlink', 'milano', '20021', 'parcasauro', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `costofisso`
--

CREATE TABLE `costofisso` (
  `CodCostoFisso` int NOT NULL,
  `Tipologia` varchar(30) NOT NULL,
  `Importo` float(7,2) NOT NULL,
  `ScadPag` date NOT NULL,
  `DataPag` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `costofisso`
--

INSERT INTO `costofisso` (`CodCostoFisso`, `Tipologia`, `Importo`, `ScadPag`, `DataPag`) VALUES
(1, 'utenze', 2504.20, '2020-10-16', '2020-10-12'),
(2, 'affitto negozio', 4800.00, '2021-01-29', '0000-00-00'),
(3, 'affitto magazzino', 450.00, '2020-12-30', '2020-12-30'),
(4, 'pagamento amazon', 389.46, '2020-12-03', '2020-12-03'),
(5, 'pagamento aliexpress', 250.34, '2020-12-18', '2020-12-16'),
(6, 'pagamento ebay', 279.65, '2020-12-25', '2020-12-23'),
(7, 'consultazione commercialista', 430.00, '2021-01-28', NULL),
(8, 'affitto magazzino', 450.00, '2021-01-30', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendente`
--

CREATE TABLE `dipendente` (
  `CodFisc` varchar(16) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `Citta` varchar(30) DEFAULT NULL,
  `CAP` varchar(5) DEFAULT NULL,
  `Via` varchar(30) DEFAULT NULL,
  `Civico` smallint DEFAULT NULL,
  `IBAN` varchar(27) NOT NULL,
  `Telefono` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `dipendente`
--

INSERT INTO `dipendente` (`CodFisc`, `Nome`, `Citta`, `CAP`, `Via`, `Civico`, `IBAN`, `Telefono`) VALUES
('BRNBCC93P03ESC87', 'bruno bucciarati', 'san benedetto del tronto', '63074', 'cannolo', 32, 'GBVJGH000CHG5467653CGHGDSA', '3667985422'),
('CHRKTK88P05XWF76', 'charlotte katakuri', 'san benedetto del tronto', '63074', 'millefoglie', 18, 'HJGCTRD00654075560FGXHGH567', '3289654372'),
('DRMCCC89P08ZTD33', 'dario moccia', 'san benedetto del tronto', '63074', 'bombolone', 6, 'JGFJG00654500765CFHCHJGFRZK', '3778955312'),
('DVHSGG45P12JHC69', 'deivi hasani', 'san benedetto del tronto', '63074', 'tave kosi', 4, 'DCFBNN0000065578FNGGJHV433S', '3779876321'),
('FRDKRG45P05HJB88', 'freddy krueger', 'san benedetto del tronto', NULL, 'brodetto', 11, 'GVJHJVJ0065500HGFJGVJH2345A', '3457689001'),
('KNZBCS89P06VJB89', 'kennet zeb caselli', 'san benedetto del tronto', '63074', 'biscotti', 9, 'NSJKCI005674334075GBCFGJJK2', NULL),
('MCHMYR78P10JIY99', 'michael myers', 'san benedetto del tronto', '63074', 'mimosa', 21, 'NSJKCI0056CFGJJKDFG797T4421', '3998764356'),
('SLVRNN50P01HGH66', 'salvatore riina', 'san benedetto del tronto', '63074', NULL, 8, 'GCRDHJBU00005465747FCFGHJI2', '3786543211');

-- --------------------------------------------------------

--
-- Struttura della tabella `disponibilita`
--

CREATE TABLE `disponibilita` (
  `Quantita` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `disponibilita`
--

INSERT INTO `disponibilita` (`Quantita`) VALUES
(0),
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20);

-- --------------------------------------------------------

--
-- Struttura della tabella `elencacq`
--

CREATE TABLE `elencacq` (
  `ContrAcq` int NOT NULL,
  `Prod` varchar(6) NOT NULL,
  `Col` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Tag` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Qta` smallint NOT NULL,
  `Prezzo` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `elencacq`
--

INSERT INTO `elencacq` (`ContrAcq`, `Prod`, `Col`, `Tag`, `Qta`, `Prezzo`) VALUES
(1, 'A00001', 'bianco', 'xl', 2, 45.00),
(1, 'A00003', 'blu', 'm', 2, 50.00),
(2, 'B00004', 'oro', 's', 5, 45.00),
(2, 'C00001', 'beige', '36', 3, 17.00),
(2, 'C00002', 'celeste', '40', 2, 23.00),
(3, 'D00001', 'verde', 'm', 2, 8.00),
(3, 'D00002', 'celeste', 'm', 1, 13.00),
(4, 'E00001', 'beige', 'l', 5, 30.00),
(4, 'E00002', 'beige', 's', 2, 7.00),
(4, 'F00004', 'cipria', 'xl', 3, 12.00),
(4, 'F00005', 'blu', 'xs', 4, 24.00),
(5, 'B00004', 'oro', 's', 4, 90.00),
(5, 'C00006', 'grigio', '36', 5, 50.00),
(5, 'F00006', 'verde', 'm', 3, 150.00);

-- --------------------------------------------------------

--
-- Struttura della tabella `elencreso`
--

CREATE TABLE `elencreso` (
  `ContrRes` int NOT NULL,
  `Prod` varchar(6) NOT NULL,
  `Col` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Tag` varchar(3) NOT NULL,
  `Qta` smallint NOT NULL,
  `Prezzo` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `elencreso`
--

INSERT INTO `elencreso` (`ContrRes`, `Prod`, `Col`, `Tag`, `Qta`, `Prezzo`) VALUES
(16, 'F00007', 'nero', 'l', 1, 180.00),
(17, 'D00002', 'celeste ', 'm', 1, 30.00),
(18, 'C00002', 'celeste', '37', 1, 60.00),
(19, 'A00003', 'blu', 'm', 1, 140.00),
(20, 'E00001', 'beige', 'l', 1, 105.00);

-- --------------------------------------------------------

--
-- Struttura della tabella `elencrip`
--

CREATE TABLE `elencrip` (
  `ContrRip` int NOT NULL,
  `Prod` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `elencrip`
--

INSERT INTO `elencrip` (`ContrRip`, `Prod`) VALUES
(7, 'A00003'),
(9, 'B00004'),
(6, 'D00001'),
(10, 'D00002'),
(8, 'F00007');

-- --------------------------------------------------------

--
-- Struttura della tabella `elencsped`
--

CREATE TABLE `elencsped` (
  `ContrSped` int NOT NULL,
  `Prod` varchar(6) NOT NULL,
  `Col` varchar(15) NOT NULL,
  `Tag` varchar(3) NOT NULL,
  `Qta` smallint NOT NULL,
  `Prezzo` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `elencsped`
--

INSERT INTO `elencsped` (`ContrSped`, `Prod`, `Col`, `Tag`, `Qta`, `Prezzo`) VALUES
(21, 'A00001', 'nero', 'l', 1, 150.00),
(21, 'D00002', 'celeste', 'm', 1, 30.00),
(22, 'B00003', 'bianco', 'm', 1, 35.00),
(22, 'C00002', 'celeste', '37', 1, 60.00),
(23, 'F00007', 'nero ', 'l', 1, 180.00),
(24, 'E00001', 'beige', 'l', 1, 105.00),
(25, 'A00003', 'blu', 'm', 1, 140.00),
(25, 'B00002', 'nero', 'l', 1, 90.00);

-- --------------------------------------------------------

--
-- Struttura della tabella `elencvendfis`
--

CREATE TABLE `elencvendfis` (
  `ContrVendFis` int NOT NULL,
  `Prod` varchar(6) NOT NULL,
  `Col` varchar(15) NOT NULL,
  `Tag` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Qta` smallint NOT NULL,
  `Prezzo` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `elencvendfis`
--

INSERT INTO `elencvendfis` (`ContrVendFis`, `Prod`, `Col`, `Tag`, `Qta`, `Prezzo`) VALUES
(26, 'C00003', 'marrone', '42', 1, 95.00),
(26, 'D00002', 'giallo', 'l', 1, 30.00),
(27, 'A00003', 'blu', 'm', 1, 140.00),
(27, 'F00005', 'blu', 'xs', 1, 105.00),
(28, 'B00002', 'nero', 'l', 1, 90.00),
(29, 'C00001', 'beige', '38', 1, 45.00),
(29, 'D00003', 'nero', 'm', 1, 120.00),
(29, 'E00001', 'marrone ', 'l', 1, 105.00),
(29, 'F00004', 'cipria', 'xl', 1, 84.00),
(30, 'A00001', 'bianco', 'xl', 1, 150.00),
(30, 'B00001', 'cipria ', 's', 1, 80.00),
(30, 'F00007', 'nero', 'l', 1, 180.00);

-- --------------------------------------------------------

--
-- Struttura della tabella `elencvendonl`
--

CREATE TABLE `elencvendonl` (
  `ContrVendOnl` int NOT NULL,
  `Prod` varchar(6) NOT NULL,
  `Col` varchar(15) NOT NULL,
  `Tag` varchar(3) NOT NULL,
  `Qta` smallint NOT NULL,
  `Prezzo` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `elencvendonl`
--

INSERT INTO `elencvendonl` (`ContrVendOnl`, `Prod`, `Col`, `Tag`, `Qta`, `Prezzo`) VALUES
(11, 'A00001', 'nero', 'l', 1, 150.00),
(11, 'D00002', 'celeste', 'm', 1, 30.00),
(12, 'B00003', 'bianco', 'm', 1, 35.00),
(12, 'C00002', 'celeste', '37', 1, 60.00),
(13, 'E00001', 'beige', 'l', 1, 105.00),
(14, 'F00007', 'nero', 'l', 1, 180.00),
(15, 'A00003', 'blu', 'm', 1, 140.00),
(15, 'B00002', 'nero', 'l', 1, 90.00);

-- --------------------------------------------------------

--
-- Struttura della tabella `fattura`
--

CREATE TABLE `fattura` (
  `CodFattura` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CodContr` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `fattura`
--

INSERT INTO `fattura` (`CodFattura`, `CodContr`) VALUES
('AA0011AA', 3),
('BB0011BB', 6),
('CC0011CC', 9),
('KK0011KK', 10),
('DD0011DD', 13),
('EE0011EE', 17),
('FF0011FF', 19),
('GG0011GG', 23),
('HH0011HH', 25),
('JJ0011JJ', 29);

-- --------------------------------------------------------

--
-- Struttura della tabella `fornitore`
--

CREATE TABLE `fornitore` (
  `IVAForn` varchar(11) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `Citta` varchar(40) NOT NULL,
  `CAP` varchar(5) DEFAULT NULL,
  `Via` varchar(45) DEFAULT NULL,
  `Civico` smallint DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `TempoCons` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `fornitore`
--

INSERT INTO `fornitore` (`IVAForn`, `Nome`, `Citta`, `CAP`, `Via`, `Civico`, `Email`, `TempoCons`) VALUES
('11234678890', 'paccasauro style', 'acquaviva', '63075', 'poma', 11, 'paccasauro@gmail.com', 10),
('12345678901', 'zero moda', 'san benedetto del tronto', '63074', 'bombreis', 3, 'zeromoda@gmail.com', NULL),
('34769500234', 'panetti calzature', 'montegranaro', '63812', 'loreto', 17, 'panetti@gmail.com', 20),
('57863457900', 'calzature pucci', 'milano', '20019', 'clux', 23, 'calzaturepucci@gmail.com', 30),
('58823757021', 'mr shoes', 'roma', '11035', 'boia', 8, NULL, 20);

-- --------------------------------------------------------

--
-- Struttura della tabella `orario`
--

CREATE TABLE `orario` (
  `InizioGG` timestamp NOT NULL,
  `FineGG` timestamp NULL DEFAULT NULL,
  `Dipend` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `orario`
--

INSERT INTO `orario` (`InizioGG`, `FineGG`, `Dipend`) VALUES
('2020-09-01 06:30:13', '2020-09-01 11:10:47', 'BRNBCC93P03ESC87'),
('2020-09-04 06:30:31', '2020-09-04 11:45:22', 'CHRKTK88P05XWF76'),
('2020-09-09 06:29:20', '2020-09-09 11:35:53', 'DVHSGG45P12JHC69'),
('2020-09-18 06:26:53', '2020-09-18 11:30:15', 'DRMCCC89P08ZTD33'),
('2020-09-18 06:30:46', '2020-09-18 11:39:28', 'FRDKRG45P05HJB88'),
('2020-09-19 06:30:05', '2020-09-19 11:43:17', 'SLVRNN50P01HGH66'),
('2020-09-24 06:30:44', '2020-09-24 11:35:42', 'MCHMYR78P10JIY99'),
('2020-09-28 06:28:44', '2020-09-28 11:32:19', 'KNZBCS89P06VJB89'),
('2020-10-02 12:30:20', '2020-10-02 18:30:44', 'BRNBCC93P03ESC87'),
('2020-10-02 12:31:20', '2020-10-02 18:32:25', 'SLVRNN50P01HGH66'),
('2020-10-03 12:28:41', '2020-10-03 18:32:49', 'FRDKRG45P05HJB88'),
('2020-10-07 12:33:15', '2020-10-07 18:24:45', 'MCHMYR78P10JIY99'),
('2020-10-09 12:30:17', '2020-10-09 18:41:53', 'CHRKTK88P05XWF76'),
('2020-10-17 12:35:12', '2020-10-17 18:27:46', 'KNZBCS89P06VJB89'),
('2020-10-20 12:28:53', '2020-10-20 18:34:37', 'DRMCCC89P08ZTD33'),
('2020-10-31 13:28:34', '2020-10-31 19:39:53', 'DVHSGG45P12JHC69'),
('2020-11-06 07:30:08', '2020-11-06 12:23:50', 'BRNBCC93P03ESC87'),
('2020-11-14 07:29:45', '2020-11-14 12:36:26', 'CHRKTK88P05XWF76'),
('2020-11-16 07:32:48', '2020-11-16 12:37:15', 'MCHMYR78P10JIY99'),
('2020-11-17 13:26:39', '2020-11-17 19:27:45', 'DVHSGG45P12JHC69'),
('2020-11-22 07:31:44', '2020-11-22 12:33:26', 'KNZBCS89P06VJB89'),
('2020-11-23 07:28:41', '2020-11-23 12:38:21', 'SLVRNN50P01HGH66'),
('2020-11-24 07:29:13', '2020-11-24 12:38:53', 'DRMCCC89P08ZTD33'),
('2020-11-29 07:24:36', '2020-11-29 12:36:21', 'FRDKRG45P05HJB88'),
('2020-12-04 13:25:46', '2020-12-04 19:32:27', 'DRMCCC89P08ZTD33'),
('2020-12-05 07:24:34', '2020-12-05 12:43:25', 'DVHSGG45P12JHC69'),
('2020-12-05 13:34:25', '2020-12-05 19:35:27', 'FRDKRG45P05HJB88'),
('2020-12-06 13:34:53', '2020-12-06 19:39:21', 'KNZBCS89P06VJB89'),
('2020-12-08 13:33:21', '2020-12-08 19:34:08', 'MCHMYR78P10JIY99'),
('2020-12-09 13:27:40', '2020-12-09 19:35:19', 'SLVRNN50P01HGH66'),
('2020-12-10 13:30:22', '2020-12-10 19:30:32', 'BRNBCC93P03ESC87'),
('2020-12-12 13:32:47', '2020-12-12 19:27:07', 'CHRKTK88P05XWF76'),
('2020-12-31 13:25:19', '2020-12-31 19:38:15', 'MCHMYR78P10JIY99'),
('2020-12-31 13:33:19', '2021-01-01 19:36:20', 'SLVRNN50P01HGH66'),
('2020-12-31 13:40:19', '2020-12-31 19:44:33', 'BRNBCC93P03ESC87'),
('2020-12-31 13:40:19', '2020-12-31 19:25:08', 'CHRKTK88P05XWF76'),
('2020-12-31 13:40:19', '2020-12-31 19:46:34', 'DRMCCC89P08ZTD33'),
('2020-12-31 13:40:19', '2020-12-31 18:52:27', 'FRDKRG45P05HJB88'),
('2020-12-31 13:40:19', '2021-01-01 19:26:46', 'KNZBCS89P06VJB89'),
('2020-12-31 14:40:19', '2020-12-31 19:33:13', 'DVHSGG45P12JHC69');

-- --------------------------------------------------------

--
-- Struttura della tabella `piattonl`
--

CREATE TABLE `piattonl` (
  `Nome` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `piattonl`
--

INSERT INTO `piattonl` (`Nome`) VALUES
('AliExpress'),
('Amazon'),
('eBay'),
('Multibrand');

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotto`
--

CREATE TABLE `prodotto` (
  `CodProd` varchar(6) NOT NULL,
  `Tipologia` varchar(15) NOT NULL,
  `Marca` varchar(20) NOT NULL,
  `Modello` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Sesso` char(1) NOT NULL,
  `Prezzo` float(5,2) NOT NULL,
  `Corridoio` tinyint NOT NULL,
  `Scaffale` tinyint NOT NULL,
  `Ripiano` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `prodotto`
--

INSERT INTO `prodotto` (`CodProd`, `Tipologia`, `Marca`, `Modello`, `Sesso`, `Prezzo`, `Corridoio`, `Scaffale`, `Ripiano`) VALUES
('A00001', 'abbigliamento', 'calvin klein', 'giaccone', 'u', 150.00, 1, 1, 2),
('A00002', 'abbigliamento', 'guess', 'giaccone', 'd', 160.00, 1, 2, 3),
('A00003', 'abbigliamento', 'tommy hilfinger', 'giaccone', 'u', 140.00, 1, 3, 4),
('B00001', 'pelletteria', 'liu jo', 'borsa', 'd', 80.00, 1, 4, 1),
('B00002', 'pelletteria', 'liu jo', 'borsa', 'u', 90.00, 1, 5, 2),
('B00003', 'pelletteria', 'guess', 'borsa', 'd', 35.00, 1, 6, 3),
('B00004', 'pelletteria', 'moschino', 'borsa', 'd', 50.00, 2, 7, 4),
('C00001', 'calzature', 'moschino', 'scarpe', 'd', 45.00, 2, 8, 1),
('C00002', 'calzature', 'moschino', 'scarpe', 'd', 60.00, 2, 9, 2),
('C00003', 'calzature', 'tommy hilfinger', 'scarpe', 'u', 95.00, 2, 10, 3),
('C00004', 'calzature', 'liu jo', 'scarpe', 'd', 110.00, 2, 11, 4),
('C00005', 'calzature', 'guess', 'scarpe', 'd', 100.00, 2, 12, 1),
('C00006', 'calzature', 'guess', 'scarpe', 'd', 90.00, 3, 13, 2),
('D00001', 'accessori', 'guess', 'cappello', 'd', 30.00, 3, 14, 3),
('D00002', 'accessori', 'moschino', 'cappello', 'd', 30.00, 3, 15, 4),
('D00003', 'accessori', 'versace', 'cappello', 'u', 120.00, 3, 16, 1),
('E00001', 'pelletteria', 'liu jo', 'cinta', 'u', 105.00, 3, 17, 2),
('E00002', 'pelletteria', 'tommy hilfinger', 'cinta', 'd', 89.00, 3, 18, 3),
('F00001', 'abbigliamento', 'guess', 'maglia', 'd', 140.00, 4, 19, 4),
('F00002', 'abbigliamento', 'versace', 'maglia', 'd', 160.00, 4, 20, 1),
('F00003', 'abbigliamento', 'tommy hilfinger', 'pantalone', 'u', 75.00, 4, 3, 2),
('F00004', 'abbigliamento', 'guess', 'maglia', 'd', 84.00, 4, 17, 3),
('F00005', 'abbigliamento', 'liu jo', 'maglia', 'd', 105.00, 4, 18, 4),
('F00006', 'abbigliamento', 'moschino', 'maglia', 'd', 120.00, 4, 19, 1),
('F00007', 'abbigliamento', 'calvin klein', 'maglia', 'u', 180.00, 4, 20, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `proprieta`
--

CREATE TABLE `proprieta` (
  `Prod` varchar(6) NOT NULL,
  `Tagl` varchar(3) NOT NULL,
  `Color` varchar(15) NOT NULL,
  `Quant` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `proprieta`
--

INSERT INTO `proprieta` (`Prod`, `Tagl`, `Color`, `Quant`) VALUES
('A00001', 'xl', 'bianco', 1),
('A00003', 'm', 'blu', 1),
('B00004', 's', 'oro', 1),
('C00001', '36', 'beige', 1),
('C00002', '40', 'celeste', 1),
('D00001', 'm', 'verde', 1),
('D00002', 'm', 'celeste', 1),
('E00002', 's', 'beige', 1),
('F00004', 'xl', 'cipria', 1),
('F00005', 'xs', 'blu', 1),
('A00001', 'xl', 'nero', 2),
('A00002', 'm', 'bordeaux', 2),
('B00003', 'm', 'bianco', 2),
('C00001', '39', 'beige', 2),
('C00004', '36', 'nero', 2),
('D00002', 'l', 'giallo', 2),
('D00003', 's', 'bianco', 2),
('E00002', 'm', 'marrone', 2),
('F00001', 's', 'bordeaux', 2),
('F00001', 's', 'rosa', 2),
('F00002', 'l', 'giallo', 2),
('F00002', 's', 'giallo', 2),
('F00006', 'm', 'verde', 2),
('A00001', 'l', 'bianco', 3),
('A00002', 's', 'bordeaux', 3),
('A00002', 's', 'rosa', 3),
('A00003', 'm', 'rosso', 3),
('B00001', 'm', 'cipria', 3),
('B00002', 'l', 'nero', 3),
('C00002', '45', 'marrone', 3),
('C00005', '37', 'argento', 3),
('F00001', 's', 'rosa', 3),
('F00001', 'xs', 'rosa', 3),
('F00005', 's', 'rosso', 3),
('A00001', 'l', 'nero', 4),
('A00002', 'm', 'rosa', 4),
('C00001', '38', 'beige', 4),
('C00003', '42', 'marrone', 4),
('C00006', '36', 'grigio', 4),
('D00003', 'm', 'nero', 4),
('F00003', 'xxl', 'cargo', 4),
('F00007', 'l', 'nero', 4),
('B00001', 's', 'cipria', 5),
('C00002', '37', 'celeste', 5),
('E00001', 'l', 'marrone', 5),
('E00001', 'l', 'beige', 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `taglia`
--

CREATE TABLE `taglia` (
  `Misura` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `taglia`
--

INSERT INTO `taglia` (`Misura`) VALUES
('35'),
('36'),
('37'),
('38'),
('39'),
('40'),
('41'),
('42'),
('43'),
('44'),
('45'),
('46'),
('47'),
('l'),
('m'),
('s'),
('xl'),
('xs'),
('xxl');

-- --------------------------------------------------------

--
-- Struttura della tabella `telclientefis`
--

CREATE TABLE `telclientefis` (
  `NumClienteFis` varchar(10) NOT NULL,
  `ClienteF` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `telclientefis`
--

INSERT INTO `telclientefis` (`NumClienteFis`, `ClienteF`) VALUES
('3880514654', 'ASMRZZ99P07F7G99'),
('3457789990', 'DNSSKR99P05GCJ99'),
('3459878604', 'DNSSKR99P05GCJ99'),
('0734562314', 'DRDRLZ94P06DOI03'),
('3490006736', 'DVDRPQ99P05NWR98'),
('3668764321', 'GRNGVN87P08SCG89'),
('3467895854', 'LCTRNN86P11CBH97'),
('3756435175', 'LDSCRZ89P03FGH00'),
('3490001234', 'MCHPST98P09TGH99'),
('0735239456', 'MRVNNG78P07CHG88'),
('3666787233', 'MRVNNG78P07CHG88'),
('3331247860', 'RNSLDT77P12CFV79');

-- --------------------------------------------------------

--
-- Struttura della tabella `telcorriere`
--

CREATE TABLE `telcorriere` (
  `NumCorr` varchar(10) NOT NULL,
  `Corr` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `telcorriere`
--

INSERT INTO `telcorriere` (`NumCorr`, `Corr`) VALUES
('0395234950', '15714511002'),
('0395234952', '15714511002'),
('0890475837', '48304759004'),
('0890475839', '48304759004'),
('0958362010', '58495603918'),
('0736930218', '64507990150'),
('0284903291', '95037480492');

-- --------------------------------------------------------

--
-- Struttura della tabella `telfornitore`
--

CREATE TABLE `telfornitore` (
  `NumForn` varchar(10) NOT NULL,
  `Forn` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `telfornitore`
--

INSERT INTO `telfornitore` (`NumForn`, `Forn`) VALUES
('3665657889', '11234678890'),
('3110304077', '12345678901'),
('3774568902', '12345678901'),
('3127474740', '34769500234'),
('3669877900', '34769500234'),
('3347568498', '57863457900'),
('3224850044', '58823757021');

-- --------------------------------------------------------

--
-- Struttura della tabella `telutente`
--

CREATE TABLE `telutente` (
  `NumUtente` varchar(10) NOT NULL,
  `User` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `telutente`
--

INSERT INTO `telutente` (`NumUtente`, `User`) VALUES
('0735595576', '0h_v1nz'),
('0735345123', 'chefspino'),
('0123789430', 'derrick180196'),
('3334569870', 'derrick180196'),
('3331247980', 'el_king'),
('0736595575', 'fabio_il_buonista'),
('1234567890', 'matty99'),
('0735557960', 'mister_food'),
('3779874045', 'mister_food'),
('0276908075', 'paccamath'),
('0987564783', 'paccasax'),
('3331247860', 'rinolubuffo');

-- --------------------------------------------------------

--
-- Struttura della tabella `utente`
--

CREATE TABLE `utente` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `Citta` varchar(40) DEFAULT NULL,
  `CAP` varchar(5) NOT NULL,
  `Via` varchar(45) NOT NULL,
  `Civico` smallint NOT NULL,
  `Email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `utente`
--

INSERT INTO `utente` (`Username`, `Password`, `Nome`, `Citta`, `CAP`, `Via`, `Civico`, `Email`) VALUES
('0h_v1nz', 'psicopatikiller', 'Vincenzo Pisacane', 'acireale', '85437', 'omerta', 79, 'michele.pistaferri@libero.it'),
('chefspino', 'cucinarechepassione', 'Rocky Spinozzi', 'somma vesuviana', '34506', 'maninpasta', 47, 'rockytespiezza@massi.finito'),
('derrick180196', 'denisacuore', 'Edoardo Derrick', 'tuttocuoio', '01923', 'manara', 12, 'disabileinnamorato@pacca.sax'),
('el_king', 'zulu66', 'Lorenzo Perticara', 'pizzo calabro', '03456', 'gerusalemme', 101, 'lorenzozulu@outlook.com'),
('fabio_il_buonista', 'forza samb', 'Fabio Carosi', NULL, '63074', 'de gasperi', 34, 'fabiosamba@gmail.com'),
('matty99', 'powerup', 'Mattia Girolamis', NULL, '22337', 'sus', 99, 'femboy99@libero.it'),
('mister_food', 'nanonano1978', 'Massimiliano Andolfi', 'alba adriatica', '60021', 'montebello', 22, 'andolfi2016@libero.it’'),
('paccamath', 'pacca123', 'Sandro Paccasasso', 'ascoli', '63069', 'perticara', 69, 'paccamath@down.com'),
('paccasax', 'paccadown', 'Federico Paccasessi', NULL, '69069', 'luca traini', 77, 'federicopacca97@libero.it'),
('rinolubuffo', 'buffett', 'Rino Soldato', 'san benedetto del tronto', '63074', 'accusi', 1, 'rhynosoldato@live.it');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `accesso`
--
ALTER TABLE `accesso`
  ADD PRIMARY KEY (`PiattOnline`,`User`) USING BTREE,
  ADD KEY `accesso_ibfk_2` (`User`);

--
-- Indici per le tabelle `bustapaga`
--
ALTER TABLE `bustapaga`
  ADD PRIMARY KEY (`CodBustaP`),
  ADD KEY `bustapaga_ibfk_1` (`Dipend`);

--
-- Indici per le tabelle `clientefis`
--
ALTER TABLE `clientefis`
  ADD PRIMARY KEY (`CF`);

--
-- Indici per le tabelle `colore`
--
ALTER TABLE `colore`
  ADD PRIMARY KEY (`Tinta`);

--
-- Indici per le tabelle `contracquisto`
--
ALTER TABLE `contracquisto`
  ADD PRIMARY KEY (`CodAcquisto`),
  ADD KEY `CodFornitore` (`CodFornitore`);

--
-- Indici per le tabelle `contratto`
--
ALTER TABLE `contratto`
  ADD PRIMARY KEY (`CodContratto`);

--
-- Indici per le tabelle `contrreso`
--
ALTER TABLE `contrreso`
  ADD PRIMARY KEY (`CodReso`),
  ADD KEY `User` (`Utent`),
  ADD KEY `VendOnl` (`VendOnl`);

--
-- Indici per le tabelle `contrriparazione`
--
ALTER TABLE `contrriparazione`
  ADD PRIMARY KEY (`CodRiparaz`),
  ADD KEY `Cliente` (`Cliente`);

--
-- Indici per le tabelle `contrspedizione`
--
ALTER TABLE `contrspedizione`
  ADD PRIMARY KEY (`CodSpediz`),
  ADD KEY `Corr` (`Corr`),
  ADD KEY `VendOnl` (`VendOnl`);

--
-- Indici per le tabelle `contrvenditafis`
--
ALTER TABLE `contrvenditafis`
  ADD PRIMARY KEY (`CodVendFis`),
  ADD KEY `Cliente` (`Cliente`);

--
-- Indici per le tabelle `contrvenditaonl`
--
ALTER TABLE `contrvenditaonl`
  ADD PRIMARY KEY (`CodVendOnl`),
  ADD KEY `User` (`User`),
  ADD KEY `Piattaforma` (`Piattaforma`);

--
-- Indici per le tabelle `corriere`
--
ALTER TABLE `corriere`
  ADD PRIMARY KEY (`IVACorr`);

--
-- Indici per le tabelle `costofisso`
--
ALTER TABLE `costofisso`
  ADD PRIMARY KEY (`CodCostoFisso`);

--
-- Indici per le tabelle `dipendente`
--
ALTER TABLE `dipendente`
  ADD PRIMARY KEY (`CodFisc`);

--
-- Indici per le tabelle `disponibilita`
--
ALTER TABLE `disponibilita`
  ADD PRIMARY KEY (`Quantita`);

--
-- Indici per le tabelle `elencacq`
--
ALTER TABLE `elencacq`
  ADD PRIMARY KEY (`ContrAcq`,`Prod`),
  ADD KEY `Prod` (`Prod`);

--
-- Indici per le tabelle `elencreso`
--
ALTER TABLE `elencreso`
  ADD PRIMARY KEY (`ContrRes`,`Prod`),
  ADD KEY `Prod` (`Prod`);

--
-- Indici per le tabelle `elencrip`
--
ALTER TABLE `elencrip`
  ADD PRIMARY KEY (`ContrRip`,`Prod`),
  ADD KEY `Prod` (`Prod`);

--
-- Indici per le tabelle `elencsped`
--
ALTER TABLE `elencsped`
  ADD PRIMARY KEY (`ContrSped`,`Prod`),
  ADD KEY `Prod` (`Prod`);

--
-- Indici per le tabelle `elencvendfis`
--
ALTER TABLE `elencvendfis`
  ADD PRIMARY KEY (`ContrVendFis`,`Prod`),
  ADD KEY `Prod` (`Prod`);

--
-- Indici per le tabelle `elencvendonl`
--
ALTER TABLE `elencvendonl`
  ADD PRIMARY KEY (`ContrVendOnl`,`Prod`),
  ADD KEY `Prod` (`Prod`);

--
-- Indici per le tabelle `fattura`
--
ALTER TABLE `fattura`
  ADD PRIMARY KEY (`CodFattura`),
  ADD KEY `CodContr` (`CodContr`);

--
-- Indici per le tabelle `fornitore`
--
ALTER TABLE `fornitore`
  ADD PRIMARY KEY (`IVAForn`);

--
-- Indici per le tabelle `orario`
--
ALTER TABLE `orario`
  ADD PRIMARY KEY (`InizioGG`,`Dipend`) USING BTREE,
  ADD KEY `Dipend` (`Dipend`);

--
-- Indici per le tabelle `piattonl`
--
ALTER TABLE `piattonl`
  ADD PRIMARY KEY (`Nome`);

--
-- Indici per le tabelle `prodotto`
--
ALTER TABLE `prodotto`
  ADD PRIMARY KEY (`CodProd`);

--
-- Indici per le tabelle `proprieta`
--
ALTER TABLE `proprieta`
  ADD PRIMARY KEY (`Prod`,`Tagl`,`Color`,`Quant`),
  ADD KEY `Tagl` (`Tagl`),
  ADD KEY `Color` (`Color`),
  ADD KEY `Quant` (`Quant`),
  ADD KEY `Prod` (`Prod`);

--
-- Indici per le tabelle `taglia`
--
ALTER TABLE `taglia`
  ADD PRIMARY KEY (`Misura`);

--
-- Indici per le tabelle `telclientefis`
--
ALTER TABLE `telclientefis`
  ADD PRIMARY KEY (`NumClienteFis`),
  ADD KEY `ClienteF` (`ClienteF`);

--
-- Indici per le tabelle `telcorriere`
--
ALTER TABLE `telcorriere`
  ADD PRIMARY KEY (`NumCorr`),
  ADD KEY `Corr` (`Corr`);

--
-- Indici per le tabelle `telfornitore`
--
ALTER TABLE `telfornitore`
  ADD PRIMARY KEY (`NumForn`),
  ADD KEY `Forn` (`Forn`);

--
-- Indici per le tabelle `telutente`
--
ALTER TABLE `telutente`
  ADD PRIMARY KEY (`NumUtente`),
  ADD KEY `User` (`User`);

--
-- Indici per le tabelle `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`Username`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `bustapaga`
--
ALTER TABLE `bustapaga`
  MODIFY `CodBustaP` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=789471;

--
-- AUTO_INCREMENT per la tabella `contratto`
--
ALTER TABLE `contratto`
  MODIFY `CodContratto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT per la tabella `costofisso`
--
ALTER TABLE `costofisso`
  MODIFY `CodCostoFisso` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `accesso`
--
ALTER TABLE `accesso`
  ADD CONSTRAINT `accesso_ibfk_1` FOREIGN KEY (`PiattOnline`) REFERENCES `piattonl` (`Nome`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `accesso_ibfk_2` FOREIGN KEY (`User`) REFERENCES `utente` (`Username`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `bustapaga`
--
ALTER TABLE `bustapaga`
  ADD CONSTRAINT `bustapaga_ibfk_1` FOREIGN KEY (`Dipend`) REFERENCES `dipendente` (`CodFisc`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `contracquisto`
--
ALTER TABLE `contracquisto`
  ADD CONSTRAINT `contracquisto_ibfk_1` FOREIGN KEY (`CodAcquisto`) REFERENCES `contratto` (`CodContratto`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `contracquisto_ibfk_2` FOREIGN KEY (`CodFornitore`) REFERENCES `fornitore` (`IVAForn`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `contrreso`
--
ALTER TABLE `contrreso`
  ADD CONSTRAINT `contrreso_ibfk_1` FOREIGN KEY (`CodReso`) REFERENCES `contratto` (`CodContratto`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `contrreso_ibfk_2` FOREIGN KEY (`Utent`) REFERENCES `utente` (`Username`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `contrreso_ibfk_3` FOREIGN KEY (`VendOnl`) REFERENCES `contrvenditaonl` (`CodVendOnl`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `contrriparazione`
--
ALTER TABLE `contrriparazione`
  ADD CONSTRAINT `contrriparazione_ibfk_1` FOREIGN KEY (`CodRiparaz`) REFERENCES `contratto` (`CodContratto`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `contrriparazione_ibfk_2` FOREIGN KEY (`Cliente`) REFERENCES `clientefis` (`CF`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `contrspedizione`
--
ALTER TABLE `contrspedizione`
  ADD CONSTRAINT `contrspedizione_ibfk_1` FOREIGN KEY (`CodSpediz`) REFERENCES `contratto` (`CodContratto`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `contrspedizione_ibfk_2` FOREIGN KEY (`Corr`) REFERENCES `corriere` (`IVACorr`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `contrspedizione_ibfk_3` FOREIGN KEY (`VendOnl`) REFERENCES `contrvenditaonl` (`CodVendOnl`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `contrvenditafis`
--
ALTER TABLE `contrvenditafis`
  ADD CONSTRAINT `contrvenditafis_ibfk_1` FOREIGN KEY (`CodVendFis`) REFERENCES `contratto` (`CodContratto`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `contrvenditafis_ibfk_2` FOREIGN KEY (`Cliente`) REFERENCES `clientefis` (`CF`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `contrvenditaonl`
--
ALTER TABLE `contrvenditaonl`
  ADD CONSTRAINT `contrvenditaonl_ibfk_1` FOREIGN KEY (`CodVendOnl`) REFERENCES `contratto` (`CodContratto`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `contrvenditaonl_ibfk_2` FOREIGN KEY (`User`) REFERENCES `utente` (`Username`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `contrvenditaonl_ibfk_3` FOREIGN KEY (`Piattaforma`) REFERENCES `piattonl` (`Nome`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `elencacq`
--
ALTER TABLE `elencacq`
  ADD CONSTRAINT `elencacq_ibfk_1` FOREIGN KEY (`ContrAcq`) REFERENCES `contracquisto` (`CodAcquisto`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `elencacq_ibfk_2` FOREIGN KEY (`Prod`) REFERENCES `prodotto` (`CodProd`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `elencreso`
--
ALTER TABLE `elencreso`
  ADD CONSTRAINT `elencreso_ibfk_1` FOREIGN KEY (`ContrRes`) REFERENCES `contrreso` (`CodReso`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `elencreso_ibfk_2` FOREIGN KEY (`Prod`) REFERENCES `prodotto` (`CodProd`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `elencrip`
--
ALTER TABLE `elencrip`
  ADD CONSTRAINT `elencrip_ibfk_1` FOREIGN KEY (`ContrRip`) REFERENCES `contrriparazione` (`CodRiparaz`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `elencrip_ibfk_2` FOREIGN KEY (`Prod`) REFERENCES `prodotto` (`CodProd`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Limiti per la tabella `elencsped`
--
ALTER TABLE `elencsped`
  ADD CONSTRAINT `elencsped_ibfk_1` FOREIGN KEY (`ContrSped`) REFERENCES `contrspedizione` (`CodSpediz`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `elencsped_ibfk_2` FOREIGN KEY (`Prod`) REFERENCES `prodotto` (`CodProd`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `elencvendfis`
--
ALTER TABLE `elencvendfis`
  ADD CONSTRAINT `elencvendfis_ibfk_1` FOREIGN KEY (`ContrVendFis`) REFERENCES `contrvenditafis` (`CodVendFis`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `elencvendfis_ibfk_2` FOREIGN KEY (`Prod`) REFERENCES `prodotto` (`CodProd`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `elencvendonl`
--
ALTER TABLE `elencvendonl`
  ADD CONSTRAINT `elencvendonl_ibfk_1` FOREIGN KEY (`ContrVendOnl`) REFERENCES `contrvenditaonl` (`CodVendOnl`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `elencvendonl_ibfk_2` FOREIGN KEY (`Prod`) REFERENCES `prodotto` (`CodProd`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `fattura`
--
ALTER TABLE `fattura`
  ADD CONSTRAINT `fattura_ibfk_1` FOREIGN KEY (`CodContr`) REFERENCES `contratto` (`CodContratto`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `orario`
--
ALTER TABLE `orario`
  ADD CONSTRAINT `orario_ibfk_1` FOREIGN KEY (`Dipend`) REFERENCES `dipendente` (`CodFisc`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `proprieta`
--
ALTER TABLE `proprieta`
  ADD CONSTRAINT `proprieta_ibfk_1` FOREIGN KEY (`Prod`) REFERENCES `prodotto` (`CodProd`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `proprieta_ibfk_2` FOREIGN KEY (`Tagl`) REFERENCES `taglia` (`Misura`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `proprieta_ibfk_3` FOREIGN KEY (`Color`) REFERENCES `colore` (`Tinta`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `proprieta_ibfk_4` FOREIGN KEY (`Quant`) REFERENCES `disponibilita` (`Quantita`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `telclientefis`
--
ALTER TABLE `telclientefis`
  ADD CONSTRAINT `telclientefis_ibfk_1` FOREIGN KEY (`ClienteF`) REFERENCES `clientefis` (`CF`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `telcorriere`
--
ALTER TABLE `telcorriere`
  ADD CONSTRAINT `telcorriere_ibfk_1` FOREIGN KEY (`Corr`) REFERENCES `corriere` (`IVACorr`) ON UPDATE CASCADE;

--
-- Limiti per la tabella `telfornitore`
--
ALTER TABLE `telfornitore`
  ADD CONSTRAINT `telfornitore_ibfk_1` FOREIGN KEY (`Forn`) REFERENCES `fornitore` (`IVAForn`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Limiti per la tabella `telutente`
--
ALTER TABLE `telutente`
  ADD CONSTRAINT `telutente_ibfk_1` FOREIGN KEY (`User`) REFERENCES `utente` (`Username`) ON DELETE RESTRICT ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
