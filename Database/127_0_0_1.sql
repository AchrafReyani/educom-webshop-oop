-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 23 mei 2024 om 15:18
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `achraf_webshop`
--
CREATE DATABASE IF NOT EXISTS `achraf_webshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `achraf_webshop`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `date` date NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `orders`
--

INSERT INTO `orders` (`id`, `date`, `user_id`) VALUES
(1, '0000-00-00', 17),
(2, '0000-00-00', 17),
(3, '0000-00-00', 17),
(4, '0000-00-00', 17),
(5, '0000-00-00', 17),
(6, '0000-00-00', 17),
(7, '2024-04-25', 17),
(8, '2024-04-25', 17),
(9, '2024-04-25', 17),
(10, '2024-04-25', 12),
(11, '2024-04-25', 12),
(12, '2024-04-25', 12),
(13, '2024-04-25', 12),
(14, '2024-04-25', 12),
(15, '2024-05-02', 25),
(16, '2024-05-02', 25),
(17, '2024-05-21', 32),
(18, '2024-05-21', 32),
(19, '2024-05-22', 33),
(20, '2024-05-23', 36),
(21, '2024-05-23', 36),
(22, '2024-05-23', 36),
(23, '2024-05-23', 36),
(24, '2024-05-23', 36),
(26, '2024-05-23', 36),
(27, '2024-05-23', 36),
(28, '2024-05-23', 36),
(29, '2024-05-23', 36),
(30, '2024-05-23', 36),
(31, '2024-05-23', 36),
(32, '2024-05-23', 36),
(33, '2024-05-23', 36),
(34, '2024-05-23', 36),
(35, '2024-05-23', 36),
(36, '2024-05-23', 36),
(37, '2024-05-23', 36),
(38, '2024-05-23', 36);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `order_rows`
--

CREATE TABLE `order_rows` (
  `id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `order_rows`
--

INSERT INTO `order_rows` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 3, 1, 9),
(2, 3, 2, 1),
(3, 3, 3, 2),
(4, 3, 5, 1),
(5, 3, 4, 5),
(6, 5, 1, 1),
(7, 6, 2, 1),
(8, 6, 3, 2),
(9, 6, 5, 3),
(10, 7, 1, 1),
(11, 10, 2, 4),
(12, 10, 1, 21),
(13, 10, 5, 4),
(14, 10, 3, 2),
(15, 10, 4, 2),
(16, 11, 1, 9),
(17, 11, 2, 1),
(18, 11, 3, 1),
(19, 11, 5, 1),
(20, 11, 4, 1),
(21, 12, 1, 3),
(22, 13, 1, 1),
(23, 14, 4, 1),
(24, 15, 1, 1),
(25, 16, 1, 6),
(26, 16, 2, 2),
(27, 16, 3, 1),
(28, 16, 5, 2),
(29, 17, 1, 2),
(30, 17, 3, 1),
(31, 18, 2, 14),
(32, 18, 4, 3),
(33, 19, 1, 8),
(34, 19, 2, 2),
(35, 19, 3, 1),
(36, 19, 5, 2),
(37, 19, 4, 1),
(48, 20, 2, 1),
(49, 21, 1, 1),
(50, 21, 3, 1),
(51, 21, 5, 1),
(52, 21, 2, 1),
(53, 21, 4, 1),
(54, 22, 4, 1),
(55, 22, 4, 1),
(56, 22, 4, 1),
(57, 22, 4, 1),
(58, 22, 4, 1),
(59, 24, 4, 1),
(60, 24, 4, 1),
(61, 24, 4, 1),
(62, 24, 4, 1),
(63, 24, 4, 1),
(64, 32, 4, 1),
(65, 32, 4, 1),
(66, 32, 4, 1),
(67, 32, 4, 1),
(68, 32, 4, 1),
(69, 33, 1, 1),
(70, 34, 1, 5),
(71, 34, 2, 1),
(72, 34, 3, 4),
(73, 34, 5, 2),
(74, 34, 4, 3),
(75, 35, 1, 7),
(76, 36, 4, 2),
(77, 36, 4, 2),
(78, 36, 4, 2),
(79, 36, 4, 2),
(80, 36, 4, 2),
(81, 37, 5, 1),
(82, 37, 5, 1),
(83, 37, 5, 1),
(84, 37, 5, 1),
(85, 37, 5, 1),
(86, 38, 1, 2),
(87, 38, 2, 1),
(88, 38, 3, 1),
(89, 38, 5, 1),
(90, 38, 4, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`) VALUES
(1, 'Sphero BOLT', 'Sphero BOLT is an app-enabled robotic ball that you can code to move, light up, make sounds, and more. It\'s a great way to learn about robotics, coding, and artificial intelligence (AI). Sphero BOLT is perfect for kids and adults alike.', 119.99, 'Images/Sphero.jpg'),
(2, 'Kano Computer Kit', 'The Kano Computer Kit is a great way for kids to learn about coding and build their own computer. The kit includes everything you need to build a Raspberry Pi computer, including a case, keyboard, mouse, and SD card. The kit also comes with a pre-loaded operating system that is designed for kids, with a drag-and-drop coding interface.', 99, 'Images/Kano.jpg'),
(3, 'Circuit Playground Express', 'The Circuit Playground Express is a versatile all-in-one development board from Adafruit. It\'s perfect for learning to code and electronics, especially for beginners. It has built-in LEDs, sensors, a speaker, and more, so you can start creating interactive projects without needing any extra components.', 34.99, 'Images/CPE.jpg'),
(4, 'Arduino Uno', 'Arduino is an open-source electronics platform based on easy-to-use hardware and software. Arduino boards can be used to read inputs - light sensors, PIR sensors, buttons, etc - and control outputs - like LEDs, motors, and other actuators. The Arduino Uno is a great starter board for anyone interested in learning electronics and programming.', 18, 'Images/Arduino.jpg'),
(5, 'Raspberry Pi', 'The credit card-sized Raspberry Pi is a series of small single-board computers developed in the United Kingdom by the Raspberry Pi Foundation with the intention of promoting the teaching of basic computer science in schools and in developing countries. The Raspberry Pi is a mini computer that plugs into a TV and a keyboard and mouse. It is a very affordable computer that can be used for many of the things that you do on your desktop computer, like browsing the internet, watching videos, and playing games.', 35, 'Images/RPI.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pwd` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `pwd`) VALUES
(12, 'voetballer@gmail.com', 'voetbal speler', '$2y$10$j1FX.nRRSoQZhWSTD.Xp8.DsOmw.9s8Sd7t/3ad1GTm7Qsun0.ckS'),
(13, 'achraf@gmail.com', 'achraf', '$2y$10$TCBHjD3lgCvLKLYAAEt.feO/p49y9vCwfD1vSaWyDmRbqWfdbhMUy'),
(14, 'test@gmail.com', 'test', '$2y$10$3dyy8/r957uhHPgnjEX4v.7RfPlS3SXnZFJX2lnFF1FOyWPC10dnO'),
(15, 'email@email.com', 'nieuwegebruiker', '$2y$10$ekuO90nqHGQB4vWigAutPe4DfQ94sJ3SAai0len8KH4xuV.LYh1FO'),
(17, 'test5@test.com', 'test5', '$2y$10$nf7/vxqmg5JHcMQRlWiEB.7dSqMtW0VmpkVbrBgFfbnL3uhT4aYSa'),
(18, 'new@mail.com', 'obama', '$2y$10$w4BG8IrCRKOeSdyHAbIEPuPLrKFVM248oT5nqx3FzTg7nLLNV2NmK'),
(25, 'emailvan@achraf.nl', 'achraf', '$2y$10$Gr5RduZKThTx3N7ly.CZguOXpAhCaYZPFm0YRefj9KoYG2kP7mloO'),
(27, 'gebruiker@gmail.com', 'gebruiker', '$2y$10$PVFlVaTtwiYllR8JK699meD.WsKWjOcAJy7D5nL.qVHO6CVe3McM.'),
(28, '5@5.com', 'test5', '$2y$10$FsWx2c3f7NR7f/73S9BDpOOyobywYHVgi3g5kbms2Ceu8AOcuULBC'),
(29, 'error@email.com', 'error', '$2y$10$nkaM8qKQX21dvSOUm9VifeH2k2LM2rQ9TU32HQnzTKK7Zeb3YYUyq'),
(30, 'banaan@aap.com', 'aap', '$2y$10$xrPMFgQjqkMO1cr9bUPqSuP8DuMHfhCx64DcRSbusiy5hVctJJ06i'),
(32, 'consument@mail.com', 'consument', '$2y$10$Fk.pexA672jrvMwuk1DZSurkKcDGLVHw7qcLlpbY1oYCWqhE1CmHy'),
(33, 'test@example.com', 'testuser', '$2y$10$nRRk2HfLOCFSz//jvnpxSODH1SzKl2g6PZMa71acQaeXBZaIaJZES'),
(34, 'crud@createuser.com', 'crudaccount', '$2y$10$brm5dPOF0KAEYFMiMj75YeolRLsGdAjiWYupoDoiYN1r6XEzD38yG'),
(35, 'crud2@createuser.com', 'aa', '$2y$10$gTQU2K/SWP.08LdegGhrPOQDkhE6SkD8zzjxH49lSJArl/xvNR/Fy'),
(36, 'email@cart.com', 'submitcarttest', '$2y$10$5WLSHJ2eRTb6OX8km.xnvuF6aNP9ywrAP1Kg8t8HMVWtklJiT75c6');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link order to user with id` (`user_id`);

--
-- Indexen voor tabel `order_rows`
--
ALTER TABLE `order_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreign key for order id with id from order` (`order_id`),
  ADD KEY `foreign key for product id with id from product` (`product_id`);

--
-- Indexen voor tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT voor een tabel `order_rows`
--
ALTER TABLE `order_rows`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT voor een tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `link order to user with id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Beperkingen voor tabel `order_rows`
--
ALTER TABLE `order_rows`
  ADD CONSTRAINT `foreign key for order id with id from order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `foreign key for product id with id from product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
