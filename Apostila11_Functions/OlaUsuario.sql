CREATE OR REPLACE PROCEDURE sp_ola_usuario(nome VARCHAR (200))
LANGUAGE plpgsql
AS $$
BEGIN
	-- acessando parâmetro pelo nome
	RAISE NOTICE 'Olá, %!', $1;
END;
$$

-- Colocando em Execução
CALL sp_ola_usuario('Pedro');