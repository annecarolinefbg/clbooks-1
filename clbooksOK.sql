create database clbooks;
use clbooks;

CREATE TABLE livros (
    cod INT,
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
    fk_usuario_cod INT,
    fk_postagem_cod INT,
    FOREIGN KEY (fk_usuario_cod)
        REFERENCES usuario (cod),
    FOREIGN KEY (fk_postagem_cod)
        REFERENCES postagem (cod),
    PRIMARY KEY (fk_usuario_cod , fk_postagem_cod),
    foto VARCHAR(50)
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
    fk_postagem_cod INT,
    FOREIGN KEY (fk_usuario_cod)
        REFERENCES usuario (cod),
    FOREIGN KEY (fk_postagem_cod)
        REFERENCES postagem (cod),
    PRIMARY KEY (fk_usuario_cod , fk_postagem_cod)
);

CREATE TABLE notificacao (
    fk_usuario_cod INT,
    fk_postagem_cod INT,
    cod_notificacao VARCHAR(100),
    FOREIGN KEY (fk_usuario_cod)
        REFERENCES usuario (cod),
    interacao VARCHAR(50),
    PRIMARY KEY (cod_notificacao)
);

CREATE TABLE FormasDePagamento (
    cod INT,
    nome_pag VARCHAR(50),
    PRIMARY KEY (cod)
);

CREATE TABLE usuarioVendas (
    valor INT,
    nome VARCHAR(100),
    quantidade INT,
    fk_FormasDePagamento_cod INT,
    fk_usuarioVend_cod INT,
    fk_usuarioComp_cod INT,
    fk_livros_cod INT,
    FOREIGN KEY (fk_FormasDePagamento_cod)
        REFERENCES FormasDePagamento (cod),
    FOREIGN KEY (fk_usuarioVend_cod)
        REFERENCES usuario (cod),
    FOREIGN KEY (fk_usuarioComp_cod)
        REFERENCES usuario (cod),
    FOREIGN KEY (fk_livros_cod)
        REFERENCES livros (cod),
    PRIMARY KEY (fk_FormasDePagamento_cod , fk_usuarioVend_cod , fk_usuarioComp_cod , fk_livros_cod)
);

CREATE TABLE plano (
    valor INT,
    tipoAssinatura VARCHAR(20),
    cod VARCHAR(100) PRIMARY KEY
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




