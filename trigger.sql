CREATE OR REPLACE FUNCTION match_id_insert() RETURNS trigger AS
$$
	DECLARE
        count_ integer;
	BEGIN
		SELECT COUNT(*) INTO count_ FROM match_csgo;
		UPDATE Match_csgo
		SET match_id = count_
		WHERE Match_csgo.match_id IS NULL OR Match_csgo.match_id = NEW.match_id;
		RETURN NULL;
	END;
$$ LANGUAGE 'plpgsql';


CREATE TRIGGER auto_match_id_insert
AFTER INSERT ON match_csgo
FOR EACH ROW
EXECUTE FUNCTION match_id_insert();
