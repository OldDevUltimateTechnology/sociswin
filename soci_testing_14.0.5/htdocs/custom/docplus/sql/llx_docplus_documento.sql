CREATE TABLE `llx_docplus_documento` ( 
`rowid` INT(11) NOT NULL AUTO_INCREMENT , 
`modulo` VARCHAR(100) NOT NULL , 
`fk_parent` INT(11) NOT NULL , 
`tipo_parent` VARCHAR(100) NOT NULL , 
`nombre` VARCHAR(100) NOT NULL , 
`tms` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
`fk_user_modif` INT(11) NOT NULL , 
`date_creation` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP , 
`fk_user_creat` INT(11) NOT NULL , 
PRIMARY KEY (`rowid`)) 
ENGINE = InnoDB;