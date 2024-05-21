CREATE OR REPLACE PROCEDURE sp_obter_notas_para_compor_o_troco (
	OUT resultado VARCHAR(500)
,	IN troco INT
)LANGUAGE plpgsql AS $$
DECLARE
	v_nota200 INT := 0;
	v_nota100 INT := 0;
	v_nota50 INT := 0;
	v_nota20 INT := 0;
	v_nota10 INT := 0;
	v_nota5 INT := 0;
	v_nota2 INT := 0;
BEGIN
	v_notas200 := p_troco % 200;
	v_notas100 := p_troco % 200 / 100;
	v_notas50 := p_troco % 200 % 100 / 50;
	v_notas20 := p_troco % 200 % 100 % 50 / 20;
	v_notas10 := p_troco % 200 % 100 % 50 % 20 / 10;
	v_notas5 := p_troco % 200 % 100 % 50  % 20 % 10 / 5;
	v_notas2 := p_troco % 200 % 100 % 50  % 20 % 10 % 5 / 2;
	v_moedas1 := p_troco % 200 % 100 % 50  % 20 % 10 % 5 % 2 / 1;
END;
$$