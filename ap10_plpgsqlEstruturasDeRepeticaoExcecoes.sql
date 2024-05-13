---Função para geração de valores aleatorios;
--CREATE OR REPLACE FUNCTION valor_aleatorio_entre (lim_inferior INT, lim_superior INT) RETURNS INT AS

--$$
--BEGIN 
--    RETURN FLOOR(RANDOM() * (lim_superior - lim_inferior + 1) + lim_inferior)::INT;
--END;
--$$ LANGUAGE plpgsql;

---Testando função;
--SELECT valor_aleatorio_entre(2,10); ---Função realizada com sucesso!

---Exemplo de LOOP;
--Observe como NÃO é condição de continuidade
-- Estamos diante de um LOOP infinito
--DO
--$$
--BEGIN
--    LOOP
--        RAISE NOTICE 'Teste LOOP simples...';
--    END LOOP;
--END;
--$$ --Eu meio que fiquei esperando a operação ser finalizada, haha. Me esqueci que era infinito.
