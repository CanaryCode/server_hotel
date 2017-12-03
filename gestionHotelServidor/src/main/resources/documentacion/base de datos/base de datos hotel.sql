-- MySQL Script generated by MySQL Workbench
-- 12/02/17 17:05:51
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema hotel
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema hotel
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `hotel` DEFAULT CHARACTER SET utf8 ;
USE `hotel` ;

-- -----------------------------------------------------
-- Table `hotel`.`empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`empresa` (
  `idEmpresa` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `razonSocial` VARCHAR(20) NULL DEFAULT NULL,
  `nif` VARCHAR(20) NULL DEFAULT NULL,
  `actividad` VARCHAR(45) NULL DEFAULT NULL,
  `tipo` VARCHAR(45) NULL DEFAULT NULL,
  `paginaWeb` VARCHAR(45) NULL DEFAULT NULL,
  `correoElectronico` VARCHAR(45) NULL DEFAULT NULL,
  `codigoPostal` VARCHAR(20) NULL DEFAULT NULL,
  `calle` VARCHAR(45) NULL DEFAULT NULL,
  `numero` INT(11) NULL DEFAULT NULL,
  `pais` VARCHAR(45) NULL DEFAULT NULL,
  `ciudad` VARCHAR(45) NULL DEFAULT NULL,
  `poblacion` VARCHAR(45) NULL DEFAULT NULL,
  `via` VARCHAR(45) NULL DEFAULT NULL,
  `escalera` VARCHAR(45) NULL DEFAULT NULL,
  `bloque` VARCHAR(45) NULL DEFAULT NULL,
  `provincia` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idEmpresa`),
  UNIQUE INDEX `nif_UNIQUE` (`nif` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`agencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`agencia` (
  `id_Agencia` INT(11) NOT NULL AUTO_INCREMENT,
  `responsable` VARCHAR(45) NULL DEFAULT NULL,
  `categoria` VARCHAR(45) NULL DEFAULT NULL,
  `estatus` VARCHAR(45) NULL DEFAULT NULL,
  `Empresa_idEmpresa` INT(11) NOT NULL,
  PRIMARY KEY (`id_Agencia`),
  INDEX `fk_Agencia_Empresa1_idx` (`Empresa_idEmpresa` ASC),
  CONSTRAINT `fk_Agencia_Empresa1`
    FOREIGN KEY (`Empresa_idEmpresa`)
    REFERENCES `hotel`.`empresa` (`idEmpresa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`empleado` (
  `idEmpleado` INT(11) NOT NULL AUTO_INCREMENT,
  `idiomas` VARCHAR(200) NULL DEFAULT NULL,
  `habilidades` VARCHAR(45) NULL DEFAULT NULL,
  `sector` VARCHAR(45) NULL DEFAULT NULL,
  `categoria` VARCHAR(45) NULL DEFAULT NULL,
  `rol` VARCHAR(45) NOT NULL,
  `foto` BLOB NULL DEFAULT NULL,
  `numeroSeguridadSocial` VARCHAR(20) NULL DEFAULT NULL,
  `codigoPostal` VARCHAR(20) NULL DEFAULT NULL,
  `calle` VARCHAR(45) NULL DEFAULT NULL,
  `numero` INT(11) NULL DEFAULT NULL,
  `pais` VARCHAR(45) NULL DEFAULT NULL,
  `ciudad` VARCHAR(45) NULL DEFAULT NULL,
  `poblacion` VARCHAR(45) NULL DEFAULT NULL,
  `via` VARCHAR(45) NULL DEFAULT NULL,
  `escalera` VARCHAR(45) NULL DEFAULT NULL,
  `bloque` VARCHAR(45) NULL DEFAULT NULL,
  `provincia` VARCHAR(45) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `primerApellido` VARCHAR(45) NULL DEFAULT NULL,
  `segundoApellido` VARCHAR(45) NULL DEFAULT NULL,
  `fechaNacimiento` DATE NULL DEFAULT NULL,
  `dni` VARCHAR(20) NOT NULL,
  `sexo` VARCHAR(45) NULL DEFAULT NULL,
  `correoElectronico` VARCHAR(45) NULL DEFAULT NULL,
  `telefonoMovil` VARCHAR(10) NULL DEFAULT NULL,
  `telefonoFIjo` VARCHAR(45) NULL DEFAULT NULL,
  `discapacitado` TINYINT(1) NULL DEFAULT NULL,
  `Departamento_idDepartamento` INT(11) NULL DEFAULT NULL,
  `usuario` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEmpleado`),
  UNIQUE INDEX `password_UNIQUE` (`password` ASC),
  UNIQUE INDEX `dni_UNIQUE` (`dni` ASC),
  INDEX `fk_Empleado_Departamento2_idx` (`Departamento_idDepartamento` ASC),
  CONSTRAINT `fk_Empleado_Departamento2`
    FOREIGN KEY (`Departamento_idDepartamento`)
    REFERENCES `hotel`.`departamento` (`idDepartamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`departamento` (
  `idDepartamento` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(25) NULL DEFAULT NULL,
  `Empleado_idEmpleado_jefe` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idDepartamento`),
  INDEX `fk_Departamento_Empleado1_idx` (`Empleado_idEmpleado_jefe` ASC),
  CONSTRAINT `fk_Departamento_Empleado1`
    FOREIGN KEY (`Empleado_idEmpleado_jefe`)
    REFERENCES `hotel`.`empleado` (`idEmpleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`proveedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`proveedores` (
  `idProveedores` INT(11) NOT NULL AUTO_INCREMENT,
  `cateoria` VARCHAR(45) NULL DEFAULT NULL,
  `clasificacion` VARCHAR(45) NULL DEFAULT NULL,
  `Empresa_idEmpresa` INT(11) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `primerApellido` VARCHAR(45) NULL DEFAULT NULL,
  `segundoApellido` VARCHAR(45) NULL DEFAULT NULL,
  `fechaNacimiento` DATE NULL DEFAULT NULL,
  `dni` VARCHAR(20) NOT NULL,
  `sexo` VARCHAR(45) NULL DEFAULT NULL,
  `correoElectronico` VARCHAR(45) NULL DEFAULT NULL,
  `telefonoMovil` VARCHAR(10) NULL DEFAULT NULL,
  `telefonoFIjo` VARCHAR(45) NULL DEFAULT NULL,
  `discapacitado` TINYINT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`idProveedores`),
  UNIQUE INDEX `dni_UNIQUE` (`dni` ASC),
  INDEX `fk_Proveedores_Empresa1_idx` (`Empresa_idEmpresa` ASC),
  CONSTRAINT `fk_Proveedores_Empresa1`
    FOREIGN KEY (`Empresa_idEmpresa`)
    REFERENCES `hotel`.`empresa` (`idEmpresa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`oferta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`oferta` (
  `idOferta` INT(11) NOT NULL AUTO_INCREMENT,
  `precio` DOUBLE NULL DEFAULT NULL,
  `descuento` DOUBLE NULL DEFAULT NULL,
  `fechaInicio` DATETIME NULL DEFAULT NULL,
  `Cliente_Persona_Dni` VARCHAR(20) NULL DEFAULT NULL,
  `Empleado_Persona_Dni` VARCHAR(20) NULL DEFAULT NULL,
  `fechaFin` DATETIME NULL DEFAULT NULL,
  `Articulo_idArticulo` INT(11) NULL DEFAULT NULL,
  `concepto` VARCHAR(45) NULL DEFAULT NULL,
  `categoria` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idOferta`),
  INDEX `fk_Oferta_Articulo1_idx` (`Articulo_idArticulo` ASC),
  CONSTRAINT `fk_Oferta_Articulo1`
    FOREIGN KEY (`Articulo_idArticulo`)
    REFERENCES `hotel`.`articulo` (`idArticulo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`reserva`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`reserva` (
  `idReserva` INT(11) NOT NULL AUTO_INCREMENT,
  `fechaInicio` DATE NOT NULL,
  `pension` VARCHAR(45) NULL DEFAULT NULL,
  `Oferta_idOferta` INT(11) NULL DEFAULT NULL,
  `Empleado_idEmpleado` INT(11) NOT NULL,
  `fechaFin` DATE NOT NULL,
  `Agencia_id_Agencia` INT(11) NOT NULL,
  PRIMARY KEY (`idReserva`),
  INDEX `fk_Reserva_Oferta1_idx` (`Oferta_idOferta` ASC),
  INDEX `fk_Reserva_Empleado1_idx` (`Empleado_idEmpleado` ASC),
  INDEX `fk_Reserva_Agencia1_idx` (`Agencia_id_Agencia` ASC),
  CONSTRAINT `fk_Reserva_Agencia1`
    FOREIGN KEY (`Agencia_id_Agencia`)
    REFERENCES `hotel`.`agencia` (`id_Agencia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reserva_Empleado1`
    FOREIGN KEY (`Empleado_idEmpleado`)
    REFERENCES `hotel`.`empleado` (`idEmpleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reserva_Oferta1`
    FOREIGN KEY (`Oferta_idOferta`)
    REFERENCES `hotel`.`oferta` (`idOferta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`cliente` (
  `idCliente` INT(11) NOT NULL AUTO_INCREMENT,
  `fechaExpedicionPasaporte` DATE NULL DEFAULT NULL,
  `fechaVencimientoPasaporte` DATE NULL DEFAULT NULL,
  `Reserva_idReserva` INT(11) NULL DEFAULT NULL,
  `categoria` VARCHAR(45) NULL DEFAULT NULL,
  `puntos` DOUBLE NULL DEFAULT NULL,
  `turno` VARCHAR(45) NULL DEFAULT NULL,
  `pension` VARCHAR(45) NULL DEFAULT NULL,
  `estatus` VARCHAR(45) NULL DEFAULT NULL,
  `codigoPostal` VARCHAR(20) NULL DEFAULT NULL,
  `calle` VARCHAR(45) NULL DEFAULT NULL,
  `numero` INT(11) NULL DEFAULT NULL,
  `pais` VARCHAR(45) NULL DEFAULT NULL,
  `ciudad` VARCHAR(45) NULL DEFAULT NULL,
  `poblacion` VARCHAR(45) NULL DEFAULT NULL,
  `via` VARCHAR(45) NULL DEFAULT NULL,
  `escalera` VARCHAR(45) NULL DEFAULT NULL,
  `bloque` VARCHAR(45) NULL DEFAULT NULL,
  `provincia` VARCHAR(45) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `primerApellido` VARCHAR(45) NULL DEFAULT NULL,
  `segundoApellido` VARCHAR(45) NULL DEFAULT NULL,
  `fechaNacimiento` DATE NULL DEFAULT NULL,
  `dni` VARCHAR(20) NOT NULL,
  `sexo` VARCHAR(45) NULL DEFAULT NULL,
  `correoElectronico` VARCHAR(45) NULL DEFAULT NULL,
  `telefonoMovil` VARCHAR(10) NULL DEFAULT NULL,
  `telefonoFIjo` VARCHAR(45) NULL DEFAULT NULL,
  `discapacitado` TINYINT(1) NULL DEFAULT NULL,
  `categoriaSegunAgencia` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE INDEX `dni_UNIQUE` (`dni` ASC),
  INDEX `fk_Cliente_Reserva1_idx` (`Reserva_idReserva` ASC),
  CONSTRAINT `fk_Cliente_Reserva1`
    FOREIGN KEY (`Reserva_idReserva`)
    REFERENCES `hotel`.`reserva` (`idReserva`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 22
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`factura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`factura` (
  `idFactura` INT(11) NOT NULL AUTO_INCREMENT,
  `fechaLiquidacion` DATE NULL DEFAULT NULL,
  `Empresa_idEmpresa` INT(11) NULL DEFAULT NULL,
  `Empleado_Persona_Dni` VARCHAR(20) NULL DEFAULT NULL,
  `Cliente_idCliente` INT(11) NULL DEFAULT NULL,
  `Oferta_idOferta` INT(11) NULL DEFAULT NULL,
  `concepto` VARCHAR(45) NULL DEFAULT NULL,
  `codigo` VARCHAR(45) NULL DEFAULT NULL,
  `propia` TINYINT(1) NULL,
  PRIMARY KEY (`idFactura`),
  INDEX `fk_Factura_Empresa1_idx` (`Empresa_idEmpresa` ASC),
  INDEX `fk_Factura_Cliente1_idx` (`Cliente_idCliente` ASC),
  INDEX `fk_Factura_Oferta1_idx` (`Oferta_idOferta` ASC),
  CONSTRAINT `fk_Factura_Cliente1`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `hotel`.`cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Factura_Empresa1`
    FOREIGN KEY (`Empresa_idEmpresa`)
    REFERENCES `hotel`.`empresa` (`idEmpresa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Factura_Oferta1`
    FOREIGN KEY (`Oferta_idOferta`)
    REFERENCES `hotel`.`oferta` (`idOferta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`articulo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`articulo` (
  `idArticulo` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `concepto` VARCHAR(45) NULL DEFAULT NULL,
  `precio` DOUBLE NULL DEFAULT NULL,
  `Proveedores_idProveedores` INT(11) NULL DEFAULT NULL,
  `foto` BLOB NULL DEFAULT NULL,
  `categoria` VARCHAR(45) NULL DEFAULT NULL,
  `Departamento_idDepartamento` INT(11) NOT NULL,
  `codigo` VARCHAR(45) NULL DEFAULT NULL,
  `suministrado` TINYINT(1) NULL,
  `factura_idFactura` INT(11) NOT NULL,
  PRIMARY KEY (`idArticulo`),
  INDEX `fk_Articulo_Proveedores1_idx` (`Proveedores_idProveedores` ASC),
  INDEX `fk_Articulo_Departamento1_idx` (`Departamento_idDepartamento` ASC),
  INDEX `fk_articulo_factura1_idx` (`factura_idFactura` ASC),
  CONSTRAINT `fk_Articulo_Departamento1`
    FOREIGN KEY (`Departamento_idDepartamento`)
    REFERENCES `hotel`.`departamento` (`idDepartamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Articulo_Proveedores1`
    FOREIGN KEY (`Proveedores_idProveedores`)
    REFERENCES `hotel`.`proveedores` (`idProveedores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_articulo_factura1`
    FOREIGN KEY (`factura_idFactura`)
    REFERENCES `hotel`.`factura` (`idFactura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`contrato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`contrato` (
  `idContrato` INT(11) NOT NULL AUTO_INCREMENT,
  `condiciones` VARCHAR(45) NOT NULL,
  `categoria` VARCHAR(45) NULL DEFAULT NULL,
  `salario` DOUBLE NULL DEFAULT NULL,
  `Empleado_idEmpleado` INT(11) NOT NULL,
  `concepto` VARCHAR(45) NULL DEFAULT NULL,
  `horario` VARCHAR(45) NULL DEFAULT NULL,
  `tipo` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idContrato`),
  INDEX `fk_Contrato_Empleado1_idx` (`Empleado_idEmpleado` ASC),
  CONSTRAINT `fk_Contrato_Empleado1`
    FOREIGN KEY (`Empleado_idEmpleado`)
    REFERENCES `hotel`.`empleado` (`idEmpleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`diatrabajo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`diatrabajo` (
  `DiaTrabajo` INT(11) NOT NULL AUTO_INCREMENT,
  `fecha` DATE NOT NULL,
  `horasTrabajadas` DATE NOT NULL,
  `horaExtra` DATE NULL DEFAULT NULL,
  `concepto` VARCHAR(45) NULL DEFAULT NULL,
  `categoria` VARCHAR(45) NULL DEFAULT NULL,
  `sector` VARCHAR(45) NULL DEFAULT NULL,
  `Empleado_idEmpleado` INT(11) NOT NULL,
  PRIMARY KEY (`DiaTrabajo`),
  INDEX `fk_DiaTrabajo_Empleado1_idx` (`Empleado_idEmpleado` ASC),
  CONSTRAINT `fk_DiaTrabajo_Empleado1`
    FOREIGN KEY (`Empleado_idEmpleado`)
    REFERENCES `hotel`.`empleado` (`idEmpleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`parte`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`parte` (
  `idparte` INT(11) NOT NULL AUTO_INCREMENT,
  `comentario` VARCHAR(500) NULL DEFAULT NULL,
  `concepto` VARCHAR(45) NULL DEFAULT NULL,
  `categoria` VARCHAR(45) NULL DEFAULT NULL,
  `Empleado_idEmpleado_abre` INT(11) NOT NULL,
  `Empleado_idEmpleado_cierra` INT(11) NULL DEFAULT NULL,
  `grado` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idparte`),
  INDEX `fk_parte_Empleado1_idx` (`Empleado_idEmpleado_abre` ASC),
  INDEX `fk_parte_Empleado2_idx` (`Empleado_idEmpleado_cierra` ASC),
  CONSTRAINT `fk_parte_Empleado1`
    FOREIGN KEY (`Empleado_idEmpleado_abre`)
    REFERENCES `hotel`.`empleado` (`idEmpleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_parte_Empleado2`
    FOREIGN KEY (`Empleado_idEmpleado_cierra`)
    REFERENCES `hotel`.`empleado` (`idEmpleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`Parte_tiene_empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`Parte_tiene_empleado` (
  `Empleado_idEmpleado` INT(11) NOT NULL,
  `parte_idparte` INT(11) NOT NULL,
  `fechaInicio` DATETIME NULL DEFAULT NULL,
  `fechaFin` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`Empleado_idEmpleado`, `parte_idparte`),
  INDEX `fk_Empleado_has_parte_parte1_idx` (`parte_idparte` ASC),
  INDEX `fk_Empleado_has_parte_Empleado1_idx` (`Empleado_idEmpleado` ASC),
  CONSTRAINT `fk_Empleado_has_parte_Empleado1`
    FOREIGN KEY (`Empleado_idEmpleado`)
    REFERENCES `hotel`.`empleado` (`idEmpleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Empleado_has_parte_parte1`
    FOREIGN KEY (`parte_idparte`)
    REFERENCES `hotel`.`parte` (`idparte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`habitacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`habitacion` (
  `idHabitacion` INT(11) NOT NULL AUTO_INCREMENT,
  `numero` INT(11) NOT NULL,
  `estatus` VARCHAR(45) NULL DEFAULT NULL,
  `vista` VARCHAR(45) NULL DEFAULT NULL,
  `ocupada` TINYINT(1) NULL DEFAULT NULL,
  `bloqueada` TINYINT(1) NULL DEFAULT NULL,
  `foto` BLOB NULL DEFAULT NULL,
  `camaExtra` TINYINT(1) NULL DEFAULT NULL,
  `ocupantes` INT(11) NULL DEFAULT NULL,
  `safe` TINYINT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`idHabitacion`),
  UNIQUE INDEX `numero_UNIQUE` (`numero` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`mesa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`mesa` (
  `idMesa` INT(11) NOT NULL AUTO_INCREMENT,
  `numero` INT(11) NOT NULL,
  `identificacion` VARCHAR(45) NOT NULL,
  `vista` VARCHAR(45) NULL DEFAULT NULL,
  `disponible` TINYINT(1) NULL DEFAULT NULL,
  `turno` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idMesa`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`oferta_tiene_empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`oferta_tiene_empresa` (
  `idOferta_tiene_Empresa` INT(11) NOT NULL AUTO_INCREMENT,
  `Oferta_idOferta` INT(11) NOT NULL,
  `fechaInicio` DATETIME NULL DEFAULT NULL,
  `fechaFIn` DATETIME NULL DEFAULT NULL,
  `Empresa_idEmpresa` INT(11) NOT NULL,
  PRIMARY KEY (`idOferta_tiene_Empresa`),
  INDEX `fk_Oferta_has_Agencia_Oferta1_idx` (`Oferta_idOferta` ASC),
  INDEX `fk_Oferta_tiene_Empresa_Empresa1_idx` (`Empresa_idEmpresa` ASC),
  CONSTRAINT `fk_Oferta_has_Agencia_Oferta1`
    FOREIGN KEY (`Oferta_idOferta`)
    REFERENCES `hotel`.`oferta` (`idOferta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Oferta_tiene_Empresa_Empresa1`
    FOREIGN KEY (`Empresa_idEmpresa`)
    REFERENCES `hotel`.`empresa` (`idEmpresa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`parte_tiene_cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`parte_tiene_cliente` (
  `idparte_tiene_Cliente` INT(11) NOT NULL AUTO_INCREMENT,
  `parte_idparte` INT(11) NOT NULL,
  `fechaInicio` DATETIME NULL DEFAULT NULL,
  `fechaFin` DATETIME NULL DEFAULT NULL,
  `Cliente_idCliente` INT(11) NOT NULL,
  PRIMARY KEY (`idparte_tiene_Cliente`),
  INDEX `fk_parte_has_Cliente_parte1_idx` (`parte_idparte` ASC),
  INDEX `fk_parte_tiene_Cliente_Cliente1_idx` (`Cliente_idCliente` ASC),
  CONSTRAINT `fk_parte_has_Cliente_parte1`
    FOREIGN KEY (`parte_idparte`)
    REFERENCES `hotel`.`parte` (`idparte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_parte_tiene_Cliente_Cliente1`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `hotel`.`cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`parte_tiene_contrato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`parte_tiene_contrato` (
  `idparte_tiene_contrato` INT(11) NOT NULL AUTO_INCREMENT,
  `Contrato_idContrato` INT(11) NOT NULL,
  `parte_idparte` INT(11) NOT NULL,
  `fechaInicio` DATETIME NULL DEFAULT NULL,
  `fechaFin` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`idparte_tiene_contrato`),
  UNIQUE INDEX `fechaFin_UNIQUE` (`fechaFin` ASC),
  INDEX `fk_Contrato_has_parte_parte1_idx` (`parte_idparte` ASC),
  INDEX `fk_Contrato_has_parte_Contrato1_idx` (`Contrato_idContrato` ASC),
  CONSTRAINT `fk_Contrato_has_parte_Contrato1`
    FOREIGN KEY (`Contrato_idContrato`)
    REFERENCES `hotel`.`contrato` (`idContrato`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Contrato_has_parte_parte1`
    FOREIGN KEY (`parte_idparte`)
    REFERENCES `hotel`.`parte` (`idparte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`parte_tiene_departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`parte_tiene_departamento` (
  `idparte_tiene_Departamentocol` INT(11) NOT NULL AUTO_INCREMENT,
  `parte_idparte` INT(11) NOT NULL,
  `fechaInicio` DATETIME NULL DEFAULT NULL,
  `fechaFin` DATETIME NULL DEFAULT NULL,
  `Departamento_idDepartamento` INT(11) NOT NULL,
  PRIMARY KEY (`idparte_tiene_Departamentocol`),
  INDEX `fk_parte_has_Departamento_parte1_idx` (`parte_idparte` ASC),
  INDEX `fk_parte_tiene_Departamento_Departamento1_idx` (`Departamento_idDepartamento` ASC),
  CONSTRAINT `fk_parte_has_Departamento_parte1`
    FOREIGN KEY (`parte_idparte`)
    REFERENCES `hotel`.`parte` (`idparte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_parte_tiene_Departamento_Departamento1`
    FOREIGN KEY (`Departamento_idDepartamento`)
    REFERENCES `hotel`.`departamento` (`idDepartamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`parte_tiene_empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`parte_tiene_empresa` (
  `idparte_tiene_Empresa` INT(11) NOT NULL AUTO_INCREMENT,
  `parte_idparte` INT(11) NOT NULL,
  `Empresa_idEmpresa` INT(11) NOT NULL,
  `fechaInicio` DATETIME NULL DEFAULT NULL,
  `fechaFin` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`idparte_tiene_Empresa`),
  INDEX `fk_parte_has_Empresa_Empresa1_idx` (`Empresa_idEmpresa` ASC),
  INDEX `fk_parte_has_Empresa_parte1_idx` (`parte_idparte` ASC),
  CONSTRAINT `fk_parte_has_Empresa_Empresa1`
    FOREIGN KEY (`Empresa_idEmpresa`)
    REFERENCES `hotel`.`empresa` (`idEmpresa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_parte_has_Empresa_parte1`
    FOREIGN KEY (`parte_idparte`)
    REFERENCES `hotel`.`parte` (`idparte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`parte_tiene_oferta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`parte_tiene_oferta` (
  `idparte_tiene_oferta` INT(11) NOT NULL AUTO_INCREMENT,
  `Oferta_idOferta` INT(11) NOT NULL,
  `parte_idparte` INT(11) NOT NULL,
  `fechaInicio` DATETIME NULL DEFAULT NULL,
  `fechaFin` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`idparte_tiene_oferta`),
  INDEX `fk_Oferta_has_parte_parte1_idx` (`parte_idparte` ASC),
  INDEX `fk_Oferta_has_parte_Oferta1_idx` (`Oferta_idOferta` ASC),
  CONSTRAINT `fk_Oferta_has_parte_Oferta1`
    FOREIGN KEY (`Oferta_idOferta`)
    REFERENCES `hotel`.`oferta` (`idOferta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Oferta_has_parte_parte1`
    FOREIGN KEY (`parte_idparte`)
    REFERENCES `hotel`.`parte` (`idparte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`parte_tiene_proveedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`parte_tiene_proveedores` (
  `idparte_tiene_Proveedores` INT(11) NOT NULL AUTO_INCREMENT,
  `parte_idparte` INT(11) NOT NULL,
  `Proveedores_idProveedores` INT(11) NOT NULL,
  `fechaInicio` DATETIME NULL DEFAULT NULL,
  `fechaFin` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`idparte_tiene_Proveedores`),
  UNIQUE INDEX `fechaFin_UNIQUE` (`fechaFin` ASC),
  INDEX `fk_parte_has_Proveedores_Proveedores1_idx` (`Proveedores_idProveedores` ASC),
  INDEX `fk_parte_has_Proveedores_parte1_idx` (`parte_idparte` ASC),
  CONSTRAINT `fk_parte_has_Proveedores_Proveedores1`
    FOREIGN KEY (`Proveedores_idProveedores`)
    REFERENCES `hotel`.`proveedores` (`idProveedores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_parte_has_Proveedores_parte1`
    FOREIGN KEY (`parte_idparte`)
    REFERENCES `hotel`.`parte` (`idparte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`parte_tiene_reserva`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`parte_tiene_reserva` (
  `idparte_tiene_Reserva` INT(11) NOT NULL,
  `parte_idparte` INT(11) NOT NULL,
  `Reserva_idReserva` INT(11) NOT NULL,
  `fechaInicio` DATETIME NULL DEFAULT NULL,
  `fechaFin` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`idparte_tiene_Reserva`),
  INDEX `fk_parte_has_Reserva_Reserva1_idx` (`Reserva_idReserva` ASC),
  INDEX `fk_parte_has_Reserva_parte1_idx` (`parte_idparte` ASC),
  CONSTRAINT `fk_parte_has_Reserva_Reserva1`
    FOREIGN KEY (`Reserva_idReserva`)
    REFERENCES `hotel`.`reserva` (`idReserva`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_parte_has_Reserva_parte1`
    FOREIGN KEY (`parte_idparte`)
    REFERENCES `hotel`.`parte` (`idparte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`mesa_tiene_cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`mesa_tiene_cliente` (
  `mesa_idMesa` INT(11) NOT NULL,
  `cliente_idCliente` INT(11) NOT NULL,
  `fechaInicio` DATETIME NULL,
  `fechaFin` DATETIME NULL,
  `desayuno` TINYINT(1) NULL,
  `almuerzo` TINYINT(1) NULL,
  `cena` TINYINT(1) NULL,
  PRIMARY KEY (`mesa_idMesa`, `cliente_idCliente`),
  INDEX `fk_mesa_has_cliente_cliente1_idx` (`cliente_idCliente` ASC),
  INDEX `fk_mesa_has_cliente_mesa1_idx` (`mesa_idMesa` ASC),
  CONSTRAINT `fk_mesa_has_cliente_mesa1`
    FOREIGN KEY (`mesa_idMesa`)
    REFERENCES `hotel`.`mesa` (`idMesa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_mesa_has_cliente_cliente1`
    FOREIGN KEY (`cliente_idCliente`)
    REFERENCES `hotel`.`cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`habitacion_tiene_cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`habitacion_tiene_cliente` (
  `habitacion_idHabitacion` INT(11) NOT NULL,
  `cliente_idCliente` INT(11) NOT NULL,
  `fechaInicio` DATE NULL,
  `fechaFin` DATE NULL,
  PRIMARY KEY (`habitacion_idHabitacion`, `cliente_idCliente`),
  INDEX `fk_habitacion_has_cliente_cliente1_idx` (`cliente_idCliente` ASC),
  INDEX `fk_habitacion_has_cliente_habitacion1_idx` (`habitacion_idHabitacion` ASC),
  CONSTRAINT `fk_habitacion_has_cliente_habitacion1`
    FOREIGN KEY (`habitacion_idHabitacion`)
    REFERENCES `hotel`.`habitacion` (`idHabitacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_habitacion_has_cliente_cliente1`
    FOREIGN KEY (`cliente_idCliente`)
    REFERENCES `hotel`.`cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `hotel`.`timestamps`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`timestamps` (
  `create_time`  NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time`  NULL);


-- -----------------------------------------------------
-- Table `hotel`.`timestamps_1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`timestamps_1` (
  `create_time`  NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time`  NULL);


-- -----------------------------------------------------
-- Table `hotel`.`timestamps_2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hotel`.`timestamps_2` (
  `create_time`  NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time`  NULL);

USE `hotel` ;

-- -----------------------------------------------------
-- procedure selecionaTodosClientes
-- -----------------------------------------------------

DELIMITER $$
USE `hotel`$$
CREATE DEFINER=`antonio`@`%` PROCEDURE `selecionaTodosClientes`()
    NO SQL
select * FROM cliente$$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;