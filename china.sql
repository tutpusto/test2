-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Мар 18 2015 г., 09:57
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `china`
--

-- --------------------------------------------------------

--
-- Структура таблицы `links`
--

DROP TABLE IF EXISTS `links`;
CREATE TABLE IF NOT EXISTS `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pupil` int(11) DEFAULT NULL,
  `teacher` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Дамп данных таблицы `links`
--

INSERT INTO `links` (`id`, `pupil`, `teacher`) VALUES
(1, 1, 1),
(2, 3, 4),
(3, 2, 2),
(4, 2, 2),
(5, 2, 2),
(6, 2, 2),
(7, 2, 2),
(8, 2, 2),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0),
(12, 0, 0),
(13, 1, 3),
(14, 2, 1),
(15, 1, 1),
(16, 6, 5),
(17, 10, 12),
(18, 10, 12),
(19, 2, 1),
(20, 1, 10),
(21, 2, 10),
(22, 2, 3),
(23, 2, 1),
(24, 1, 1),
(25, 1, 1),
(26, 2, 1),
(27, 1, 22),
(28, 73, 25),
(29, 74, 25),
(30, 76, 27),
(31, 73, 23),
(32, 75, 27),
(33, 82, 26),
(34, 82, 28),
(35, 85, 25),
(36, 87, 25),
(37, 87, 24),
(38, 73, 29);

-- --------------------------------------------------------

--
-- Структура таблицы `pupils`
--

DROP TABLE IF EXISTS `pupils`;
CREATE TABLE IF NOT EXISTS `pupils` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- Дамп данных таблицы `pupils`
--

INSERT INTO `pupils` (`id`, `name`) VALUES
(73, 'Денис'),
(74, 'Харитон'),
(75, 'Андрей'),
(76, 'Георгий'),
(77, 'Виталий'),
(78, 'Маша'),
(79, 'Саша'),
(80, 'Даша'),
(81, 'Катя'),
(82, 'Марина'),
(83, 'Вика'),
(84, 'Петя'),
(85, 'Джон'),
(86, 'Ричард'),
(87, 'Елена');

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--

DROP TABLE IF EXISTS `teachers`;
CREATE TABLE IF NOT EXISTS `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Дамп данных таблицы `teachers`
--

INSERT INTO `teachers` (`id`, `name`) VALUES
(23, 'Андрей Иванович'),
(24, 'Николай Ильич'),
(25, 'Василий Петрович'),
(26, 'Наталья Петровна'),
(27, 'Екатерина Павловна'),
(28, 'Федор Михайлович'),
(29, 'Сергей Сергеевич');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
