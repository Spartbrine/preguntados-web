-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2024 at 06:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbquestions`
--

-- --------------------------------------------------------

--
-- Table structure for table `incorrect_answers`
--
CREATE DATABASE dbquestions;
USE dbquestions;
CREATE TABLE `incorrect_answers` (
  `id` int(11) NOT NULL,
  `id_question` int(11) DEFAULT NULL,
  `incorrect_answer1` varchar(255) DEFAULT NULL,
  `incorrect_answer2` varchar(255) DEFAULT NULL,
  `incorrect_answer3` varchar(255) DEFAULT NULL,
  `incorrect_answer4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `incorrect_answers`
--

INSERT INTO `incorrect_answers` (`id`, `id_question`, `incorrect_answer1`, `incorrect_answer2`, `incorrect_answer3`, `incorrect_answer4`) VALUES
(1, 1, 'Londres', 'Madrid', 'Berlín', 'Roma'),
(2, 2, 'Lope de Vega', 'Francisco de Quevedo', 'Pedro Calderón de la Barca', 'Tirso de Molina'),
(3, 3, 'Nilo', 'Yangtsé', 'Misisipi', 'Danubio'),
(4, 4, '1968', '1970', '1965', '1972'),
(5, 5, 'Océano Atlántico', 'Océano Índico', 'Océano Ártico', 'Océano Antártico'),
(6, 6, 'Pablo Picasso', 'Vincent van Gogh', 'Rembrandt', 'Claude Monet'),
(7, 7, 'Canadá', 'China', 'Estados Unidos', 'Brasil'),
(8, 8, 'León', 'Tigre', 'Caballo', 'Lobo'),
(9, 9, 'Mario Vargas Llosa', 'Isabel Allende', 'Julio Cortázar', 'Jorge Luis Borges'),
(10, 10, 'Mónaco', 'San Marino', 'Liechtenstein', 'Malta'),
(11, 11, 'Hidrógeno', 'Carbono', 'Nitrógeno', 'Helio'),
(12, 12, 'India', 'Estados Unidos', 'Indonesia', 'Brasil'),
(13, 13, 'Baloncesto', 'Críquet', 'Tenis', 'Atletismo'),
(14, 14, 'Isaac Newton', 'Galileo Galilei', 'Nikola Tesla', 'Stephen Hawking'),
(15, 15, 'Español', 'Inglés', 'Hindi', 'Árabe'),
(16, 16, 'Charles Babbage', 'Bill Gates', 'Steve Jobs', 'Tim Berners-Lee'),
(17, 17, 'Monte Kilimanjaro', 'Monte Aconcagua', 'Monte McKinley', 'Monte Elbrus'),
(18, 18, 'Asia', 'Europa', 'América del Sur', 'América del Norte'),
(19, 19, 'Osaka', 'Kyoto', 'Nagoya', 'Hiroshima'),
(20, 20, 'Guitarra', 'Violín', 'Flauta', 'Batería'),
(21, 21, 'Euro', 'Dólar', 'Franco', 'Corona'),
(22, 22, 'Miguel Ángel', 'Rafael', 'Sandro Botticelli', 'Caravaggio'),
(23, 23, 'Saturno', 'Neptuno', 'Marte', 'Urano'),
(24, 24, 'Teléfono', 'Televisión', 'Telégrafo', 'Radio'),
(25, 25, 'China', 'Rusia', 'Reino Unido', 'Alemania'),
(26, 26, '1918', '1912', '1939', '1945'),
(27, 27, 'Charles Dickens', 'Jane Austen', 'Mark Twain', 'Ernest Hemingway'),
(28, 28, 'Sídney', 'Melbourne', 'Brisbane', 'Perth'),
(29, 29, 'Citoplasma', 'Mitocondria', 'Ribosoma', 'Lisosoma'),
(30, 30, 'Biblia', 'Torá', 'Vedas', 'Tripitaka'),
(31, 31, 'Hierro', 'Cobre', 'Calcio', 'Magnesio'),
(32, 32, 'Michael Jackson', 'Frank Sinatra', 'Prince', 'Bob Dylan'),
(33, 33, 'España', 'Grecia', 'Francia', 'Turquía'),
(34, 34, 'Cerebro', 'Hígado', 'Pulmones', 'Riñones'),
(35, 35, 'Italia', 'Alemania', 'España', 'Reino Unido'),
(36, 36, 'Oxígeno', 'Carbono', 'Nitrógeno', 'Helio'),
(37, 37, 'Pacífico', 'Índico', 'Ártico', 'Antártico'),
(38, 38, 'Thomas Jefferson', 'John Adams', 'Abraham Lincoln', 'James Madison'),
(39, 39, 'Gobi', 'Kalahari', 'Gran Desierto de Arena', 'Desierto de Sonora'),
(40, 40, 'Mercurio', 'Tierra', 'Marte', 'Júpiter'),
(41, 41, 'CO2', 'H2SO4', 'NaCl', 'CH4'),
(42, 42, 'Claude Monet', 'Pablo Picasso', 'Vincent van Gogh', 'Salvador Dalí'),
(43, 43, 'Toronto', 'Vancouver', 'Montreal', 'Calgary'),
(44, 44, 'Alemania', 'Brasil', 'Argentina', 'Italia'),
(45, 45, '1990', '1987', '1991', '1985'),
(46, 46, 'Virgilio', 'Sófocles', 'Ovidio', 'Eurípides'),
(47, 47, 'Won', 'Dólar', 'Rupia', 'Peso'),
(48, 48, 'Grecia', 'México', 'Perú', 'Irán');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer`) VALUES
(1, '¿Cuál es la capital de Francia?', 'París'),
(2, '¿Quién escribió \"Don Quijote de la Mancha\"?', 'Miguel de Cervantes'),
(3, '¿Cuál es el río más largo del mundo?', 'Amazonas'),
(4, '¿En qué año llegó el hombre a la luna?', '1969'),
(5, '¿Cuál es el océano más grande del mundo?', 'Océano Pacífico'),
(6, '¿Quién pintó la Mona Lisa?', 'Leonardo da Vinci'),
(7, '¿Cuál es el país más grande del mundo?', 'Rusia'),
(8, '¿Cuál es el animal terrestre más rápido del mundo?', 'Guepardo'),
(9, '¿Quién es el autor de \"Cien años de soledad\"?', 'Gabriel García Márquez'),
(10, '¿Cuál es el país más pequeño del mundo?', 'Ciudad del Vaticano'),
(11, '¿Cuál es el elemento químico cuyo símbolo es \"O\"?', 'Oxígeno'),
(12, '¿Qué país tiene la mayor cantidad de población?', 'China'),
(13, '¿Cuál es el deporte más popular del mundo?', 'Fútbol'),
(14, '¿Quién desarrolló la teoría de la relatividad?', 'Albert Einstein'),
(15, '¿Cuál es el idioma más hablado en el mundo?', 'Chino mandarín'),
(16, '¿Quién es conocido como el padre de la informática?', 'Alan Turing'),
(17, '¿Cuál es la montaña más alta del mundo?', 'Monte Everest'),
(18, '¿En qué continente se encuentra Egipto?', 'África'),
(19, '¿Cuál es la capital de Japón?', 'Tokio'),
(20, '¿Qué instrumento musical tiene 88 teclas?', 'Piano'),
(21, '¿Cuál es la moneda oficial del Reino Unido?', 'Libra esterlina'),
(22, '¿Quién pintó \"La última cena\"?', 'Leonardo da Vinci'),
(23, '¿Cuál es el planeta más grande del sistema solar?', 'Júpiter'),
(24, '¿Qué invento hizo Thomas Edison?', 'Bombilla'),
(25, '¿Cuál es el país con más medallas olímpicas?', 'Estados Unidos'),
(26, '¿En qué año comenzó la Primera Guerra Mundial?', '1914'),
(27, '¿Quién escribió \"Hamlet\"?', 'William Shakespeare'),
(28, '¿Cuál es la capital de Australia?', 'Canberra'),
(29, '¿Cuál es la estructura celular que contiene el material genético?', 'Núcleo'),
(30, '¿Cuál es el libro sagrado del Islam?', 'Corán'),
(31, '¿Cuál es el metal más abundante en la corteza terrestre?', 'Aluminio'),
(32, '¿Quién es conocido como el \"Rey del Rock and Roll\"?', 'Elvis Presley'),
(33, '¿Cuál es el país de origen de la pizza?', 'Italia'),
(34, '¿Qué organo humano es responsable de bombear sangre?', 'Corazón'),
(35, '¿En qué país se encuentra la Torre Eiffel?', 'Francia'),
(36, '¿Cuál es el primer elemento de la tabla periódica?', 'Hidrógeno'),
(37, '¿Cuál es el océano que separa América de Europa?', 'Atlántico'),
(38, '¿Quién fue el primer presidente de los Estados Unidos?', 'George Washington'),
(39, '¿Cuál es el desierto más grande del mundo?', 'Sahara'),
(40, '¿Cuál es el segundo planeta más cercano al sol?', 'Venus'),
(41, '¿Cuál es la fórmula química del agua?', 'H2O'),
(42, '¿Quién pintó \"El grito\"?', 'Edvard Munch'),
(43, '¿Cuál es la capital de Canadá?', 'Ottawa'),
(44, '¿Qué país ganó la Copa Mundial de la FIFA en 2018?', 'Francia'),
(45, '¿En qué año cayó el Muro de Berlín?', '1989'),
(46, '¿Quién escribió \"La Odisea\"?', 'Homero'),
(47, '¿Cuál es la moneda oficial de Japón?', 'Yen'),
(48, '¿En qué país se encuentran las pirámides de Giza?', 'Egipto');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `incorrect_answers`
--
ALTER TABLE `incorrect_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_question` (`id_question`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incorrect_answers`
--
ALTER TABLE `incorrect_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `incorrect_answers`
--
ALTER TABLE `incorrect_answers`
  ADD CONSTRAINT `incorrect_answers_ibfk_1` FOREIGN KEY (`id_question`) REFERENCES `questions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
