create database clbooks;
use clbooks;

CREATE TABLE livros (
    cod INT,
    isbn INT,
    genero VARCHAR(50),
    nome VARCHAR(50),
    atual VARCHAR(50),
    PRIMARY KEY (cod)
);

CREATE TABLE usuario (
    cod INT,
    nome VARCHAR(50),
    email VARCHAR(50),
    datadenasc VARCHAR(50),
    PRIMARY KEY (cod)
);

CREATE TABLE escritor (
    cod INT,
    bioPes VARCHAR(1000),
    livrosAut VARCHAR(100),
    PRIMARY KEY (cod)
);

CREATE TABLE postagem (
    cod INT,
    fk_usuario_cod INT,
    data DATE,
    descricao VARCHAR(100),
    titulos VARCHAR(100),
    PRIMARY KEY (cod),
    FOREIGN KEY (fk_usuario_cod)
        REFERENCES usuario (cod)
);


CREATE TABLE usuarioPostagem (
    fk_usuario_cod INT,
    fk_postagem_cod INT,
    FOREIGN KEY (fk_usuario_cod)
        REFERENCES usuario (cod),
    FOREIGN KEY (fk_postagem_cod)
        REFERENCES postagem (cod)
);

CREATE TABLE usuarioLivros (
    valor VARCHAR(500),
    favoritos VARCHAR(100),
    desejados VARCHAR(100),
    atual VARCHAR(100),
    fk_usuario_cod INT,
    fk_livros_cod INT,
    FOREIGN KEY (fk_usuario_cod)
        REFERENCES usuario (cod),
    FOREIGN KEY (fk_livros_cod)
        REFERENCES livros (cod)
);

CREATE TABLE comentario (
    texto VARCHAR(500),
    data VARCHAR(50),
    fk_usuario_cod INT,
    fk_postagem_cod INT,
    FOREIGN KEY (fk_usuario_cod)
        REFERENCES usuario (cod),
    FOREIGN KEY (fk_postagem_cod)
        REFERENCES postagem (cod)
);

CREATE TABLE vendas (
    valor INT,
    fk_usuarioVend_cod INT,
    fk_usuarioComp_cod INT,
    fk_livros_cod INT,
    FOREIGN KEY (fk_usuarioVend_cod)
        REFERENCES usuario (cod),
    FOREIGN KEY (fk_usuarioComp_cod)
        REFERENCES usuario (cod),
    FOREIGN KEY (fk_livros_cod)
        REFERENCES livros (cod)
);

















