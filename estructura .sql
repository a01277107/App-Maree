CREATE DATABASE IF NOT EXISTS MAREE;
USE MAREE;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-03-2026 a las 05:08:33
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `maree`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agregaringredienteextra`
--

CREATE TABLE `agregaringredienteextra` (
  `IDIngredienteExtra` int(11) NOT NULL,
  `CostoAdicional` double DEFAULT NULL,
  `NumeroIngredienteExtra` int(11) DEFAULT NULL,
  `IDPlatillo` int(11) DEFAULT NULL,
  `IDIngrediente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `agregaringredienteextra`
--

INSERT INTO `agregaringredienteextra` (`IDIngredienteExtra`, `CostoAdicional`, `NumeroIngredienteExtra`, `IDPlatillo`, `IDIngrediente`) VALUES
(1, 25, 1, 1, 1),
(2, 15, 2, 1, 4),
(3, 35, 1, 2, 5),
(4, 10, 1, 8, 3),
(5, 15, 2, 11, 9),
(6, 20, 1, 10, 6),
(7, 25, 1, 5, 8),
(8, 30, 1, 14, 17),
(9, 12, 1, 15, 19),
(10, 18, 1, 9, 7),
(11, 10, 3, 12, 16),
(12, 5, 1, 8, 18),
(13, 20, 1, 3, 20),
(14, 15, 1, 14, 14),
(15, 10, 1, 5, 15),
(16, 40, 1, 12, 10),
(17, 15, 1, 3, 11),
(18, 20, 1, 5, 12),
(19, 12, 1, 14, 13),
(20, 25, 1, 6, 1),
(21, 10, 1, 21, 21),
(22, 5, 1, 22, 22),
(23, 8, 1, 23, 23),
(24, 7, 1, 24, 24),
(25, 110, 1, 25, 25),
(26, 10, 1, 26, 26),
(27, 12, 1, 27, 27),
(28, 26, 1, 28, 28),
(29, 65, 1, 29, 29),
(30, 14, 1, 30, 30),
(31, 9, 1, 31, 31),
(32, 15, 1, 32, 32),
(33, 40, 1, 33, 33),
(34, 8, 1, 34, 34),
(35, 35, 1, 35, 35),
(36, 12, 1, 36, 36),
(37, 16, 1, 37, 37),
(38, 25, 1, 38, 38),
(39, 14, 1, 39, 39),
(40, 18, 1, 40, 40),
(41, 12, 1, 41, 41),
(42, 8, 1, 42, 42),
(43, 10, 1, 43, 43),
(44, 32, 1, 44, 44),
(45, 15, 1, 45, 45),
(46, 20, 1, 46, 46),
(47, 10, 1, 47, 47),
(48, 5, 1, 48, 48),
(49, 12, 1, 49, 49),
(50, 22, 1, 50, 50),
(51, 12, 1, 51, 51),
(52, 25, 1, 52, 52),
(53, 18, 1, 53, 53),
(54, 10, 1, 54, 54),
(55, 15, 1, 55, 55),
(56, 10, 1, 56, 56),
(57, 20, 1, 57, 57),
(58, 15, 1, 58, 58),
(59, 35, 1, 59, 59),
(60, 12, 1, 60, 60),
(61, 18, 1, 61, 61),
(62, 15, 1, 62, 62),
(63, 20, 1, 63, 63),
(64, 12, 1, 64, 64),
(65, 25, 1, 65, 65),
(66, 8, 1, 66, 66),
(67, 10, 1, 67, 67),
(68, 15, 1, 68, 68),
(69, 12, 1, 69, 69),
(70, 8, 1, 70, 70),
(71, 15, 1, 71, 71),
(72, 20, 1, 72, 72),
(73, 18, 1, 73, 73),
(74, 12, 1, 74, 74),
(75, 45, 1, 75, 75);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `IDCategoria` int(11) NOT NULL,
  `NombreCategoria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`IDCategoria`, `NombreCategoria`) VALUES
(1, 'Entradas'),
(2, 'Platos Fuertes'),
(3, 'Postres'),
(4, 'Bebidas Frías'),
(5, 'Ensaladas'),
(6, 'Sopas'),
(7, 'Cremas'),
(8, 'Tacos y Burritos'),
(9, 'Tortas y Sándwiches'),
(10, 'Pizzas Artesanales'),
(11, 'Hamburguesas'),
(12, 'Mariscos'),
(13, 'Cortes de Carne'),
(14, 'Pastas'),
(15, 'Desayunos Clásicos'),
(16, 'Antojitos Mexicanos'),
(17, 'Bebidas Calientes'),
(18, 'Coctelería de Autor'),
(19, 'Guarniciones'),
(20, 'Menú Infantil'),
(21, 'Opciones Veganas'),
(22, 'Keto y Saludables'),
(23, 'Sin Gluten'),
(24, 'Especialidades del Chef'),
(25, 'Desayunos Dulces'),
(26, 'Cervezas Artesanales'),
(27, 'Vinos Tintos'),
(28, 'Vinos Blancos'),
(29, 'Jugos y Smoothies'),
(30, 'Tés e Infusiones'),
(31, 'Tapas y Pinchos'),
(32, 'Ceviches y Aguachiles'),
(33, 'Sopas Frías'),
(34, 'Postres sin Azúcar'),
(35, 'Panadería Dulce'),
(36, 'Café de Especialidad'),
(37, 'Bebidas Energéticas'),
(38, 'Mocktails (Sin Alcohol)'),
(39, 'Menú Degustación'),
(40, 'Snacks y Botanas'),
(41, 'Pizzas Veganas'),
(42, 'Pastas Rellenas'),
(43, 'Risottos'),
(44, 'Paellas'),
(45, 'Sushi Clásico'),
(46, 'Sushi Fusión'),
(47, 'Rollos Primavera'),
(48, 'Woks y Salteados'),
(49, 'Menú Ejecutivo'),
(50, 'Combos Familiares'),
(51, 'Tacos de Guisado'),
(52, 'Caldos y Consomés'),
(53, 'Pescados Enteros'),
(54, 'Tostadas y Sopes'),
(55, 'Tamales y Atoles'),
(56, 'Menú Estudiantil'),
(57, 'Bowls Saludables'),
(58, 'Ensaladas Dulces'),
(59, 'Cortes Premium'),
(60, 'Aves Rostizadas'),
(61, 'Pizzas Dulces'),
(62, 'Pastas Cortas'),
(63, 'Arroces del Mundo'),
(64, 'Sushi Frito'),
(65, 'Teppanyaki'),
(66, 'Bebidas Fermentadas'),
(67, 'Jugos Prensados'),
(68, 'Cafés Fríos'),
(69, 'Churros y Buñuelos'),
(70, 'Helados y Sorbetes'),
(71, 'Salsas Extra'),
(72, 'Complementos Keto'),
(73, 'Snacks de Cine'),
(74, 'Menú de Madrugada'),
(75, 'Parrillada Familiar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `IDCliente` int(11) NOT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `NombreCliente` varchar(100) DEFAULT NULL,
  `Genero` enum('M','F','O') DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `FrecuenciaVisita` int(11) DEFAULT NULL,
  `PuntosAcumulados` int(11) DEFAULT NULL,
  `Domicilio` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`IDCliente`, `Telefono`, `NombreCliente`, `Genero`, `FechaNacimiento`, `FrecuenciaVisita`, `PuntosAcumulados`, `Domicilio`) VALUES
(1, '4421234567', 'Ximena Peralta', 'F', '1995-08-12', 5, 150, 'Libertad 45, Centro, Qro'),
(2, '4429876543', 'Juan Pablo Silva', 'M', '1988-03-25', 12, 450, 'Campanario 1002, Campanario'),
(3, '4425566778', 'Mariana Luján', 'F', '2001-11-02', 2, 40, 'Paseo República 120, Juriquilla'),
(4, '4421122334', 'Carlos Mendoza', 'M', '1980-05-15', 20, 1200, 'Camino Real 15, Milenio III'),
(5, '4424455667', 'Ana Sofía Garza', 'F', '1999-12-10', 8, 320, 'Pitahayas 44, Zibatá'),
(6, '4427788990', 'Luis Fernando Torres', 'M', '1975-09-30', 1, 15, 'Fray Junípero 90, Refugio'),
(7, '4422233445', 'Valeria Domínguez', 'F', '1992-04-18', 15, 800, 'Blvd Centro Sur 120, Centro Sur'),
(8, '4428899001', 'Diego Castro', 'M', '2000-01-22', 4, 110, 'Zaragoza 55, Centro'),
(9, '4426677889', 'Fernanda Reyes', 'F', '1985-07-07', 30, 2500, 'Arcos 300, Bosques'),
(10, '4429900112', 'Raúl Jiménez', 'M', '1990-10-14', 6, 180, 'Constituyentes 88, Pueblito'),
(11, '4423344556', 'Camila Ortiz', 'F', '1997-02-28', 11, 410, 'Amsterdam 12, Tejeda'),
(12, '4425566112', 'Héctor Vargas', 'M', '1982-11-11', 3, 75, 'Luz 40, Candiles'),
(13, '4421133557', 'Daniela Ríos', 'F', '1994-06-05', 9, 290, 'Cimatario 101, Cimatario'),
(14, '4422244668', 'Jorge Navarro', 'M', '1978-08-20', 7, 210, 'Mirador 22, Mirador'),
(15, '4423355779', 'Paulina Soto', 'F', '1989-12-01', 14, 650, 'Jurica Campestre 50, Jurica'),
(16, '4424466880', 'Roberto Blanca', 'M', '2002-03-15', 2, 50, 'Pradera 10, El Marqués'),
(17, '4425577991', 'Andrea Montes', 'F', '1996-05-30', 18, 950, 'Independencia 5, Sta Rosa'),
(18, '4426688002', 'Ricardo León', 'M', '1983-01-10', 5, 130, 'Universidad 99, Centro'),
(19, '4427799113', 'Isabella Cruz', 'F', '1991-09-25', 22, 1500, 'Epigmenio González 40, Tec'),
(20, '4428800224', 'Mateo Herrera', 'M', '1987-04-12', 10, 380, '5 de Febrero 200, San Pablo'),
(21, '4421231234', 'Lorena Páez', 'F', '1993-02-14', 6, 200, 'Av del Parque 100, Vista Hermosa'),
(22, '4423452345', 'Oscar Villanueva', 'M', '1986-07-22', 16, 850, 'Pie de la Cuesta 300, San Pablo'),
(23, '4425675678', 'Silvia Rojo', 'F', '1970-12-05', 3, 90, 'Av. Revolución 15, Carrillo'),
(24, '4427897890', 'Mario Aguilar', 'M', '1998-10-30', 25, 1800, 'Tlacote 500, Galindas'),
(25, '4429019012', 'Teresa Blanco', 'F', '2003-05-18', 1, 10, 'Satélite 20, Satélite'),
(26, '4421121122', 'Felipe Santos', 'M', '1981-08-08', 9, 310, 'Loma Dorada 40, Loma Dorada'),
(27, '4423343344', 'Diana Medina', 'F', '1990-04-11', 12, 480, 'Carretas 10, Carretas'),
(28, '4425565566', 'Gerardo Pineda', 'M', '1985-01-20', 7, 260, 'Arquitos 5, Calesa'),
(29, '4427787788', 'Rosaura Castillo', 'F', '1979-09-15', 14, 590, 'Pasteur 80, Centro Sur'),
(30, '4429909900', 'Ignacio Mora', 'M', '1995-11-28', 5, 160, 'Zakia 200, El Marqués'),
(31, '4421351357', 'Bárbara Vega', 'F', '2000-03-03', 11, 430, 'Sonterra 15, Libramiento'),
(32, '4422462468', 'Samuel Corona', 'M', '1988-06-16', 8, 300, 'Viñedos 40, Microparque'),
(33, '4423573579', 'Clara Núñez', 'F', '1994-12-25', 19, 990, 'Maderas 500, El Marqués'),
(34, '4424684680', 'Alonso Vaca', 'M', '1976-02-02', 4, 120, 'Estatal 400, Huimilpan'),
(35, '4425795791', 'Gloria Escamilla', 'F', '1983-08-19', 2, 60, 'Panamericana 11, Escobedo'),
(36, '4426806802', 'Bruno Padilla', 'M', '1997-05-09', 21, 1400, 'Juárez 40, San Juan'),
(37, '4427917913', 'Margarita Soria', 'F', '1989-10-10', 13, 520, 'Plaza Principal 2, Tequis'),
(38, '4428028024', 'Víctor Franco', 'M', '1992-01-27', 6, 220, 'Benito Juárez 15, Bernal'),
(39, '4429139135', 'Leticia Rosales', 'F', '1984-07-04', 10, 390, 'Madero 5, Cadereyta'),
(40, '4420240246', 'Eduardo Nava', 'M', '2001-09-12', 3, 110, 'Belisario Domínguez 12, Ezequiel M'),
(41, '4421471470', 'Alicia Robles', 'F', '1975-11-30', 17, 880, 'Plaza Constitución 4, Amealco'),
(42, '4422582581', 'Armando Lara', 'M', '1996-04-22', 9, 330, 'Fray Junípero 1, Jalpan'),
(43, '4423693692', 'Cecilia Garcés', 'F', '1987-12-14', 15, 620, 'Carretera 57 1000, Jurica'),
(44, '4424704703', 'Ramiro Bueno', 'M', '1999-02-08', 5, 170, 'Constituyentes 40, Mercurio'),
(45, '4425815814', 'Estela Campos', 'F', '1982-06-25', 12, 490, 'Fray Junípero Serra 7901, Refugio'),
(46, '4426926925', 'Julián Macías', 'M', '1993-08-01', 8, 280, '5 de Febrero 99, Virreyes'),
(47, '4427037036', 'Patricia Ávila', 'F', '1978-03-19', 20, 1100, 'Tecnológico 105, Centro'),
(48, '4428148147', 'Rodrigo Bernal', 'M', '1991-10-06', 4, 140, 'Zaragoza 30, Centro'),
(49, '4429259258', 'Verónica Dávila', 'F', '1986-01-15', 11, 450, 'Epigmenio González 500, San Pablo'),
(50, '4420360369', 'Tomás Aguilar', 'M', '2000-07-28', 7, 240, 'Pie de la Cuesta 1500, San Pablo'),
(51, '4421112222', 'Norma Gómez', 'F', '1985-04-12', 4, 120, 'Los Olvera 50, Corregidora'),
(52, '4423334444', 'Saúl Juárez', 'M', '1990-11-20', 8, 250, 'El Pocito 12, Corregidora'),
(53, '4425556666', 'Mireya Suárez', 'F', '1978-02-15', 12, 400, 'Santa Bárbara 30, Corregidora'),
(54, '4427778888', 'Alfonso Díaz', 'M', '2001-08-05', 3, 90, 'Vista Hermosa 45, Qro'),
(55, '4429990000', 'Jimena Paz', 'F', '1995-12-30', 20, 1100, 'Zaragoza 100, Centro'),
(56, '4421212121', 'Germán Lara', 'M', '1982-06-18', 6, 180, 'Girasoles 14, Qro'),
(57, '4423434343', 'Tania Silva', 'F', '1993-09-22', 14, 500, 'Chichimequillas 50, Qro'),
(58, '4425656565', 'Arturo Ruiz', 'M', '1975-01-10', 2, 60, 'Hércules 88, Qro'),
(59, '4427878787', 'Paola Vega', 'F', '1988-07-07', 9, 310, 'La Cañada 20, El Marqués'),
(60, '4429090909', 'Simón Sosa', 'M', '1999-03-25', 15, 650, 'Alfalfares 10, Qro'),
(61, '4422121212', 'Estefanía Rey', 'F', '2000-05-14', 5, 140, 'Salitre 5, Qro'),
(62, '4424343434', 'Diego Bernal', 'M', '1984-10-09', 11, 420, 'Santa Fe 200, Juriquilla'),
(63, '4426565656', 'Laura Nava', 'F', '1991-12-01', 18, 800, 'San Pablo 40, Qro'),
(64, '4428787878', 'Félix Pineda', 'M', '1979-04-28', 7, 230, 'Balvanera 15, Corregidora'),
(65, '4420909090', 'Elena Ríos', 'F', '1996-08-16', 13, 490, 'Paseos del Bosque 55, Corregidora'),
(66, '4421313131', 'Rubén Castro', 'M', '1987-02-04', 4, 110, 'La Joya 77, Qro'),
(67, '4423535353', 'Inés Mora', 'F', '1992-11-11', 22, 1250, 'Plaza Parque 12, Qro'),
(68, '4425757575', 'Martín Peña', 'M', '1980-06-25', 8, 270, 'Uptown 80, Qro'),
(69, '4427979797', 'Luciana Cruz', 'F', '1998-01-19', 16, 700, 'Esfera 100, Qro'),
(70, '4429191919', 'Andrés Vaca', 'M', '1976-09-13', 2, 50, 'Terminal 45, Qro'),
(71, '4422424242', 'Celia Blanco', 'F', '1985-03-08', 10, 340, 'Aeropuerto 10, El Marqués'),
(72, '4424646464', 'Omar Rosas', 'M', '1994-07-21', 19, 900, 'Soriano 5, Colón'),
(73, '4426868686', 'Berta Ortiz', 'F', '1981-12-12', 6, 200, 'Tolimán 15, Tolimán'),
(74, '4428080808', 'Gael Tapia', 'M', '2002-05-30', 1, 30, 'San Joaquín 2, San Joaquín'),
(75, '4420202020', 'Sara León', 'F', '1990-10-05', 25, 1500, 'Pinal 4, Pinal de Amoles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaborador`
--

CREATE TABLE `colaborador` (
  `IDColaborador` int(11) NOT NULL,
  `NombreColaborador` varchar(100) DEFAULT NULL,
  `FechaIngresoColaborador` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `colaborador`
--

INSERT INTO `colaborador` (`IDColaborador`, `NombreColaborador`, `FechaIngresoColaborador`) VALUES
(1, 'Alejandro Gaviria', '2023-01-15'),
(2, 'Sofía Martínez', '2023-05-20'),
(3, 'Ricardo Trejo', '2024-02-10'),
(4, 'Lucía Pineda', '2023-08-01'),
(5, 'Javier Rosas', '2022-11-15'),
(6, 'Mónica Salazar', '2024-01-05'),
(7, 'Hugo Beltrán', '2023-03-12'),
(8, 'Patricia Gómez', '2021-09-22'),
(9, 'Andrés Orozco', '2024-03-01'),
(10, 'Carmen Ruiz', '2022-07-18'),
(11, 'Tomás Aguilar', '2023-10-30'),
(12, 'Diana Fuentes', '2024-01-20'),
(13, 'Enrique Macías', '2021-04-10'),
(14, 'Teresa Lara', '2023-06-15'),
(15, 'Gabriel Santos', '2022-12-05'),
(16, 'Rosa Miranda', '2023-09-11'),
(17, 'Arturo Peña', '2024-02-28'),
(18, 'Verónica Dávila', '2021-11-03'),
(19, 'Esteban Tapia', '2023-04-25'),
(20, 'Elena Cárdenas', '2022-08-14'),
(21, 'Mauricio Gil', '2023-02-10'),
(22, 'Natalia Cruz', '2024-01-15'),
(23, 'Oscar Reyes', '2022-05-22'),
(24, 'Pamela Silva', '2023-11-08'),
(25, 'Raúl Montes', '2021-10-10'),
(26, 'Silvia Blanco', '2024-02-20'),
(27, 'Víctor Rangel', '2023-07-03'),
(28, 'Ximena Castro', '2022-09-19'),
(29, 'Benjamín Soto', '2024-03-10'),
(30, 'Camila Ríos', '2021-12-01'),
(31, 'Daniel Ortiz', '2023-05-05'),
(32, 'Fernanda Luna', '2024-01-28'),
(33, 'Gerardo Vega', '2022-03-14'),
(34, 'Héctor Navarro', '2023-10-12'),
(35, 'Isabel Franco', '2021-08-27'),
(36, 'Jorge Padilla', '2024-02-05'),
(37, 'Karla Soria', '2023-06-22'),
(38, 'Luis Escamilla', '2022-11-09'),
(39, 'Mariana Vaca', '2023-04-18'),
(40, 'Nicolás Corona', '2024-01-10'),
(41, 'Olga Núñez', '2021-07-05'),
(42, 'Pablo Mora', '2023-09-26'),
(43, 'Quetzal Castillo', '2022-02-17'),
(44, 'Roberto Pineda', '2024-03-05'),
(45, 'Sandra Medina', '2023-01-30'),
(46, 'Ulises Santos', '2021-06-11'),
(47, 'Valeria Blanco', '2023-08-21'),
(48, 'Walter Rojo', '2022-04-04'),
(49, 'Yolanda Villanueva', '2024-02-15'),
(50, 'Zacarías Páez', '2023-12-14'),
(51, 'Miriam Zavala', '2024-04-01'),
(52, 'Leonel Garcés', '2023-08-15'),
(53, 'Cecilia Macías', '2022-10-10'),
(54, 'Fausto Bernal', '2024-01-20'),
(55, 'Bárbara Campos', '2021-05-12'),
(56, 'Alonso Cuevas', '2023-11-05'),
(57, 'Marina Soria', '2022-03-25'),
(58, 'Rodrigo Ávila', '2024-02-14'),
(59, 'Juliana Pinto', '2021-09-30'),
(60, 'Emilio Dávila', '2023-06-18'),
(61, 'Perla Aguilar', '2022-12-08'),
(62, 'Salvador Bueno', '2024-03-22'),
(63, 'Lilia Carmona', '2021-07-01'),
(64, 'Ignacio Téllez', '2023-09-12'),
(65, 'Karina Solís', '2022-01-15'),
(66, 'Humberto Luna', '2024-04-10'),
(67, 'Rebeca Nieto', '2021-11-20'),
(68, 'Guillermo Mata', '2023-05-08'),
(69, 'Dora Valdés', '2022-08-28'),
(70, 'Fabián Robles', '2024-01-05'),
(71, 'Aurora Salgado', '2021-04-15'),
(72, 'Marcos Venegas', '2023-12-10'),
(73, 'Nadia Escobar', '2022-06-22'),
(74, 'Joaquín Meza', '2024-02-28'),
(75, 'Silvia Padrón', '2021-10-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feedback`
--

CREATE TABLE `feedback` (
  `IDFeedback` int(11) NOT NULL,
  `Calificacion` int(11) DEFAULT NULL,
  `CalificacionProducto` int(11) DEFAULT NULL,
  `Comentario` text DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `IDCliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `feedback`
--

INSERT INTO `feedback` (`IDFeedback`, `Calificacion`, `CalificacionProducto`, `Comentario`, `FECHA`, `IDCliente`) VALUES
(1, 5, 5, 'Excelente.', '2026-03-01 14:30:00', 1),
(2, 4, 5, 'Muy rico.', '2026-03-02 16:15:00', 2),
(3, 5, 5, 'Delicia.', '2026-03-03 18:00:00', 3),
(4, 3, 2, 'Fría.', '2026-03-04 21:00:00', 4),
(5, 5, 4, 'Amable.', '2026-03-05 13:20:00', 5),
(6, 4, 4, 'Buen ambiente.', '2026-02-10 19:45:00', 6),
(7, 5, 5, 'Mejores pizzas.', '2026-02-15 20:30:00', 7),
(8, 2, 3, 'Incompleto.', '2026-02-20 15:10:00', 8),
(9, 5, 5, 'Impecable.', '2026-02-25 09:30:00', 9),
(10, 4, 5, 'Faltó salsa.', '2026-02-28 22:15:00', 10),
(11, 5, 5, 'Saludable.', '2026-01-05 14:00:00', 11),
(12, 1, 1, 'Pésimo.', '2026-01-12 10:45:00', 12),
(13, 4, 4, 'Gorditas ricas.', '2026-01-18 08:30:00', 13),
(14, 5, 5, 'Café top.', '2026-01-25 17:00:00', 14),
(15, 3, 4, 'Porción pequeña.', '2026-02-02 14:20:00', 15),
(16, 5, 5, 'Favorito.', '2026-02-08 10:15:00', 16),
(17, 5, 5, 'Margaritas top.', '2026-02-18 21:40:00', 17),
(18, 4, 3, 'Papas saladas.', '2026-02-22 13:50:00', 18),
(19, 5, 5, 'Tomahawk 10/10.', '2026-03-01 15:30:00', 19),
(20, 4, 5, 'Llega a tiempo.', '2026-03-04 19:10:00', 20),
(21, 5, 5, 'Gran experiencia.', '2026-03-01 10:00:00', 21),
(22, 4, 4, 'Todo correcto.', '2026-03-02 11:00:00', 22),
(23, 3, 3, 'Regular.', '2026-03-03 12:00:00', 23),
(24, 5, 5, 'Volveré.', '2026-03-04 13:00:00', 24),
(25, 2, 2, 'Tardado.', '2026-03-05 14:00:00', 25),
(26, 5, 5, 'Magnífico.', '2026-03-06 15:00:00', 26),
(27, 4, 4, 'Buen sabor.', '2026-03-07 16:00:00', 27),
(28, 5, 5, 'Recomendado.', '2026-03-08 17:00:00', 28),
(29, 3, 4, 'Caro.', '2026-03-09 18:00:00', 29),
(30, 5, 5, 'Fresco.', '2026-03-10 19:00:00', 30),
(31, 4, 5, 'Buena música.', '2026-03-11 20:00:00', 31),
(32, 5, 5, 'Atención 10.', '2026-03-12 21:00:00', 32),
(33, 2, 1, 'Mala actitud.', '2026-03-13 10:30:00', 33),
(34, 5, 5, 'Perfecto.', '2026-03-14 11:30:00', 34),
(35, 4, 4, 'Lindo lugar.', '2026-03-15 12:30:00', 35),
(36, 5, 5, 'Riquísimo.', '2026-03-16 13:30:00', 36),
(37, 3, 3, 'Pasable.', '2026-03-17 14:30:00', 37),
(38, 5, 5, 'Mis favoritos.', '2026-03-18 15:30:00', 38),
(39, 4, 5, 'Limpio.', '2026-03-19 16:30:00', 39),
(40, 5, 5, '5 estrellas.', '2026-03-20 17:30:00', 40),
(41, 4, 4, 'Satisfecho.', '2026-03-21 18:30:00', 41),
(42, 5, 5, 'Increíble.', '2026-03-22 19:30:00', 42),
(43, 2, 3, 'Tibio.', '2026-03-23 20:30:00', 43),
(44, 5, 5, 'Genial.', '2026-03-24 21:30:00', 44),
(45, 4, 4, 'Agradable.', '2026-03-25 10:15:00', 45),
(46, 5, 5, 'Súper bien.', '2026-03-26 11:15:00', 46),
(47, 3, 4, 'Cumple.', '2026-03-27 12:15:00', 47),
(48, 5, 5, 'Excelente chef.', '2026-03-28 13:15:00', 48),
(49, 4, 5, 'Rápido.', '2026-03-29 14:15:00', 49),
(50, 5, 5, 'Mi top 1.', '2026-03-30 15:15:00', 50),
(51, 5, 5, 'Muy auténtico.', '2026-04-02 15:00:00', 51),
(52, 4, 5, 'Caldo revitalizante.', '2026-11-05 16:00:00', 52),
(53, 5, 5, 'Pescado fresco.', '2026-03-10 17:00:00', 53),
(54, 3, 3, 'Poca salsa.', '2026-05-15 18:00:00', 54),
(55, 5, 5, 'Tamal esponjoso.', '2026-02-05 19:00:00', 55),
(56, 5, 4, 'Buen precio para estudiantes.', '2026-08-20 20:00:00', 56),
(57, 4, 5, 'Bowl llenador.', '2026-01-15 21:00:00', 57),
(58, 5, 5, 'Dulce y crujiente.', '2026-06-10 10:00:00', 58),
(59, 5, 5, 'Carne en su punto.', '2026-07-10 11:00:00', 59),
(60, 4, 4, 'Buen pollo.', '2026-09-15 12:00:00', 60),
(61, 5, 5, 'Para golosos.', '2026-10-25 13:00:00', 61),
(62, 5, 5, 'A mis hijos les encantó.', '2026-04-30 14:00:00', 62),
(63, 4, 5, 'Arroz sabroso.', '2026-03-18 15:00:00', 63),
(64, 5, 5, 'Crujiente perfecto.', '2026-02-25 16:00:00', 64),
(65, 5, 5, 'Gran show en la mesa.', '2026-01-28 17:00:00', 65),
(66, 4, 4, 'Sabor interesante.', '2026-05-25 18:00:00', 66),
(67, 5, 5, 'Jugo natural.', '2026-06-25 19:00:00', 67),
(68, 5, 5, 'Frappé heladísimo.', '2026-07-25 20:00:00', 68),
(69, 5, 5, 'Churros recién hechos.', '2026-08-25 21:00:00', 69),
(70, 4, 5, 'Refrescante.', '2026-05-20 10:00:00', 70),
(71, 5, 5, 'Guacamole real.', '2026-09-18 11:00:00', 71),
(72, 5, 5, 'Amo el chicharrón de queso.', '2026-10-28 12:00:00', 72),
(73, 4, 4, 'Nachos cumplidores.', '2026-11-20 13:00:00', 73),
(74, 5, 5, 'Tacos salvavidas.', '2026-12-25 14:00:00', 74),
(75, 5, 5, 'Comimos todos.', '2026-03-20 15:00:00', 75);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingrediente`
--

CREATE TABLE `ingrediente` (
  `IDIngrediente` int(11) NOT NULL,
  `NombreIngrediente` varchar(100) DEFAULT NULL,
  `CostoIndividualIngrediente` decimal(10,2) DEFAULT NULL,
  `TipoIngrediente` varchar(50) DEFAULT NULL,
  `DisponibilidadIngrediente` tinyint(1) DEFAULT NULL,
  `Imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ingrediente`
--

INSERT INTO `ingrediente` (`IDIngrediente`, `NombreIngrediente`, `CostoIndividualIngrediente`, `TipoIngrediente`, `DisponibilidadIngrediente`, `Imagen`) VALUES
(1, 'Aguacate', 15.50, 'Vegetal', 1, 'aguacate.jpg'),
(2, 'Camarón Tigre', 85.00, 'Proteína', 1, 'camaron.jpg'),
(3, 'Queso Oaxaca', 25.00, 'Lácteo', 1, 'queso_oaxaca.jpg'),
(4, 'Salsa Macha', 10.00, 'Condimento', 1, 'salsa_macha.jpg'),
(5, 'Arrachera Angus', 95.00, 'Proteína', 1, 'arrachera.jpg'),
(6, 'Champiñones', 12.50, 'Vegetal', 1, 'champinon.jpg'),
(7, 'Pan Artesanal', 18.00, 'Cereal', 1, 'pan.jpg'),
(8, 'Queso de Cabra', 30.00, 'Lácteo', 1, 'queso_cabra.jpg'),
(9, 'Tocino Ahumado', 22.00, 'Proteína', 1, 'tocino.jpg'),
(10, 'Atún Fresco', 75.00, 'Proteína', 1, 'atun.jpg'),
(11, 'Fresa Orgánica', 15.00, 'Fruta', 1, 'fresa.jpg'),
(12, 'Nuez Garapiñada', 20.00, 'Semilla', 1, 'nuez.jpg'),
(13, 'Pasta Fettuccine', 14.00, 'Cereal', 1, 'pasta.jpg'),
(14, 'Salsa Pomodoro', 16.00, 'Salsa', 1, 'pomodoro.jpg'),
(15, 'Lechuga Italiana', 8.50, 'Vegetal', 1, 'lechuga.jpg'),
(16, 'Cebolla Caramelizada', 9.00, 'Vegetal', 1, 'cebolla.jpg'),
(17, 'Pollo a la Parrilla', 45.00, 'Proteína', 1, 'pollo.jpg'),
(18, 'Jalapeños en Escabeche', 6.00, 'Condimento', 1, 'jalapeno.jpg'),
(19, 'Crema Ácida', 11.00, 'Lácteo', 1, 'crema.jpg'),
(20, 'Chocolate Semi-amargo', 28.00, 'Dulce', 1, 'chocolate.jpg'),
(21, 'Tomate Cherry', 18.00, 'Vegetal', 1, 'tomate_cherry.jpg'),
(22, 'Cilantro Fresco', 5.00, 'Hierba', 1, 'cilantro.jpg'),
(23, 'Ajo Asado', 8.00, 'Vegetal', 1, 'ajo.jpg'),
(24, 'Limón Colima', 7.00, 'Fruta', 1, 'limon.jpg'),
(25, 'Salmón Chileno', 110.00, 'Proteína', 1, 'salmon.jpg'),
(26, 'Masa de Maíz', 10.00, 'Cereal', 1, 'masa.jpg'),
(27, 'Frijoles Refritos', 12.00, 'Leguminosa', 1, 'frijoles.jpg'),
(28, 'Queso Manchego', 26.00, 'Lácteo', 1, 'queso_manchego.jpg'),
(29, 'Jamón Serrano', 65.00, 'Proteína', 1, 'jamon_serrano.jpg'),
(30, 'Aceitunas Negras', 14.00, 'Vegetal', 1, 'aceitunas.jpg'),
(31, 'Albahaca Fresca', 9.00, 'Hierba', 1, 'albahaca.jpg'),
(32, 'Pimiento Morrón', 15.00, 'Vegetal', 1, 'pimiento.jpg'),
(33, 'Carne Molida', 40.00, 'Proteína', 1, 'carne_molida.jpg'),
(34, 'Tortilla de Harina', 8.00, 'Cereal', 1, 'tortilla_harina.jpg'),
(35, 'Pechuga de Pavo', 35.00, 'Proteína', 1, 'pavo.jpg'),
(36, 'Mayonesa Chipotle', 12.00, 'Salsa', 1, 'mayonesa_chipotle.jpg'),
(37, 'Espinaca Baby', 16.00, 'Vegetal', 1, 'espinaca.jpg'),
(38, 'Nuez de la India', 25.00, 'Semilla', 1, 'nuez_india.jpg'),
(39, 'Mango Ataulfo', 14.00, 'Fruta', 1, 'mango.jpg'),
(40, 'Arroz Sushi', 18.00, 'Cereal', 1, 'arroz_sushi.jpg'),
(41, 'Alga Nori', 12.00, 'Vegetal', 1, 'alga_nori.jpg'),
(42, 'Salsa de Soya', 8.00, 'Condimento', 1, 'salsa_soya.jpg'),
(43, 'Jengibre Encurtido', 10.00, 'Condimento', 1, 'jengibre.jpg'),
(44, 'Queso Parmesano', 32.00, 'Lácteo', 1, 'parmesano.jpg'),
(45, 'Mantequilla', 15.00, 'Lácteo', 1, 'mantequilla.jpg'),
(46, 'Vino Blanco (Cocina)', 20.00, 'Bebida', 1, 'vino_blanco_cocina.jpg'),
(47, 'Caldo de Pollo', 10.00, 'Base', 1, 'caldo_pollo.jpg'),
(48, 'Tortilla de Maíz', 5.00, 'Cereal', 1, 'tortilla_maiz.jpg'),
(49, 'Salsa Habanero', 12.00, 'Condimento', 1, 'salsa_habanero.jpg'),
(50, 'Cacao en Polvo', 22.00, 'Dulce', 1, 'cacao.jpg'),
(51, 'Pulpo Fresco', 95.00, 'Proteína', 1, 'pulpo_fresco.jpg'),
(52, 'Pescado Blanco', 55.00, 'Proteína', 1, 'pescado_blanco.jpg'),
(53, 'Langosta', 250.00, 'Proteína', 1, 'langosta.jpg'),
(54, 'Salsa de Anguila', 15.00, 'Salsa', 1, 'anguila.jpg'),
(55, 'Wasabi', 12.00, 'Condimento', 1, 'wasabi.jpg'),
(56, 'Edamames', 20.00, 'Vegetal', 1, 'edamames.jpg'),
(57, 'Fideo de Arroz', 18.00, 'Cereal', 1, 'fideo_arroz.jpg'),
(58, 'Ajonjolí Negro', 8.00, 'Semilla', 1, 'ajonjoli.jpg'),
(59, 'Leche de Coco', 15.00, 'Lácteo', 1, 'leche_coco.jpg'),
(60, 'Curry en Polvo', 12.00, 'Condimento', 1, 'curry.jpg'),
(61, 'Salsa BBQ', 10.00, 'Salsa', 1, 'bbq.jpg'),
(62, 'Miel de Maple', 18.00, 'Dulce', 1, 'maple.jpg'),
(63, 'Masa de Hojaldre', 22.00, 'Cereal', 1, 'hojaldre.jpg'),
(64, 'Manzana Verde', 12.00, 'Fruta', 1, 'manzana.jpg'),
(65, 'Canela en Polvo', 5.00, 'Condimento', 1, 'canela.jpg'),
(66, 'Vainilla', 8.00, 'Saborizante', 1, 'vainilla.jpg'),
(67, 'Menta Fresca', 6.00, 'Hierba', 1, 'menta.jpg'),
(68, 'Agua Quina', 15.00, 'Bebida', 1, 'quina.jpg'),
(69, 'Vodka', 45.00, 'Alcohol', 1, 'vodka.jpg'),
(70, 'Ginebra', 55.00, 'Alcohol', 1, 'ginebra.jpg'),
(71, 'Ron Blanco', 35.00, 'Alcohol', 1, 'ron.jpg'),
(72, 'Sirope de Caramelo', 14.00, 'Dulce', 1, 'caramelo.jpg'),
(73, 'Crema Batida', 16.00, 'Lácteo', 1, 'crema_batida.jpg'),
(74, 'Salsa de Queso', 18.00, 'Salsa', 1, 'salsa_queso.jpg'),
(75, 'Pimiento Habanero', 9.00, 'Vegetal', 1, 'habanero.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion`
--

CREATE TABLE `notificacion` (
  `IDNotificacion` int(11) NOT NULL,
  `TituloNotificacion` varchar(100) DEFAULT NULL,
  `FechaProgramada` datetime DEFAULT NULL,
  `Mensaje` text DEFAULT NULL,
  `IDCliente` int(11) DEFAULT NULL,
  `IDColaborador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notificacion`
--

INSERT INTO `notificacion` (`IDNotificacion`, `TituloNotificacion`, `FechaProgramada`, `Mensaje`, `IDCliente`, `IDColaborador`) VALUES
(1, 'Cupón', '2026-03-05 09:00:00', '10% de descuento.', 1, 1),
(2, 'Camino', '2026-03-05 14:30:00', 'A 5 min.', 2, 2),
(3, 'Feliz', '2026-08-12 10:00:00', 'Postre gratis.', 3, 3),
(4, 'Encuesta', '2026-03-06 18:00:00', 'Califica visita.', 4, 4),
(5, 'Nueva', '2026-04-01 12:00:00', 'Abrimos Zibatá.', 5, 5),
(6, 'Puntos', '2026-03-15 09:00:00', 'Vencen pronto.', 6, 6),
(7, 'Menú', '2026-05-01 11:00:00', 'Nuevos platillos.', 7, 7),
(8, 'Mesa', '2026-03-05 20:15:00', 'Mesa lista.', 8, 8),
(9, 'Pago', '2026-03-05 15:45:00', 'Pago recibido.', 9, 9),
(10, 'Flash', '2026-03-08 16:00:00', '2x1 Hoy.', 10, 10),
(11, 'Bienvenido', '2026-01-10 10:00:00', 'Gracias por registro.', 11, 11),
(12, 'Cancelado', '2026-02-14 21:00:00', 'Pedido cancelado.', 12, 12),
(13, 'Reembolso', '2026-02-15 09:00:00', 'Dinero devuelto.', 13, 13),
(14, 'Evento', '2026-09-15 18:00:00', 'Reserva hoy.', 14, 14),
(15, 'App', '2026-03-01 08:00:00', 'Actualiza app.', 15, 15),
(16, 'Gana', '2026-03-10 10:00:00', 'Doble puntos.', 16, 16),
(17, 'Demora', '2026-03-05 14:45:00', '10 mins extra.', 17, 17),
(18, 'Factura', '2026-03-05 23:00:00', 'Enviada al correo.', 18, 18),
(19, 'Nivel', '2026-02-28 12:00:00', 'Eres Oro.', 19, 19),
(20, 'Festivo', '2026-12-24 09:00:00', 'Cerramos temprano.', 20, 20),
(21, 'Alerta', '2026-03-06 08:00:00', 'Mensaje genérico 21', 21, 21),
(22, 'Aviso', '2026-03-07 09:00:00', 'Mensaje genérico 22', 22, 22),
(23, 'Promo', '2026-03-08 10:00:00', 'Mensaje genérico 23', 23, 23),
(24, 'Noticia', '2026-03-09 11:00:00', 'Mensaje genérico 24', 24, 24),
(25, 'Info', '2026-03-10 12:00:00', 'Mensaje genérico 25', 25, 25),
(26, 'Alerta', '2026-03-11 13:00:00', 'Mensaje genérico 26', 26, 26),
(27, 'Aviso', '2026-03-12 14:00:00', 'Mensaje genérico 27', 27, 27),
(28, 'Promo', '2026-03-13 15:00:00', 'Mensaje genérico 28', 28, 28),
(29, 'Noticia', '2026-03-14 16:00:00', 'Mensaje genérico 29', 29, 29),
(30, 'Info', '2026-03-15 17:00:00', 'Mensaje genérico 30', 30, 30),
(31, 'Alerta', '2026-03-16 08:00:00', 'Mensaje genérico 31', 31, 31),
(32, 'Aviso', '2026-03-17 09:00:00', 'Mensaje genérico 32', 32, 32),
(33, 'Promo', '2026-03-18 10:00:00', 'Mensaje genérico 33', 33, 33),
(34, 'Noticia', '2026-03-19 11:00:00', 'Mensaje genérico 34', 34, 34),
(35, 'Info', '2026-03-20 12:00:00', 'Mensaje genérico 35', 35, 35),
(36, 'Alerta', '2026-03-21 13:00:00', 'Mensaje genérico 36', 36, 36),
(37, 'Aviso', '2026-03-22 14:00:00', 'Mensaje genérico 37', 37, 37),
(38, 'Promo', '2026-03-23 15:00:00', 'Mensaje genérico 38', 38, 38),
(39, 'Noticia', '2026-03-24 16:00:00', 'Mensaje genérico 39', 39, 39),
(40, 'Info', '2026-03-25 17:00:00', 'Mensaje genérico 40', 40, 40),
(41, 'Alerta', '2026-03-26 08:00:00', 'Mensaje genérico 41', 41, 41),
(42, 'Aviso', '2026-03-27 09:00:00', 'Mensaje genérico 42', 42, 42),
(43, 'Promo', '2026-03-28 10:00:00', 'Mensaje genérico 43', 43, 43),
(44, 'Noticia', '2026-03-29 11:00:00', 'Mensaje genérico 44', 44, 44),
(45, 'Info', '2026-03-30 12:00:00', 'Mensaje genérico 45', 45, 45),
(46, 'Alerta', '2026-03-31 13:00:00', 'Mensaje genérico 46', 46, 46),
(47, 'Aviso', '2026-04-01 14:00:00', 'Mensaje genérico 47', 47, 47),
(48, 'Promo', '2026-04-02 15:00:00', 'Mensaje genérico 48', 48, 48),
(49, 'Noticia', '2026-04-03 16:00:00', 'Mensaje genérico 49', 49, 49),
(50, 'Info', '2026-04-04 17:00:00', 'Mensaje genérico 50', 50, 50),
(51, 'Nuevo Menú', '2026-04-01 10:00:00', 'Prueba tacos guisado.', 51, 51),
(52, 'Aviso Lluvia', '2026-06-15 14:00:00', 'Pide a domicilio hoy.', 52, 52),
(53, 'Reserva Lista', '2026-05-10 19:00:00', 'Tu mesa espera.', 53, 53),
(54, 'Puntos Extra', '2026-03-20 09:00:00', 'Gana el triple hoy.', 54, 54),
(55, 'Feliz Día', '2026-05-10 08:00:00', 'Felicidades mamá.', 55, 55),
(56, 'Promo Uni', '2026-08-15 11:00:00', 'Muestra credencial.', 56, 56),
(57, 'Bowl Nuevo', '2026-01-10 12:00:00', 'Come sano hoy.', 57, 57),
(58, 'Cena Dulce', '2026-02-14 18:00:00', 'Postre 2x1.', 58, 58),
(59, 'Corte Especial', '2026-07-05 13:00:00', 'Llegó la picaña.', 59, 59),
(60, 'Pollo Listo', '2026-09-12 14:30:00', 'Tu pedido va en camino.', 60, 60),
(61, 'Nutella Day', '2026-10-20 16:00:00', 'Día mundial Nutella.', 61, 61),
(62, 'Día del Niño', '2026-04-30 09:00:00', 'Trae a los peques.', 62, 62),
(63, 'Cupón Arroz', '2026-03-15 11:30:00', 'Descarga tu cupón.', 63, 63),
(64, 'Sushi Night', '2026-02-20 19:00:00', 'Sushi al 3x2.', 64, 64),
(65, 'Teppan Fest', '2026-01-25 13:00:00', 'Prueba el show.', 65, 65),
(66, 'Salud Intestinal', '2026-05-20 08:00:00', 'Kombucha en promo.', 66, 66),
(67, 'Detox', '2026-06-20 07:00:00', 'Inicia tu día verde.', 67, 67),
(68, 'Calor', '2026-07-20 15:00:00', 'Refréscate con frappé.', 68, 68),
(69, 'Antojo', '2026-08-20 17:00:00', 'Hora del café y churros.', 69, 69),
(70, 'Verano', '2026-05-15 14:00:00', 'Llegaron los sorbetes.', 70, 70),
(71, 'Fiesta Patria', '2026-09-15 18:00:00', 'Viva México.', 71, 71),
(72, 'Keto Life', '2026-10-25 10:00:00', 'Opciones sin culpa.', 72, 72),
(73, 'Super Bowl', '2026-02-08 16:00:00', 'Pide tus nachos.', 73, 73),
(74, 'Desvelo', '2026-12-20 23:00:00', 'Abierto 24hrs.', 74, 74),
(75, 'Familia', '2026-03-15 12:00:00', 'Parrillada en promo.', 75, 75);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `IDPedido` int(11) NOT NULL,
  `TipoPedido` varchar(50) DEFAULT NULL,
  `CostoPedido` double DEFAULT NULL,
  `IDColaborador` int(11) DEFAULT NULL,
  `IDCliente` int(11) DEFAULT NULL,
  `IDPlatillo` int(11) DEFAULT NULL,
  `IDSucursal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`IDPedido`, `TipoPedido`, `CostoPedido`, `IDColaborador`, `IDCliente`, `IDPlatillo`, `IDSucursal`) VALUES
(1, 'Dine-in', 350.5, 1, 1, 1, 1),
(2, 'Pick-up', 120, 2, 2, 2, 2),
(3, 'Envío', 540, 3, 3, 3, 3),
(4, 'Dine-in', 850, 4, 4, 13, 4),
(5, 'Envío', 210, 5, 5, 8, 5),
(6, 'Pick-up', 165, 6, 6, 11, 6),
(7, 'Dine-in', 430, 7, 7, 10, 7),
(8, 'Envío', 115, 8, 8, 15, 8),
(9, 'Dine-in', 620, 9, 9, 12, 9),
(10, 'Pick-up', 95, 10, 10, 6, 10),
(11, 'Envío', 310, 11, 11, 14, 11),
(12, 'Dine-in', 125, 12, 12, 9, 12),
(13, 'Pick-up', 70, 13, 13, 16, 13),
(14, 'Envío', 185, 14, 14, 5, 14),
(15, 'Dine-in', 1120, 15, 15, 13, 15),
(16, 'Envío', 290, 16, 16, 2, 16),
(17, 'Pick-up', 85, 17, 17, 20, 17),
(18, 'Dine-in', 160, 18, 18, 17, 18),
(19, 'Envío', 240, 19, 19, 18, 19),
(20, 'Dine-in', 410, 20, 20, 7, 20),
(21, 'Dine-in', 250, 21, 21, 21, 21),
(22, 'Pick-up', 180, 22, 22, 22, 22),
(23, 'Envío', 300, 23, 23, 23, 23),
(24, 'Dine-in', 450, 24, 24, 24, 24),
(25, 'Envío', 120, 25, 25, 25, 25),
(26, 'Pick-up', 90, 26, 26, 26, 26),
(27, 'Dine-in', 320, 27, 27, 27, 27),
(28, 'Envío', 210, 28, 28, 28, 28),
(29, 'Dine-in', 150, 29, 29, 29, 29),
(30, 'Pick-up', 85, 30, 30, 30, 30),
(31, 'Envío', 400, 31, 31, 31, 31),
(32, 'Dine-in', 550, 32, 32, 32, 32),
(33, 'Pick-up', 110, 33, 33, 33, 33),
(34, 'Envío', 230, 34, 34, 34, 34),
(35, 'Dine-in', 700, 35, 35, 35, 35),
(36, 'Envío', 340, 36, 36, 36, 36),
(37, 'Pick-up', 130, 37, 37, 37, 37),
(38, 'Dine-in', 280, 38, 38, 38, 38),
(39, 'Envío', 450, 39, 39, 39, 39),
(40, 'Dine-in', 600, 40, 40, 40, 40),
(41, 'Pick-up', 95, 41, 41, 41, 41),
(42, 'Envío', 175, 42, 42, 42, 42),
(43, 'Dine-in', 890, 43, 43, 43, 43),
(44, 'Envío', 260, 44, 44, 44, 44),
(45, 'Pick-up', 140, 45, 45, 45, 45),
(46, 'Dine-in', 310, 46, 46, 46, 46),
(47, 'Envío', 520, 47, 47, 47, 47),
(48, 'Dine-in', 470, 48, 48, 48, 48),
(49, 'Pick-up', 210, 49, 49, 49, 49),
(50, 'Envío', 380, 50, 50, 50, 50),
(51, 'Dine-in', 195, 51, 51, 51, 51),
(52, 'Pick-up', 95, 52, 52, 52, 52),
(53, 'Envío', 210, 53, 53, 53, 53),
(54, 'Dine-in', 150, 54, 54, 54, 54),
(55, 'Pick-up', 45, 55, 55, 55, 55),
(56, 'Envío', 115, 56, 56, 56, 56),
(57, 'Dine-in', 290, 57, 57, 57, 57),
(58, 'Envío', 150, 58, 58, 58, 58),
(59, 'Dine-in', 420, 59, 59, 59, 59),
(60, 'Pick-up', 150, 60, 60, 60, 60),
(61, 'Dine-in', 320, 61, 61, 61, 61),
(62, 'Envío', 140, 62, 62, 62, 62),
(63, 'Pick-up', 135, 63, 63, 63, 63),
(64, 'Dine-in', 280, 64, 64, 64, 64),
(65, 'Envío', 200, 65, 65, 65, 65),
(66, 'Dine-in', 130, 66, 66, 66, 66),
(67, 'Pick-up', 55, 67, 67, 67, 67),
(68, 'Envío', 105, 68, 68, 68, 68),
(69, 'Dine-in', 120, 69, 69, 69, 69),
(70, 'Pick-up', 45, 70, 70, 70, 70),
(71, 'Envío', 80, 71, 71, 71, 71),
(72, 'Dine-in', 170, 72, 72, 72, 72),
(73, 'Envío', 125, 73, 73, 73, 73),
(74, 'Pick-up', 160, 74, 74, 74, 74),
(75, 'Dine-in', 750, 75, 75, 75, 75);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `platillo`
--

CREATE TABLE `platillo` (
  `IDPlatillo` int(11) NOT NULL,
  `NombrePLatillo` varchar(100) DEFAULT NULL,
  `Ingredientes` varchar(200) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `CostoIndividualPlatillo` decimal(10,2) DEFAULT NULL,
  `Imagen` varchar(255) DEFAULT NULL,
  `IDCategoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `platillo`
--

INSERT INTO `platillo` (`IDPlatillo`, `NombrePLatillo`, `Ingredientes`, `Cantidad`, `CostoIndividualPlatillo`, `Imagen`, `IDCategoria`) VALUES
(1, 'Tostada de Camarón', 'Camarón, Aguacate, Cebolla', 1, 145.00, 'tostada.jpg', 1),
(2, 'Arrachera al Carbón', 'Arrachera, Guacamole, Frijoles', 1, 290.00, 'arrachera_plato.jpg', 2),
(3, 'Pastel de Chocolate', 'Cacao, Harina, Huevo', 1, 85.00, 'pastel.jpg', 3),
(4, 'Limonada Mineral', 'Limón, Agua Mineral', 1, 45.00, 'limonada.jpg', 4),
(5, 'Ensalada Maree', 'Lechuga, Queso Cabra', 1, 130.50, 'ensalada.jpg', 5),
(6, 'Sopa Azteca', 'Tortilla, Aguacate, Queso', 1, 95.00, 'sopa.jpg', 6),
(7, 'Crema de Champiñones', 'Champiñones, Crema', 1, 110.00, 'crema.jpg', 7),
(8, 'Tacos de Ribeye', 'Ribeye, Tortilla, Queso', 3, 210.00, 'tacos.jpg', 8),
(9, 'Torta Cubana', 'Pierna, Milanesa, Salchicha', 1, 125.00, 'torta.jpg', 9),
(10, 'Pizza Margarita', 'Salsa Pomodoro, Queso', 1, 190.00, 'pizza.jpg', 10),
(11, 'Hamburguesa Clásica', 'Carne, Tocino, Queso', 1, 165.00, 'hamburguesa.jpg', 11),
(12, 'Aguachile Verde', 'Camarón, Limón, Pepino', 1, 180.00, 'aguachile.jpg', 12),
(13, 'Tomahawk 800g', 'Corte Tomahawk, Verduras', 1, 950.00, 'tomahawk.jpg', 13),
(14, 'Fettuccine Alfredo', 'Pasta, Crema, Queso, Pollo', 1, 175.00, 'pasta_alfredo.jpg', 14),
(15, 'Chilaquiles Verdes', 'Totopos, Salsa, Pollo', 1, 115.00, 'chilaquiles.jpg', 15),
(16, 'Gorditas de Migajas', 'Masa, Migajas, Queso', 2, 70.00, 'gorditas.jpg', 16),
(17, 'Café Americano', 'Grano Especialidad, Agua', 1, 40.00, 'cafe.jpg', 17),
(18, 'Margarita Tamarindo', 'Tequila, Tamarindo, Tajín', 1, 120.00, 'margarita.jpg', 18),
(19, 'Papas Francesa', 'Papas, Sal', 1, 65.00, 'papas.jpg', 19),
(20, 'Nuggets Pollo', 'Pechuga, Papas', 5, 85.00, 'nuggets.jpg', 20),
(21, 'Bowl Vegano', 'Quinoa, Garbanzo, Aguacate', 1, 140.00, 'bowl_vegano.jpg', 21),
(22, 'Salmon Keto', 'Salmón, Espárragos', 1, 250.00, 'salmon_keto.jpg', 22),
(23, 'Pizza Sin Gluten', 'Masa Coliflor, Pomodoro', 1, 210.00, 'pizza_sg.jpg', 23),
(24, 'Pulpo Enamorado', 'Pulpo, Adobo, Arroz', 1, 320.00, 'pulpo.jpg', 24),
(25, 'Pancakes Frutos', 'Harina, Miel, Frutos Rojos', 3, 110.00, 'pancakes.jpg', 25),
(26, 'IPA Artesanal', 'Lúpulo, Malta', 1, 85.00, 'ipa.jpg', 26),
(27, 'Copa Cabernet', 'Vino Tinto', 1, 95.00, 'cabernet.jpg', 27),
(28, 'Copa Chardonnay', 'Vino Blanco', 1, 95.00, 'chardonnay.jpg', 28),
(29, 'Smoothie Verde', 'Espinaca, Piña, Apio', 1, 65.00, 'smoothie_verde.jpg', 29),
(30, 'Té Matcha', 'Polvo Matcha, Leche', 1, 75.00, 'matcha.jpg', 30),
(31, 'Montaditos Jamón', 'Pan, Jamón Serrano, Tomate', 3, 150.00, 'montaditos.jpg', 31),
(32, 'Ceviche Peruano', 'Pescado, Leche de Tigre', 1, 185.00, 'ceviche_peruano.jpg', 32),
(33, 'Gazpacho', 'Tomate, Pepino, Pimiento', 1, 90.00, 'gazpacho.jpg', 33),
(34, 'Cheesecake Keto', 'Almendra, Queso, Stevia', 1, 110.00, 'cheesecake_keto.jpg', 34),
(35, 'Concha Vainilla', 'Masa Dulce', 1, 35.00, 'concha.jpg', 35),
(36, 'Espresso Doble', 'Café Concentrado', 1, 45.00, 'espresso.jpg', 36),
(37, 'Red Bull', 'Bebida Energética', 1, 60.00, 'redbull.jpg', 37),
(38, 'Mojito Fresa Virgen', 'Limón, Fresa, Menta, Soda', 1, 70.00, 'mojito_virgen.jpg', 38),
(39, 'Menú 5 Tiempos', 'Degustación Chef', 1, 850.00, 'degustacion.jpg', 39),
(40, 'Dedos de Queso', 'Queso Empanizado', 6, 95.00, 'dedos_queso.jpg', 40),
(41, 'Pizza Margarita Vegana', 'Queso Almendra, Pomodoro', 1, 200.00, 'pizza_vegana.jpg', 41),
(42, 'Ravioles Espinaca', 'Pasta Rellena, Salsa Blanca', 1, 160.00, 'ravioles.jpg', 42),
(43, 'Risotto Hongos', 'Arroz Arborio, Setas', 1, 195.00, 'risotto.jpg', 43),
(44, 'Paella Mixta', 'Arroz, Azafrán, Mariscos, Pollo', 1, 350.00, 'paella.jpg', 44),
(45, 'Rollo California', 'Surimi, Aguacate, Pepino', 8, 115.00, 'california.jpg', 45),
(46, 'Rollo Dragon', 'Camarón, Aguacate, Anguila', 8, 165.00, 'dragon_roll.jpg', 46),
(47, 'Spring Rolls', 'Vegetales, Papel Arroz', 3, 90.00, 'spring_rolls.jpg', 47),
(48, 'Wok Teriyaki', 'Pollo, Verduras, Fideos', 1, 155.00, 'wok_teriyaki.jpg', 48),
(49, 'Menú Ejecutivo Lunes', 'Sopa, Guisado, Agua', 1, 125.00, 'menu_ejecutivo.jpg', 49),
(50, 'Combo Familiar', '2 Pizzas, Refresco 2L', 1, 380.00, 'combo_familiar.jpg', 50),
(51, 'Tacos de Chicharrón', 'Tortilla, Chicharrón, Salsa', 3, 65.00, 'taco_chicharron.jpg', 51),
(52, 'Consomé de Borrego', 'Caldo, Garbanzo, Carne', 1, 95.00, 'consome.jpg', 52),
(53, 'Mojarra Frita', 'Mojarra, Arroz, Ensalada', 1, 180.00, 'mojarra.jpg', 53),
(54, 'Sopes Sencillos', 'Masa, Frijol, Queso', 3, 50.00, 'sopes.jpg', 54),
(55, 'Tamal Oaxaqueño', 'Masa, Pollo, Mole, Hoja Plátano', 1, 45.00, 'tamal.jpg', 55),
(56, 'Menú Universitario', 'Sopa, Milanesa, Agua', 1, 85.00, 'menu_uni.jpg', 56),
(57, 'Bowl de Quinoa', 'Quinoa, Pollo, Aguacate', 1, 145.00, 'bowl_quinoa.jpg', 57),
(58, 'Ensalada Manzana', 'Lechuga, Manzana, Nuez, Miel', 1, 120.00, 'ensalada_manzana.jpg', 58),
(59, 'Corte Picaña', 'Picaña 400g, Papas', 1, 380.00, 'picana.jpg', 59),
(60, 'Medio Pollo Asado', 'Pollo, Frijoles, Salsas', 1, 150.00, 'pollo_asado.jpg', 60),
(61, 'Pizza Nutella', 'Masa, Nutella, Fresa', 1, 160.00, 'pizza_nutella.jpg', 61),
(62, 'Mac and Cheese', 'Macarrones, Salsa de Queso', 1, 110.00, 'mac_cheese.jpg', 62),
(63, 'Arroz Frito Mixto', 'Arroz, Pollo, Res, Camarón', 1, 135.00, 'arroz_frito.jpg', 63),
(64, 'Sushi Empanizado', 'Rollo, Queso, Surimi, Panko', 8, 140.00, 'sushi_frito.jpg', 64),
(65, 'Teppanyaki Pollo', 'Verduras Asadas, Pollo, Arroz', 1, 170.00, 'teppanyaki.jpg', 65),
(66, 'Kombucha Frutos', 'Té Fermentado, Frutos Rojos', 1, 65.00, 'kombucha.jpg', 66),
(67, 'Jugo Verde Cold Press', 'Apio, Nopal, Piña', 1, 55.00, 'jugo_verde.jpg', 67),
(68, 'Frappé Moka', 'Café, Chocolate, Hielo', 1, 75.00, 'frappe.jpg', 68),
(69, 'Orden Churros', 'Churros, Azúcar, Canela', 4, 60.00, 'churros.jpg', 69),
(70, 'Sorbete de Limón', 'Helado de Limón Base Agua', 2, 45.00, 'sorbete.jpg', 70),
(71, 'Guacamole Extra', 'Aguacate, Pico de Gallo', 1, 50.00, 'guacamole.jpg', 71),
(72, 'Chicharrón de Queso', 'Queso Gouda Frito', 1, 85.00, 'chicharron_queso.jpg', 72),
(73, 'Nachos Clásicos', 'Totopos, Queso, Jalapeño', 1, 95.00, 'nachos.jpg', 73),
(74, 'Tacos de Pastor', 'Carne Pastor, Piña', 5, 80.00, 'pastor.jpg', 74),
(75, 'Parrillada 4 Personas', 'Res, Pollo, Chorizo, Queso', 1, 650.00, 'parrillada.jpg', 75);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion`
--

CREATE TABLE `promocion` (
  `IDPromocion` int(11) NOT NULL,
  `TituloPromocion` varchar(100) DEFAULT NULL,
  `FechaInicio` date DEFAULT NULL,
  `FechaFin` date DEFAULT NULL,
  `ValorDescuento` double DEFAULT NULL,
  `IDPlatillo` int(11) DEFAULT NULL,
  `IDCliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `promocion`
--

INSERT INTO `promocion` (`IDPromocion`, `TituloPromocion`, `FechaInicio`, `FechaFin`, `ValorDescuento`, `IDPlatillo`, `IDCliente`) VALUES
(1, 'Promo Cumpleaños', '2026-03-01', '2026-03-31', 20, 1, 1),
(2, 'Martes Tacos', '2026-03-03', '2026-12-31', 15, 8, 2),
(3, 'Desayuno Godín', '2026-01-01', '2026-06-30', 10, 15, 3),
(4, 'Jueves Pozolero', '2026-03-05', '2026-03-05', 25, 6, 4),
(5, 'Pizza Familiar', '2026-03-01', '2026-03-31', 30, 10, 5),
(6, 'Promo Parejas', '2026-02-14', '2026-02-14', 50, 13, 6),
(7, 'Refill Café', '2026-01-01', '2026-12-31', 100, 17, 7),
(8, 'Día del Niño', '2026-04-30', '2026-04-30', 40, 20, 8),
(9, 'Verano Fresco', '2026-06-01', '2026-08-31', 15, 4, 9),
(10, 'Mariscos Locos', '2026-03-06', '2026-04-15', 20, 12, 10),
(11, 'Lunes Sin Carne', '2026-01-01', '2026-12-31', 15, 21, 11),
(12, 'Viernes Drinks', '2026-01-01', '2026-12-31', 25, 18, 12),
(13, 'Postre Cortesía', '2026-03-01', '2026-03-15', 100, 3, 13),
(14, 'Torta + Refresco', '2026-02-01', '2026-05-31', 10, 9, 14),
(15, 'Día Hamburguesa', '2026-05-28', '2026-05-28', 50, 11, 15),
(16, 'Pasta Lovers', '2026-04-01', '2026-04-30', 20, 14, 16),
(17, 'Crema Invierno', '2025-12-01', '2026-02-28', 15, 7, 17),
(18, 'Antojo Queretano', '2026-09-01', '2026-09-30', 25, 16, 18),
(19, 'Guarnición Gratis', '2026-03-10', '2026-03-20', 100, 19, 19),
(20, 'Carnívoro Fest', '2026-07-01', '2026-07-31', 30, 2, 20),
(21, 'Keto Day', '2026-03-01', '2026-03-31', 15, 22, 21),
(22, 'Cena Celiacos', '2026-04-01', '2026-04-30', 10, 23, 22),
(23, 'Mariscos Finos', '2026-05-01', '2026-05-31', 25, 24, 23),
(24, 'Desayuno Dulce', '2026-06-01', '2026-06-30', 20, 25, 24),
(25, 'Hora Feliz Cerveza', '2026-07-01', '2026-07-31', 50, 26, 25),
(26, 'Noche de Vinos', '2026-08-01', '2026-08-31', 30, 27, 26),
(27, 'Copa Blanca', '2026-09-01', '2026-09-30', 30, 28, 27),
(28, 'Mañana Detox', '2026-10-01', '2026-10-31', 15, 29, 28),
(29, 'Tarde Relax', '2026-11-01', '2026-11-30', 20, 30, 29),
(30, 'Festival Tapas', '2026-12-01', '2026-12-31', 25, 31, 30),
(31, 'Ceviche 2x1', '2026-01-01', '2026-01-31', 50, 32, 31),
(32, 'Gazpacho Promo', '2026-02-01', '2026-02-28', 15, 33, 32),
(33, 'Keto Sweet', '2026-03-01', '2026-03-31', 20, 34, 33),
(34, 'Concha Gratis', '2026-04-01', '2026-04-30', 100, 35, 34),
(35, 'Lunes Cafe', '2026-05-01', '2026-05-31', 50, 36, 35),
(36, 'Energía Tope', '2026-06-01', '2026-06-30', 15, 37, 36),
(37, 'Mocktail Day', '2026-07-01', '2026-07-31', 25, 38, 37),
(38, 'Degustación VIP', '2026-08-01', '2026-08-31', 10, 39, 38),
(39, 'Snack Time', '2026-09-01', '2026-09-30', 20, 40, 39),
(40, 'Vegan Pizza Day', '2026-10-01', '2026-10-31', 30, 41, 40),
(41, 'Ravioli Fest', '2026-11-01', '2026-11-30', 25, 42, 41),
(42, 'Risotto Night', '2026-12-01', '2026-12-31', 20, 43, 42),
(43, 'Domingo Paella', '2026-01-01', '2026-01-31', 15, 44, 43),
(44, 'Sushi 3x2', '2026-02-01', '2026-02-28', 33.3, 45, 44),
(45, 'Dragon Promo', '2026-03-01', '2026-03-31', 20, 46, 45),
(46, 'Spring Day', '2026-04-01', '2026-04-30', 15, 47, 46),
(47, 'Wok Night', '2026-05-01', '2026-05-31', 25, 48, 47),
(48, 'Ejecutivo VIP', '2026-06-01', '2026-06-30', 10, 49, 48),
(49, 'Familia Feliz', '2026-07-01', '2026-07-31', 20, 50, 49),
(50, 'Promo Cierre', '2026-08-01', '2026-08-31', 50, 1, 50),
(51, 'Promo Guisado', '2026-04-01', '2026-04-30', 10, 51, 51),
(52, 'Caldo Caliente', '2026-11-01', '2026-11-30', 15, 52, 52),
(53, 'Mojarra Fest', '2026-03-01', '2026-04-15', 25, 53, 53),
(54, 'Sopes al 2x1', '2026-05-01', '2026-05-31', 50, 54, 54),
(55, 'Día Candelaria', '2026-02-02', '2026-02-02', 30, 55, 55),
(56, 'Credencial Uni', '2026-08-01', '2026-12-15', 15, 56, 56),
(57, 'Lunes Bowl', '2026-01-01', '2026-12-31', 20, 57, 57),
(58, 'Sweet Salad', '2026-06-01', '2026-06-30', 10, 58, 58),
(59, 'Corte Jueves', '2026-07-01', '2026-07-31', 40, 59, 59),
(60, 'Pollo Familiar', '2026-09-01', '2026-09-30', 25, 60, 60),
(61, 'Pizza Postre', '2026-10-01', '2026-10-31', 20, 61, 61),
(62, 'Kids Mac', '2026-04-30', '2026-04-30', 50, 62, 62),
(63, 'Arroz Gratis', '2026-03-10', '2026-03-20', 100, 63, 63),
(64, 'Sushi Roll', '2026-02-14', '2026-02-14', 25, 64, 64),
(65, 'Teppan Promo', '2026-01-15', '2026-01-31', 15, 65, 65),
(66, 'Kombucha Day', '2026-05-15', '2026-05-31', 20, 66, 66),
(67, 'Jugo Mañanero', '2026-06-15', '2026-06-30', 10, 67, 67),
(68, 'Frappé 2x1', '2026-07-15', '2026-07-31', 50, 68, 68),
(69, 'Churros Lluvia', '2026-08-15', '2026-08-31', 15, 69, 69),
(70, 'Verano Sorbete', '2026-05-01', '2026-08-31', 20, 70, 70),
(71, 'Guaca Fest', '2026-09-15', '2026-09-16', 30, 71, 71),
(72, 'Keto Cheese', '2026-10-15', '2026-10-31', 15, 72, 72),
(73, 'Cine en Casa', '2026-11-15', '2026-11-30', 25, 73, 73),
(74, 'Madrugada Taco', '2026-12-15', '2026-12-31', 20, 74, 74),
(75, 'Parrilla Fin', '2026-03-01', '2026-03-31', 50, 75, 75);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `IDSucursal` int(11) NOT NULL,
  `NombreSucursal` varchar(100) DEFAULT NULL,
  `Direccion` varchar(200) DEFAULT NULL,
  `Horarios` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`IDSucursal`, `NombreSucursal`, `Direccion`, `Horarios`) VALUES
(1, 'Maree Centro', 'Calle 5 de Mayo #12, Centro Histórico', '08:00 - 22:00'),
(2, 'Maree Juriquilla', 'Av. De las Ciencias #204, Juriquilla', '09:00 - 23:00'),
(3, 'Maree Álamos', 'Blvd. Bernardo Quintana #150, Álamos', '08:00 - 21:00'),
(4, 'Maree Milenio', 'Camino Real #300, Milenio III', '08:00 - 22:00'),
(5, 'Maree Zibatá', 'Paseo de las Pitahayas #10, Zibatá', '09:00 - 23:00'),
(6, 'Maree El Refugio', 'Fray Junípero Serra #4500, El Refugio', '08:00 - 22:00'),
(7, 'Maree Centro Sur', 'Blvd. Centro Sur #55, Centro Sur', '07:00 - 21:00'),
(8, 'Maree Constituyentes', 'Av. Constituyentes #112, Escobedo', '08:00 - 20:00'),
(9, 'Maree Campanario', 'Hacienda El Campanario #88, Campanario', '09:00 - 23:00'),
(10, 'Maree Corregidora', 'Paseo Constituyentes #1500, El Pueblito', '08:00 - 22:00'),
(11, 'Maree Jurica', 'Paseo Jurica #101, Jurica', '08:00 - 21:00'),
(12, 'Maree Tejeda', 'Paseo de Amsterdam #45, Tejeda', '09:00 - 22:00'),
(13, 'Maree Candiles', 'Av. de la Luz #890, Candiles', '08:00 - 22:00'),
(14, 'Maree Cimatario', 'Av. del Cimatario #300, Col. Cimatario', '07:00 - 21:00'),
(15, 'Maree Mirador', 'Prol. Constituyentes #70, El Mirador', '08:00 - 22:00'),
(16, 'Maree La Pradera', 'Anillo Vial Fray Junípero #100, La Pradera', '09:00 - 23:00'),
(17, 'Maree Santa Rosa', 'Independencia #15, Santa Rosa Jáuregui', '08:00 - 20:00'),
(18, 'Maree Los Arcos', 'Calzada de los Arcos #200, Bosques', '08:00 - 23:00'),
(19, 'Maree Universidad', 'Av. Universidad #40, Centro Histórico', '07:00 - 21:00'),
(20, 'Maree Plaza Boulevares', 'Blvd. Bernardo Quintana #4100', '10:00 - 21:00'),
(21, 'Maree Zakia', 'Paseo de Zakia #200, El Marqués', '08:00 - 22:00'),
(22, 'Maree Sonterra', 'Blvd. Sonterra #15, Libramiento Norponiente', '09:00 - 22:00'),
(23, 'Maree Viñedos', 'Paseo de los Viñedos #40, Microparque', '08:00 - 21:00'),
(24, 'Maree Ciudad Maderas', 'Anillo Vial Maderas #500, El Marqués', '08:00 - 22:00'),
(25, 'Maree Huimilpan', 'Carretera Estatal 400 Km 5, Huimilpan', '09:00 - 20:00'),
(26, 'Maree Pedro Escobedo', 'Panamericana #11, Pedro Escobedo', '08:00 - 21:00'),
(27, 'Maree San Juan', 'Av. Juárez #40, San Juan del Río', '08:00 - 23:00'),
(28, 'Maree Tequisquiapan', 'Plaza Principal #2, Centro, Tequisquiapan', '09:00 - 22:00'),
(29, 'Maree Bernal', 'Calle Benito Juárez #15, Peña de Bernal', '08:00 - 21:00'),
(30, 'Maree Cadereyta', 'Madero #5, Centro, Cadereyta de Montes', '08:00 - 20:00'),
(31, 'Maree Ezequiel Montes', 'Belisario Domínguez #12, Ezequiel Montes', '09:00 - 21:00'),
(32, 'Maree Amealco', 'Plaza de la Constitución #4, Amealco', '08:00 - 20:00'),
(33, 'Maree Jalpan', 'Fray Junípero #1, Jalpan de Serra', '08:00 - 22:00'),
(34, 'Maree Antea', 'Carretera 57 #1000, Jurica', '11:00 - 21:00'),
(35, 'Maree Puerta La Victoria', 'Constituyentes #40, Mercurio', '11:00 - 21:00'),
(36, 'Maree Paseo Qro', 'Fray Junípero Serra #7901, El Refugio', '11:00 - 21:00'),
(37, 'Maree Galerías', 'Av. 5 de Febrero #99, Virreyes', '11:00 - 21:00'),
(38, 'Maree Tecnológico', 'Av. Tecnológico #105, Centro Histórico', '07:00 - 22:00'),
(39, 'Maree Zaragoza', 'Av. Zaragoza #30, Centro', '08:00 - 21:00'),
(40, 'Maree Epigmenio', 'Epigmenio González #500, San Pablo', '08:00 - 22:00'),
(41, 'Maree Pie de la Cuesta', 'Av. Pie de la Cuesta #1500, Desarrollo San Pablo', '08:00 - 21:00'),
(42, 'Maree Sombrerete', 'Blvd. de la Nación #200, Sombrerete', '09:00 - 22:00'),
(43, 'Maree Tlacote', 'Camino a Tlacote #300, Galindas', '08:00 - 21:00'),
(44, 'Maree 5 de Febrero', 'Lateral 5 de Febrero #2000, Obrera', '07:00 - 22:00'),
(45, 'Maree Cerrito Colorado', 'Av. de la Luz #100, Cerrito Colorado', '08:00 - 21:00'),
(46, 'Maree Satélite', 'Av. de las Fuentes #45, Satélite', '08:00 - 22:00'),
(47, 'Maree Loma Dorada', 'Loma Dorada #12, Loma Dorada', '08:00 - 21:00'),
(48, 'Maree Carretas', 'Plaza de las Américas #10, Carretas', '09:00 - 22:00'),
(49, 'Maree Arquitos', 'Ejército Republicano #5, Calesa', '08:00 - 21:00'),
(50, 'Maree Pasteur', 'Av. Luis Pasteur #80, Centro Sur', '07:00 - 21:00'),
(51, 'Maree Los Olvera', 'Camino a Los Olvera #12, Corregidora', '08:00 - 21:00'),
(52, 'Maree El Pocito', 'Prolongación Corregidora #45', '09:00 - 22:00'),
(53, 'Maree Santa Bárbara', 'Av. Reforma #100, Santa Bárbara', '08:00 - 22:00'),
(54, 'Maree Vista Hermosa', 'Blvd. Vista Hermosa #15', '07:00 - 21:00'),
(55, 'Maree Centro Médico', 'Ignacio Zaragoza #400', '07:00 - 23:00'),
(56, 'Maree Los Girasoles', 'Av. Girasoles #12', '08:00 - 21:00'),
(57, 'Maree San Jose el Alto', 'Carretera Chichimequillas #200', '08:00 - 20:00'),
(58, 'Maree Hércules', 'Avenida Hércules #55', '09:00 - 22:00'),
(59, 'Maree La Cañada', 'Emiliano Zapata #10', '08:00 - 21:00'),
(60, 'Maree Alfalfares', 'Av. Revolución #300', '08:00 - 22:00'),
(61, 'Maree El Salitre', 'Camino al Salitre #5', '09:00 - 21:00'),
(62, 'Maree Juriq Santa Fe', 'Boulevard Universitario #500', '08:00 - 23:00'),
(63, 'Maree San Pablo 2', 'Playa Roqueta #120', '08:00 - 22:00'),
(64, 'Maree Balvanera', 'Carretera Libre a Celaya Km 8', '07:00 - 21:00'),
(65, 'Maree Paseos Bosque', 'Paseo del Bosque #90', '08:00 - 22:00'),
(66, 'Maree La Joya', 'Paseo de la Joya #45', '09:00 - 23:00'),
(67, 'Maree Plaza Parque', 'Prol. Corregidora Norte #600', '10:00 - 21:00'),
(68, 'Maree Uptown', 'Anillo Vial Fray Junípero #2000', '10:00 - 21:00'),
(69, 'Maree Plaza Esfera', 'Carretera a Celaya #100', '11:00 - 21:00'),
(70, 'Maree Terminal', 'Luis Vega y Monroy #500', '06:00 - 23:00'),
(71, 'Maree Aeropuerto', 'Carretera Estatal 200 Km 22', '05:00 - 23:00'),
(72, 'Maree Colón', 'Plaza Soriano #1, Colón', '08:00 - 20:00'),
(73, 'Maree Tolimán', 'Juárez #10, Tolimán', '08:00 - 20:00'),
(74, 'Maree San Joaquín', 'Plaza Principal #3, San Joaquín', '09:00 - 21:00'),
(75, 'Maree Pinal de Amoles', 'Juárez #5, Pinal', '08:00 - 20:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visita`
--

CREATE TABLE `visita` (
  `IDVisita` int(11) NOT NULL,
  `PuntosPorVisitaSucursal` int(11) DEFAULT NULL,
  `PuntosPorVisitaPickUp` int(11) DEFAULT NULL,
  `PuntosPorVisitaEnvio` int(11) DEFAULT NULL,
  `IDCliente` int(11) DEFAULT NULL,
  `IDSucursal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `visita`
--

INSERT INTO `visita` (`IDVisita`, `PuntosPorVisitaSucursal`, `PuntosPorVisitaPickUp`, `PuntosPorVisitaEnvio`, `IDCliente`, `IDSucursal`) VALUES
(1, 10, 0, 0, 1, 1),
(2, 0, 5, 0, 2, 2),
(3, 0, 0, 15, 3, 3),
(4, 20, 0, 0, 4, 4),
(5, 0, 0, 10, 5, 5),
(6, 0, 8, 0, 6, 6),
(7, 15, 0, 0, 7, 7),
(8, 0, 0, 5, 8, 8),
(9, 25, 0, 0, 9, 9),
(10, 0, 5, 0, 10, 10),
(11, 0, 0, 12, 11, 11),
(12, 10, 0, 0, 12, 12),
(13, 0, 6, 0, 13, 13),
(14, 0, 0, 8, 14, 14),
(15, 30, 0, 0, 15, 15),
(16, 0, 0, 10, 16, 16),
(17, 0, 5, 0, 17, 17),
(18, 10, 0, 0, 18, 18),
(19, 0, 0, 15, 19, 19),
(20, 15, 0, 0, 20, 20),
(21, 10, 0, 0, 21, 21),
(22, 0, 5, 0, 22, 22),
(23, 0, 0, 15, 23, 23),
(24, 20, 0, 0, 24, 24),
(25, 0, 0, 10, 25, 25),
(26, 0, 8, 0, 26, 26),
(27, 15, 0, 0, 27, 27),
(28, 0, 0, 5, 28, 28),
(29, 25, 0, 0, 29, 29),
(30, 0, 5, 0, 30, 30),
(31, 0, 0, 12, 31, 31),
(32, 10, 0, 0, 32, 32),
(33, 0, 6, 0, 33, 33),
(34, 0, 0, 8, 34, 34),
(35, 30, 0, 0, 35, 35),
(36, 0, 0, 10, 36, 36),
(37, 0, 5, 0, 37, 37),
(38, 10, 0, 0, 38, 38),
(39, 0, 0, 15, 39, 39),
(40, 15, 0, 0, 40, 40),
(41, 10, 0, 0, 41, 41),
(42, 0, 5, 0, 42, 42),
(43, 0, 0, 15, 43, 43),
(44, 20, 0, 0, 44, 44),
(45, 0, 0, 10, 45, 45),
(46, 0, 8, 0, 46, 46),
(47, 15, 0, 0, 47, 47),
(48, 0, 0, 5, 48, 48),
(49, 25, 0, 0, 49, 49),
(50, 0, 5, 0, 50, 50),
(51, 10, 0, 0, 51, 51),
(52, 0, 5, 0, 52, 52),
(53, 0, 0, 15, 53, 53),
(54, 20, 0, 0, 54, 54),
(55, 0, 5, 0, 55, 55),
(56, 0, 0, 10, 56, 56),
(57, 15, 0, 0, 57, 57),
(58, 0, 0, 12, 58, 58),
(59, 30, 0, 0, 59, 59),
(60, 0, 8, 0, 60, 60),
(61, 15, 0, 0, 61, 61),
(62, 0, 0, 10, 62, 62),
(63, 0, 6, 0, 63, 63),
(64, 20, 0, 0, 64, 64),
(65, 0, 0, 15, 65, 65),
(66, 10, 0, 0, 66, 66),
(67, 0, 5, 0, 67, 67),
(68, 0, 0, 10, 68, 68),
(69, 15, 0, 0, 69, 69),
(70, 0, 6, 0, 70, 70),
(71, 0, 0, 8, 71, 71),
(72, 25, 0, 0, 72, 72),
(73, 0, 0, 12, 73, 73),
(74, 0, 10, 0, 74, 74),
(75, 40, 0, 0, 75, 75);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agregaringredienteextra`
--
ALTER TABLE `agregaringredienteextra`
  ADD PRIMARY KEY (`IDIngredienteExtra`),
  ADD KEY `IDPlatillo` (`IDPlatillo`),
  ADD KEY `IDIngrediente` (`IDIngrediente`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`IDCategoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IDCliente`);

--
-- Indices de la tabla `colaborador`
--
ALTER TABLE `colaborador`
  ADD PRIMARY KEY (`IDColaborador`);

--
-- Indices de la tabla `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`IDFeedback`),
  ADD KEY `IDCliente` (`IDCliente`);

--
-- Indices de la tabla `ingrediente`
--
ALTER TABLE `ingrediente`
  ADD PRIMARY KEY (`IDIngrediente`);

--
-- Indices de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD PRIMARY KEY (`IDNotificacion`),
  ADD KEY `IDCliente` (`IDCliente`),
  ADD KEY `IDColaborador` (`IDColaborador`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`IDPedido`),
  ADD KEY `IDColaborador` (`IDColaborador`),
  ADD KEY `IDCliente` (`IDCliente`),
  ADD KEY `IDPlatillo` (`IDPlatillo`),
  ADD KEY `IDSucursal` (`IDSucursal`);

--
-- Indices de la tabla `platillo`
--
ALTER TABLE `platillo`
  ADD PRIMARY KEY (`IDPlatillo`),
  ADD KEY `IDCategoria` (`IDCategoria`);

--
-- Indices de la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD PRIMARY KEY (`IDPromocion`),
  ADD KEY `IDPlatillo` (`IDPlatillo`),
  ADD KEY `IDCliente` (`IDCliente`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`IDSucursal`);

--
-- Indices de la tabla `visita`
--
ALTER TABLE `visita`
  ADD PRIMARY KEY (`IDVisita`),
  ADD KEY `IDCliente` (`IDCliente`),
  ADD KEY `IDSucursal` (`IDSucursal`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agregaringredienteextra`
--
ALTER TABLE `agregaringredienteextra`
  MODIFY `IDIngredienteExtra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `IDCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `IDCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `colaborador`
--
ALTER TABLE `colaborador`
  MODIFY `IDColaborador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `feedback`
--
ALTER TABLE `feedback`
  MODIFY `IDFeedback` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `ingrediente`
--
ALTER TABLE `ingrediente`
  MODIFY `IDIngrediente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  MODIFY `IDNotificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `IDPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `platillo`
--
ALTER TABLE `platillo`
  MODIFY `IDPlatillo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `promocion`
--
ALTER TABLE `promocion`
  MODIFY `IDPromocion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `IDSucursal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `visita`
--
ALTER TABLE `visita`
  MODIFY `IDVisita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agregaringredienteextra`
--
ALTER TABLE `agregaringredienteextra`
  ADD CONSTRAINT `agregaringredienteextra_ibfk_1` FOREIGN KEY (`IDPlatillo`) REFERENCES `platillo` (`IDPlatillo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `agregaringredienteextra_ibfk_2` FOREIGN KEY (`IDIngrediente`) REFERENCES `ingrediente` (`IDIngrediente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`IDCliente`) REFERENCES `cliente` (`IDCliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD CONSTRAINT `notificacion_ibfk_1` FOREIGN KEY (`IDCliente`) REFERENCES `cliente` (`IDCliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notificacion_ibfk_2` FOREIGN KEY (`IDColaborador`) REFERENCES `colaborador` (`IDColaborador`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`IDColaborador`) REFERENCES `colaborador` (`IDColaborador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`IDCliente`) REFERENCES `cliente` (`IDCliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_3` FOREIGN KEY (`IDPlatillo`) REFERENCES `platillo` (`IDPlatillo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_4` FOREIGN KEY (`IDSucursal`) REFERENCES `sucursal` (`IDSucursal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `platillo`
--
ALTER TABLE `platillo`
  ADD CONSTRAINT `platillo_ibfk_1` FOREIGN KEY (`IDCategoria`) REFERENCES `categoria` (`IDCategoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD CONSTRAINT `promocion_ibfk_1` FOREIGN KEY (`IDPlatillo`) REFERENCES `platillo` (`IDPlatillo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `promocion_ibfk_2` FOREIGN KEY (`IDCliente`) REFERENCES `cliente` (`IDCliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `visita`
--
ALTER TABLE `visita`
  ADD CONSTRAINT `visita_ibfk_1` FOREIGN KEY (`IDCliente`) REFERENCES `cliente` (`IDCliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `visita_ibfk_2` FOREIGN KEY (`IDSucursal`) REFERENCES `sucursal` (`IDSucursal`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
