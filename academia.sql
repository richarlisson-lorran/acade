-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 11/12/2023 às 20:24
-- Versão do servidor: 10.4.22-MariaDB
-- Versão do PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `academia`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `atletas`
--

CREATE TABLE `atletas` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idade` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modalidade` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_mensalidade` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `atletas`
--

INSERT INTO `atletas` (`id`, `nome`, `idade`, `modalidade`, `status_mensalidade`) VALUES
(1, 'Kaua', '17', 'musculação', 'em dias'),
(2, 'João Silva', '25', 'musculação', 'em dia'),
(3, 'Maria Souza', '30', 'crossfit', 'em atraso'),
(4, 'Pedro Santos', '28', 'natação', 'em dia'),
(5, 'Ana Oliveira', '22', 'pilates', 'em dia'),
(6, 'Lucas Costa', '32', 'kickboxing', 'em atraso'),
(7, 'Carla Fernandes', '27', 'yoga', 'em dia'),
(8, 'Gabriel Rodrigues', '29', 'funcional', 'em atraso'),
(9, 'Amanda Pereira', '26', 'ciclismo', 'em dia'),
(10, 'Rafaela Almeida', '31', 'hidroginástica', 'em dia'),
(11, 'Fernando Nunes', '24', 'ginástica', 'em atraso');

-- --------------------------------------------------------

--
-- Estrutura para tabela `instrutores`
--

CREATE TABLE `instrutores` (
  `id` int(11) NOT NULL,
  `especialidade` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `horario` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `instrutores`
--

INSERT INTO `instrutores` (`id`, `especialidade`, `horario`, `nome`) VALUES
(1, 'musculação', 'de 10 as 15', 'José souza'),
(2, 'pilates', 'de 8 as 12', 'Ana Silva'),
(3, 'crossfit', 'de 14 as 19', 'Marcos Oliveira'),
(4, 'natação', 'de 9 as 16', 'Carolina Santos'),
(5, 'yoga', 'de 7 as 11', 'Rafaela Costa'),
(6, 'kickboxing', 'de 16 as 21', 'Gustavo Fernandes'),
(7, 'funcional', 'de 10 as 15', 'Juliana Rodrigues'),
(8, 'ciclismo', 'de 13 as 18', 'Daniel Almeida'),
(9, 'hidroginástica', 'de 11 as 16', 'Mariana Pereira'),
(10, 'ginástica', 'de 8 as 13', 'Luciana Nunes'),
(11, 'boxe', 'de 15 as 20', 'Felipe Vieira');

-- --------------------------------------------------------

--
-- Estrutura para tabela `modalidade`
--

CREATE TABLE `modalidade` (
  `id` int(11) NOT NULL,
  `modalidade` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `modalidade`
--

INSERT INTO `modalidade` (`id`, `modalidade`) VALUES
(1, 'artes marciais'),
(2, 'judô'),
(3, 'jiu-jitsu'),
(4, 'taekwondo'),
(5, 'karatê'),
(6, 'boxe'),
(7, 'muay thai'),
(8, 'capoeira'),
(9, 'wushu'),
(10, 'krav maga');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `atletas`
--
ALTER TABLE `atletas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `instrutores`
--
ALTER TABLE `instrutores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `modalidade`
--
ALTER TABLE `modalidade`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atletas`
--
ALTER TABLE `atletas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `instrutores`
--
ALTER TABLE `instrutores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `modalidade`
--
ALTER TABLE `modalidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
