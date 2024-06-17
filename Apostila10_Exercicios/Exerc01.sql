--- Faça um programa que mostre os números pares entre 1 e 100, inclusive.

DO
$$
DECLARE
    num INT := 0;
BEGIN
    WHILE num < 101 LOOP
        RAISE NOTICE '%', num;
        num := num + 2;
    END LOOP;
END;
$$