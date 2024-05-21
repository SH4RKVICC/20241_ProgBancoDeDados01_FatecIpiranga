DROP PROCEDURE sp_criar_pedido(integer)
-- Criar um pedido como se o cliente entrasse no restaurante e pegasse a comanda;
CREATE OR REPLACE PROCEDURE sp_criar_pedido (OUT cod_pedido INT, cod_cliente INT
) LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO tb_pedido (cod_cliente) VALUES (cod_cliente);
	-- Obtém o último valor gerado por SERIAL
	SELECT LASTVAL() INTO cod_pedido;
END;
$$

DO $$
DECLARE
	--Para guardar o código de pedido gerado
	cod_pedido INT;
	-- O código do cliente que vai fazer o pedido
	cod_cliente INT;
BEGIN
	-- Pega o código da pessoa cujo nome é "João da Silva"
	SELECT c.cod_cliente FROM tb_cliente c WHERE nome LIKE 'João da Silva' INTO cod_cliente;
	-- Cria o pedido
	CALL sp_criar_pedido (cod_pedido, cod_cliente);
	RAISE NOTICE 'Código do pedido recém criado: %', cod_pedido;
END;
$$