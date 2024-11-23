#Select para mostrar as postagens mais curtidas
SELECT p.cod AS postagem_cod, p.titulos AS postagem_titulo, COUNT(n.cod) AS curtidas
FROM postagem p
INNER JOIN usuarioPostagem up ON p.cod = up.fk_postagem_cod
INNER JOIN notificacao n ON up.cod = n.fk_usuarioPostagem_cod
WHERE n.interacao 
GROUP BY p.cod
ORDER BY curtidas DESC;


#Select para mostrar os livros de romance com valor mais alto que 50 reais -> tela de acervo
SELECT * FROM livros 
WHERE genero = 'romance' AND valor > 50;

#Select para filtrar os livros de fantasia -. tela de acervo
SELECT livros.nome AS Nome, livros.genero AS Genero
FROM livros
WHERE livros.genero = "fantasia";

#Select para mostrar a data da ultima postagem feita por cada usuário -> tela forum
SELECT postagem.fk_usuario_cod AS usuario, MAX(postagem.data_postagem) AS ultima_postagem
FROM postagem
GROUP BY postagem.fk_usuario_cod;

#Select para mostrar os livros que estão sendo lidos atualmente -> status de leitura
SELECT titulos, status_leitura, data_postagem
FROM postagem
WHERE status_leitura = 'Lendo';

#Select para mostrar os livros já lidos no aplicativo -> status de leitura 2
SELECT titulos, status_leitura, data_postagem
FROM postagem
WHERE status_leitura = 'Já li';

#Select para mostrar os usuários que compraram livros e o total -> tela de compras 
SELECT usuario.nome, SUM(usuarioVendas.quantidade) AS total_comprados
FROM usuario
INNER JOIN usuarioVendas ON usuario.cod = usuarioVendas.fk_usuario_cod
GROUP BY usuario.cod;

#Select para saber os usuários que possuem plano anual -> tela planos
SELECT usuario.cod, usuario.nome, usuario.email
FROM usuario
INNER JOIN assinaturas ON usuario.cod = assinaturas.fk_usuario_cod
WHERE assinaturas.fk_plano_cod = '2';

#Select para saber os usuários que possuem plano mensal -> tela planos
SELECT usuario.cod, usuario.nome, usuario.email
FROM usuario
INNER JOIN assinaturas ON usuario.cod = assinaturas.fk_usuario_cod
WHERE assinaturas.fk_plano_cod = '1';

#Select para ver as notificacoes de todos os usuarios do app -> tela de notificações
SELECT usuario.nome, notificacao.fk_usuarioPostagem_cod, notificacao.interacao
FROM usuario
INNER JOIN usuarioPostagem ON usuarioPostagem.fk_usuario_cod = usuario.cod
inner join notificacao on notificacao.fk_usuarioPostagem_cod = usuarioPostagem.cod;

#Select para mostrar os usuario do aplicativo -> tela usuario/escritor
SELECT usuario.nome, usuario.email, usuario.escritor
FROM usuario
WHERE escritor = true;

#Select para listar os endereços de entrega registrados -> tela de entrega
SELECT e.estado AS Estado, e.cidade AS Cidade, e.rua AS Rua, e.complemento AS Complemento, u.nome AS Usuario
FROM entrega e
INNER JOIN usuario u ON e.fk_usuario_cod = u.cod;

#Select para obter todos os pagamentos de feitos no aplicativo -> tela de pagamentos
SELECT uv.nome AS Usuario, uv.valor, uv.fk_FormasDePagamento_cod AS codigoPagamento, uv.fk_usuario_cod AS CodUsuario, fp.cod
FROM usuarioVendas uv
INNER JOIN FormasDePagamento fp ON uv.fk_FormasDePagamento_cod = fp.cod;

#Selecrt para ver os livros com mais postagens -> tela forum
SELECT p.titulos AS livro, COUNT(p.cod) AS num_postagens
FROM postagem p
GROUP BY p.titulos
ORDER BY num_postagens DESC;

#Select para listar os livros e o preço que um usuario especifico comprou  
SELECT l.nome AS livro, uv.valor, uv.quantidade
FROM usuarioVendas uv
INNER JOIN livros l ON uv.fk_livros_cod = l.cod
INNER JOIN usuario u ON uv.fk_usuario_cod = u.cod
WHERE u.nome = 'Ana Luiza' 
ORDER BY uv.valor DESC;

#Select para ver os gastos de cada usuario dentro do aplicativo
SELECT u.nome AS usuario, SUM(uv.valor * uv.quantidade) AS total_gasto
FROM usuarioVendas uv
INNER JOIN usuario u ON uv.fk_usuario_cod = u.cod
GROUP BY u.nome
HAVING total_gasto > 0;









