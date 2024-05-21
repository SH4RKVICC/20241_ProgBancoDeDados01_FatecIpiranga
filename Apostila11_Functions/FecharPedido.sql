-- Remover a procedure anterior, se existir
DROP PROCEDURE IF EXISTS sp_fechar_pedido;

-- Criar o novo procedimento armazenado
CREATE OR REPLACE PROCEDURE sp_fechar_pedido (
    IN valor_a_pagar INT,
    IN cod_pedido INT
) LANGUAGE plpgsql AS $$
DECLARE
    valor_total INT;
BEGIN
    --vamos verificar se o valor_a_pagar é suficiente
    CALL sp_calcular_valor_de_um_pedido(cod_pedido, valor_total);

    IF valor_a_pagar < valor_total THEN
        RAISE 'R$% insuficiente para pagar a conta de R$%', valor_a_pagar, valor_total;
    ELSE
        UPDATE tb_pedido SET
            data_modificacao = CURRENT_TIMESTAMP,
            status = 'fechado'
        WHERE cod_pedido = $2;
    END IF;
END;
$$;

-- Chamar o procedimento armazenado
CALL sp_fechar_pedido(200, 1);

-- Verificar o estado atual da tabela tb_pedido
SELECT * FROM tb_pedido;
