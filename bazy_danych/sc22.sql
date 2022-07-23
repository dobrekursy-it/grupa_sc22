-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Czas generowania: 23 Lip 2022, 11:58
-- Wersja serwera: 5.7.38
-- Wersja PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `app_db`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sc22_miejscowosc`
--

CREATE TABLE `sc22_miejscowosc` (
  `id` int(11) NOT NULL,
  `miejscowosc` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `sc22_miejscowosc`
--

INSERT INTO `sc22_miejscowosc` (`id`, `miejscowosc`) VALUES
(1, 'Wroclaw'),
(2, 'Warszawa'),
(3, 'Bydgoszcz');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sc22_przeglad`
--

CREATE TABLE `sc22_przeglad` (
  `id` int(11) NOT NULL,
  `wieza_id` int(11) NOT NULL,
  `technik_id` int(11) NOT NULL,
  `wynik` varchar(128) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `sc22_przeglad`
--

INSERT INTO `sc22_przeglad` (`id`, `wieza_id`, `technik_id`, `wynik`, `data`) VALUES
(1, 1, 1, 'OK', '2010-10-10'),
(2, 1, 2, 'Nie dziala', '0205-10-10'),
(3, 2, 2, 'OK', '2015-10-11'),
(4, 3, 2, 'Nie dziala', '2015-10-11'),
(5, 4, 3, 'OK', '2015-10-11');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sc22_technik`
--

CREATE TABLE `sc22_technik` (
  `id` int(11) NOT NULL,
  `imie_nazwisko` varchar(64) NOT NULL,
  `telefon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `sc22_technik`
--

INSERT INTO `sc22_technik` (`id`, `imie_nazwisko`, `telefon`) VALUES
(1, 'Seweryn', 'aaa123456'),
(2, 'Szczepan', 'aaa321321'),
(3, 'Karolina', 'bbb987654');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sc22_wieza`
--

CREATE TABLE `sc22_wieza` (
  `id` int(11) NOT NULL,
  `lokalizacja` point NOT NULL,
  `miejscowosc_id` int(11) NOT NULL,
  `adres` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `sc22_wieza`
--

INSERT INTO `sc22_wieza` (`id`, `lokalizacja`, `miejscowosc_id`, `adres`) VALUES
(1, 0x0000000001010000000000000000000000000000000000f03f, 1, 'Falyszywa 8'),
(2, 0x000000000101000000000000000000f03f000000000000f03f, 1, 'Prawdziwa 8'),
(3, 0x000000000101000000000000000000f03f0000000000000840, 2, 'Nierealna 1'),
(4, 0x000000000101000000000000000000f03f0000000000000040, 3, 'Falszywa 8');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `sc22_miejscowosc`
--
ALTER TABLE `sc22_miejscowosc`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sc22_przeglad`
--
ALTER TABLE `sc22_przeglad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wieza_id` (`wieza_id`),
  ADD KEY `technik_id` (`technik_id`);

--
-- Indeksy dla tabeli `sc22_technik`
--
ALTER TABLE `sc22_technik`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sc22_wieza`
--
ALTER TABLE `sc22_wieza`
  ADD PRIMARY KEY (`id`),
  ADD KEY `miejscowosc_id` (`miejscowosc_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `sc22_miejscowosc`
--
ALTER TABLE `sc22_miejscowosc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `sc22_przeglad`
--
ALTER TABLE `sc22_przeglad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `sc22_technik`
--
ALTER TABLE `sc22_technik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `sc22_wieza`
--
ALTER TABLE `sc22_wieza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `sc22_wieza`
--
ALTER TABLE `sc22_wieza`
  ADD CONSTRAINT `sc22_wieza_ibfk_1` FOREIGN KEY (`id`) REFERENCES `sc22_przeglad` (`wieza_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
