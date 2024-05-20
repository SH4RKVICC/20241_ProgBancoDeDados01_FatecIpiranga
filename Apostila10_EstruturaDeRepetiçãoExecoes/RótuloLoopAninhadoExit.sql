----LOOP com rótulo associado.
--Pode ser usado pelas construção EXIT/CONTINUE quando:
--1. há um único LOOP, elas se referem a ele e o uso de rótulos é opcional
--2. Quando há um LOOP aninhado, as construções EXIT e CONTINUE se referem ao mais interno por padrão
--Podemos alterar esse funcionamento usando um rótulo

DO
$$
DECLARE
	i INT;
	j INT;
BEGIN
	i := 0;
	<<externo>>
	LOOP
		i := i + 1;
		EXIT WHEN i > 10;
		j := 1;
		<<interno>>
		LOOP
			RAISE NOTICE '% %', i, j;
			j := j + 1;
			EXIT WHEN j > 10;
			-- j vai contar até 5, o loop externo vai ser interrompido e o programa acaba
			EXIT externo WHEN j > 5;
		END LOOP;
	END LOOP;
END;
$$