-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Set-2017 às 13:22
-- Versão do servidor: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acelke`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `niveis_acessos`
--

CREATE TABLE `niveis_acessos` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `niveis_acessos`
--

INSERT INTO `niveis_acessos` (`id`, `nome`, `created`, `modified`) VALUES
(1, 'Administrador', '2017-09-23 00:00:00', NULL),
(2, 'Financeiro', '2017-09-23 00:00:00', NULL),
(3, 'Cliente', '2017-09-23 00:00:00', NULL),
(4, 'Suporte', '2017-09-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacaos`
--

CREATE TABLE `situacaos` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `situacaos`
--

INSERT INTO `situacaos` (`id`, `nome`, `created`, `modified`) VALUES
(1, 'Ativo', '2017-09-23 00:00:00', NULL),
(2, 'Inativo', '2017-09-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(120) DEFAULT NULL,
  `email` varchar(220) NOT NULL,
  `situacao_id` int(11) NOT NULL DEFAULT '2',
  `niveis_acesso_id` int(11) NOT NULL,
  `qnt_acessos` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `situacao_id`, `niveis_acesso_id`, `qnt_acessos`, `created`, `modified`) VALUES
(1, 'Cesar', 'cesar@celke.com.br', 1, 1, 15, '2017-09-23 00:00:00', NULL),
(2, 'Kelly1', 'kelly@celke.com.br1', 1, 2, 20, '2017-09-23 00:00:00', '2017-09-23 20:13:26'),
(3, 'Jessica2', 'jessica@celke.com.br2', 1, 3, 10, '2017-09-23 00:00:00', '2017-09-23 20:13:52'),
(4, 'Ana', 'ana@celke.com.br', 2, 3, 15, '2017-09-23 00:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `niveis_acessos`
--
ALTER TABLE `niveis_acessos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `situacaos`
--
ALTER TABLE `situacaos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `niveis_acessos`
--
ALTER TABLE `niveis_acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `situacaos`
--
ALTER TABLE `situacaos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
