-- Dado valor no formato ddmmaaaa, verificar se ele representa uma data válida;
DO $$
DECLARE
	--testar
	--22/10/2022: valida
	--29/02/2020: 2020 é bissexto, válida
	--29/02/2021: inválida
	--28/02/2021: válida
	--31/06/2021: inválida
	
	data INT := 06022004;
	dia INT;
	mes INT;
	ano INT;
	data_valida BOOL := TRUE;
BEGIN
	dia := data / 1000000;
	mes := data % 1000000 / 10000;
	ano := data % 10000;
	RAISE NOTICE 'A data é %/%/%', dia, mes, ano;
	RAISE NOTICE 'Vejamos se é ela é válida...';
	IF ano >= 1 THEN
		CASE
			WHEN mes > 12 OR mes < 1 OR dia < 1 OR dia > 31 THEN
				data_valida := FALSE;
			ELSE
				--abril, junho, setembro e novembro não podem ter mais de 30 dias
				IF ((mes = 4 OR mes = 6 OR mes = 9 OR mes = 11) AND dia > 30) THEN
					data_valida := FALSE;
				ELSE
					--fevereiro
					IF mes = 2 THEN
						CASE
							--se o ano for bissexto
							WHEN ((ano % 4 = 0 AND ano % 100 <> 0) OR ANO % 400 = 0) THEN
								IF dia > 29 THEN data_valida := FALSE;
								END IF;
					ELSE
							IF dia > 28 THEN data_valida := FALSE;
							END IF;
					END CASE;
				END IF;
			END IF;
		END CASE;
	ELSE
		data_valida := FALSE;
	END IF;
	CASE
		WHEN data_valida THEN
			RAISE NOTICE 'Data válida';
		ELSE
			RAISE NOTICE 'Data inválida';
	END CASE;
END;
$$