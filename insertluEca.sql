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
(858, "Maria Clarisse", "clahzinha@gmail.com", "1999-05-15", TRUE, "Rua de Deus - Rio Largo","senha4"),
(811, "Laura Gabrielly", "laurinha@gmail.com", "2004-06-14", FALSE,"Rua da Duda - Rio Largo","senha5"),
(112, "Alexander Toledo", "ahleleklek@gmail.com", "1985-12-11", TRUE, "Rua do Limoeiro - Maceió","senha6"),
(362, "Elijameron lourenço", "elibolamen@gmail.com", "2007-11-02", FALSE,"Rua 2007 - Messias","senha7"),
(244, "Gabriel Felipe", "gabrielfelipen@gmail.com", "2007-10-11", FALSE, "Rua do Curralinho - Messias","senha8"),
(984, "Lucas Gabriel", "rafinhagab@gmail.com", "2008-12-11", FALSE, "Rua de Deus - Rio Largo","senha9"),
(845, "Maria Alicia", "malicia12@gmail.com", "2006-10-05", FALSE, "Rua da Wal - Maceió","senha10"),
(189, "Matheus Luna", "matheusluna@gmail.com", "2008-01-24", TRUE,"Avenida José - Maceió","senha11"),
(774, "Waldylene Gomes", "walggz@gmail.com", "2008-10-04", FALSE,"Rua de Deus - Rio Largo","senha12");

insert into telefoneusuario (telefone, fk_usuario_cod) values
("+55 (82) 99755-4512", 741),
("+55 (82) 99255-0012", 811);

insert INTO postagem (cod,status_leitura,data_postagem, opiniao, titulos, foto_usuario, fk_usuario_cod) values
(1,"Abandonei","2024-09-20", "achei pessimo!!!!!!!!!! ;(", "Quem é você Alaska","Usu1",112),
(2,"Lendo","2024-10-10", "Comecei agora e já me emocionei demais!", "A culpa é das estrelas","Usu2",858),
(3,"Abandonei", "2024-09-04", "não tive vontade de continuar a leitura", "Barretos","Usu3",556),
(4,"Já li","2024-08-30", "Me prendeu do começo ao fim, mas são muitos livros e ainda não terminei a saga inteira.", "Harry Potter","Usu4",774),
(5,"Quero ler","2024-06-15", "é Foda viu, eu leria de novo", "Biblioteca da meia noite","Usu5",431),
(6,"Já li","2024-08-10","Foi o meu primeiro livro, o final poderia ter sido um pouquinho melhor, q bosta", "A Seleção","Usu6",741),
(7,"Lendo","2024-11-24","Comprei esse livro aqui no acervo clbooks, amei demais, só comprem!!!!!!!!", "Os 7 maridos de Evelyn Hugo","Usu7",811);

insert into usuarioPostagem (fk_usuario_cod, fk_postagem_cod) values
(112,1),
(858,2),
(556,3),
(774,4),
(431,5),
(741,6),
(811,7);

insert into comentario(texto,localizacao,foto_comentario,gif, data_comentario, fk_usuario_cod) values
("achei pessimo", "", "", "","2024-09-20",112),
("Comecei agora e já me emocionei demais!", "Rio Largo", "", "", "2024-10-10",858),
("não tive vontade de continuar  a leitura", "Maceió", "", "","2024-09-04",556),
("é Foda viu, eu leria de novo","Messias","","","2024-06-15",431);

insert into notificacao(fk_usuarioPostagem_cod,interacao) values
(1, "1 like"),
(6,"1 like"),
(3,"Adicionado aos favoritos "); 

insert into entrega(fk_usuario_cod,estado,cidade,rua,complemento,referencia) values
(741,"Alagoas", "Rio Largo", "Vila Rica", "Casa", ""),
(556,"Alagoas", "Maceió", "Ponta Verde", "Apartamento", "Ao lado do Palato"),
(845,"São Paulo", "São Paulo","Moranguinho","Casa", ""),
(774,"Alagoas", "Messias", "Curralinho", "Casa", "Em frente ao complexo"),
(362,"Alagoas", "Flexeiras", "PingPong", "Casa","");
  
insert into plano (valor, tipoAssinatura, cod) values
(15, "Mensal", 1),
(180, "Anual",2);

insert into assinaturas (fk_usuario_cod,fk_plano_cod) values
(741,2),
(984,1),
(556,1),
(431,2);

insert into FormasDePagamento(cod, nome_pag) values
(11, "pix"),
(12, "pix"),
(13, "cartão crédito"),
(14, "cartão débito"),
(15, "pix"),
(16, "cartão crédito"),
(17, "pix"),
(18,"pix");

insert into PagamentoCartao(fk_FormasDePagamento_cod,nome, numeroCartao, data, cvv, cpf) values
(11, "Waldylene Gomes", 123, "2024-10-11", 987, 120),
(12, "Maria Clarisse", 250, "2024-09-10",156, 125),
(13,"Elijameron lourenço", 789, "2024-10-06",596,147),
(14,"Ana Luiza", 129,"2024-10-06",114, 152),
(15,"Alexander Toledo", 450,"2024-10-12",426,369),
(16, "Matheus Luna",162,"2024-11-03",773,546),
(17, "Laura Gabrielly",144,"2024-11-04",993,791),
(18,"Anne Caroline",109,"2024-11-06",265,730);

insert into usuarioVendas (valor,nome,fk_FormasDePagamento_cod,fk_livros_cod,quantidade,fk_usuario_cod) values
(80.00,"Harry Potter",11,8596,1, 741),
(50.00,"A Seleção",12,2253,1,741),
(40.50,"A Seleção",13,2253,1,431),
(60.00, "Textos Crueis Demais Para Serem Lidos Rapidamente",14,7856,1,845),
(630.00,"Harry Potter",15,8596,8,431),
(125.00,"Os 7 maridos de Evelyn Hugo",16,6985,2,774),
(60.00,"Orgulho E Preconceito",17,0123,1,112),
(43.50,"Primeiro Eu Tive Que Morrer",18,4856,1,112);


