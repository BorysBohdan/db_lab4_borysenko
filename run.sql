-- Виклик фунції, що виводить кількість зіграних матчів конкретного гравця
SELECT matches_count('REDSTAR');
SELECT matches_count('Aleksib');

-- Виклик процидури яка дає змогу дізнатися скільки команда
-- програла матчів після того як вибирала першу карту у цих матчах
CALL lose_after_first_pick('Fiend');
CALL lose_after_first_pick('K23');


-- Виклик трігера, який у першому випадку змінить match_id на 7, а у другомоу на 8
INSERT INTO match_csgo VALUES  (4000, 'Fiend', 'K23',TO_DATE('2021-06-02', 'yyyy-mm-dd'),0,2,'Overpass','Inferno','Dust2');
INSERT INTO match_csgo VALUES  (4000, 'Fiend', 'K23',TO_DATE('2021-07-02', 'yyyy-mm-dd'),2,0,'Overpass','Inferno','Dust2')



