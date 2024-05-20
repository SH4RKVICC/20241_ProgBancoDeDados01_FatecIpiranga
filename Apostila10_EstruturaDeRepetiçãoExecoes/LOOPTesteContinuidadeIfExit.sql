---LOOP: Teste de continuidade com IF/EXIT;
--Controlamos o núm. de repetições com um contador, seu encerramento é realizado combinando IF e EXIT!

--Contando de 1 a 10!
--Saída com IF/EXIT
DO
$$
DECLARE
   contador INT := 1;
BEGIN
   LOOP
       RAISE NOTICE '%', contador;
       contador := contador +1;
       IF contador > 10 THEN
           EXIT;
       END IF;
   END LOOP;
END;
$$