insert into livros (cod, valor,isbn, genero, nome) values 
(0123,60.00,"789123456781", "romance", "Orgulho E Preconceito"), 
(5489,35.00,"312456026102", "romance", "A culpa É Das Estrelas"),
(4896,45.00,"564225984206", "suspense", "Barretos"),
(7856,35.00,"456893145975","poesia", "Textos Crueis Demais Para Serem Lidos Rapidamente"),
(4516,46.10,"487896588852", "poesia", "Textos Para Acalmar Tempestades"),
(4856,43.50,"485962144778", "drama", "Primeiro Eu Tive Que Morrer"),
(5656,40.00,"132569874005", "romance", "É  Assim Que Acaba"),
(6985,62.50,"147896523354","romance","Os 7 maridos de Evelyn Hugo"),
(4785,40.45,"632599874256", "fantasia", "Biblioteca Da Meia Noite"),
(2253,40.50,"230225665589", "romance","A Seleção"),
(4756,135.35,"654546132134","ação", "Jogos Vorazes"),
(8596,78.75,"145632895579", "fantasia","Harry Potter");

insert into usuario (cod, nome, email, data_nasc, escritor, endereco, senha) values
(741, "Ana Luiza", "lluzi@gmail.com", "1999-08-02",TRUE, "Rua da penha - Rio Largo", "senha1"),
(556, "Anne Caroline", "cacazih@gmail.com", "2007-03-24", FALSE, "Rua do amor - Maceió", "senha2"),
(431, "David Lima", "davidzinho@gmail.com", "1984-07-18", TRUE, "Rua do caroço - Messias", "senha3"),
(858, "Maria Clarisse", "clahzinh a@gmail.com", "1999-05-15", TRUE, "Rua de Deus - Rio Largo","senha4"),
(811, "Laura Gabrielly", "laurinha@gmail.com", "2004-06-14", FALSE,"Rua da Duda - Rio Largo","senha5"),
(112, "Alexander Fernandes", "ahleleklek@gmail.com", "1985-12-11", TRUE, "Rua do Limoeiro - Maceió","senha6"),
(362, "Elijameron lourenço", "elibolamen@gmail.com", "2007-11-02", FALSE,"Rua 2007 - Messias","senha7"),
(244, "Gabriel Felipe", "gabrielfelipen@gmail.com", "2007-10-11", FALSE, "Rua do Curralinho - Messias","senha8"),
(984, "Lucas Gabriel", "rafinhagab@gmail.com", "2008-12-11", FALSE, "Rua de Deus - Rio Largo","senha9"),
(845, "Maria Alicia", "malicia12@gmail.com", "2006-10-05", FALSE, "Rua da Wal - Maceió","senha10"),
(189, "Matheus Luna", "matheusluna@gmail.com", "2008-01-24", TRUE,"Avenida José - Maceió","senha11"),
(774, "Miguel Andrade", "miguelandradeofc@gmail.com", "2008-10-04", FALSE,"Rua de Deus - Rio Largo","senha12");

insert into telefoneusuario (telefone, fk_usuario_cod) values
("+55 (82) 99755-4512", 741),
("+55 (82) 99255-0012", 811);

insert INTO postagem (cod, status_leitura,data_postagem, opiniao, titulos, foto_usuario, fk_usuario_cod) values
(54876,"Abandonei","2024-09-20", "achei pessimo!!!!!!!!!! ;(", "Quem é você Alaska","Usu1",),
(45628,"Lendo","2024-10-10", "Comecei agora e já me emocionei demais!", "A culpa é das estrelas","Usu2",),
(75896,"Abandonei", "2024-09-04", "não tive vontade de continuar a leitura", "Barretos","Usu3",),
(12596,"Já li","2024-08-30", "Me prendeu do começo ao fim, mas são muitos livros e ainda não terminei a saga inteira.", "Harry Potter","Usu4",),
(89666,"Quero ler","2024-06-15", "é Foda viu, eu leria de novo", "Biblioteca da meia noite","Usu5",),
(12563,"Já li","2024-08-10","Foi o meu primeiro livro, o final poderia ter sido um pouquinho melhor, q bosta", "A Seleção","Usu6",),
(64536,"Lendo","2024-11-24","Comprei esse livro aqui no acervo clbooks, amei demais, só comprem!!!!!!!!", "Os 7 maridos de Evelyn Hugo","Usu7",);

insert into usuarioPostagem (fk_usuario_cod, fk_postagem_cod) values
(556,75896),
(112,54876),
(431,89666),
(858,45628);

insert into comentario(texto,localizacao,foto_comentario,gif, data_comentario,  fk_usuario_cod, fk_postagem_cod) values
("não tive vontade de continuar  a leitura", "", "", "", 2024-09-04,556,75896),
("achei pessimo", "", "","","2024-09-20",112,54876),
("é Foda viu, eu leria de novo","","","","2024-06-15",431,89666),
("Comecei agora e já me emocionei demais!", "", "", "", "2024-10-10",858,45628);


insert into notificacao(fk_usuarioPostagem_cod, cod_notificacao, interacao) values
(75896, "Notificacao1", "1 like"),
(75896, "Notificacao2", "1 like"),
(75896, "Notificacao3", "1 like"); 

insert into FormasDePagamento (cod,nome_pag) values
(1456,"cartão débito"),
(9875,"cartão crédito"),
(1256,"pix"),
(4562,"boleto");

insert into plano (valor, tipoAssinatura, cod) values
(15, "Mensal", "Men1"),
(180, "Anual","An2");

insert into assinatura (fk_usuario_cod,fk_plano_cod) values
(741,"An2"),
(984,"Men1"),
(556, "Men1"),
(431,"An2");

insert into usuarioVendas (valor,nome,fk_FormasDePagamento_cod,fk_usuarioVend_cod,fk_usuarioComp_cod,fk_livros_cod,quantidade) values
(80.00,"Harry Potter",4562,984,556,8596,1),
(50.00,"A Seleção",1456,431,556,2253,1),
(40.50,"A Seleção",4562,811,774,2253,1),
(60.00, "Textos Crueis Demais Para Serem Lidos Rapidamente",4562,112,362,7856,1),
(630.00,"Harry Potter",1256,741,845,8596,8),
(125.00,"Os 7 maridos de Evelyn Hugo",1256,741,845,6985,2),
(60.00,"Orgulho E Preconceito",4562,189,845,0123,1),
(43.50,"Primeiro Eu Tive Que Morrer",1456,556,774,4856,1);


