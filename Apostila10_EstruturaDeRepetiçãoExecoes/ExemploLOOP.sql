---Exemplo de LOOP;
--Observe como NÃO é condição de continuidade...
-- Estamos diante de um LOOP infinito!
DO
$$
BEGIN
   LOOP
       RAISE NOTICE 'Teste LOOP simples...';
   END LOOP;
END;
$$
-- Eu meio que fiquei esperando a operação ser finalizada, haha!
-- Me esqueci que era infinito.
