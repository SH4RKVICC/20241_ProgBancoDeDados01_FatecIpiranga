-- 1.5 Faça um programa que gere um número inteiro e mostre a raiz cúbica de seu antecessor
--e a raiz quadrada de seu sucesso
DO $$
DECLARE
    n INTEGER := FLOOR(RANDOM() * 100) + 1;
    a INTEGER := n - 1;
    s INTEGER := n + 1;
    rc NUMERIC;
    rq NUMERIC;
BEGIN
    rc := POWER(a, 1.0/3.0);
    rq := SQRT(s);
    RAISE NOTICE 'Número gerado: %', n;
    RAISE NOTICE 'Raiz cúbica do antecessor (%): %', a, rc;
    RAISE NOTICE 'Raiz quadrada do sucessor (%): %', s, rq;
END;
$$;