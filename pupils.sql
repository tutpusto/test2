-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Мар 16 2015 г., 18:19
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
