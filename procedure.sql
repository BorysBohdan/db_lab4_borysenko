CREATE OR REPLACE PROCEDURE lose_after_first_pick(t_n text)
LANGUAGE 'plpgsql'
AS $$
DECLARE lose_count  team2.win_games%TYPE;
BEGIN
		SELECT win_games-first_picks INTO lose_count
		FROM team WHERE team.team_name = t_n;
    RAISE INFO 'Team: %,  Lost matches after first pick: %', t_n, lose_count;
END;
$$;
