
#Select para mostrar as postagens mais curtidas
SELECT p.cod AS postagem_cod, p.titulos AS postagem_titulo, COUNT(n.cod_notificacao) AS curtidas
FROM postagem p
INNER JOIN notificacao n ON p.cod = n.fk_postagem_cod
WHERE n.interacao 
GROUP BY p.cod
ORDER BY curtidas DESC;

#Select para mostrar os livros de romance com valor mais alto que 50 reais
SELECT * 
FROM livros 
WHERE genero = 'romance' AND valor > 50;

#Select para mostrar a data da ultima postagem feita por cada usuário
SELECT postagem.fk_usuario_cod AS usuario, MAX(postagem.data_postagem) AS ultima_postagem
FROM postagem
GROUP BY postagem.fk_usuario_cod;

#Select para mostrar os livros que estão sendo lidos atualmente
SELECT titulos, status_leitura, data_postagem
FROM postagem
WHERE status_leitura = 'Lendo';

#Select para mostrar os usuários que compraram livros e o total 
SELECT usuario.nome, SUM(usuarioVendas.quantidade) AS total_comprados
FROM usuario
INNER JOIN usuarioVendas ON usuario.cod = usuarioVendas.fk_usuarioComp_cod
GROUP BY usuario.cod;

#Select para saber os usuários que possuem plano anual
SELECT usuario.cod, usuario.nome, usuario.email
FROM usuario
INNER JOIN assinaturas ON usuario.cod = assinaturas.fk_usuario_cod
WHERE assinaturas.fk_plano_cod = 'An2';





