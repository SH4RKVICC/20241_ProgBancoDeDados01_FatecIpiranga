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

---LOOP: Teste de continuidade com IF/EXIT;
--Controlamos o núm. de repetições com um contador, seu encerramento é realizado combinando IF e EXIT!

--Contando de 1 a 10!
--Saída com IF/EXIT
--DO
--$$
--DECLARE
--    contador INT := 1;
--BEGIN
--    LOOP
--        RAISE NOTICE '%', contador;
--        contador := contador +1;
--        IF contador > 10 THEN
--            EXIT;
--        END IF;
--    END LOOP;
--END;
--$$