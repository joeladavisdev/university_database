# Create Database Tables:

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema random_university
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema random_university
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `random_university` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `random_university` ;

-- -----------------------------------------------------
-- Table `random_university`.`course_offering`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `random_university`.`course_offering` (
  `course_offering_id` INT NOT NULL,
  `course_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`course_offering_id`),
  UNIQUE INDEX `course_id_UNIQUE` (`course_offering_id` ASC) VISIBLE,
  UNIQUE INDEX `course_name_UNIQUE` (`course_name` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `random_university`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `random_university`.`student` (
  `student_id` INT NOT NULL,
  `student_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE INDEX `student_id_UNIQUE` (`student_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `random_university`.`teacher`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `random_university`.`teacher` (
  `teacher_id` INT NOT NULL,
  `teacher_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`teacher_id`),
  UNIQUE INDEX `teacher_id_UNIQUE` (`teacher_id` ASC) VISIBLE,
  UNIQUE INDEX `teacher_name_UNIQUE` (`teacher_name` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `random_university`.`course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `random_university`.`course` (
  `course_offering_id` INT NOT NULL,
  `teacher_id` INT NOT NULL,
  PRIMARY KEY (`course_offering_id`, `teacher_id`),
  INDEX `fk_course_has_teacher_teacher1_idx` (`teacher_id` ASC) VISIBLE,
  INDEX `fk_course_has_teacher_course1_idx` (`course_offering_id` ASC) VISIBLE,
  CONSTRAINT `fk_course_has_teacher_course1`
    FOREIGN KEY (`course_offering_id`)
    REFERENCES `random_university`.`course_offering` (`course_offering_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_course_has_teacher_teacher1`
    FOREIGN KEY (`teacher_id`)
    REFERENCES `random_university`.`teacher` (`teacher_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `random_university`.`grades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `random_university`.`grades` (
  `student_id` INT NOT NULL,
  `course_offering_id` INT NOT NULL,
  `teacher_id` INT NOT NULL,
  `grade` DECIMAL(4) NULL,
  PRIMARY KEY (`student_id`, `course_offering_id`, `teacher_id`),
  INDEX `fk_student_has_course_course1_idx` (`course_offering_id` ASC, `teacher_id` ASC) VISIBLE,
  INDEX `fk_student_has_course_student1_idx` (`student_id` ASC) VISIBLE,
  CONSTRAINT `fk_student_has_course_student1`
    FOREIGN KEY (`student_id`)
    REFERENCES `random_university`.`student` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_student_has_course_course1`
    FOREIGN KEY (`course_offering_id` , `teacher_id`)
    REFERENCES `random_university`.`course` (`course_offering_id` , `teacher_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;