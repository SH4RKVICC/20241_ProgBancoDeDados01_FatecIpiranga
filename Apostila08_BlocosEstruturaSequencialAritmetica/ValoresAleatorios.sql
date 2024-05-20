DO $$
DECLARE
 n1 NUMERIC (5,2);
 n2 INTEGER;
 limite_inferior INTEGER := 5;
 limite_superior integer :=17;
BEGIN
    0 < n1 < 1 (real)
 n1 := random();
 RAISE NOTICE '%', n1;
 -- 1 <= n1 < 10 (real)
 n1 := random() * 10 + 1;
 RAISE NOTICE '%', n1;
    1 < = n2 < 10 (:: faz type cast) (floor arredonda para baixo)
 n2 := floor(random()* 10 + 1):: int;
 RAISE NOTICE '%', n2;
    limite_inferior <= n2 <=limite_superior
 n2 := floor(random() * (limite_superior - limite_inferior + 1) + limite_inferior)::int;
 RAISE NOTICE '%', n2;
END$$;