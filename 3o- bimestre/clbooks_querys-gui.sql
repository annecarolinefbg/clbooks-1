#Select para mostrar as postagens mais curtidas - TALVEZ TIRAR
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

#Select para filtrar os livros de fantasia - tela de acervo
SELECT livros.nome AS Nome, livros.genero AS Genero
FROM livros
WHERE livros.genero = "fantasia";

#Select para mostrar a data da ultima postagem feita por cada usuário -> tela forum
SELECT postagem.fk_usuario_cod AS usuario, MAX(postagem.data_postagem) AS data_postagem
FROM postagem
GROUP BY postagem.fk_usuario_cod;

#Select para mostrar o status de leitura dos usuários com os livros-> status de leitura
SELECT fk_usuario_cod AS usuario, status_leitura, titulos, data_postagem
FROM postagem
ORDER BY data_postagem DESC;


#Select para mostrar os livros já lidos no aplicativo -> status de leitura 2
SELECT titulos, status_leitura, data_postagem
FROM postagem
WHERE status_leitura = 'Já li';

#Select para mostrar os usuários que compraram livros e a quantidade -> tela de compras
SELECT usuario.nome, SUM(usuarioVendas.quantidade) AS quantidade
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


#Select para mostrar o plano atual de um usuário e seu valor -> tela renovar
SELECT u.nome AS usuario, p.tipoAssinatura, p.valor
FROM assinaturas a
INNER JOIN plano p ON a.fk_plano_cod = p.cod
INNER JOIN usuario u ON a.fk_usuario_cod = u.cod
WHERE u.cod = 741;


#Select para o usuário ver as suas notificacoes do app -> tela de notificações
SELECT u.nome AS usuario, n.interacao, n.cod AS id_notificacao
FROM notificacao n
INNER JOIN usuarioPostagem up ON n.fk_usuarioPostagem_cod = up.cod
INNER JOIN usuario u ON up.fk_usuario_cod = u.cod
WHERE u.cod = 556;


#Select para mostrar os escritores do aplicativo -> tela usuario/escritor
SELECT usuario.nome, usuario.email, usuario.escritor
FROM usuario
WHERE escritor = true;

#Select para mostrar os leitores do aplicativo -> tela usuario/escritor
SELECT usuario.nome, usuario.email, usuario.escritor
FROM usuario
WHERE escritor = false;

#Select para o usuário ver seu endereço registrado -> tela de entrega
SELECT e.estado, e.cidade, e.rua, e.complemento, e.referencia AS referência
FROM entrega e
INNER JOIN usuario u ON e.fk_usuario_cod = u.cod
WHERE u.cod = 845;


#Select para que o usuário obtenha o registro dos seus pagamentos feitos-> tela de pagamentos
SELECT uv.nome AS Livro, uv.valor AS ValorPago,uv.quantidade AS Quantidade,fp.nome_pag AS FormaDePagamento,uv.fk_usuario_cod AS CodUsuario
FROM usuarioVendas uv
INNER JOIN FormasDePagamento fp ON uv.fk_FormasDePagamento_cod = fp.cod
WHERE uv.fk_usuario_cod = 741
ORDER BY uv.valor DESC; 


#Select para ver os livros com mais postagens -> tela forum ERRADO
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
