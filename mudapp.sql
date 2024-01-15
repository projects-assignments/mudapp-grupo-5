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
-- Table `mydb`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`User` (
  `user_id` INT NOT NULL,
  `user_firstname` VARCHAR(20) NULL,
  `user_lastname` VARCHAR(20) NULL,
  `user_email` VARCHAR(45) NULL,
  `user_phone` INT NULL,
  `user_address` VARCHAR(45) NULL,
  `user_dni` VARCHAR(10) NULL,
  `user_password` VARCHAR(10) NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Vehicle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Vehicle` (
  `vehicle_id` INT NOT NULL,
  `vehicle_brand` VARCHAR(45) NULL,
  `vehicle_model` VARCHAR(45) NULL,
  `vehicle_licenseplate` VARCHAR(45) NULL,
  `vehicle_height` VARCHAR(45) NULL,
  `vehicle_length` VARCHAR(45) NULL,
  `vehicle_width` VARCHAR(45) NULL,
  `vehicle_weight` VARCHAR(45) NULL,
  PRIMARY KEY (`vehicle_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Carrier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Carrier` (
  `carrier_id` INT NOT NULL,
  `carrier_firstname` VARCHAR(45) NULL,
  `carrier_lastname` VARCHAR(45) NULL,
  `carrier_email` VARCHAR(45) NULL,
  `carrier_phone` VARCHAR(45) NULL,
  `vehicle_id` INT NULL,
  `carrier_dni` VARCHAR(45) NULL,
  `carrier_address` VARCHAR(45) NULL,
  `carrier_maxkm` VARCHAR(45) NULL,
  `carrier_password` VARCHAR(10) NULL,
  PRIMARY KEY (`carrier_id`),
  INDEX `fk_vehicle_id_idx` (`vehicle_id` ASC) VISIBLE,
  CONSTRAINT `fk_vehicle_id`
    FOREIGN KEY (`vehicle_id`)
    REFERENCES `mydb`.`Vehicle` (`vehicle_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Payment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Payment` (
  `payment_id` INT NOT NULL,
  `payment_method` VARCHAR(45) NULL,
  `payment_amount` VARCHAR(45) NULL,
  `payment_status` VARCHAR(45) NULL,
  PRIMARY KEY (`payment_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Rating`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Rating` (
  `rating_id` INT NOT NULL,
  `service_id` INT NULL,
  `carrier_id` INT NULL,
  `rating_rating` VARCHAR(45) NULL,
  `rating_comment` VARCHAR(45) NULL,
  PRIMARY KEY (`rating_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Service`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Service` (
  `service_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `carrier_id` INT NULL,
  `service_date` VARCHAR(45) NULL,
  `service_time` VARCHAR(45) NULL,
  `service_departureaddress` VARCHAR(45) NULL,
  `service_destinationaddress` VARCHAR(45) NULL,
  `service_remarks` VARCHAR(45) NULL,
  `rating_id` INT NOT NULL,
  `payment_id` INT NULL,
  PRIMARY KEY (`service_id`),
  INDEX `fk_payment_id_idx` (`payment_id` ASC) VISIBLE,
  INDEX `fk_user_id_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_rating_id_idx` (`rating_id` ASC) VISIBLE,
  INDEX `fk_carrier_id_idx` (`carrier_id` ASC) VISIBLE,
  CONSTRAINT `fk_carrier_id`
    FOREIGN KEY (`carrier_id`)
    REFERENCES `mydb`.`Carrier` (`carrier_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`User` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_rating_id`
    FOREIGN KEY (`rating_id`)
    REFERENCES `mydb`.`Rating` (`rating_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_payment_id`
    FOREIGN KEY (`payment_id`)
    REFERENCES `mydb`.`Payment` (`payment_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
