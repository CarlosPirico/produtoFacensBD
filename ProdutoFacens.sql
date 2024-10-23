-- Copiando estrutura do banco de dados para produtoFacens
CREATE DATABASE IF NOT EXISTS `produtoFacens` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `produtoFacens`;

-- Copiando estrutura para tabela bancotestefacens.produto
CREATE TABLE IF NOT EXISTS `produto` (
  `id_produto` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL DEFAULT '',
  `preco` double NOT NULL DEFAULT (0),
  `estoque` int NOT NULL,
  `perecivel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `marca` varchar(50) DEFAULT NULL,
  `nacionalidade` tinytext,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela bancotestefacens.produto: ~0 rows (aproximadamente)
INSERT INTO `produto` (`id_produto`, `nome`, `preco`, `estoque`, `perecivel`, `marca`, `nacionalidade`) VALUES
	(1, 'Bolacha', 5.3, 100, 'Sim', 'Negresco', 'Brasileiro'),
	(2, 'Miojo', 1.5, 130, 'Não', 'Nissin', 'Brasileiro'),
	(3, 'Chocolate', 9.99, 50, 'Não', 'Cadbury', 'Britânica '),
	(4, 'Salgadinho', 3.59, 66, 'Sim', 'Lays', 'Norte-americano'),
	(5, 'Arroz', 5.55, 76, 'Sim', 'Tio João', 'Brasileiro');