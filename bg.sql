-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 30 2019 г., 08:29
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bg`
--

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `street` varchar(255) NOT NULL,
  `home` varchar(255) DEFAULT NULL,
  `part` varchar(255) DEFAULT NULL,
  `appt` varchar(100) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `change_money` varchar(255) DEFAULT NULL,
  `card` varchar(255) DEFAULT NULL,
  `call` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id`, `user_id`, `street`, `home`, `part`, `appt`, `floor`, `comment`, `change_money`, `card`, `call`) VALUES
(37, 59, 'Чемпионская', '4', '4', '12', 8, 'Первый заказ Андрея', NULL, 'on', 'on'),
(38, 60, 'Кирпичная', '44', '12', '123', 5, 'Первый заказ Алекс', 'on', NULL, NULL),
(39, 60, 'Кирпичная', '44', '12', '123', 5, 'Первый заказ Алекс', 'on', NULL, NULL),
(40, 60, 'Кирпичная', '44', '12', '123', 5, 'Первый заказ Алекс', 'on', NULL, NULL),
(41, 60, 'Кирпичная', '44', '12', '123', 5, 'Первый заказ Алекс', 'on', NULL, NULL),
(42, 60, 'Кирпичная', '44', '12', '123', 5, 'Первый заказ Алекс', 'on', NULL, NULL),
(43, 60, 'Кирпичная', '44', '12', '123', 5, 'Первый заказ Алекс', 'on', NULL, NULL),
(44, 60, 'Кирпичная', '44', '12', '123', 5, 'Первый заказ Алекс', 'on', NULL, NULL),
(45, 60, 'Кирпичная', '44', '12', '123', 5, 'Первый заказ Алекс', 'on', NULL, NULL),
(46, 60, 'Кирпичная', '44', '12', '123', 5, 'Первый заказ Алекс', 'on', NULL, NULL),
(47, 60, 'Кирпичная', '44', '12', '123', 5, 'Первый заказ Алекс', 'on', NULL, NULL),
(48, 60, 'Кирпичная', '44', '12', '123', 5, 'Первый заказ Алекс', 'on', NULL, NULL),
(49, 60, 'Кирпичная', '44', '12', '123', 5, 'Первый заказ Алекс', 'on', NULL, NULL),
(50, 60, 'Кирпичная', '44', '12', '123', 5, 'Первый заказ Алекс', 'on', NULL, NULL),
(51, 60, 'Кирпичная', '44', '12', '123', 5, 'Первый заказ Алекс', 'on', NULL, NULL),
(52, 60, 'Кирпичная', '44', '12', '123', 5, 'Первый заказ Алекс', 'on', NULL, NULL),
(53, 61, 'Социалистическая', '37', '38', '1', 2, 'Это я', 'on', NULL, 'on'),
(54, 61, 'Социалистическая', '37', '38', '1', 2, 'Это я', 'on', NULL, 'on'),
(55, 61, 'Социалистическая', '12', '22', '22', 222, 'Третий заказ', 'on', NULL, NULL),
(56, 61, 'Социалистическая', '12', '22', '22', 222, 'Третий заказ', 'on', NULL, NULL),
(57, 62, 'Тестовая', '12', '4', '12', 13, 'Первый тестовый', 'on', 'on', 'on'),
(64, 62, 'Тестовая', '12', '4', '12', 13, 'Второй тестовый', 'on', 'on', 'on'),
(65, 62, 'Тестовая', '12', '12', '12', 11, 'Заказ 4', 'on', 'on', 'on'),
(66, 62, 'Тестовая', '12', '12', '12', 11, 'Заказ 5', 'on', 'on', 'on');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `tel`) VALUES
(60, 'Алекс', 'pavel85_07@bk.ru', '+7 (917) 833 84 33'),
(61, 'Павел', 'p-olhovoi@bk.ru', '+7 (961) 659 27 37'),
(62, 'Тест', 'test@yandex.ru', '+7 (987) 733 21 11');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
