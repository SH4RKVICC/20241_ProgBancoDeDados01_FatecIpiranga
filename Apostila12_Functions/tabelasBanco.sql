CREATE TABLE tb_cliente(
	cod_cliente SERIAL PRIMARY KEY,
	nome VARCHAR(200) NOT NULL
);

INSERT INTO tb_cliente (nome) VALUES ('João Santos'), ('Maria Andrade');
SELECT * FROM tb_cliente;

CREATE TABLE tb_tipo_conta(
	cod_tipo_conta SERIAL PRIMARY KEY,
	descricao VARCHAR(200) NOT NULL
);

INSERT INTO tb_tipo_conta (descricao) VALUES ('Conta Corrente'), ('Conta Poupança');

SELECT * FROM tb_tipo_conta;

CREATE TABLE tb_conta (
	cod_conta SERIAL PRIMARY KEY,
	status VARCHAR(200) NOT NULL DEFAULT 'aberta',
	data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	data_ultima_transacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	saldo NUMERIC(10, 2) NOT NULL DEFAULT 1000 CHECK (saldo >= 1000),
	cod_cliente INT NOT NULL,
	cod_tipo_conta INT NOT NULL,
	CONSTRAINT fk_cliente FOREIGN KEY (cod_cliente) REFERENCES
	tb_cliente(cod_cliente),
	CONSTRAINT fk_tipo_conta FOREIGN KEY (cod_tipo_conta) REFERENCES
	tb_tipo_conta(cod_tipo_conta)
);

SELECT * FROM tb_conta;