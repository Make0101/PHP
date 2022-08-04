-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 04 2022 г., 14:25
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cloth`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'Рубашки'),
(2, 'Футболки'),
(3, 'Кофты'),
(4, 'Майки'),
(5, 'Лето'),
(6, 'Зима'),
(7, 'Демисезон'),
(8, 'Верхняя одежда'),
(9, 'Одежда'),
(10, 'С капюшоном');

-- --------------------------------------------------------

--
-- Структура таблицы `imgs`
--

CREATE TABLE `imgs` (
  `id` int(11) NOT NULL,
  `alt` char(60) DEFAULT NULL,
  `link` char(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `imgs`
--

INSERT INTO `imgs` (`id`, `alt`, `link`) VALUES
(1, 'Серая рубашка с капюшоном вид спереди модель', 'main_hood_shirt_grey'),
(2, 'Серая рубашка с капюшоном вид спереди модель', 'sub_hood_shirt1_grey'),
(3, 'Серая рубашка с капюшоном вид сзади модель', 'sub_hood_shirt2_grey'),
(4, 'Хаки рубашка с капюшоном вид спереди модель', 'main_hood_shirt_khaki'),
(5, 'Хаки рубашка с капюшоном вид спереди модель', 'sub_hood_shirt1_khaki'),
(6, 'Хаки рубашка с капюшоном вид сзади модель', 'sub_hood_shirt2_khaki'),
(7, 'Голубая рубашка с капюшоном вид спереди модель', 'main_hood_shirt_blue'),
(8, 'Голубая рубашка с капюшоном спереди модель', 'sub_hood_shirt1_blue'),
(9, 'Голубая рубашка с капюшоном сзади модель', 'sub_hood_shirt2_blue'),
(10, 'Красная рубашка вид спереди', 'main_shirt_red'),
(11, 'Красная рубашка вид спереди модель', 'sub_shirt1_red'),
(12, 'Красная рубашка вид сзади модель', 'sub_shirt2_red'),
(13, 'Голубая рубашка вид спереди', 'main_shirt_blue'),
(14, 'Голубая рубашка вид спереди модель', 'sub_shirt1_blue'),
(15, 'Голубая рубашка вид сзади модель', 'sub_shirt2_blue'),
(16, 'Зелёная футболка вид спереди', 'main_t_green'),
(17, 'Зелёная футболка вид спереди модель', 'sub_t1_green'),
(18, 'Зелёная футболка вид сзади модель', 'sub_t2_green'),
(19, 'Жёлтая футболка вид спереди', 'main_t_yellow'),
(20, 'Жёлтая футболка вид спереди модель', 'sub_t1_yellow'),
(21, 'Жёлтая футболка вид сзади модель', 'sub_t2_yellow'),
(22, 'Чёрное худи вид спереди', 'main_hood_black'),
(23, 'Чёрное худи вид спереди модель', 'sub_hood1_black'),
(24, 'Чёрное худи вид сзади модель', 'sub_hood2_black'),
(25, 'Серое худи вид спереди', 'main_hood_grey'),
(26, 'Серое худи вид спереди модель', 'sub_hood1_grey'),
(27, 'Серое худи вид сзади модель', 'sub_hood2_grey'),
(28, 'Хаки худи вид спереди', 'main_hood_khaki'),
(29, 'Хаки худи вид спереди модель', 'sub_hood1_khaki'),
(30, 'Хаки худи вид сзади модель', 'sub_hood2_khaki'),
(31, 'Синяя майка вид спереди', 'main_ass'),
(32, 'Синяя майка вид спереди модель', 'sub1_ass'),
(33, 'Синяя майка вид сзади модель', 'sub2_ass'),
(34, 'Чёрная майка вид спереди', 'main_kitogawa_black'),
(35, 'Чёрная майка вид спереди модель', 'sub_kitogawa1_black'),
(36, 'Чёрная майка вид сзади модель', 'sub_kitogawa2_black'),
(37, 'Розовая майка вид спереди', 'main_kitogawa_pink'),
(38, 'Розовая майка вид спереди модель', 'sub_kitogawa1_pink'),
(39, 'Розовая майка вид сзади модель', 'sub_kitogawa2_pink'),
(40, 'Серая майка вид спереди', 'main_rei_grey'),
(41, 'Серая майка вид спереди модель', 'sub_rei1_grey'),
(42, 'Серая майка вид сзади модель', 'sub_rei2_grey'),
(43, 'Чёрная майка вид спереди', 'main_rei_black'),
(44, 'Чёрная майка вид спереди модель', 'sub_rei1_black'),
(45, 'Чёрная майка вид сзади модель', 'sub_rei2_black');

-- --------------------------------------------------------

--
-- Структура таблицы `main_category`
--

CREATE TABLE `main_category` (
  `pid` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `main_category`
--

INSERT INTO `main_category` (`pid`, `category_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 2),
(7, 2),
(8, 3),
(9, 3),
(10, 3),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `main_imgs`
--

CREATE TABLE `main_imgs` (
  `pid` int(11) DEFAULT NULL,
  `imgs_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `main_imgs`
--

INSERT INTO `main_imgs` (`pid`, `imgs_id`) VALUES
(1, 1),
(2, 4),
(3, 7),
(4, 10),
(5, 13),
(6, 16),
(7, 19),
(8, 22),
(9, 25),
(10, 28),
(11, 31),
(12, 34),
(13, 37),
(14, 40),
(15, 43);

-- --------------------------------------------------------

--
-- Структура таблицы `model`
--

CREATE TABLE `model` (
  `id` int(11) NOT NULL,
  `description` char(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price_discount` int(11) DEFAULT NULL,
  `price_promo` int(11) DEFAULT NULL,
  `name` char(30) DEFAULT NULL,
  `in_stock` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `model`
--

INSERT INTO `model` (`id`, `description`, `price`, `price_discount`, `price_promo`, `name`, `in_stock`) VALUES
(1, 'Фланель из хлопка плотностью 260 г/кв. м. Уютный классический крой, на пуговицах и с капюшоном. Два нагрудных кармана с клапаном на утяжках', 4200, 3999, 3499, 'Рубашка с капюшоном DC Shoes', 'yes'),
(2, 'Фланель из хлопка плотностью 260 г/кв. м. Уютный классический крой, на пуговицах и с капюшоном. Два нагрудных кармана с клапаном на утяжках', 4200, 3999, 3499, 'Рубашка с капюшоном DC Shoes', 'no'),
(3, 'Фланель из хлопка плотностью 260 г/кв. м. Уютный классический крой, на пуговицах и с капюшоном. Два нагрудных кармана с клапаном на утяжках', 4200, 3999, 3499, 'Рубашка с капюшоном DC Shoes', 'yes'),
(4, 'Фланель из хлопка плотностью 60 г/кв. м. Уютный классический крой, воротник на пуговицах. Нагрудные карманы на пуговицах. С легким начесом для мягкости', 2499, 2300, 2100, 'Рубашка DC Shoes', 'no'),
(5, 'Фланель из хлопка плотностью 60 г/кв. м. Уютный классический крой, воротник на пуговицах. Нагрудные карманы на пуговицах. С легким начесом для мягкости', 2499, 2300, 2100, 'Рубашка DC Shoes', 'yes'),
(6, 'Мягкая джерси средней плотности. Уютный классический крой, круглый вырез. В полоску, вышивка на груди', 3999, 3500, 3100, 'Футболка DC Shoes', 'yes'),
(7, 'Мягкая джерси средней плотности. Уютный классический крой, круглый вырез. В полоску, вышивка на груди', 3999, 3500, 3100, 'Футболка DC Shoes', 'yes'),
(8, 'Ткань плотностью 230 г/кв. м перекрестного окрашивания. Уютный классический крой, втачной крой на груди. Принт на груди', 6799, 6200, 5999, 'Кофта DC Shoes', 'no'),
(9, 'Ткань плотностью 230 г/кв. м перекрестного окрашивания. Уютный классический крой, втачной крой на груди. Принт на груди', 6799, 6200, 5999, 'Кофта DC Shoes', 'yes'),
(10, 'Ткань плотностью 230 г/кв. м перекрестного окрашивания. Уютный классический крой, втачной крой на груди. Принт на груди', 6799, 6200, 5999, 'Кофта DC Shoes', 'yes'),
(11, 'Детали: круглый вырез горловины, горловина и проймы обработаны рибаной, длина до линии бедер, прямой свободный силуэт', 980, 850, 799, 'Майка ДимASS', 'no'),
(12, 'Детали: круглый вырез горловины, горловина и проймы обработаны рибаной, длина до линии бедер, прямой свободный силуэт', 1199, 1099, 890, 'Майка Kitogawa', 'yes'),
(13, 'Детали: круглый вырез горловины, горловина и проймы обработаны рибаной, длина до линии бедер, прямой свободный силуэт', 1099, 1000, 900, 'Майка Kitogawa', 'yes'),
(14, 'Детали: круглый вырез горловины, горловина и проймы обработаны рибаной, длина до линии бедер, прямой свободный силуэт', 1099, 1000, 900, 'Майка Rei', 'no'),
(15, 'Детали: круглый вырез горловины, горловина и проймы обработаны рибаной, длина до линии бедер, прямой свободный силуэт', 1099, 1000, 900, 'Майка Rei', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `sub_category`
--

CREATE TABLE `sub_category` (
  `pid` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sub_category`
--

INSERT INTO `sub_category` (`pid`, `category_id`) VALUES
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(4, 7),
(4, 8),
(4, 9),
(5, 7),
(5, 8),
(5, 9),
(6, 5),
(6, 8),
(6, 9),
(7, 5),
(7, 8),
(7, 9),
(8, 6),
(8, 7),
(8, 8),
(8, 9),
(8, 10),
(9, 6),
(9, 7),
(9, 8),
(9, 9),
(9, 10),
(10, 6),
(10, 7),
(10, 8),
(10, 9),
(10, 10),
(11, 5),
(11, 9),
(12, 5),
(12, 9),
(13, 5),
(13, 9),
(14, 5),
(14, 9),
(15, 5),
(15, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `sub_imgs`
--

CREATE TABLE `sub_imgs` (
  `pid` int(11) DEFAULT NULL,
  `imgs_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sub_imgs`
--

INSERT INTO `sub_imgs` (`pid`, `imgs_id`) VALUES
(1, 2),
(1, 3),
(2, 5),
(2, 6),
(3, 8),
(3, 9),
(4, 11),
(4, 12),
(5, 14),
(5, 15),
(6, 17),
(6, 18),
(7, 20),
(7, 21),
(8, 23),
(8, 24),
(9, 26),
(9, 27),
(10, 29),
(10, 30),
(11, 32),
(11, 33),
(12, 35),
(12, 36),
(13, 38),
(13, 39),
(14, 41),
(14, 42),
(15, 44),
(15, 45);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `imgs`
--
ALTER TABLE `imgs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `main_category`
--
ALTER TABLE `main_category`
  ADD KEY `pid_main_cat_f_key` (`pid`),
  ADD KEY `category_main_id_f_key` (`category_id`);

--
-- Индексы таблицы `main_imgs`
--
ALTER TABLE `main_imgs`
  ADD KEY `pid_main_img_key` (`pid`),
  ADD KEY `imgs_main_id` (`imgs_id`);

--
-- Индексы таблицы `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sub_category`
--
ALTER TABLE `sub_category`
  ADD KEY `pid_sub_cat_f_key` (`pid`),
  ADD KEY `category_sub_id_f_key` (`category_id`);

--
-- Индексы таблицы `sub_imgs`
--
ALTER TABLE `sub_imgs`
  ADD KEY `pid_sub_img_f_key` (`pid`),
  ADD KEY `imgs_sub_id` (`imgs_id`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `main_category`
--
ALTER TABLE `main_category`
  ADD CONSTRAINT `category_main_id_f_key` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `pid_main_cat_f_key` FOREIGN KEY (`pid`) REFERENCES `model` (`id`);

--
-- Ограничения внешнего ключа таблицы `main_imgs`
--
ALTER TABLE `main_imgs`
  ADD CONSTRAINT `imgs_main_id` FOREIGN KEY (`imgs_id`) REFERENCES `imgs` (`id`),
  ADD CONSTRAINT `pid_main_img_key` FOREIGN KEY (`pid`) REFERENCES `model` (`id`);

--
-- Ограничения внешнего ключа таблицы `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `category_sub_id_f_key` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `pid_sub_cat_f_key` FOREIGN KEY (`pid`) REFERENCES `model` (`id`);

--
-- Ограничения внешнего ключа таблицы `sub_imgs`
--
ALTER TABLE `sub_imgs`
  ADD CONSTRAINT `imgs_sub_id` FOREIGN KEY (`imgs_id`) REFERENCES `imgs` (`id`),
  ADD CONSTRAINT `pid_sub_img_f_key` FOREIGN KEY (`pid`) REFERENCES `model` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
