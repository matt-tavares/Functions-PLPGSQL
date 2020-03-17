CREATE OR REPLACE FUNCTION bissexto (ano INTEGER) RETURNS BOOLEAN AS
$$
BEGIN
	IF ano % 400 = 0 THEN
		RETURN true;
		ELSE
		IF ano % 4 = 0 AND ano % 100 != 0 THEN
			RETURN true;
		ELSE
			RETURN false;
		END IF;
	END IF;
END;
$$ LANGUAGE plpgsql;
