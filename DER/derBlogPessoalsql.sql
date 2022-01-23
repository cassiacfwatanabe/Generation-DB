-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `tb_temas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tb_temas` (
  `id_temas` BIGINT NOT NULL,
  `descricao` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id_temas`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `tb_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tb_usuarios` (
  `id_usuarios` BIGINT NOT NULL,
  `nome` VARCHAR(255) NULL DEFAULT NULL,
  `usuarios` VARCHAR(255) NULL DEFAULT NULL,
  `senha` VARCHAR(255) NULL DEFAULT NULL,
  `foto` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id_usuarios`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `tb_postagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tb_postagens` (
  `id_postagens` BIGINT NOT NULL,
  `titulo` VARCHAR(100) NOT NULL,
  `texto` VARCHAR(1000) NULL DEFAULT NULL,
  `data` DATE NULL DEFAULT NULL,
  `tb_temas_id_temas` BIGINT NOT NULL,
  `tb_usuarios_id_usuarios` BIGINT NOT NULL,
  PRIMARY KEY (`id_postagens`),
  INDEX `fk_tb_postagens_tb_temas_idx` (`tb_temas_id_temas` ASC) VISIBLE,
  INDEX `fk_tb_postagens_tb_usuarios1_idx` (`tb_usuarios_id_usuarios` ASC) VISIBLE,
  CONSTRAINT `fk_tb_postagens_tb_temas`
    FOREIGN KEY (`tb_temas_id_temas`)
    REFERENCES `tb_temas` (`id_temas`),
  CONSTRAINT `fk_tb_postagens_tb_usuarios1`
    FOREIGN KEY (`tb_usuarios_id_usuarios`)
    REFERENCES `tb_usuarios` (`id_usuarios`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
