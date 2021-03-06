-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Версия сервера: 10.1.8-MariaDB
-- Версия PHP: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `azorult2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cookies`
--

CREATE TABLE `cookies` (
  `domain` varchar(300) NOT NULL DEFAULT '?',
  `r_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `passwords`
--

CREATE TABLE `passwords` (
  `p_soft_type` int(11) NOT NULL DEFAULT '1',
  `p_soft_name` varchar(30) NOT NULL DEFAULT '?',
  `p_p1` varchar(300) NOT NULL DEFAULT ' ',
  `p_p2` varchar(300) NOT NULL DEFAULT ' ',
  `p_p3` varchar(300) NOT NULL DEFAULT ' ',
  `p_p4` varchar(300) NOT NULL DEFAULT ' ',
  `r_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `reports`
--

CREATE TABLE `reports` (
  `r_id` int(11) NOT NULL,
  `m_id` varchar(300) NOT NULL DEFAULT '?',
  `ip` varchar(30) NOT NULL DEFAULT '?',
  `country` varchar(10) NOT NULL DEFAULT '?',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `time` time NOT NULL DEFAULT '00:00:00',
  `compname` varchar(260) NOT NULL DEFAULT '?',
  `username` varchar(300) NOT NULL DEFAULT '?',
  `os_name` varchar(260) NOT NULL DEFAULT '?',
  `os_arch` varchar(10) NOT NULL DEFAULT '?',
  `os_ver` varchar(10) NOT NULL DEFAULT '?',
  `files_count` int(11) NOT NULL DEFAULT '0',
  `btc_count` int(11) NOT NULL DEFAULT '0',
  `cc_count` int(11) NOT NULL DEFAULT '0',
  `passwords_count` int(11) NOT NULL DEFAULT '0',
  `bin_type` varchar(2) NOT NULL DEFAULT 'E',
  `bin_rights` varchar(2) NOT NULL DEFAULT '?',
  `comment` varchar(300) NOT NULL DEFAULT ' ',
  `filename` varchar(260) NOT NULL DEFAULT 'no',
  `trashed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cookies`
--
ALTER TABLE `cookies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`r_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cookies`
--
ALTER TABLE `cookies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `reports`
--
ALTER TABLE `reports`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
