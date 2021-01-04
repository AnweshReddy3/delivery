-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 28, 2020 at 07:52 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-delivery`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_icon`) VALUES
(44, 'Veg Pizza', 'Veg_Pizza.png'),
(45, 'Quesadilla', 'Quesadillas3.png'),
(46, 'Meat Favorite', 'Meat_Favorite.png'),
(47, 'Greek Pizza', 'Greek_Pizza.png'),
(48, 'Gourmet Thins', 'Gourmet_Thins.png'),
(49, 'Alternative Crusts', 'Alternative_Crusts.png'),
(53, 'veggie Favorite', 'Veggie_favorite2.png');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `city_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `city_name`) VALUES
(1, 'Hyderabad'),
(2, 'Karimnagar'),
(3, 'Secunderabad'),
(4, 'Guntur'),
(5, 'Vijayawada'),
(7, 'Ongole');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `contact_name` varchar(100) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_phone` varchar(100) NOT NULL,
  `contact_message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `contact_name`, `contact_email`, `contact_phone`, `contact_message`) VALUES
(2, 'test1', 'test1@gmail.com', '1234567890', 'test message 1'),
(3, 'test2', 'test2@gmail.com', '0987654321', 'test message 2');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `vehicle_no` varchar(100) NOT NULL,
  `vehicle_type` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`id`, `name`, `phone`, `email`, `password`, `vehicle_no`, `vehicle_type`, `date`) VALUES
(2, 'rider1', '0987654321', 'rider1@gmail.com', 'rider1', '1234', 'bike', '2020-12-09 16:06:16'),
(3, 'rider2', '987654321', 'rider2@gmail.com', 'rider2', '7676', 'scooter', '2020-12-15 16:06:26'),
(4, 'rider3', '1234567890', 'rider3@gmail.com', 'rider3', '5646', 'Scotty', '2020-12-13 16:23:31');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text DEFAULT NULL,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(1, 'api/User/register', 'post', 'a:16:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"3977ecff-9a15-4852-9fcc-b14e312395cd\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"199\";s:6:\"Cookie\";s:51:\"ci_session=66f169f23fae2524f32c97f807b88fc85f4ae67f\";s:10:\"first_name\";s:6:\"ANWESH\";s:9:\"last_name\";s:5:\"REDDY\";s:9:\"birthdate\";s:10:\"24-12-1078\";s:5:\"email\";s:16:\"ANWESH@gmail.com\";s:5:\"phone\";s:10:\"7675858080\";s:8:\"password\";s:6:\"ANWESH\";s:6:\"status\";s:1:\"0\";}', '', '::1', 1608622810, 0.0713251, '1', 200),
(2, 'api/User/user_login', 'post', 'a:11:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"5efa9698-2b9c-48a1-a3f4-1ccffcfbc26f\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:2:\"63\";s:6:\"Cookie\";s:51:\"ci_session=5e12cd182ebf7149f1564bddddd132e8027cdfec\";s:5:\"email\";s:16:\"ANWESH@gmail.com\";s:8:\"password\";s:6:\"ANWESH\";}', '', '::1', 1608622826, 0.0894351, '1', 200),
(3, 'api/User/user_details', 'get', 'a:8:{s:13:\"Authorization\";s:560:\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3RcL0NvZGVJZ25pdGVyXC8iLCJhdWQiOiJodHRwOlwvXC9sb2NhbGhvc3RcL0NvZGVJZ25pdGVyXC8iLCJpYXQiOjE2MDg2MjI4MjYsIm5iZiI6MTYwODYyMjg1NiwiZXhwIjoxNjA4NjIyODg2LCJkYXRhIjp7ImlkIjoiMTAiLCJmaXJzdF9uYW1lIjoiQU5XRVNIIiwibGFzdF9uYW1lIjoiUkVERFkiLCJiaXJ0aGRhdGUiOiIyNC0xMi0xMDc4IiwiZW1haWwiOiJBTldFU0hAZ21haWwuY29tIiwicGhvbmUiOiI3Njc1ODU4MDgwIiwicGFzc3dvcmQiOiIkMnkkMTAkMGdBMXVSQlRMQ1wvZ21vMWp3eTFMY2VDTGJ0bzUwOG40cm9CMW1hXC9qMEdPeXJQSm84OVFWSyIsInN0YXR1cyI6IjAifX0.BnDlulvQ9tDDJupK5POO5RG1rxMwUgCFimWFX4GwSh8\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"6a2965cd-bdf8-489f-80ef-6d9ad28509cd\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=5e12cd182ebf7149f1564bddddd132e8027cdfec\";}', '', '::1', 1608622873, 0.00455093, '1', 200),
(4, 'api/User/register', 'post', 'a:15:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"561f01bf-8810-463f-9d06-38dc62250622\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"202\";s:10:\"first_name\";s:6:\"ANWESH\";s:9:\"last_name\";s:5:\"REDDY\";s:9:\"birthdate\";s:10:\"24-12-1078\";s:5:\"email\";s:19:\"ANWESH123@gmail.com\";s:5:\"phone\";s:10:\"7675858080\";s:8:\"password\";s:6:\"ANWESH\";s:6:\"status\";s:1:\"0\";}', '', '::1', 1608703564, 0.0790319, '1', 200),
(5, 'api/User/user_login', 'post', 'a:11:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"ae10a0ba-d792-469a-a1a6-912dff07762d\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:2:\"66\";s:6:\"Cookie\";s:51:\"ci_session=ae652afb3c7a430589b17839f70210b6b442e009\";s:5:\"email\";s:19:\"ANWESH123@gmail.com\";s:8:\"password\";s:6:\"ANWESH\";}', '', '::1', 1608703576, 0.06247, '1', 200),
(6, 'api/User/user_details', 'get', 'a:8:{s:13:\"Authorization\";s:561:\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3RcL0NvZGVJZ25pdGVyXC8iLCJhdWQiOiJodHRwOlwvXC9sb2NhbGhvc3RcL0NvZGVJZ25pdGVyXC8iLCJpYXQiOjE2MDg3MDM1NzYsIm5iZiI6MTYwODcwMzYwNiwiZXhwIjoxNjA4NzAzNjM2LCJkYXRhIjp7ImlkIjoiMTEiLCJmaXJzdF9uYW1lIjoiQU5XRVNIIiwibGFzdF9uYW1lIjoiUkVERFkiLCJiaXJ0aGRhdGUiOiIyNC0xMi0xMDc4IiwiZW1haWwiOiJBTldFU0gxMjNAZ21haWwuY29tIiwicGhvbmUiOiI3Njc1ODU4MDgwIiwicGFzc3dvcmQiOiIkMnkkMTAkb1VPTmloR3h6bmx4RURmLlRyQkpqZVoweVdNSkNtc1Fqa0l0a3I5RUNzWWJqYkhEMVhDbUMiLCJzdGF0dXMiOiIwIn19.hDNu9a9pIYvdgwLKG97zKDY_OBZsUnBk2tXn9hVwMJU\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"22b66e11-8365-492c-ab8f-4d58efa0d5e4\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=ae652afb3c7a430589b17839f70210b6b442e009\";}', '', '::1', 1608703594, 0.00461578, '1', 200),
(7, 'api/User/user_details', 'get', 'a:8:{s:13:\"Authorization\";s:525:\".eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3RcL0NvZGVJZ25pdGVyXC8iLCJhdWQiOiJodHRwOlwvXC9sb2NhbGhvc3RcL0NvZGVJZ25pdGVyXC8iLCJpYXQiOjE2MDg3MDM1NzYsIm5iZiI6MTYwODcwMzYwNiwiZXhwIjoxNjA4NzAzNjM2LCJkYXRhIjp7ImlkIjoiMTEiLCJmaXJzdF9uYW1lIjoiQU5XRVNIIiwibGFzdF9uYW1lIjoiUkVERFkiLCJiaXJ0aGRhdGUiOiIyNC0xMi0xMDc4IiwiZW1haWwiOiJBTldFU0gxMjNAZ21haWwuY29tIiwicGhvbmUiOiI3Njc1ODU4MDgwIiwicGFzc3dvcmQiOiIkMnkkMTAkb1VPTmloR3h6bmx4RURmLlRyQkpqZVoweVdNSkNtc1Fqa0l0a3I5RUNzWWJqYkhEMVhDbUMiLCJzdGF0dXMiOiIwIn19.hDNu9a9pIYvdgwLKG97zKDY_OBZsUnBk2tXn9hVwMJU\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"38e8b7cc-0980-4850-aada-b75b31aa8cf0\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=ae652afb3c7a430589b17839f70210b6b442e009\";}', '', '::1', 1608703601, 0.0482531, '1', 0),
(8, 'api/User/user_details', 'get', 'a:8:{s:13:\"Authorization\";s:518:\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3RcL0NvZGVJZ25pdGVyXC8iLCJhdWQiOiJodHRwOlwvXC9sb2NhbGhvc3RcL0NvZGVJZ25pdGVyXC8iLCJpYXQiOjE2MDg3MDM1NzYsIm5iZiI6MTYwODcwMzYwNiwiZXhwIjoxNjA4NzAzNjM2LCJkYXRhIjp7ImlkIjoiMTEiLCJmaXJzdF9uYW1lIjoiQU5XRVNIIiwibGFzdF9uYW1lIjoiUkVERFkiLCJiaXJ0aGRhdGUiOiIyNC0xMi0xMDc4IiwiZW1haWwiOiJBTldFU0gxMjNAZ21haWwuY29tIiwicGhvbmUiOiI3Njc1ODU4MDgwIiwicGFzc3dvcmQiOiIkMnkkMTAkb1VPTmloR3h6bmx4RURmLlRyQkpqZVoweVdNSkNtc1Fqa0l0a3I5RUNzWWJqYkhEMVhDbUMiLCJzdGF0dXMiOiIwIn19.\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"a4b31eea-862e-467b-ad64-afdeedac68c0\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=ae652afb3c7a430589b17839f70210b6b442e009\";}', '', '::1', 1608703615, 0.0491068, '1', 0),
(9, 'api/User/user_details', 'get', 'a:8:{s:13:\"Authorization\";s:561:\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3RcL0NvZGVJZ25pdGVyXC8iLCJhdWQiOiJodHRwOlwvXC9sb2NhbGhvc3RcL0NvZGVJZ25pdGVyXC8iLCJpYXQiOjE2MDg3MDM1NzYsIm5iZiI6MTYwODcwMzYwNiwiZXhwIjoxNjA4NzAzNjM2LCJkYXRhIjp7ImlkIjoiMTEiLCJmaXJzdF9uYW1lIjoiQU5XRVNIIiwibGFzdF9uYW1lIjoiUkVERFkiLCJiaXJ0aGRhdGUiOiIyNC0xMi0xMDc4IiwiZW1haWwiOiJBTldFU0gxMjNAZ21haWwuY29tIiwicGhvbmUiOiI3Njc1ODU4MDgwIiwicGFzc3dvcmQiOiIkMnkkMTAkb1VPTmloR3h6bmx4RURmLlRyQkpqZVoweVdNSkNtc1Fqa0l0a3I5RUNzWWJqYkhEMVhDbUMiLCJzdGF0dXMiOiIwIn19.hDNu9a9pIYvdgwLKG97zKDY_OBZsUnBk2tXn9hVwMJU\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"342b39a2-99ee-480d-8764-63ec6168c514\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=ae652afb3c7a430589b17839f70210b6b442e009\";}', '', '::1', 1608703675, 0.0350721, '1', 200),
(10, 'api/User/fetch_food_categories', 'get', 'a:8:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"aeb84b8f-bf3d-4e44-93d5-0cc7adfab773\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=ae652afb3c7a430589b17839f70210b6b442e009\";}', '', '::1', 1608706764, 0.00827098, '1', 200),
(11, 'api/User/fetch_menu_items', 'get', 'a:7:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"0d457e5b-5388-44f6-bd00-2bdaa95f1dd0\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=4e56fbeebac8e6580529ef72a0041aa9875d5e03\";}', '', '::1', 1608710537, 0.0227001, '1', 404),
(12, 'api/User/fetch_menu_items', 'get', 'a:7:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"b5d09dd4-11a1-4743-bff3-63ad07f3fbda\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=4e56fbeebac8e6580529ef72a0041aa9875d5e03\";}', '', '::1', 1608710721, 0.030309, '1', 200),
(13, 'api/User/fetch_toppings', 'get', 'a:8:{s:12:\"Content-Type\";s:20:\"application/atom+xml\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"11490eed-1d58-4a29-b6e8-fae8fcc5e66c\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=4e56fbeebac8e6580529ef72a0041aa9875d5e03\";}', '', '::1', 1608710949, 0.00936913, '1', 200),
(14, 'api/User/fetch_topping_items', 'get', 'a:8:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"569f7fe1-dc96-48d1-8543-5e4545b7574c\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=7576f4adec60eed98126d554962f5dfccb66cf58\";}', '', '::1', 1608711175, 0.0615029, '1', 200),
(15, 'api/User/register', 'post', 'a:14:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"d542198d-0ba9-487f-b59e-193cb33c9868\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"153\";s:6:\"Cookie\";s:51:\"ci_session=7576f4adec60eed98126d554962f5dfccb66cf58\";s:4:\"name\";s:6:\"ANWESH\";s:5:\"email\";s:20:\"ANWESH1234@gmail.com\";s:5:\"phone\";s:10:\"7675858080\";s:8:\"password\";s:6:\"ANWESH\";s:16:\"confirm_password\";s:6:\"ANWESH\";}', '', '::1', 1608714331, 0.079078, '1', 0),
(16, 'api/User/register', 'post', 'a:14:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"93c316db-46f4-422e-b598-8dce50e29824\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"153\";s:6:\"Cookie\";s:51:\"ci_session=e60a20cc44f5cd79b1ae0701cbcd1f69053bfe3a\";s:4:\"name\";s:6:\"ANWESH\";s:5:\"email\";s:20:\"ANWESH1234@gmail.com\";s:5:\"phone\";s:10:\"7675858080\";s:8:\"password\";s:6:\"ANWESH\";s:16:\"confirm_password\";s:6:\"ANWESH\";}', '', '::1', 1608714386, 0.154459, '1', 0),
(17, 'api/User/register', 'post', 'a:14:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"9c2a7f89-bbc0-424b-b7c9-1acdcdbdefc3\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"153\";s:6:\"Cookie\";s:51:\"ci_session=e60a20cc44f5cd79b1ae0701cbcd1f69053bfe3a\";s:4:\"name\";s:6:\"ANWESH\";s:5:\"email\";s:20:\"ANWESH1234@gmail.com\";s:5:\"phone\";s:10:\"7675858080\";s:8:\"password\";s:6:\"ANWESH\";s:16:\"confirm_password\";s:6:\"ANWESH\";}', '', '::1', 1608714398, 0.132394, '1', 200),
(18, 'api/User/register', 'post', 'a:14:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"bb7cf640-7d6c-43d4-bbc7-f694e4fae295\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"153\";s:6:\"Cookie\";s:51:\"ci_session=e60a20cc44f5cd79b1ae0701cbcd1f69053bfe3a\";s:4:\"name\";s:6:\"ANWESH\";s:5:\"email\";s:20:\"ANWESH1234@gmail.com\";s:5:\"phone\";s:10:\"7675858080\";s:8:\"password\";s:6:\"ANWESH\";s:16:\"confirm_password\";s:6:\"ANWESH\";}', '', '::1', 1608714413, 0.024775, '1', 404),
(19, 'api/User/user_login', 'post', 'a:11:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"f2556e07-a2f0-4daa-bacc-eadc9b2e2a55\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:2:\"66\";s:6:\"Cookie\";s:51:\"ci_session=e60a20cc44f5cd79b1ae0701cbcd1f69053bfe3a\";s:5:\"email\";s:19:\"ANWESH123@gmail.com\";s:8:\"password\";s:6:\"ANWESH\";}', '', '::1', 1608714417, 0.0607679, '1', 200),
(20, 'api/User/user_login', 'post', 'a:11:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"5b08d4ae-b850-4e67-ad4a-cc671d32e4ec\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:2:\"67\";s:6:\"Cookie\";s:51:\"ci_session=e60a20cc44f5cd79b1ae0701cbcd1f69053bfe3a\";s:5:\"email\";s:20:\"ANWESH1234@gmail.com\";s:8:\"password\";s:6:\"ANWESH\";}', '', '::1', 1608714422, 0.080173, '1', 200),
(21, 'api/User/user_details', 'get', 'a:8:{s:13:\"Authorization\";s:561:\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3RcL0NvZGVJZ25pdGVyXC8iLCJhdWQiOiJodHRwOlwvXC9sb2NhbGhvc3RcL0NvZGVJZ25pdGVyXC8iLCJpYXQiOjE2MDg3MDM1NzYsIm5iZiI6MTYwODcwMzYwNiwiZXhwIjoxNjA4NzAzNjM2LCJkYXRhIjp7ImlkIjoiMTEiLCJmaXJzdF9uYW1lIjoiQU5XRVNIIiwibGFzdF9uYW1lIjoiUkVERFkiLCJiaXJ0aGRhdGUiOiIyNC0xMi0xMDc4IiwiZW1haWwiOiJBTldFU0gxMjNAZ21haWwuY29tIiwicGhvbmUiOiI3Njc1ODU4MDgwIiwicGFzc3dvcmQiOiIkMnkkMTAkb1VPTmloR3h6bmx4RURmLlRyQkpqZVoweVdNSkNtc1Fqa0l0a3I5RUNzWWJqYkhEMVhDbUMiLCJzdGF0dXMiOiIwIn19.hDNu9a9pIYvdgwLKG97zKDY_OBZsUnBk2tXn9hVwMJU\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"92dd6095-6ab3-437b-942d-d4483156ad94\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=e60a20cc44f5cd79b1ae0701cbcd1f69053bfe3a\";}', '', '::1', 1608714427, 0.023206, '1', 200),
(22, 'api/User/fetch_food_categories', 'get', 'a:8:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"302d3133-ff1b-4478-81a8-f25080ddbf48\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=e60a20cc44f5cd79b1ae0701cbcd1f69053bfe3a\";}', '', '::1', 1608714435, 0.0240121, '1', 200),
(23, 'api/User/fetch_menu_items', 'get', 'a:7:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"131c7280-350d-42d1-9b54-6d97419f9ad1\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=e60a20cc44f5cd79b1ae0701cbcd1f69053bfe3a\";}', '', '::1', 1608714438, 0.0230291, '1', 200),
(24, 'api/User/fetch_toppings', 'get', 'a:8:{s:12:\"Content-Type\";s:20:\"application/atom+xml\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"fd260584-f7c2-42e4-8d58-fd59f25805c7\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=e60a20cc44f5cd79b1ae0701cbcd1f69053bfe3a\";}', '', '::1', 1608714467, 0.028899, '1', 200),
(25, 'api/User/fetch_topping_items', 'get', 'a:8:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"eaa67c12-4034-4b7c-a928-2a71d9087956\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=e60a20cc44f5cd79b1ae0701cbcd1f69053bfe3a\";}', '', '::1', 1608714469, 0.00657582, '1', 200),
(26, 'api/User/register', 'post', 'a:14:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"01671000-00db-41f9-b052-50ce2d5984e2\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"153\";s:6:\"Cookie\";s:51:\"ci_session=e60a20cc44f5cd79b1ae0701cbcd1f69053bfe3a\";s:4:\"name\";s:6:\"ANWESH\";s:5:\"email\";s:20:\"ANWESH1234@gmail.com\";s:5:\"phone\";s:10:\"7675858080\";s:8:\"password\";s:6:\"ANWESH\";s:16:\"confirm_password\";s:6:\"ANWESH\";}', '', '::1', 1608715507, 0.0418642, '1', 404),
(27, 'api/User/register', 'post', 'a:14:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"5f343f9c-086f-4682-ae57-0c5ef9d8908a\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"153\";s:6:\"Cookie\";s:51:\"ci_session=bc9e11a12d1a670a8f79fb7e7e7ac34f0ebdd95d\";s:4:\"name\";s:6:\"ANWESH\";s:5:\"email\";s:20:\"ANWESH1234@gmail.com\";s:5:\"phone\";s:10:\"7675858080\";s:8:\"password\";s:6:\"ANWESH\";s:16:\"confirm_password\";s:6:\"ANWESH\";}', '', '::1', 1608715524, 0.00959802, '1', 404),
(28, 'api/User/register', 'post', 'a:14:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"11a59019-7ec6-40d3-9b52-cac944539420\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"153\";s:6:\"Cookie\";s:51:\"ci_session=bc9e11a12d1a670a8f79fb7e7e7ac34f0ebdd95d\";s:4:\"name\";s:6:\"ANWESH\";s:5:\"email\";s:20:\"ANWESH1234@gmail.com\";s:5:\"phone\";s:10:\"7675858080\";s:8:\"password\";s:6:\"ANWESH\";s:16:\"confirm_password\";s:6:\"ANWESH\";}', '', '::1', 1608715537, 0.0298741, '1', 0),
(29, 'api/User/test', 'post', 'a:9:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"4205126a-e264-4eba-91b3-64ce8b0eedb9\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=bc9e11a12d1a670a8f79fb7e7e7ac34f0ebdd95d\";s:14:\"Content-Length\";s:1:\"0\";}', '', '::1', 1608716339, 0.0334461, '1', 0),
(30, 'api/User/test', 'post', 'a:9:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"6615e13c-bd6c-47c4-8b2a-4c7d64f539dd\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=78fbffd00f5af3b8b1dbe625ff22af8fba1dd18c\";s:14:\"Content-Length\";s:1:\"0\";}', '', '::1', 1608716392, 0.0232852, '1', 0),
(31, 'api/User/test', 'post', 'a:9:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"4bafc28a-5d22-4b1d-9204-b5c54cfe024e\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=78fbffd00f5af3b8b1dbe625ff22af8fba1dd18c\";s:14:\"Content-Length\";s:1:\"0\";}', '', '::1', 1608716396, 0.00471711, '1', 0),
(32, 'api/User/test', 'post', 'a:9:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"d78d4a91-f126-4f12-8082-6bf5b77c7b06\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=78fbffd00f5af3b8b1dbe625ff22af8fba1dd18c\";s:14:\"Content-Length\";s:1:\"0\";}', '', '::1', 1608716397, 0.00679421, '1', 0),
(33, 'api/User/test', 'get', 'a:8:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"5a510972-72f9-4559-83cb-64c78737a2da\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=78fbffd00f5af3b8b1dbe625ff22af8fba1dd18c\";}', '', '::1', 1608716406, 0.026633, '1', 0),
(34, 'api/User/test', 'get', 'a:8:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"6a839d2d-f540-4cd2-8040-347088a745fd\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=78fbffd00f5af3b8b1dbe625ff22af8fba1dd18c\";}', '', '::1', 1608716475, 0.0105448, '1', 0),
(35, 'api/User/test', 'get', 'a:8:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"f9b1b32c-572a-430c-a41d-10bc0bf8d1b6\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=78fbffd00f5af3b8b1dbe625ff22af8fba1dd18c\";}', '', '::1', 1608716517, 0.047097, '1', 200),
(36, 'api/User/register', 'post', 'a:9:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"a0c61ca8-d938-447c-bd3b-86fad79931fd\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=78fbffd00f5af3b8b1dbe625ff22af8fba1dd18c\";s:14:\"Content-Length\";s:1:\"0\";}', '', '::1', 1608717120, 0.034673, '1', 404),
(37, 'api/User/fetch_menu_items', 'get', 'a:7:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"a62eb9f8-1893-4d1e-81b6-504ed31c2507\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=04cb1c55e769c3693be61933232e715cd99a91df\";}', '', '::1', 1608717201, 0.026608, '1', 200),
(38, 'api/User/register', 'post', 'a:13:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"94f13768-8e57-4307-a2e4-674f4a82bd77\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"147\";s:4:\"name\";s:8:\"srinivas\";s:5:\"email\";s:18:\"srinivas@gmail.com\";s:5:\"phone\";s:10:\"1234567890\";s:8:\"password\";s:8:\"srinivas\";s:16:\"confirm_password\";s:8:\"srinivas\";}', '', '::1', 1608726058, 0.0511949, '1', 0),
(39, 'api/User/register', 'post', 'a:14:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"1bc621fe-96d4-4a77-833e-dd216677f9fe\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"147\";s:6:\"Cookie\";s:51:\"ci_session=3e69fece33fd39391620f781733158c4aaede538\";s:4:\"name\";s:8:\"srinivas\";s:5:\"email\";s:18:\"srinivas@gmail.com\";s:5:\"phone\";s:10:\"1234567890\";s:8:\"password\";s:8:\"srinivas\";s:16:\"confirm_password\";s:8:\"srinivas\";}', '', '::1', 1608726085, 0.00933409, '1', 0),
(40, 'api/User/register', 'post', 'a:14:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"5ad0b7fc-de7b-43eb-8018-7b13e234e8c7\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:14:\"Content-Length\";s:3:\"147\";s:6:\"Cookie\";s:51:\"ci_session=3e69fece33fd39391620f781733158c4aaede538\";s:4:\"name\";s:8:\"srinivas\";s:5:\"email\";s:18:\"srinivas@gmail.com\";s:5:\"phone\";s:10:\"1234567890\";s:8:\"password\";s:8:\"srinivas\";s:16:\"confirm_password\";s:8:\"srinivas\";}', '', '::1', 1608726103, 0.17523, '1', 200),
(41, 'api/User/user_details', 'get', 'a:7:{s:13:\"Authorization\";s:561:\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3RcL0NvZGVJZ25pdGVyXC8iLCJhdWQiOiJodHRwOlwvXC9sb2NhbGhvc3RcL0NvZGVJZ25pdGVyXC8iLCJpYXQiOjE2MDg3MDM1NzYsIm5iZiI6MTYwODcwMzYwNiwiZXhwIjoxNjA4NzAzNjM2LCJkYXRhIjp7ImlkIjoiMTEiLCJmaXJzdF9uYW1lIjoiQU5XRVNIIiwibGFzdF9uYW1lIjoiUkVERFkiLCJiaXJ0aGRhdGUiOiIyNC0xMi0xMDc4IiwiZW1haWwiOiJBTldFU0gxMjNAZ21haWwuY29tIiwicGhvbmUiOiI3Njc1ODU4MDgwIiwicGFzc3dvcmQiOiIkMnkkMTAkb1VPTmloR3h6bmx4RURmLlRyQkpqZVoweVdNSkNtc1Fqa0l0a3I5RUNzWWJqYkhEMVhDbUMiLCJzdGF0dXMiOiIwIn19.hDNu9a9pIYvdgwLKG97zKDY_OBZsUnBk2tXn9hVwMJU\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"2fca26f9-aca8-4638-adb8-5f9548568c85\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";}', '', '::1', 1609138170, 0.04548, '1', 200),
(42, 'api/User/fetch_food_categories', 'get', 'a:8:{s:12:\"Content-Type\";s:16:\"application/json\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"c78d34e7-f430-40c5-8568-1f93e208b237\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=8870304d91a8a8e6d1028b31698fbb519633d917\";}', '', '::1', 1609138176, 0.01548, '1', 200),
(43, 'api/User/fetch_menu_items', 'get', 'a:7:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.8\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Postman-Token\";s:36:\"cc552c96-9cbf-404a-aebb-3c128d9b7b0e\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:51:\"ci_session=8870304d91a8a8e6d1028b31698fbb519633d917\";}', '', '::1', 1609138183, 0.010155, '1', 200);

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
  `id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_category` varchar(100) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_desc` varchar(300) NOT NULL,
  `item_price` varchar(100) NOT NULL,
  `item_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`id`, `item_name`, `item_category`, `item_id`, `item_desc`, `item_price`, `item_image`) VALUES
(2, 'Cheese Tomato', 'Veg Pizza', 44, 'A delectable combination of cheese and juicy tomato', '7.50', 'Veg_Pizza2.png'),
(3, 'Deluxe Veggie', 'Veg Pizza', 44, 'Veg delight - onion, capsicum, grilled mushroom, corn & paneer', '7.50', 'Deluxe_Veggie.jpg'),
(4, 'Double Cheese Margherita', 'Veg Pizza', 44, 'A classic delight loaded with extra 100% real mozzarella cheese', '7.75', 'Double_Cheese_Margherita.jpg'),
(5, 'Mexican Green Wave', 'Veg Pizza', 44, 'Mexican herbs sprinkled on onion, capsicum, tomato & jalapeno', '7.50', 'Mexican_Green_Wave.jpg'),
(6, 'Peppy Paneer', 'Veg Pizza', 44, 'Flavorful trio of juicy paneer, crisp capsicum with spicy red paprika', '6.79', 'Peppy_Paneer.jpg'),
(7, 'Achari Do Pyaza', 'Greek Pizza', 47, 'Tangy & spicy achari flavours on a super cheesy onion pizza- as desi as it gets!', '6.25', 'Achari_Do_Pyaza.jpg'),
(8, 'Fresh Veggie', 'Greek Pizza', 47, 'Delectable combination of onion & capsicum, a veggie lovers pick', '6.75', 'Fresh_Veggie.jpg'),
(9, 'Kadhai Paneer', 'Greek Pizza', 47, 'Paneer chunks in your favourite spicy kadhai masala flavors, with toppings of onion & capsicum', '6.79', 'Kadhai_Paneer.jpg'),
(10, 'Paneer Makhani', 'Greek Pizza', 47, 'A burst of Indian flavors with spicy-tangy layer of Makhani sauce topped with Paneer & capsicum', '6.25', 'Paneer_Makhani.jpg'),
(11, 'Buffelo Chicken', 'Meat Favorite', 46, 'All the Zing, without the wing - This tangy, spicy pie is made for Game Day. Kick off with Buffalo b', '5.75', 'Buffelo_Chicken.jpg'),
(12, 'Chicken Bruschetta', 'Meat Favorite', 46, 'A Twist on Italian Taste - What can make bruschetta better? How about grilled chicken? Add roasted g', '5.79', 'Chicken_Bruschetta.jpg'),
(13, 'Chipotle Chicken', 'Meat Favorite', 46, 'Smoky, zesty and bold - This Southwest-style flavor-bomb is set off with smoky chipotle sauce, then ', '2.75', 'Chiptole_Chicken.jpg'),
(14, 'Steak & blue cheese', 'Meat Favorite', 46, 'Regular Dough, Blue Cheese, Nloaarella Cheese, Garlic Spread, Fresh Mushrooms, Steak Strips (Extra C', '2.75', 'Steak_blue_Cheese.png'),
(16, 'Gourmet thin creamy truffle', 'Gourmet Thins', 48, 'This personal size 10\" thin crust pizza, topped with a subtle, creamy truffle base sauce, provolone ', '3.75', 'Gourmet_thin_creamy_truffle.jpg'),
(17, 'Gourmet thin pesto amore', 'Gourmet Thins', 48, 'Fall in love with pesto all over again with this 10\" thin crust topped with spinach, red onions, fir', '6.75', 'Gourmet_thin_pesto_amore.jpeg'),
(18, 'Gourmet Thin Sriracha and honey', 'Gourmet Thins', 48, 'This personal size 10\" thin crust pizza, topped with homestyle Italian tomato sauce, habanero chedda', '5.75', 'Gourmet_Thin_Sriracha_and_honey.jpg'),
(19, 'Creamy Truffle', 'Veggie Favorite', 53, 'Topped with a subtle, creamy truffle base sauce, provolone cheese, and our 4-cheese blend of mozzarella, brick, cheddar and parmesan.', '5.75', 'Creamy_Truffle.jpg'),
(22, 'Super Plant', 'Veggie Favorite', 53, 'Topped with homestyle tomato sauce, mozzarella cheese, plant-based pepperoni and plant-based chorizo crumble. Toppings contain gluten.', '2.75', 'Super_Plant.jpg'),
(23, 'Keto crust pizza', 'Alternative Crusts', 49, 'Get your pizza fix with less carbs! Create your own by selecting any toppings of your choice. Made with certified Keto Uncrust. See About our Food page for nutritional info. Available in Small only.', '2.75', 'Keto_crust_pizza.jpg'),
(24, 'Keto Pepperoni', 'Alternative Crusts', 49, 'Keto Uncrust, topped with homestyle tomato sauce, mozzarella cheese and pepperoni. ', '4.35', 'Keto_Pepperoni1.jpg'),
(25, 'Keto pesto margherita', 'Alternative Crusts', 49, 'Keto Uncrust, topped with pesto sauce, mozzarella cheese, roma tomatoes and parmesan cheese. 3 net carbs per slice. Available in Small only.', '4.35', 'Keto_pesto_margherita.jpg'),
(27, 'Cheese Panzerotti - Fried', 'Quesadillas', 45, 'This hot, fresh and crispy bundle of cheesy, saucy goodness is just waiting for you to rip into it. Don\'t forget the napkins!', '4.35', 'Cheese_Panzerotti_-_Fried.jpg'),
(28, 'Pepperoni Panzerotti - Fried', 'Quesadillas', 45, 'This hot, fresh and crispy bundle of cheese, sauce and pepperoni is just waiting for you to rip into it. Don\'t forget the napkins!', '25', 'Pepperoni_Panzerotti_-_Fried.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `message`) VALUES
(1, 'Welcome User'),
(2, 'Welcome User'),
(3, 'Welcome User'),
(4, 'hello\r\n\r\n'),
(5, 'New Offer'),
(6, 'New Offer');

-- --------------------------------------------------------

--
-- Table structure for table `otp_expiry`
--

CREATE TABLE `otp_expiry` (
  `id` int(11) NOT NULL,
  `otp` varchar(100) NOT NULL,
  `is_expired` varchar(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `toppings`
--

CREATE TABLE `toppings` (
  `id` int(11) NOT NULL,
  `top_cat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `toppings`
--

INSERT INTO `toppings` (`id`, `top_cat`) VALUES
(4, 'Bread'),
(5, 'Sauces'),
(6, 'Cold Drinks'),
(9, 'Cheese'),
(10, 'Extras');

-- --------------------------------------------------------

--
-- Table structure for table `topping_items`
--

CREATE TABLE `topping_items` (
  `id` int(11) NOT NULL,
  `top_cat_id` int(11) NOT NULL,
  `top_name` varchar(100) NOT NULL,
  `top_price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topping_items`
--

INSERT INTO `topping_items` (`id`, `top_cat_id`, `top_name`, `top_price`) VALUES
(1, 6, 'Thums Up', '12'),
(2, 6, 'Cock Tail', '10'),
(3, 6, 'Pepsi', '20/-'),
(4, 6, 'Coca-Cola', '16'),
(7, 9, 'Freshes', '15'),
(8, 9, 'Flavor added', '30'),
(10, 6, 'Mountain Dew', '11'),
(12, 4, 'Milk Breads', '10'),
(13, 4, 'Wheat Bread', '20'),
(15, 4, 'Brown Bread', '30'),
(16, 5, 'Soya Sauces', '10'),
(17, 5, 'Green Chutney Sauce', '30'),
(20, 10, 'Extra 1', '10'),
(21, 10, 'Extra 2', '20'),
(22, 10, 'Extra 3', '30'),
(23, 10, 'Extra 5', '40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `confirm_password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `confirm_password`, `status`) VALUES
(1, 'reddy', 'anweshoruganti@gmail.com', '7674858686', 'anwesh', '', 0),
(2, 'admin', 'admin@gmail.com', '1234567890', 'admin', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_expiry`
--
ALTER TABLE `otp_expiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toppings`
--
ALTER TABLE `toppings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topping_items`
--
ALTER TABLE `topping_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `top_cat_id` (`top_cat_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `otp_expiry`
--
ALTER TABLE `otp_expiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `toppings`
--
ALTER TABLE `toppings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `topping_items`
--
ALTER TABLE `topping_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD CONSTRAINT `item_id` FOREIGN KEY (`item_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `topping_items`
--
ALTER TABLE `topping_items`
  ADD CONSTRAINT `top_cat_id` FOREIGN KEY (`top_cat_id`) REFERENCES `toppings` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
