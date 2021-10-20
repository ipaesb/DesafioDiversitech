CREATE database pousada;
use pousada;
CREATE TABLE `Clientes` (
	`id_cliente` INT NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`cpf` INT(14) NOT NULL,
	`endereco` varchar(255) NOT NULL,
	`telefone` INT(14) NOT NULL,
	`tipo_reserva` varchar(255) NOT NULL,
	`data_reserva` DATE NOT NULL,
	`preco_reserva` FLOAT NOT NULL,
	PRIMARY KEY (`id_cliente`)
);

CREATE TABLE `Reservas` (
	`id_reserva` INT NOT NULL AUTO_INCREMENT,
	`nome_reserva` varchar(255) NOT NULL,
	`num_quarto` varchar(255) NOT NULL,
	`tipo_reserva` varchar(255) NOT NULL ,
	`data_entrada` DATE NOT NULL,
	`data_saida` DATE NOT NULL,
	`status_reserva` varchar(255) NOT NULL,
	`valor_total` FLOAT NOT NULL,
	PRIMARY KEY (`id_reserva`)
);

CREATE TABLE `cliente_reserva` (
	`cliente_id` INT NOT NULL,
	`reserva_id` INT NOT NULL
);

ALTER TABLE `cliente_reserva` ADD CONSTRAINT `cliente_reserva_fk0` FOREIGN KEY (`cliente_id`) REFERENCES `Clientes`(`id_cliente`);

ALTER TABLE `cliente_reserva` ADD CONSTRAINT `cliente_reserva_fk1` FOREIGN KEY (`reserva_id`) REFERENCES `Reservas`(`id_reserva`);
