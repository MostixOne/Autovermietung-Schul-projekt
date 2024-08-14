-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 02. Mrz 2020 um 23:08
-- Server-Version: 10.4.8-MariaDB
-- PHP-Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `vermietung`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `autos`
--

CREATE TABLE `autos` (
  `Model` varchar(60) NOT NULL,
  `Hersteller` enum('BMW','Mercedes-Benz','Tesla','Dodge','Ford','VW','Audi','SEAT','Skoda','Aston Martin','Alfa Romeo','Fiat','Abarth') NOT NULL,
  `Baujahr` int(4) NOT NULL,
  `Kraftstoff` enum('Diesel','Benzin','Strom') NOT NULL,
  `Typ` int(11) NOT NULL COMMENT '1== Transporter\r\n2 == Kleinwagen\r\n3 == Luxus\r\n4 == Elektroauto\r\n5 == Sportwagen\r\n6 == Limousine',
  `KM` varchar(20) NOT NULL,
  `PS` int(5) NOT NULL,
  `Preis` smallint(4) NOT NULL,
  `Getriebe` enum('Schaltgetriebe','Automatik') NOT NULL,
  `IMG` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `autos`
--

INSERT INTO `autos` (`Model`, `Hersteller`, `Baujahr`, `Kraftstoff`, `Typ`, `KM`, `PS`, `Preis`, `Getriebe`, `IMG`) VALUES
('C63 AMG', 'Mercedes-Benz', 2019, 'Benzin', 5, '36.680', 476, 104, 'Automatik', '../img/cars/c63.jpeg'),
('Crafter', 'VW', 2014, 'Diesel', 1, '94.050', 109, 50, 'Schaltgetriebe', '../img/cars/crafter.jpg'),
('Transporter T6.1 Kombi', 'VW', 2019, 'Diesel', 1, '2.203', 110, 39, 'Schaltgetriebe', '../img/cars/t6.jpg'),
('Sprinter', 'Mercedes-Benz', 2013, 'Diesel', 1, '158.230', 163, 44, 'Schaltgetriebe', '../img/cars/sprinter.jpg'),
('Vito', 'Mercedes-Benz', 2017, 'Diesel', 1, '54.200', 190, 39, 'Automatik', '../img/cars/vito.jpg'),
('E63 AMG', 'Mercedes-Benz', 2019, 'Benzin', 5, '80.604', 480, 120, 'Automatik', '../img/cars/e63.jpg'),
('AMG GT Coupé', 'Mercedes-Benz', 2019, 'Benzin', 5, '20.600', 639, 260, 'Schaltgetriebe', '../img/cars/gtc.jpg'),
('E55 AMG', 'Mercedes-Benz', 2004, 'Benzin', 5, '178.904', 476, 80, 'Automatik', '../img/cars/e55.jpg'),
('AMG GT S', 'Mercedes-Benz', 2015, 'Benzin', 5, '86.500', 500, 120, 'Automatik', '../img/cars/gts.jpg'),
('AMG GT R', 'Mercedes-Benz', 2016, 'Benzin', 5, '80.500', 585, 120, 'Automatik', '../img/cars/gtr.jpg'),
('Model 3', 'Tesla', 0, 'Strom', 4, '70.680', 490, 125, 'Automatik', '../img/cars/model3.jpg'),
('Model X', 'Tesla', 2012, 'Strom', 4, '73.680', 490, 125, 'Automatik', '../img/cars/modelx.jpg'),
('Model S Performance ', 'Tesla', 2014, 'Strom', 4, '68.680', 490, 125, 'Automatik', '../img/cars/modelsp.jpg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bestellung`
--

CREATE TABLE `bestellung` (
  `ID` int(11) NOT NULL,
  `K_ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Nachname` varchar(255) DEFAULT NULL,
  `Autoname` varchar(255) DEFAULT NULL,
  `Tage` smallint(10) DEFAULT NULL,
  `Preis` smallint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `bestellung`
--

INSERT INTO `bestellung` (`ID`, `K_ID`, `Name`, `Nachname`, `Autoname`, `Tage`, `Preis`) VALUES
(6, 1, 'Admin', 'Admin2', 'VW Transporter T6.1 Kombi ', 21, 819),
(7, 1, 'Admin', 'Admin2', 'VW Transporter T6.1 Kombi ', 21, 819),
(8, 1, 'Admin', 'Admin2', 'Mercedes Sprinter ', 23, 1012),
(9, 1, 'Admin', 'Admin2', 'Mercedes C63 AMG ', 12, 1248),
(10, 1, 'Admin', 'Admin2', 'Tesla Model 3 ', 12, 1500),
(11, 1, 'Admin', 'Admin2', 'Mercedes-Benz C63 AMG ', 22, 2288),
(12, 1, 'Admin', 'Admin2', 'Tesla Model 3 ', 3, 375),
(13, 1, 'Admin', 'Admin2', 'Tesla Model S Performance  ', 1, 125),
(14, 1, 'Admin', 'Admin2', 'Mercedes-Benz C63 AMG ', 1, 104);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `katogorien`
--

CREATE TABLE `katogorien` (
  `KatID` int(11) NOT NULL,
  `Katname` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `pfad` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `katogorien`
--

INSERT INTO `katogorien` (`KatID`, `Katname`, `img`, `pfad`) VALUES
(1, 'Transporter', '/img/Kat/T.jpg', '?Transporter'),
(2, 'Kleinwagen', '/img/Kat/K.jpg', '?Kwagen'),
(3, 'Luxus', '/img/Kat/L.png', '?Luxus'),
(4, 'Elektroauto', '/img/Kat/E.jpg', '?Eauto'),
(5, 'Sportwagen', '/img/Kat/S.jpg', '?Sportwagen'),
(6, 'Limousine', '/img/Kat/Lim.jpg', '?Lim');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kundendaten`
--

CREATE TABLE `kundendaten` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Nachname` varchar(50) NOT NULL,
  `PLZ_ORT` varchar(20) NOT NULL,
  `Strasse` varchar(80) NOT NULL,
  `Email` varchar(80) NOT NULL,
  `Passwort` varchar(80) NOT NULL,
  `Anrede` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `kundendaten`
--

INSERT INTO `kundendaten` (`ID`, `Name`, `Nachname`, `PLZ_ORT`, `Strasse`, `Email`, `Passwort`, `Anrede`) VALUES
(1, 'Admin', 'Admin2', '343r Essen', 'dsdagsadg 55 ', 'kk@kk.de', '123456789s', ''),
(2, 'dfdsa', 'sadfsadf', 'asdfsa', 'sadsadf', 'adsf@fdsf.de', '12314dfdas', ''),
(3, 'dfsf', 'afasdf', 'dfasdf', 'asdfasdf', 'asdf@dsff.de', '123456789s', 'Herr'),
(4, 'dfsf', 'afasdf', 'dfasdf', 'asdfasdf', 'asdf2@dsff.de', '2323421525', 'Herr');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kundenservice`
--

CREATE TABLE `kundenservice` (
  `name` varchar(255) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `sterne` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `kundenservice`
--

INSERT INTO `kundenservice` (`name`, `rank`, `sterne`) VALUES
('Max M.', '1st Level Supportleitung', '6'),
('Sascha R.', 'Auszubildender', '1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `marken`
--

CREATE TABLE `marken` (
  `Marke` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `marken`
--

INSERT INTO `marken` (`Marke`) VALUES
('BMW'),
('Mercedes-Benz'),
('Tesla'),
('Porsche'),
('VW'),
('Dodge');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `slider`
--

CREATE TABLE `slider` (
  `ID` int(11) NOT NULL,
  `name` varchar(70) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `pfad` varchar(255) DEFAULT NULL,
  `Sponsor` enum('ja','nein') DEFAULT 'nein',
  `Sponsor_von` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `slider`
--

INSERT INTO `slider` (`ID`, `name`, `date`, `pfad`, `Sponsor`, `Sponsor_von`) VALUES
(1, 'Volkswagen', '0000-00-00 00:00:00', '/img/slider/1.jpg', 'ja', 'Schneider'),
(2, 'Tesla Model S', '0000-00-00 00:00:00', '/img/slider/s.jpg', 'ja', 'Telsa'),
(3, 'afsdaf', '2020-02-19 22:12:57', '/img/slider/1.jpg', 'nein', NULL),
(4, 'dsfgdfsg', '2020-02-19 22:12:46', '/img/slider/2.jpeg', 'nein', NULL),
(5, 'fdsf', '2020-02-19 22:12:51', '/img/slider/s.jpg', 'nein', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `toasts`
--

CREATE TABLE `toasts` (
  `ID` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nachname` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `toasts`
--

INSERT INTO `toasts` (`ID`, `name`, `nachname`, `text`, `item`) VALUES
(102, 'Admin', 'Admin2', 'Hat einen Tesla Model S Performance  gemietet f?r 1 Tage', '125'),
(103, 'Admin', 'Admin2', 'Hat einen Mercedes-Benz C63 AMG gemietet (1 Tage).', '104');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tstrecke`
--

CREATE TABLE `tstrecke` (
  `ID` int(11) NOT NULL,
  `Teststrecke` varchar(255) DEFAULT NULL,
  `Stadt` varchar(255) DEFAULT NULL,
  `timg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `tstrecke`
--

INSERT INTO `tstrecke` (`ID`, `Teststrecke`, `Stadt`, `timg`) VALUES
(1, 'Race King', 'Ulm', '../img/tstrecke/1.png');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `autos`
--
ALTER TABLE `autos`
  ADD KEY `Typ` (`Typ`);

--
-- Indizes für die Tabelle `bestellung`
--
ALTER TABLE `bestellung`
  ADD PRIMARY KEY (`ID`) USING BTREE,
  ADD KEY `K_ID` (`K_ID`);

--
-- Indizes für die Tabelle `katogorien`
--
ALTER TABLE `katogorien`
  ADD PRIMARY KEY (`KatID`);

--
-- Indizes für die Tabelle `kundendaten`
--
ALTER TABLE `kundendaten`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `toasts`
--
ALTER TABLE `toasts`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `tstrecke`
--
ALTER TABLE `tstrecke`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `bestellung`
--
ALTER TABLE `bestellung`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT für Tabelle `katogorien`
--
ALTER TABLE `katogorien`
  MODIFY `KatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `kundendaten`
--
ALTER TABLE `kundendaten`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `slider`
--
ALTER TABLE `slider`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `toasts`
--
ALTER TABLE `toasts`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT für Tabelle `tstrecke`
--
ALTER TABLE `tstrecke`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `autos`
--
ALTER TABLE `autos`
  ADD CONSTRAINT `autos_ibfk_1` FOREIGN KEY (`Typ`) REFERENCES `katogorien` (`KatID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
