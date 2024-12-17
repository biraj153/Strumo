/*
 Navicat Premium Dump SQL

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : strumo

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 17/12/2024 20:40:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `order_id` int NOT NULL DEFAULT current_timestamp,
  `orderedby` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phoneno` bigint NOT NULL,
  `payment_mode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 'Mokshya', 20000, 5, 51, 'Biraj adhikari', 'Nepal', 9821959500, 'COD');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `productid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `brand` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `category` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `isFeatured` tinyint(1) NOT NULL DEFAULT 1,
  `price` int NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`productid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'American Dream', 'american_dream.jpeg', 'Taylor', 'American Dream from US', 'Acoustic', 1, 1, 100000, 15);
INSERT INTO `products` VALUES (2, 'Avatar', 'Avatar.jpg', 'Mantra', 'Color: Light Brown\nSize:40 inch\nBack/Fretboard/Neck/TopMaterial Type: Basswood/Rosewood/Basswood/Basswood\nType: Acoustic\nNumber of String: 6\nPick up: Tuner 4 line equalizer\nHand Orientation: Right Handed\nIncluded: Bag, Mantra string, Mantra Capo, Mantra Picks, Mantra strap and Mantra Certificate\nWarranty: 1 Year\nServicing: 3 Times Free Servicing at Guitarshop Nepal', 'SemiAcous', 1, 1, 10000, 150);
INSERT INTO `products` VALUES (3, 'Mokshya', 'Mokshya.jpg', 'Mantra', 'Color: Brown\r\nSize:40 inch\r\nBack, Fretboard & Neck Material Type: Rosewood\r\nTopMaterial Type: Solid Spruce\r\nType: Acoustic\r\nNumber of String: 6\r\nPick up: Tuner 4 line equalizer\r\nHand Orientation: Right Handed\r\nIncluded: Bag, Mantra string, Mantra Capo, Mantra Picks, Mantra strap and Mantra Certificate\r\nWarranty: 1 Year\r\nServicing: 3 Times Free Servicing At Guitarshop Nepal', 'SemiAcous', 1, 1, 20000, 115);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` bigint NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (3, 'Biraj Adhikari', 'NEpal', 9861496014, 'biraj@gmail.com', 'BirajAd', 'BirajBiraj');
INSERT INTO `users` VALUES (4, 'Biraj Adhikari', 'Dhumbarahi', 9821959500, 'birajadhikari@gmail.com', 'biraj', 'BiraJ1234%');

SET FOREIGN_KEY_CHECKS = 1;
