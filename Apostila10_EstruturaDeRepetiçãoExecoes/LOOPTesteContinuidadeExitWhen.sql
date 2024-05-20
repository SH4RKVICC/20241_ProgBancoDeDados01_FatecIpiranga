---LOOP: Teste de Continuidade com EXIT/WHEN;
--A condição será expressa combinando EXIT/WHEN

--Contando de 1 a 10
--Saída com EXIT/WHEN
DO
$$
DECLARE
   contador INT := 1;
BEGIN
   LOOP
       RAISE NOTICE '%', contador;
       contador := contador + 1;
       EXIT WHEN contador > 10;
       END LOOP;
END;
$$
