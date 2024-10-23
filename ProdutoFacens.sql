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

/* SELECTS */;
/* 
// Quantos produtos estão cadastrados
SELECT COUNT(*) AS qtd_produto FROM produto;

// Preço médio dos produtos
SELECT SUM(p.preco)/COUNT(p.preco) AS preco_medio_produto FROM produto p;

// média dos preços dos produtos em 2 grupos: perecíveis e não perecíveis;
SELECT p.perecivel, SUM(p.preco)/COUNT(p.preco) AS preco_medio_produto FROM produto p GROUP BY p.perecivel;

// média dos preços dos produtos agrupados pelo nome do produto
SELECT p.nome, SUM(p.preco)/COUNT(p.preco) AS preco_medio_produto FROM produto p GROUP BY p.nome;

// média dos preços e total em estoque dos produtos
SELECT SUM(p.preco)/COUNT(p.preco) AS preco_medio_produto, SUM(p.estoque) AS estoque FROM produto p;

// nome, marca e quantidade em estoque do produto mais caro
SELECT p.nome, p.marca, p.estoque FROM produto p ORDER BY p.preco DESC;

// produtos com preço acima da média
SELECT p.* FROM produto p WHERE p.preco > (SELECT SUM(p.preco)/COUNT(p.preco) AS preco_medio_produto FROM produto p);

// quantidade de produtos de cada nacionalidade
SELECT p.nacionalidade, COUNT(p.nacionalidade) AS estoque FROM produto p GROUP BY p.nacionalidade; 
*/;