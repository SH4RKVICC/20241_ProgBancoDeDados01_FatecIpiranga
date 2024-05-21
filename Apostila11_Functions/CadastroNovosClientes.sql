-- "DROPANDO" sp_cadastrar_cliente
DROP PROCEDURE sp_cadastrar_cliente
-- Cadastro de cliente;
-- Se um parâmetro com valor DEFAULT é especificado, aqueles que aparecem depois dele
-- também deve ter valor DEFAULT;
CREATE OR REPLACE PROCEDURE sp_cadastrar_cliente (
	IN nome VARCHAR(200), 
	IN codigo INT DEFAULT NULL
) LANGUAGE plpgsql
AS $$
BEGIN
	IF codigo IS NULL THEN
		INSERT INTO tb_cliente (nome)
		VALUES (nome);
	ELSE
		INSERT INTO tb_cliente (codigo, nome) VALUES (codigo, nome);
	END IF;
END;
$$

-- Realizando cadastros;
CALL sp_cadastrar_cliente ('João da Silva');
CALL sp_cadastrar_cliente ('Maria Santos');

-- Mostrando Resultados;
SELECT * FROM tb_cliente;