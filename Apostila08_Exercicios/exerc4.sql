-- 1.4 Faça um programa que gere três valores reais a, b, e c e mostre o valor de delta: aquele
--que calculamos para chegar às potenciais raízes de uma equação do segundo grau.
DO $$
DECLARE
    a NUMERIC := RANDOM() * 49 + 1; 
    b NUMERIC := RANDOM() * 49 + 1;
    c NUMERIC := RANDOM() * 49 + 1;
    d NUMERIC;
BEGIN
    d := b * b - 4 * a * c;
    RAISE NOTICE 'Valor de a: %', a;
    RAISE NOTICE 'Valor de b: %', b;
    RAISE NOTICE 'Valor de c: %', c;
    RAISE NOTICE 'Valor de delta: %', d;
END;
$$;