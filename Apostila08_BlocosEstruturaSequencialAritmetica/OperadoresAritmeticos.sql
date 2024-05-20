DO $$
DECLARE
 n1 INTEGER :=5;
 n2 INTEGER :=2;
 n3 NUMERIC (5,2) := 5;
 n4 INTEGER := -5;
BEGIN
    -adicao
 RAISE NOTICE '% + % = %', n1, n2, n1 + n2;
    - + uniario: sem efeito
 RAISE NOTICE '%', || n1;
    - subtracao
 RAISE NOTICE '% - % = %', n1, n2, n1 - n2;
    - multiplicacao
 RAISE NOTICE '% * % = %', n1, n2, n1 * n2;
    - divisao (para inteiros, trunca o resultado em direcao ao zero)
 RAISE NOTICE '% / % = %', n1, n2, n1 / n2;
    - divisao (se envolve um real, a divisao é real)
 RAISE NOTICE '% / % = %', n3, n2, n3 / n2;
        - divisao (formatada)
 RAISE NOTICE '% / % = %', n3, n2, to_char(n3 / n2, '99.99');
    - resto  da divisao
    - usamos %% oara escapar um %
 RAISE NOTICE '% %% % = %', n1, n2, n1 % n2;
    - exponenciacao
 RAISE NOTICE '% ^ % = %', n1, n2, n1 ^ n2;
    - raiz quadrad
 RAISE NOTICE '|/ % = %', n1, n2, |/ n1 = n2;
    - raiz cubica
 RAISE NOTICE '||/ % = %', n1, ||/ n1;
    - valor absoluto
 RAISE NOTICE '@% = % e @% = %', n1, @n1, n4, @n4;
END; $$