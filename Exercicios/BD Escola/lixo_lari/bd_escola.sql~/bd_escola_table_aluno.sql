
-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `nroMatricula` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `CPF` char(11) NOT NULL,
  `RG` char(10) NOT NULL,
  `dtNascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`nroMatricula`, `nome`, `CPF`, `RG`, `dtNascimento`) VALUES
(1, 'Lincoln Schreiber', '28644145037', '125921007', '1997-01-29'),
(2, 'Larissa Justen', '22714871020', '470046508', '1998-06-16'),
(3, 'Martin Severino Lope', '75116933008', '435181038', '1996-10-26'),
(4, 'Thales Luís Nunes', '48543325064', '380270845', '1998-08-18'),
(5, 'Pedro Henrique', '87408699031', '309755256', '1998-08-09'),
(6, 'Guilherme Sales', '83292411068', '128823884', '1997-01-05'),
(7, 'Alexandre Ryan Viana', '83076122096', '137500609', '1997-05-05'),
(8, 'Leandro Nathan Peixo', '19061225043', '494254877', '1997-05-25'),
(9, 'Aurora Luana Rodrigu', '5197958065', '407091956', '1998-05-25'),
(10, 'Valentina Ana', '9364568095', '121672463', '1999-05-25'),
(11, 'Sophia Fernandes', '31816989037', '230520698', '1999-12-25'),
(12, 'Isabelly Sara', '15599332080', '488838708', '1999-03-25'),
(13, 'Tatiane Emanuelly', '19838211010', '360523328', '1999-03-10'),
(14, 'Joana Bárbara Vieira', '60015954021', '342874378', '1995-03-12'),
(15, 'Letícia Cláudia Nasc', '96239309095', '228255417', '1993-08-18'),
(16, 'Flávia Ester Pietra ', '92984967020', '432370043', '1996-08-18'),
(17, 'Rita Sebastiana Frei', '41751856070', '343725848', '1996-12-18'),
(18, 'Heloise Mirella Port', '23620745013', '463848949', '1996-01-18'),
(19, 'Lavínia Vera Silveir', '16369010006', '215869758', '1996-02-18'),
(20, 'Bianca Nair Mariana ', '76836994030', '424080059', '1996-03-18'),
(21, 'Larissa Elza da Mota', '91430017007', '481871111', '1996-04-18'),
(22, 'Marina Patrícia Stef', '57801743008', '343496823', '1996-05-18'),
(23, 'Regina Amanda Vieira', '63178304010', '102558103', '1996-06-18'),
(24, 'Sebastiana Jennifer ', '2929979062', '219511305', '1996-07-18'),
(25, 'Beatriz Débora Brend', '34591459004', '142002276', '1996-08-18'),
(26, 'Marcela Lúcia Yasmin', '46051411038', '105148908', '1996-09-18'),
(27, 'Mirella Tereza Olive', '99915196024', '147772941', '1996-10-18'),
(28, 'Larissa Luiza Castro', '79715225098', '148187675', '1996-11-18'),
(29, 'Márcia Larissa Silva', '107758015', '148187675', '1998-11-18'),
(30, 'Kauê Vinicius Costa', '56609730008', '303770053', '1998-05-18'),
(31, 'Joaquim Francisco Me', '9107004001', '197724863', '1998-06-18');
