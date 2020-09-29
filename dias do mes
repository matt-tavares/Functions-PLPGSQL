CREATE OR REPLACE FUNCTION dias_mes(mes INTEGER, ano INTEGER) RETURNS INTEGER AS
$$
BEGIN
	IF mes=1 or mes=3 or mes=5 or mes=7 or mes=8 or mes=10 or mes=12 THEN
		RETURN 31;
	ELSE
		IF mes=4 OR mes=6 OR mes=9 OR mes=11 THEN
			RETURN 29;
		ELSE 
			IF bissexto(ano) THEN
				RETURN 29;
			ELSE
				RETURN 28;
			END IF;
		END IF;
	END IF;
END;
$$ LANGUAGE plpgsql;
