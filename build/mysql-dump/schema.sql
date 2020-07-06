use ecommerce;
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(256) NOT NULL,
  `product_description` varchar(256) DEFAULT NULL,
  `product_reference` varchar(40) DEFAULT NULL,
  `product_value` varchar(20) NOT NULL,
  `product_image` varchar(120) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `products` (`id`, `product_name`, `product_description`, `product_reference`, `product_value`, `product_image`) VALUES (1, 'Colección de Mini Autos Rally', 'Colección completa de Mini Autos Rally', '28264', '112900', 'coleccion-de-mini-autos-rally-.jpg');
INSERT INTO `products` (`id`, `product_name`, `product_description`, `product_reference`, `product_value`, `product_image`) VALUES (2, 'Mini autos Rally de colección - Dodge GTS', 'Replicas originales a escala 1:36', '28255', '12900', 'coleccion-de-mini-autos-rally-.jpg');
INSERT INTO `products` (`id`, `product_name`, `product_description`, `product_reference`, `product_value`, `product_image`) VALUES (3, 'mini-autos-rally-de-coleccion-honda-integra-street-fighter', 'Replicas originales a escala 1:36', '28257', '12900', 'mini-autos-rally-de-coleccion-honda-integra-street-fighter.jpg');
INSERT INTO `products` (`id`, `product_name`, `product_description`, `product_reference`, `product_value`, `product_image`) VALUES (4, 'Mini autos Rally de colección - Lexus IS Street Fighter', 'Replicas originales a escala 1:36', '28260', '12900', 'mini-autos-rally-de-coleccion-lexus-is-street-fighter-.jpg');
INSERT INTO `products` (`id`, `product_name`, `product_description`, `product_reference`, `product_value`, `product_image`) VALUES (5, 'Mini autos Rally de colección - Lotus Exige R - GT', 'Replicas originales a escala 1:36', '28263', '12900', 'mini-autos-rally-de-coleccion-lotus-exige-r-gt.jpg');