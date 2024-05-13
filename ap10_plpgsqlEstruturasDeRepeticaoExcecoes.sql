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

---LOOP: Teste de Continuidade com EXIT/WHEN;
--A condição será expressa combinando EXIT/WHEN

--Contando de 1 a 10
--Saída com EXIT/WHEN
--DO
--$$
--DECLARE
--    contador INT := 1;
--BEGIN
--    LOOP
--        RAISE NOTICE '%', contador;
--        contador := contador + 1;
--        EXIT WHEN contador > 10;
--        END LOOP;
--END;
--$$

---LOOP: Ignorando iterações com CONTINUE;
--Ignorando iterações especificadas

--DO
--$$
--DECLARE
--	contador INT := 0;
--BEGIN
--    LOOP
--		contador := contador + 1;
--		EXIT WHEN contador > 100;
--		-- Ignorando iteração da vez quando contador for múltiplo de 7 c/IF/CONTINUE
--		IF contador % 7 = 0 THEN
--			CONTINUE;
--		END IF;
--		--ignorando iteração da vez quando contador for múltiplo de 11 c/CONTINUE WHEN
--    	CONTINUE WHEN contador % 11 = 0;
--		RAISE NOTICE '%', contador;
--	END LOOP;
--END;
--$$

----LOOP com rótulo associado.
--Pode ser usado pelas construção EXIT/CONTINUE quando:
--1. há um único LOOP, elas se referem a ele e o uso de rótulos é opcional
--2. Quando há um LOOP aninhado, as construções EXIT e CONTINUE se referem ao mais interno por padrão
--Podemos alterar esse funcionamento usando um rótulo