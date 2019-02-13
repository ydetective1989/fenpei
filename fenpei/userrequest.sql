-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2019-02-13 15:42:52
-- 服务器版本： 10.1.37-MariaDB
-- PHP 版本： 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `userrequest`
--

-- --------------------------------------------------------

--
-- 表的结构 `hashmap`
--

CREATE TABLE `hashmap` (
  `id` int(11) NOT NULL,
  `hash` int(25) NOT NULL,
  `isused` int(11) NOT NULL DEFAULT '0',
  `hide` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hashmap`
--

INSERT INTO `hashmap` (`id`, `hash`, `isused`, `hide`) VALUES
(1, 1234123, 1, 1),
(2, 23341, 1, 1),
(3, 4225123, 0, 1),
(4, 5423113, 0, 1),
(5, 4235513, 0, 1),
(6, 5123341, 0, 1),
(7, 255613, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `loginhash` varchar(50) NOT NULL,
  `hide` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `isadmin`, `loginhash`, `hide`) VALUES
(1, 'qiuwei', 'f09a0cfe11cfbcab8dc47181165f9bb7', 1, '9d6670307b67ae9de6ee611318a955fc', 1),
(5, 'qiuyong', 'f09a0cfe11cfbcab8dc47181165f9bb7', 1, '94908b8ebd07b96751ee9a6b8ccf9e94', 1);

-- --------------------------------------------------------

--
-- 表的结构 `userdata`
--

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `userlevel` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `subdate` int(25) NOT NULL,
  `submen` varchar(25) NOT NULL,
  `hashid` int(11) DEFAULT NULL,
  `hide` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `userdata`
--

INSERT INTO `userdata` (`id`, `username`, `userlevel`, `number`, `department`, `subdate`, `submen`, `hashid`, `hide`) VALUES
(56, 'qiuwei', 20, 2147483647, 2, 1549028354, '2', 1, 1),
(57, 'qweqe', 10, 0, 2, 1549030940, '1', 2, 1),
(58, 'qwe', 20, 0, 2, 1549030949, '1', 3, 1),
(59, 'qweqe', 20, 0, 2, 1549030957, '1', 4, 1),
(60, 'qiuwei', 30, 2147483647, 3, 1549082825, '1', 5, 1),
(61, 'qiuwei', 30, 2147483647, 1, 1549082838, '1', 6, 1),
(62, 'liuming', 10, 2147483647, 4, 1549082854, '1', 7, 1),
(63, 'qweqwe', 30, 1231231, 2, 1549082902, '1', 1, 1),
(64, '123qweqweq', 30, 123141231, 2, 1549082914, '1', 2, 1),
(65, 'qkkaksd', 10, 42131231, 2, 1549082924, '1', 3, 1),
(66, '123qweqwe', 20, 1231231, 2, 1549082942, '1', 4, 1),
(67, 'qweqwq', 30, 0, 2, 1549082953, '1', 5, 1),
(68, 'qweqweq', 20, 1231231, 2, 1549082963, '1', 6, 1),
(69, 'qweqweq', 20, 123123123, 2, 1549082984, '1', 7, 1),
(70, '邱伟', 30, 1231231, 3, 1549106048, '5', 1, 1),
(71, 'qiuwei', 30, 2147483647, 2, 1549609971, '1', 2, 1),
(72, 'qiiwe', 20, 2147483647, 3, 1549610059, '1', 1, 1),
(73, '邱伟', 40, 2147483647, 2, 1549610104, '1', 2, 1);

--
-- 转储表的索引
--

--
-- 表的索引 `hashmap`
--
ALTER TABLE `hashmap`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `hashmap`
--
ALTER TABLE `hashmap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
