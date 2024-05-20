-- criando tabela usuario.;
CREATE TABLE tb_usuario(
    cod_usuario SERIAL PRIMARY KEY
,   loginuser VARCHAR(200) NOT NULL
,   senha VARCHAR(200) NOT NULL
);

-- inserindo dois usuarios
INSERT INTO tb_usuario (loginuser, senha)
VALUES ('admin', 'admin');

INSERT INTO tb_usuario (loginuser, senha)
VALUES ('vic', '123456');

-- buscando dados armazenados na tabela.
SELECT * FROM tb_usuario;
