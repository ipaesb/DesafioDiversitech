-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Out-2021 às 03:33
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pousada`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` int(14) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `telefone` int(14) NOT NULL,
  `tipo_reserva` varchar(255) NOT NULL,
  `data_reserva` date NOT NULL,
  `preco_reserva` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente_reserva`
--

CREATE TABLE `cliente_reserva` (
  `cliente_id` int(11) NOT NULL,
  `reserva_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reservas`
--

CREATE TABLE `reservas` (
  `id_reserva` int(11) NOT NULL,
  `nome_reserva` varchar(255) NOT NULL,
  `num_quarto` varchar(255) NOT NULL,
  `tipo_reserva` varchar(255) NOT NULL,
  `data_entrada` date NOT NULL,
  `data_saida` date NOT NULL,
  `status_reserva` varchar(255) NOT NULL,
  `valor_total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `reservas`
--

INSERT INTO `reservas` (`id_reserva`, `nome_reserva`, `num_quarto`, `tipo_reserva`, `data_entrada`, `data_saida`, `status_reserva`, `valor_total`) VALUES
(1, '[Simples]', '[1]', '[Diaria]', '2021-10-25', '2021-10-27', '[Oculpado]', 500),
(2, '[Master]', '[10]', '[Semanal]', '2021-10-25', '2021-11-01', '[Oculpado]', 5000),
(3, '[Presidencial]', '[20]', '[Quizenal]', '2021-10-25', '2021-11-08', '[Oculpado]', 50000);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `cliente_reserva`
--
ALTER TABLE `cliente_reserva`
  ADD KEY `cliente_reserva_fk0` (`cliente_id`),
  ADD KEY `cliente_reserva_fk1` (`reserva_id`);

--
-- Índices para tabela `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reserva`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cliente_reserva`
--
ALTER TABLE `cliente_reserva`
  ADD CONSTRAINT `cliente_reserva_fk0` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `cliente_reserva_fk1` FOREIGN KEY (`reserva_id`) REFERENCES `reservas` (`id_reserva`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
