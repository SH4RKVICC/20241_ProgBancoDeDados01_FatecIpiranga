-- 1.1 Adicione uma tabela de log ao sistema do restaurante. Ajuste cada procedimento para que ele registre;
-- a data em que a operação aconteceu;
-- o nome do procedimento executado.

-- Criando Tabela LOg;

CREATE TABLE tb_log (
	cod_log SERIAL PRIMARY KEY,	
	data_operacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	nome_procedimento VARCHAR(200),
	descricao VARCHAR(250)
);

CREATE OR REPLACE PROCEDURE sp_calcula_media (VARIADIC valores INT[])
LANGUAGE plpgsql
AS $$
DECLARE
	media NUMERIC (10,2) := 0;
	valor INT;
BEGIN
	FOREACH valor IN ARRAY valores LOOP
		media := media + valor;
	END LOOP;

	RAISE NOTICE 'MEDIA: %', media / array_lenght(valores, 1);
	INSERT INTO tb_log (nome_procedimento, descricao)
	VALUES ('sp_calcula_media', 'Calculou a media de ' || array_lenght(valores, 1));
END;
$$