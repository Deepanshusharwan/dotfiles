CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` char(2) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE `payment_methods` (;
;-- -. . -..- - / . -. - .-. -.--
use sys;