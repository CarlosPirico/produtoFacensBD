# SELECTS

### Quantos produtos estão cadastrados
- SELECT COUNT(*) AS qtd_produto FROM produto;

###  Preço médio dos produtos
- SELECT SUM(p.preco)/COUNT(p.preco) AS preco_medio_produto FROM produto p;

###  média dos preços dos produtos em 2 grupos: perecíveis e não perecíveis;
- SELECT p.perecivel, SUM(p.preco)/COUNT(p.preco) AS preco_medio_produto FROM produto p GROUP BY p.perecivel;

###  média dos preços dos produtos agrupados pelo nome do produto
- SELECT p.nome, SUM(p.preco)/COUNT(p.preco) AS preco_medio_produto FROM produto p GROUP BY p.nome;

###  média dos preços e total em estoque dos produtos
- SELECT SUM(p.preco)/COUNT(p.preco) AS preco_medio_produto, SUM(p.estoque) AS estoque FROM produto p;

###  nome, marca e quantidade em estoque do produto mais caro
- SELECT p.nome, p.marca, p.estoque FROM produto p ORDER BY p.preco DESC;

###  produtos com preço acima da média
- SELECT p.* FROM produto p WHERE p.preco > (SELECT SUM(p.preco)/COUNT(p.preco) AS preco_medio_produto FROM produto p);

###  quantidade de produtos de cada nacionalidade
- SELECT p.nacionalidade, COUNT(p.nacionalidade) AS estoque FROM produto p GROUP BY p.nacionalidade; 
