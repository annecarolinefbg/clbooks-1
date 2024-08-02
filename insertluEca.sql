insert into livros (cod, isbn, genero, nome, status_leitura) values 
(0123, "789123456781", "romance", "orgulho e preconceito", "quero ler"), 
(5489, "312456026102", "romance", "a culpa é das estrelas", "já li"),
(4896, "564225984206", "suspense", "barretos", "abandonei");

insert into usuario (cod, nome, email, data_nasc) values
(741, "lulu", "lluzi@gmail.com", "1999-08-02"),
(556, "caca", "cacazih@gmail.com", "2007-03-24"),
(431, "david", "davidzinho@gmail.com", "1984-07-18"),
(858, "clarisse", "clahzinha@gmail.com", "1999-05-15"),
(844, "laura", "laurinha@gmail.com", "2004-06-14"),
(112, "lek", "ahleleklek@gmail.com", "1965-12-11");

insert into escritor (cod, bioPes, livrosAut, fk_usuario_cod) values
(642, "sou escritora iniciante", "O mar das lembranças",858),
(785, "só quero arrumar mais compradores", "O mar me chama",844 ),
(142, "quero expandir minha audiencia", "Os tons de vermelho", 112);

insert INTO postagem (cod, fk_usuario_cod, data_postagem, opiniao, titulos) values
(54876,741, "2024-08-02", "achei pessimo", "Quem é você Alaska"),
(45628, 556, "2024-07-19", "me emocionei demais!", "a culpa é das estrelas"),
(75896, 431, "2024-06-25", "não tive vontade de continuar a leitura", "barretos");

insert into comentario (texto, data_comentario, fk_usuario_cod, fk_postagem_cod) values
 ("que livro ruim","2024-08-02",741,54876),
("esse aplicativo é muito bom! escontrei todos os livros que eu queria","2027-05-01",556,45628),
("esse app é bom, mas não gostei do livro que eu li :(","2023-04-04",431,75896);

insert into usuariopostagem (fk_usuario_cod, fk_postagem_cod) values (431,75896);

insert into vendas (valor, fk_usuarioVend_cod,fk_usuarioComp_cod,fk_livros_cod) values
(52, 112,844,0123),
(65,858,431, 5489),
(42,556,741,4896);