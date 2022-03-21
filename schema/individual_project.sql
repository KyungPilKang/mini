CREATE DATABASE `mini` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE TABLE `application` (
  `no` varchar(1000) NOT NULL,
  `id` varchar(1000) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `phone` varchar(1000) DEFAULT NULL,
  `etc` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `camera_type` varchar(1000) DEFAULT NULL,
  `video_type` varchar(1000) DEFAULT NULL,
  `effect_type` varchar(1000) DEFAULT NULL,
  `doc` varchar(1000) DEFAULT NULL,
  `confirm` varchar(1000) DEFAULT NULL,
  `modal` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `member` (
  `id` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `phone` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `qna` (
  `no` varchar(1000) NOT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `id` varchar(1000) DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `phone` varchar(1000) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `qtext` varchar(1000) DEFAULT NULL,
  `atext` varchar(1000) DEFAULT NULL,
  `answerConfirm` varchar(1000) DEFAULT NULL,
  `qmodal` varchar(1000) DEFAULT NULL,
  `amodal` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

