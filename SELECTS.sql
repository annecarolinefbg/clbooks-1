# Selecione os livros com genero de romance
select * from livros where genero="romance";

# Selecionem o valor do livro mais caro e o mais barato
SELECT MAX(valor)AS maior, min(valor)AS menor FROM livros;

# Quais são os livros autorais da escritora Elena Maria ?
SELECT livrosAut FROM escritor where nome="Elena Maria";

# Quantos livros o escritor com código 845 comprou?
SELECT sum(quantidade) FROM vendasUE WHERE FK_escritorComp_cod = 845;

# Selecione somente as postagens do mês 8
SELECT * FROM postagem where data_postagem like "%-08-%";

# Quantas postagens o usuário com código 431 fez?
SELECT fk_usuario_cod as usuario, count(fk_postagem_cod) from usuariopostagem group by usuario;

# Qual o livro mais vendido do aplicativo por usuarios?
SELECT  fk_livros_cod, COUNT(quantidade)AS quantidade FROM vendasUE  GROUP BY fk_livros_cod ORDER by quantidade desc limit 1;

# Selecione os livros que começem com a letra "a"
SELECT * FROM livros where nome like "A%";

# Top 3 livros mais vendidos do aplicativo por usuarios
SELECT  fk_livros_cod, COUNT(quantidade)AS quantidade FROM vendasUE GROUP BY fk_livros_cod ORDER by quantidade desc limit 3;

# Ordene os livros do aplicativo em ordem alfabetica
SELECT * FROM livros ORDER BY nome ASC;
