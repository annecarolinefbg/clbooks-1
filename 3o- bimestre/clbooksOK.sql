create database clbooks;
use clbooks;

CREATE TABLE livros (
    cod INT AUTO_INCREMENT,
    valor INT,
    isbn VARCHAR(100) UNIQUE NOT NULL,
    genero VARCHAR(50),
    nome VARCHAR(50),
    PRIMARY KEY (cod)
);

CREATE TABLE usuario (
    cod INT,
    nome VARCHAR(50),
    email VARCHAR(50) UNIQUE NOT NULL,
    data_nasc DATE,
    senha VARCHAR(50) NOT NULL,
    usuario VARCHAR(50),
    endereco VARCHAR(70),
    escritor BOOL DEFAULT FALSE,
    PRIMARY KEY (cod)
);

CREATE TABLE telefoneusuario (
    telefone VARCHAR(20),
    fk_usuario_cod INT PRIMARY KEY,
    FOREIGN KEY (fk_usuario_cod)
        REFERENCES usuario (cod)
);

CREATE TABLE postagem (
    cod INT,
    foto_usuario VARCHAR(50),
    data DATE,
    status_leitura VARCHAR(50),
    fk_usuario_cod INT,
    data_postagem DATE,
    opiniao VARCHAR(100),
    titulos VARCHAR(100),
    PRIMARY KEY (cod),
    FOREIGN KEY (fk_usuario_cod)
        REFERENCES usuario (cod)
);


CREATE TABLE usuarioPostagem (
    cod INT AUTO_INCREMENT,
    fk_usuario_cod INT,
    fk_postagem_cod INT,
    foto VARCHAR(50),
    FOREIGN KEY (fk_usuario_cod)
        REFERENCES usuario (cod),
    FOREIGN KEY (fk_postagem_cod)
        REFERENCES postagem (cod),
    PRIMARY KEY (cod , fk_usuario_cod , fk_postagem_cod)
);

CREATE TABLE notificacao (
    cod INT AUTO_INCREMENT,
    fk_usuarioPostagem_cod INT,
    interacao VARCHAR(50),
    FOREIGN KEY (fk_usuarioPostagem_cod)
        REFERENCES usuarioPostagem (cod),
    PRIMARY KEY (cod)
);

CREATE TABLE usuarioLivros (
    valor VARCHAR(500),
    desejados VARCHAR(100),
    abandonados VARCHAR(100),
    atual VARCHAR(100),
    fk_usuario_cod INT,
    fk_livros_cod INT,
    FOREIGN KEY (fk_usuario_cod)
        REFERENCES usuario (cod),
    FOREIGN KEY (fk_livros_cod)
        REFERENCES livros (cod),
    PRIMARY KEY (fk_usuario_cod , fk_livros_cod)
);

CREATE TABLE comentario (
    texto VARCHAR(500),
    foto_comentario VARCHAR(50),
    localizacao VARCHAR(70),
    gif VARCHAR(70),
    data_comentario DATE,
    fk_usuario_cod INT,
    FOREIGN KEY (fk_usuario_cod)
        REFERENCES usuario (cod),
    PRIMARY KEY (fk_usuario_cod)
);


CREATE TABLE FormasDePagamento (
    cod INT,
    nome_pag VARCHAR(50),
    PRIMARY KEY (cod)
);

CREATE TABLE PagamentoCartao (
    cod INT AUTO_INCREMENT,
    fk_FormasDePagamento_cod INT,
    nome VARCHAR(100),
    numeroCartao INT UNIQUE NOT NULL,
    data DATE,
    cvv INT,
    cpf INT UNIQUE NOT NULL,
    FOREIGN KEY (fk_FormasDePagamento_cod)
        REFERENCES FormasDePagamento (cod),
    PRIMARY KEY (cod)
);

CREATE TABLE usuarioVendas (
    valor INT,
    nome VARCHAR(100),
    quantidade INT,
    fk_FormasDePagamento_cod INT,
    fk_livros_cod INT,
    fk_usuario_cod INT,
    FOREIGN KEY (fk_FormasDePagamento_cod)
        REFERENCES FormasDePagamento (cod),
    FOREIGN KEY (fk_livros_cod)
        REFERENCES livros (cod),
        FOREIGN KEY(fk_usuario_cod)
        REFERENCES usuario (cod),
    PRIMARY KEY (fk_FormasDePagamento_cod , fk_livros_cod,fk_usuario_cod)
);

CREATE TABLE entrega (
	cod INT auto_increment, 
    estado VARCHAR(100),
    cidade VARCHAR(100),
    rua VARCHAR(100),
    complemento VARCHAR(150),
    referencia VARCHAR(100),
    fk_usuario_cod INT,
    FOREIGN KEY (fk_usuario_cod)
        REFERENCES usuario (cod),
    PRIMARY KEY(cod)
);

CREATE TABLE plano (
    valor INT,
    tipoAssinatura VARCHAR(20),
    cod INT PRIMARY KEY
);

CREATE TABLE assinaturas (
    fk_usuario_cod INT,
    fk_plano_cod INT,
    FOREIGN KEY (fk_plano_cod)
        REFERENCES plano (cod),
    FOREIGN KEY (fk_usuario_cod)
        REFERENCES usuario (cod),
    PRIMARY KEY (fk_usuario_cod , fk_plano_cod)
);

CREATE TABLE escritorLivros (
    fk_usuario_cod INT,
    fk_livros_cod INT,
    PRIMARY KEY (fk_usuario_cod, fk_livros_cod),
    FOREIGN KEY (fk_usuario_cod) REFERENCES usuario(cod),
    FOREIGN KEY (fk_livros_cod) REFERENCES livros(cod)
);



