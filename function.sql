-- Функція, що визначає кількість проданих одиниць товару за його назвою.

CREATE OR REPLACE FUNCTION matches_count(playname text) RETURNS int AS
$$
    DECLARE
        count_of_games integer;
    BEGIN
        SELECT COUNT(*) INTO count_of_games
        FROM Player WHERE Player.player_name = playname;
        RETURN count_of_games;
    END;
$$ LANGUAGE 'plpgsql';