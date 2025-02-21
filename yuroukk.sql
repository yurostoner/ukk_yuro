/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 100424 (10.4.24-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : yuroukk

 Target Server Type    : MySQL
 Target Server Version : 100424 (10.4.24-MariaDB)
 File Encoding         : 65001

 Date: 21/02/2025 09:59:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for detailpenjualan
-- ----------------------------
DROP TABLE IF EXISTS `detailpenjualan`;
CREATE TABLE `detailpenjualan`  (
  `id_detailpenjualan` int NOT NULL AUTO_INCREMENT,
  `id_penjualan` int NULL DEFAULT NULL,
  `id_produk` int NULL DEFAULT NULL,
  `jumlah_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `subtotal` decimal(10, 2) NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_detailpenjualan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detailpenjualan
-- ----------------------------
INSERT INTO `detailpenjualan` VALUES (1, 2, 1, '1', 20000.00, '2025-02-05');
INSERT INTO `detailpenjualan` VALUES (2, 2, 2, '3', 45000.00, '2025-02-05');
INSERT INTO `detailpenjualan` VALUES (3, 3, 2, '2', 32000.00, '2025-02-12');
INSERT INTO `detailpenjualan` VALUES (4, 4, 3, '1', 98000.00, '2025-02-12');
INSERT INTO `detailpenjualan` VALUES (5, 5, 1, '3', 21000.00, '2025-02-12');
INSERT INTO `detailpenjualan` VALUES (6, 5, 2, '1', 34000.00, '2025-02-12');
INSERT INTO `detailpenjualan` VALUES (7, 6, 2, '10', 450000.00, '2025-02-18');
INSERT INTO `detailpenjualan` VALUES (8, 7, 6, '3', 10000.00, '2025-02-18');
INSERT INTO `detailpenjualan` VALUES (9, 6, 5, '8', 12000.00, '2025-02-19');
INSERT INTO `detailpenjualan` VALUES (10, 8, 5, '10', 23000.00, NULL);
INSERT INTO `detailpenjualan` VALUES (11, 8, 5, '11', 19000.00, NULL);

-- ----------------------------
-- Table structure for pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan`  (
  `id_pelanggan` int NOT NULL AUTO_INCREMENT,
  `namapelanggan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `nomortelepon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_pelanggan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pelanggan
-- ----------------------------
INSERT INTO `pelanggan` VALUES (1, 'yuro', 'jodoh', '039287542');
INSERT INTO `pelanggan` VALUES (2, 'leonardo', 'sandona', '436754754');

-- ----------------------------
-- Table structure for penjualan
-- ----------------------------
DROP TABLE IF EXISTS `penjualan`;
CREATE TABLE `penjualan`  (
  `id_penjualan` int NOT NULL AUTO_INCREMENT,
  `tanggalpenjualan` date NULL DEFAULT NULL,
  `totalharga` decimal(10, 2) NULL DEFAULT NULL,
  `kembalian` decimal(10, 2) NULL DEFAULT NULL,
  `id_pelanggan` int NULL DEFAULT NULL,
  `pembayaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_penjualan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of penjualan
-- ----------------------------
INSERT INTO `penjualan` VALUES (1, '2025-02-13', 90000.00, 10000.00, 1, 'Qris');
INSERT INTO `penjualan` VALUES (2, '2025-02-05', 40000.00, 10000.00, 2, 'Gopay');
INSERT INTO `penjualan` VALUES (3, '2025-02-13', 40000.00, 60000.00, 3, 'Ovo');
INSERT INTO `penjualan` VALUES (4, '2025-02-13', 70000.00, 30000.00, 3, 'Ovo');
INSERT INTO `penjualan` VALUES (5, '2025-03-14', 600000.00, 0.00, 4, 'Qris');
INSERT INTO `penjualan` VALUES (6, '2025-02-24', 100000.00, 0.00, 5, 'Dana');

-- ----------------------------
-- Table structure for produk
-- ----------------------------
DROP TABLE IF EXISTS `produk`;
CREATE TABLE `produk`  (
  `id_produk` int NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `harga` decimal(10, 2) NULL DEFAULT NULL,
  `stok` int NULL DEFAULT NULL,
  `harga_awal` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_produk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of produk
-- ----------------------------
INSERT INTO `produk` VALUES (1, 'cimory', 9000.00, 1114, 8000.00);
INSERT INTO `produk` VALUES (2, 'minyak goreng', 35000.00, 82, 18000.00);
INSERT INTO `produk` VALUES (3, 'kecap', 15000.00, 95, 8000.00);
INSERT INTO `produk` VALUES (4, 'indomie', 3000.00, 100, 2500.00);
INSERT INTO `produk` VALUES (5, 'aqua', 4000.00, 170, 2000.00);
INSERT INTO `produk` VALUES (6, 'sanford', 5000.00, 90, 3000.00);
INSERT INTO `produk` VALUES (7, 'samsung', 3000.00, 0, 2500.00);

SET FOREIGN_KEY_CHECKS = 1;
