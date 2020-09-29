CREATE OR REPLACE FUNCTION fatorial(numero INTEGER) RETURNS INTEGER AS
$$
DECLARE
	i INTEGER;
	resultado INTEGER;
BEGIN
	i := 1;
	resultado := 1;
	LOOP EXIT WHEN i = numero + 1;
		resultado = resultado * i;
		i = i +1;
	END LOOP;
	RETURN resultado;
END;
$$ LANGUAGE plpgsql;
