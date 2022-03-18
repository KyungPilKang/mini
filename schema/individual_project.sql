CREATE DATABASE `mini` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE TABLE `application` (
  `no` varchar(30) NOT NULL,
  `id` varchar(30) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `etc` varchar(1000) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `camera_type` varchar(30) DEFAULT NULL,
  `video_type` varchar(30) DEFAULT NULL,
  `effect_type` varchar(30) DEFAULT NULL,
  `doc` varchar(30) DEFAULT NULL,
  `confirm` varchar(30) DEFAULT NULL,
  `modal` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `member` (
  `id` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `qna` (
  `no` varchar(30) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `id` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `qtext` varchar(1000) DEFAULT NULL,
  `atext` varchar(1000) DEFAULT NULL,
  `answerConfirm` varchar(30) DEFAULT NULL,
  `qmodal` varchar(30) DEFAULT NULL,
  `amodal` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

