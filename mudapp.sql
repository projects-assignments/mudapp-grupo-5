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
  PRIMARY KEY (`carrier_id`))
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
  `Carrier_carrier_id` INT NOT NULL,
  PRIMARY KEY (`vehicle_id`, `Carrier_carrier_id`),
  INDEX `fk_Vehicle_Carrier1_idx` (`Carrier_carrier_id` ASC) VISIBLE,
  CONSTRAINT `fk_Vehicle_Carrier1`
    FOREIGN KEY (`Carrier_carrier_id`)
    REFERENCES `mydb`.`Carrier` (`carrier_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
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
  `carrier_id` INT NOT NULL,
  `service_date` VARCHAR(45) NULL,
  `service_time` VARCHAR(45) NULL,
  `service_departureaddress` VARCHAR(45) NULL,
  `service_destinationaddress` VARCHAR(45) NULL,
  `service_remarks` VARCHAR(45) NULL,
  `Rating Carrier_rating_id` INT NOT NULL,
  `Rating Carrier_Carrier_carrier_id` INT NOT NULL,
  `User_user_id` INT NOT NULL,
  `User_user_firstname` VARCHAR(20) NOT NULL,
  `Carrier_carrier_id` INT NOT NULL,
  PRIMARY KEY (`service_id`),
  INDEX `fk_Transport Service_Rating Carrier1_idx` (`user_id` ASC, `service_id` ASC) VISIBLE,
  INDEX `fk_Transport Service_User1_idx` (`User_user_id` ASC, `User_user_firstname` ASC) VISIBLE,
  INDEX `fk_Transport Service_Carrier1_idx` (`Carrier_carrier_id` ASC) VISIBLE,
  CONSTRAINT `fk_Transport Service_Rating Carrier1`
    FOREIGN KEY (`user_id` , `service_id`)
    REFERENCES `mydb`.`Rating` (`rating_id` , `service_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Transport Service_User1`
    FOREIGN KEY (`User_user_id` , `User_user_firstname`)
    REFERENCES `mydb`.`User` (`user_id` , `user_firstname`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Transport Service_Carrier1`
    FOREIGN KEY (`Carrier_carrier_id`)
    REFERENCES `mydb`.`Carrier` (`carrier_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Payment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Payment` (
  `payment_id` INT NOT NULL,
  `payment_method` VARCHAR(45) NULL,
  `service_id` INT NULL,
  `payment_amount` VARCHAR(45) NULL,
  `payment_status` VARCHAR(45) NULL,
  PRIMARY KEY (`payment_id`),
  INDEX `service_id_idx` (`service_id` ASC) VISIBLE,
  CONSTRAINT `service_id`
    FOREIGN KEY (`service_id`)
    REFERENCES `mydb`.`Service` (`service_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
