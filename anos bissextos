CREATE OR REPLACE FUNCTION bissextos(ano_inicio INTEGER, ano_fim INTEGER) RETURNS SETOF INTEGER AS
$$
DECLARE
 ano INTEGER;
BEGIN
	ano := ano_inicio - 1;
	LOOP EXIT WHEN ano = ano_fim + 1;
		ano = ano + 1;
		IF bissexto(ano) THEN
			RETURN NEXT ano;
		END IF;
	END LOOP;
	RETURN;
END;
$$ LANGUAGE plpgsql;
