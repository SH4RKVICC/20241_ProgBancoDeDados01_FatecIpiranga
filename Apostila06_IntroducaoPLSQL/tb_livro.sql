-- criando tabela livro;
CREATE TABLE tb_livro (
    cod_livro SERIAL PRIMARY KEY
,   titulo VARCHAR(200)
,   autor VARCHAR(200)
);

-- inserindo nova linha na tabela;
INSERT INTO tb_livro (titulo, autor)
VALUES ('Concrete Mathematics', 'Donald Knuth');

-- inserindo dois valores na tabela;
INSERT INTO tb_livro (titulo, autor)
VALUES ('Batmna: A Piada Mortal.', 'Alan Moore & Brian Bolland'),
('Lendas do Universo DC: Coringa.', 'Iry Novick'),
('Superman: Entre a Foice e o Martelo.', 'Mark Millar');

-- mostrando tabela e seus valores;
SELECT * FROM tb_livro;

