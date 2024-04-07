-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema gap22l
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema gap22l
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gap22l` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `gap22l` ;

-- -----------------------------------------------------
-- Table `gap22l`.`parent`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gap22l`.`parent` ;

CREATE TABLE IF NOT EXISTS `gap22l`.`parent` (
  `parent_id` INT NOT NULL,
  `parent_fname` VARCHAR(45) NOT NULL,
  `parent_lname` VARCHAR(45) NOT NULL,
  `parent_street` VARCHAR(45) NOT NULL,
  `parent_city` VARCHAR(45) NOT NULL,
  `parent_state` VARCHAR(45) NOT NULL,
  `parent_phone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`parent_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `gap22l`.`team`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gap22l`.`team` ;

CREATE TABLE IF NOT EXISTS `gap22l`.`team` (
  `team_id` INT NOT NULL,
  `team_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`team_id`))
ENGINE = InnoDB
COMMENT = '	';


-- -----------------------------------------------------
-- Table `gap22l`.`player`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gap22l`.`player` ;

CREATE TABLE IF NOT EXISTS `gap22l`.`player` (
  `player_id` INT NOT NULL,
  `team_id` INT NOT NULL,
  `player_fname` VARCHAR(45) NOT NULL,
  `player_lname` VARCHAR(45) NOT NULL,
  `player_age` TINYINT NOT NULL,
  `player_phone` BIGINT NOT NULL,
  PRIMARY KEY (`player_id`),
  INDEX `fk_player_team1_idx` (`team_id` ASC) VISIBLE,
  CONSTRAINT `fk_player_team1`
    FOREIGN KEY (`team_id`)
    REFERENCES `gap22l`.`team` (`team_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `gap22l`.`registers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gap22l`.`registers` ;

CREATE TABLE IF NOT EXISTS `gap22l`.`registers` (
  `parent_id` INT NOT NULL,
  `player_id` INT NOT NULL,
  `reg_cost` DECIMAL(5,2) NOT NULL,
  `reg_date` DATE NOT NULL,
  PRIMARY KEY (`parent_id`, `player_id`),
  INDEX `fk_registers_player1_idx` (`player_id` ASC) VISIBLE,
  CONSTRAINT `fk_registers_parent`
    FOREIGN KEY (`parent_id`)
    REFERENCES `gap22l`.`parent` (`parent_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_registers_player1`
    FOREIGN KEY (`player_id`)
    REFERENCES `gap22l`.`player` (`player_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `gap22l`.`coach`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gap22l`.`coach` ;

CREATE TABLE IF NOT EXISTS `gap22l`.`coach` (
  `coach_id` INT NOT NULL,
  `team_id` INT NOT NULL,
  `coach_fname` VARCHAR(45) NOT NULL,
  `coach_lname` VARCHAR(45) NOT NULL,
  `coach_phone` BIGINT NOT NULL,
  PRIMARY KEY (`coach_id`),
  INDEX `fk_coach_team1_idx` (`team_id` ASC) VISIBLE,
  CONSTRAINT `fk_coach_team1`
    FOREIGN KEY (`team_id`)
    REFERENCES `gap22l`.`team` (`team_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `gap22l`.`color`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gap22l`.`color` ;

CREATE TABLE IF NOT EXISTS `gap22l`.`color` (
  `team_id` INT NOT NULL,
  `color_id` INT NOT NULL,
  `color_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`team_id`, `color_id`),
  INDEX `fk_color_team1_idx` (`team_id` ASC) VISIBLE,
  CONSTRAINT `fk_color_team1`
    FOREIGN KEY (`team_id`)
    REFERENCES `gap22l`.`team` (`team_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Data for table `gap22l`.`parent`
-- -----------------------------------------------------
START TRANSACTION;
USE `gap22l`;
INSERT INTO `gap22l`.`parent` (`parent_id`, `parent_fname`, `parent_lname`, `parent_street`, `parent_city`, `parent_state`, `parent_phone`) VALUES (1, 'Bill', 'Murry', 'joke st', 'Tampa', 'FL', '5468724586');
INSERT INTO `gap22l`.`parent` (`parent_id`, `parent_fname`, `parent_lname`, `parent_street`, `parent_city`, `parent_state`, `parent_phone`) VALUES (2, 'Bob', 'Marley', 'ridge rd', 'Orlando', 'FL', '3514268539');
INSERT INTO `gap22l`.`parent` (`parent_id`, `parent_fname`, `parent_lname`, `parent_street`, `parent_city`, `parent_state`, `parent_phone`) VALUES (3, 'Mary', 'Ellen', 'orange rd', 'San Fransisco', 'CA', '4587126582');
INSERT INTO `gap22l`.`parent` (`parent_id`, `parent_fname`, `parent_lname`, `parent_street`, `parent_city`, `parent_state`, `parent_phone`) VALUES (4, 'Jane', 'Wood', '52nd st', 'Tallahassee', 'FL', '2563145896');
INSERT INTO `gap22l`.`parent` (`parent_id`, `parent_fname`, `parent_lname`, `parent_street`, `parent_city`, `parent_state`, `parent_phone`) VALUES (5, 'Chris', 'Paul', '21st st', 'New York City', 'NY', '2846751429');

COMMIT;


-- -----------------------------------------------------
-- Data for table `gap22l`.`team`
-- -----------------------------------------------------
START TRANSACTION;
USE `gap22l`;
INSERT INTO `gap22l`.`team` (`team_id`, `team_name`) VALUES (1, 'bears');
INSERT INTO `gap22l`.`team` (`team_id`, `team_name`) VALUES (2, 'lions');
INSERT INTO `gap22l`.`team` (`team_id`, `team_name`) VALUES (3, 'tigers');
INSERT INTO `gap22l`.`team` (`team_id`, `team_name`) VALUES (4, 'eagles');
INSERT INTO `gap22l`.`team` (`team_id`, `team_name`) VALUES (5, 'bulls');

COMMIT;


-- -----------------------------------------------------
-- Data for table `gap22l`.`player`
-- -----------------------------------------------------
START TRANSACTION;
USE `gap22l`;
INSERT INTO `gap22l`.`player` (`player_id`, `team_id`, `player_fname`, `player_lname`, `player_age`, `player_phone`) VALUES (1, 1, 'gabe', 'andres', 10, 2546875426);
INSERT INTO `gap22l`.`player` (`player_id`, `team_id`, `player_fname`, `player_lname`, `player_age`, `player_phone`) VALUES (2, 2, 'andrea', 'paez', 11, 1579652384);
INSERT INTO `gap22l`.`player` (`player_id`, `team_id`, `player_fname`, `player_lname`, `player_age`, `player_phone`) VALUES (3, 3, 'danica', 'paulsen', 12, 2541578265);
INSERT INTO `gap22l`.`player` (`player_id`, `team_id`, `player_fname`, `player_lname`, `player_age`, `player_phone`) VALUES (4, 4, 'jacob', 'phelan', 10, 2445525642);
INSERT INTO `gap22l`.`player` (`player_id`, `team_id`, `player_fname`, `player_lname`, `player_age`, `player_phone`) VALUES (5, 5, 'connor', 'hutch', 10, 6556532535);

COMMIT;


-- -----------------------------------------------------
-- Data for table `gap22l`.`registers`
-- -----------------------------------------------------
START TRANSACTION;
USE `gap22l`;
INSERT INTO `gap22l`.`registers` (`parent_id`, `player_id`, `reg_cost`, `reg_date`) VALUES (1, 1, 75, '1/1/2024');
INSERT INTO `gap22l`.`registers` (`parent_id`, `player_id`, `reg_cost`, `reg_date`) VALUES (2, 2, 75, '1/1/2024');
INSERT INTO `gap22l`.`registers` (`parent_id`, `player_id`, `reg_cost`, `reg_date`) VALUES (3, 3, 75, '1/1/2024');
INSERT INTO `gap22l`.`registers` (`parent_id`, `player_id`, `reg_cost`, `reg_date`) VALUES (4, 4, 75, '1/1/2024');
INSERT INTO `gap22l`.`registers` (`parent_id`, `player_id`, `reg_cost`, `reg_date`) VALUES (5, 5, 75, '1/1/2024');

COMMIT;


-- -----------------------------------------------------
-- Data for table `gap22l`.`coach`
-- -----------------------------------------------------
START TRANSACTION;
USE `gap22l`;
INSERT INTO `gap22l`.`coach` (`coach_id`, `team_id`, `coach_fname`, `coach_lname`, `coach_phone`) VALUES (, 1, 'bill', 'clinton', 4581254695);
INSERT INTO `gap22l`.`coach` (`coach_id`, `team_id`, `coach_fname`, `coach_lname`, `coach_phone`) VALUES (2, 2, 'bob', 'miller', 6856953653);
INSERT INTO `gap22l`.`coach` (`coach_id`, `team_id`, `coach_fname`, `coach_lname`, `coach_phone`) VALUES (3, 3, 'rich', 'devore', 6985466558);
INSERT INTO `gap22l`.`coach` (`coach_id`, `team_id`, `coach_fname`, `coach_lname`, `coach_phone`) VALUES (4, 4, 'alejandro', 'villa', 6985456635);
INSERT INTO `gap22l`.`coach` (`coach_id`, `team_id`, `coach_fname`, `coach_lname`, `coach_phone`) VALUES (5, 5, 'jane', 'mary', 6514654163);
INSERT INTO `gap22l`.`coach` (`coach_id`, `team_id`, `coach_fname`, `coach_lname`, `coach_phone`) VALUES (DEFAULT, DEFAULT, DEFAULT, DEFAULT, );

COMMIT;


-- -----------------------------------------------------
-- Data for table `gap22l`.`color`
-- -----------------------------------------------------
START TRANSACTION;
USE `gap22l`;
INSERT INTO `gap22l`.`color` (`team_id`, `color_id`, `color_name`) VALUES (1, 1, 'blue');
INSERT INTO `gap22l`.`color` (`team_id`, `color_id`, `color_name`) VALUES (2, 2, 'red');
INSERT INTO `gap22l`.`color` (`team_id`, `color_id`, `color_name`) VALUES (3, 3, 'yellow');
INSERT INTO `gap22l`.`color` (`team_id`, `color_id`, `color_name`) VALUES (4, 4, 'orange');
INSERT INTO `gap22l`.`color` (`team_id`, `color_id`, `color_name`) VALUES (5, 5, 'green');

COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
