CREATE OR REPLACE FUNCTION cpf(cpf VARCHAR(11)) RETURNS BOOLEAN AS
$$
DECLARE
	i INTEGER;
	aux INTEGER;
	soma INTEGER;
	resto1 INTEGER;
	resto2 INTEGER;
BEGIN

	IF char_length(cpf) != 11 or cpf = '11111111111' or cpf = '22222222222'
	or cpf = '33333333333' or cpf = '44444444444' or cpf = '55555555555'
	or cpf = '66666666666' or cpf = '77777777777' or cpf = '88888888888'
	or cpf = '99999999999' or cpf = '00000000000' THEN
		RETURN false;
	END IF;

	i := 1;
	aux := 10;
	soma := 0;
	LOOP
		soma := soma + (aux * CAST(SUBSTRING(cpf FROM i FOR 1) AS INTEGER));
		i := i + 1;
		aux := aux - 1;
		EXIT WHEN i = 10;
	END LOOP;
	resto1 := (soma * 10) % 11;
	IF resto1 = 10 THEN
		resto1 := 0;
	ELSE
		resto1 := resto1;
	END IF;
	
	i := 1;
	aux := 11;
	soma := 0;
	LOOP
		soma := soma + (aux * CAST(SUBSTRING(cpf FROM i FOR 1) AS INTEGER));
		i := i + 1;
		aux := aux - 1;
		EXIT WHEN i = 11;
	END LOOP;
	resto2 := (soma * 10) % 11;
	
	IF (resto1 = CAST(SUBSTRING(cpf FROM 10 FOR 1) AS INTEGER)) AND (resto2 = CAST(SUBSTRING(cpf FROM 11 FOR 1) AS INTEGER)) THEN
		RETURN true;
	ELSE
		RETURN false;
	END IF;
END;
$$ LANGUAGE plpgsql;
