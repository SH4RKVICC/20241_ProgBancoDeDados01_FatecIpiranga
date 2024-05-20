DO $$
DECLARE 
   cod INTEGER := 1;
   nome_completo VARCHAR(200) := 'Maria Joaquina';
-3 digitos no total, dois para valores decimais
   salario NUMERIC (13,2) := 20.5;
BEGIN
 RAISE NOTICE 'Meu código é %, me chamo % e meu salario é R$ %', cod, nome_completo, salario;
END; $$