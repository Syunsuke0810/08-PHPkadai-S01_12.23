-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 12 月 21 日 16:51
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `bookname` varchar(64) NOT NULL,
  `bookurl` text NOT NULL,
  `booktext` text DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `bookname`, `bookurl`, `booktext`, `indate`) VALUES
(5, 'ピッツァ', 'http://pizaa', '食べたい本', '2023-12-07 20:24:23'),
(9, 'キャッチャー', 'http://catheter', '取りたい本', '2023-12-07 20:27:12'),
(10, 'テンキャー', 'http://tenkya', '何かわからない本\r\nアップデートの練習', '2023-12-22 00:50:25'),
(11, 'fegeg', 'gegegre', 'egegg4g45g', '2023-12-11 23:56:09'),
(12, 'パワースポット大全', 'http://grgtgrgr', '全て嘘です', '2023-12-13 08:43:10'),
(13, 'みんなの保育', 'http://grgtgrghoiku', '', '2023-12-13 18:34:11'),
(15, 'ささき本', 'gheogiergoei', 'コメント', '2023-12-16 13:27:52'),
(16, 'テスト本', 'kokoko://hoiku', '更新テスト', '2023-12-19 14:13:15'),
(17, '東京の本', 'tokyo://tateyama', '更新テストテストテスト', '2023-12-19 14:19:53'),
(18, 'PHP本', 'php://www//rrwrwr', '削除とかアップデート確認', '2023-12-19 15:31:49'),
(19, 'テスト12/21', 'kokoko://hoiku', 'テスト\r\n動かない', '2023-12-22 00:35:46');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
