insert into livros (cod, isbn, genero, nome) values 
(0123, "789123456781", "romance", "Orgulho E Preconceito"), 
(5489, "312456026102", "romance", "A culpa É Das Estrelas"),
(4896, "564225984206", "suspense", "Barretos"),
(7856,"456893145975","poesia", "Textos Crueis Demais Para Serem Lidos Rapidamente"),
(4516, "487896588852", "poesia", "Textos Para Acalmar Tempestades"),
(4856, "485962144778", "drama", "Primeiro Eu Tive Que Morrer"),
(5656, "132569874005", "romance", "É  Assim Que Acaba"),
(6985,"147896523354","romance","Os 7 maridos de Evelyn Hugo"),
(4785,"632599874256", "fantasia", "Biblioteca Da Meia Noite"),
(2253,"230225665589", "romance","A Seleção"),
(4756,"654546132134","ação", "Jogos Vorazes"),
(8596,"145632895579", "fantasia","Harry Potter");

insert into usuario (cod, nome, email, data_nasc) values
(741, "Ana Luiza", "lluzi@gmail.com", "1999-08-02"),
(556, "Anne Caroline", "cacazih@gmail.com", "2007-03-24"),
(431, "David Lima", "davidzinho@gmail.com", "1984-07-18"),
(858, "Maria Clarisse", "clahzinha@gmail.com", "1999-05-15"),
(844, "Laura Gabrielly", "laurinha@gmail.com", "2004-06-14"),
(112, "Alexander Fernandes", "ahleleklek@gmail.com", "1985-12-11");

insert into escritor (cod, nome, email, data_nasc, bioPes, livrosAut) values
(642,"Lara Almeida","laraalmeida@gmail.com","2000-05-10", "Sou escritora iniciante.", "O mar das lembranças"),
(785,"Elena Maria","ElenaMaria23@gmail.com","2001-09-06", "Me chamo Elena Maria e escrevo livros voltados para o cristianismo, com relações do nosso cotidiano.", "O Sol da Manhã, Acordar com Jesus"),
(142,"Ricardo Ribeiro","RicardoEscritor1@gmail.com","1996-04-06", "Sou escritor, mas tenho pouco reconhecimento nesse ramo, quero expandir minha audiência usando esse aplicativo.", "Os tons de vermelho"),
(845,"Waldylene Gomes","Waldylenegomezzs@gmail.com","2001-08-06", "Já sou escritora faz um tempo, mas comecei a publicar livros recentemente, com temas de autoajuda.", "A Mente dos Disparos, Lua de Inverno"),
(562,"Monica Torres","MonicaTorress@gmail.com","1999-04-12", "Sou escritora a bastante tempo e nunca publiquei meus livros, estou usando o aplicativo para essa nova oportunidade", "Todas as suas perfeições, Primeiro eu tive que saber viver"),
(844,"Elinelson Souza","ElinelsonSouza@gmail.com","2001-06-09", "Escrevo livros de matemática", "Matemática elemenelson vol1");

insert INTO postagem (cod, status_leitura,fk_usuario_cod, data_postagem, opiniao, titulos) values
(54876,"Abandonei",741,"2024-08-02", "achei pessimo", "Quem é você Alaska"),
(45628,"Lendo", 556,"2024-07-19", "Comecei agora e já me emocionei demais!", "A culpa é das estrelas"),
(75896,"Abandonei",431, "2024-06-25", "não tive vontade de continuar a leitura", "Barretos"),
(12596,"Já li",112, "2024-08-30", "Me prendeu do começo ao fim, mas são muitos livros e ainda não terminei a saga inteira.", "Harry Potter"),
(89666,"Quero ler",844,"2024-08-05", "é Foda viu, eu leria de novo", "Biblioteca da meia noite"),
(89686,"Já li",844, "2024-08-10","Foi o meu primeiro livro, o final poderia ter sido um pouquinho melhor, q bosta", "A Seleção"),
(64536,"Lendo",844, "2024-11-24","Comprei esse livro aqui no acervo clbooks, amei demais, só comprem!!!!!!!!", "Os 7 maridos de Evelyn Hugo");

insert into comentario (texto, data_comentario, fk_usuario_cod, fk_postagem_cod) values
 ("que livro ruim","2024-08-02",741,54876),
("esse aplicativo é muito bom! escontrei todos os livros que eu queria","2027-05-01",556,45628),
("esse app é bom, mas não gostei do livro que eu li :(","2023-04-04",431,75896);

insert into usuariopostagem (fk_usuario_cod, fk_postagem_cod) values
 (431,75896);

insert into FormasDePagamento (cod,nome_pag) values
(1456,"cartão débito"),
(9875,"cartão crédito"),
(1256,"pix"),
(4562,"boleto");


insert into vendas (valor,fk_FormasDePagamento_cod, fk_usuarioVend_cod,fk_usuarioComp_cod,fk_livros_cod,quantidade) values
(52.55,1456,112,844,0123,1),
(40.90,9875,112,844,4896,1),
(70.50,1256,112,844,2253,1),
(50.50,1256, 112,844,6985,1),
(65.90,1256,858,431,5489,1),
(42.00,4562,556,741,4896,1),
(65.90,4562,431,556,4896,1),
(80.50,1256,112,844,0123,1),
(65.00,1256,112,844,7856,1),
(80.90,1256,431,642,2253,1);