--- 1.3 Faça um programa que opera de acordo com o seguinte menu. Opções:
--1 - Soma
--2 - Subtração
--3 - Multiplicação
--4 - Divisão

--Cada operação envolve dois números inteiros. O resultado deve ser exibido no formato
--op1 op op2 = res
--Exemplo:
--2 + 3 = 5

DO $$
DECLARE
	n1 INT := valor_aleatorio_entre(1,80);
	n2 INT := valor_aleatorio_entre(1,80);
	op INT := valor_aleatorio_entre(1,4);
	mensagem VARCHAR(100);
	s VARCHAR(1);
	r NUMERIC;
BEGIN
	CASE
		WHEN op = 1 THEN
			r := n1 + n2;
			s := '+';
			mensagem := 'Operação de soma realizada com sucesso!';
		WHEN op = 2 THEN
			r := n1 - n2;
			s := '-';
			mensagem := 'Operação de subtração realizada com sucesso!';
		WHEN op = 3 THEN
			r := n1 * n2;
			s := 'x';
			mensagem := 'Operação de multiplicação realizada com sucesso!';
		ELSE
			r := n1 / n2;
			s := '÷';
			mensagem := 'Operação de divisão realizada com sucesso!';
	END CASE;
	RAISE NOTICE 'Calculo: % % % = %. %', n1, s, n2, r, mensagem;
END;
$$