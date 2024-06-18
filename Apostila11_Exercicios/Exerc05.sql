-- 1.5 Adicione um procedimento ao sistema do restaurante. Ele deve receber um parâmetro
-- VARIADIC contendo nomes de pessoas fazer uma inserção na tabela de clientes
-- para cada nome recebido receber um parâmetro de saída que contém o seguinte texto:
-- “Os clientes: Pedro, Ana, João etc foram cadastrados”. Evidentemente, o resultado deve
-- conter os nomes que de fato foram enviados por meio do parâmetro VARIADIC.

CREATE OR REPLACE PROCEDURE sp_insere_cliente (VARIADIC nomes VARCHAR (200) [])
LANGUAGE plpgsql
AS $$
DECLARE
    nome_cliente VARCHAR(200);
    texto_saida TEXT := 'Os clientes: ';
BEGIN
    FOREACH nome_cliente IN ARRAY nomes LOOP
        INSERT INTO tb_cliente (nome) VALUES (nome_cliente);

        texto_saida := texto_saida || nome_cliente || ', ';
    END LOOP;

    texto_saida := RTRIM(texto_saida, ', ');

    RAISE NOTICE '% foram cadastrados', texto_saida;
END;
$$;

CALL sp_insere_cliente('Pedro Paulo', 'Ana Caetano', 'João Teixeira');

SELECT * FROM tb_cliente;
