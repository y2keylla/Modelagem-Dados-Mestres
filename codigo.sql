-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Fornecedor/Cliente'
-- 
-- ---

DROP TABLE IF EXISTS `Fornecedor/Cliente`;
		
CREATE TABLE `Fornecedor/Cliente` (
  `card_code` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `tax_id` VARCHAR NULL DEFAULT NULL,
  `name` VARCHAR NULL DEFAULT NULL,
  `cnae_code` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`card_code`)
);

-- ---
-- Table 'Item'
-- 
-- ---

DROP TABLE IF EXISTS `Item`;
		
CREATE TABLE `Item` (
  `item_code` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `item_name` VARCHAR NULL DEFAULT NULL,
  `items_group_code` VARCHAR NULL DEFAULT NULL,
  `purchase_item` VARCHAR NULL DEFAULT NULL,
  `sales_item` VARCHAR NULL DEFAULT NULL,
  `inventory_item ` VARCHAR NULL DEFAULT NULL,
  `ncm_code` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`item_code`)
);

-- ---
-- Table 'Conta_Bancaria'
-- 
-- ---

DROP TABLE IF EXISTS `Conta_Bancaria`;
		
CREATE TABLE `Conta_Bancaria` (
  `AccountNo` VARCHAR NULL AUTO_INCREMENT DEFAULT NULL,
  `bank_code` VARCHAR NULL DEFAULT NULL,
  `branch ` VARCHAR NULL DEFAULT NULL,
  `account_name ` VARCHAR NULL DEFAULT NULL,
  `card_code_Fornecedor/Cliente` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`AccountNo`)
);

-- ---
-- Table 'Endereço'
-- 
-- ---

DROP TABLE IF EXISTS `Endereço`;
		
CREATE TABLE `Endereço` (
  `address_id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `address ` VARCHAR NULL DEFAULT NULL,
  `card_code_Fornecedor/Cliente` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`address_id`)
);

-- ---
-- Table 'Fornecedor/Cliente_Item'
-- 
-- ---

DROP TABLE IF EXISTS `Fornecedor/Cliente_Item`;
		
CREATE TABLE `Fornecedor/Cliente_Item` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `card_code_Fornecedor/Cliente` INTEGER NULL DEFAULT NULL,
  `item_code_item` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `Conta_Bancaria` ADD FOREIGN KEY (card_code_Fornecedor/Cliente) REFERENCES `Fornecedor/Cliente` (`card_code`);
ALTER TABLE `Endereço` ADD FOREIGN KEY (card_code_Fornecedor/Cliente) REFERENCES `Fornecedor/Cliente` (`card_code`);
ALTER TABLE `Fornecedor/Cliente_Item` ADD FOREIGN KEY (card_code_Fornecedor/Cliente) REFERENCES `Fornecedor/Cliente` (`card_code`);
ALTER TABLE `Fornecedor/Cliente_Item` ADD FOREIGN KEY (item_code_item) REFERENCES `Item` (`item_code`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Fornecedor/Cliente` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Item` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Conta_Bancaria` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Endereço` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Fornecedor/Cliente_Item` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Fornecedor/Cliente` (`card_code`,`tax_id`,`name`,`cnae_code`) VALUES
-- ('','','','');
-- INSERT INTO `Item` (`item_code`,`item_name`,`items_group_code`,`purchase_item`,`sales_item`,`inventory_item `,`ncm_code`) VALUES
-- ('','','','','','','');
-- INSERT INTO `Conta_Bancaria` (`AccountNo`,`bank_code`,`branch `,`account_name `,`card_code_Fornecedor/Cliente`) VALUES
-- ('','','','','');
-- INSERT INTO `Endereço` (`address_id`,`address `,`card_code_Fornecedor/Cliente`) VALUES
-- ('','','');
-- INSERT INTO `Fornecedor/Cliente_Item` (`id`,`card_code_Fornecedor/Cliente`,`item_code_item`) VALUES
-- ('','','');