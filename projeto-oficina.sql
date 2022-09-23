CREATE DATABASE `projeto-oficina`;

USE `projeto-oficina`;

CREATE TABLE IF NOT EXISTS `DBcustomer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(64) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `address` varchar(255) NOT NULL,
  `document` varchar(96) NOT NULL,
  `car` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
   CONSTRAINT unique_document_DBcustomer unique (document)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `DBcustomer` (`customer_id`, `name`, `email`, `telephone`, `address`, `document`, `car`, `date_added` ) VALUES
(1, 'Jorge Amado', 'teste@teste.com.br', '9744552255', 'Rua Direita, 100', '99955544422', 1, '2022-09-23 14:40:00'),
(2, 'Machado de Assis', 'teste2@teste.com.br', '1188554488', 'Rua Esqueda, 4520', '44455566622', 2, '2022-09-23 14:40:00'),
(3, 'Carlos Drummoound de Andrade', 'teste3@teste.com.br', '45988775544', 'Rua Central, 987', '32255445588',  3, '2022-09-23 14:40:00');

CREATE TABLE IF NOT EXISTS `DBcar` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `board` varchar(96) NOT NULL,
  `color` varchar(96) NOT NULL,
  `year` varchar(32) NOT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `DBcar` (`car_id`, `customer_id`, `email`, `telephone`, `address`, `document`, `car`, `date_added` ) VALUES
(1, 'Jorge Amado', 'teste@teste.com.br', '9744552255', 'Rua Direita, 100', '99955544422', 1, '2022-09-23 14:40:00'),
(2, 'Machado de Assis', 'teste2@teste.com.br', '1188554488', 'Rua Esqueda, 4520', '44455566622', 2, '2022-09-23 14:40:00'),
(3, 'Carlos Drummoound de Andrade', 'teste3@teste.com.br', '45988775544', 'Rua Central, 987', '32255445588',  3, '2022-09-23 14:40:00');

