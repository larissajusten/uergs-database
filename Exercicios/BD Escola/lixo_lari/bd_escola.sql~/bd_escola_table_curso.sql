
-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `idcurso` int(10) UNSIGNED NOT NULL,
  `descricao` varchar(45) NOT NULL,
  `cargaHoraria` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`idcurso`, `descricao`, `cargaHoraria`) VALUES
(1, 'Eng. Computação', 4000),
(2, 'Sistemas Embarcados', 3200),
(3, 'Automação', 800),
(4, 'Pedagogia', 880);
