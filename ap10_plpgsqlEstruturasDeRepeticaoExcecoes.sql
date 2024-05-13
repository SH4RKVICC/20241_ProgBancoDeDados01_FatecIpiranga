---Função para geração de valores aleatorios;
--CREATE OR REPLACE FUNCTION valor_aleatorio_entre (lim_inferior INT, lim_superior INT) RETURNS INT AS

--$$
--BEGIN 
--    RETURN FLOOR(RANDOM() * (lim_superior - lim_inferior + 1) + lim_inferior)::INT;
--END;
--$$ LANGUAGE plpgsql;

---Testando função;
--SELECT valor_aleatorio_entre(2,10); ---Função realizada com sucesso!