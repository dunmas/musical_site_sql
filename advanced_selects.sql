-- Изменяю названия столбцов, ранее заданные неверно
ALTER TABLE genres RENAME COLUMN name TO g_name;
ALTER TABLE albums RENAME COLUMN name TO a_name;
ALTER TABLE tracks RENAME COLUMN name TO t_name;
ALTER TABLE compilations RENAME COLUMN name TO c_name;

SELECT g_name, COUNT(performer_id) FROM genres g
JOIN genre_performer gp ON g.genre_id = gp.genre_id
GROUP BY g_name
ORDER BY g_name DESC;

SELECT COUNT(track_id) FROM albums a 
JOIN tracks t ON a.album_id = t.album_id 
WHERE cr_year BETWEEN 2019 AND 2020;

SELECT a_name, MAKE_INTERVAL(secs => AVG(duration)) FROM albums a 
JOIN tracks t ON a.album_id = t.album_id 
GROUP BY a_name
ORDER BY make_interval DESC;

-- Изменим год двух альбомов для проверки следующего задания
UPDATE albums 
SET cr_year = 2020
WHERE a_name = 'abc';

UPDATE albums 
SET cr_year = 2020
WHERE a_name = 'show';

SELECT alias FROM performers p 
JOIN performer_album pa ON p.performer_id = pa.performer_id 
JOIN albums a ON pa.album_id = a.album_id 
GROUP BY alias
HAVING COUNT(CASE WHEN cr_year = 2020 THEN a.album_id END) = 0
ORDER BY alias;

SELECT c_name FROM compilations c 
JOIN track_compilation tc ON c.compilation_id = tc.compilation_id 
JOIN tracks t ON tc.track_id = t.track_id 
JOIN albums a ON t.album_id = a.album_id 
JOIN performer_album pa ON a.album_id = pa.album_id 
JOIN performers p ON pa.performer_id  = p.performer_id 
WHERE p.alias = 'K-DOT'
GROUP BY c_name;

SELECT a_name FROM albums a 
JOIN performer_album pa ON a.album_id = pa.album_id 
JOIN performers p ON p.performer_id = pa.performer_id 
JOIN genre_performer gp ON gp.performer_id = p.performer_id 
JOIN genres g ON g.genre_id = gp.genre_id 
GROUP BY a_name
HAVING COUNT(g_name) > 1;

-- Добавим трек без сборника для следующего задания
INSERT INTO tracks(t_name, duration, album_id)
VALUES('without', 15, 4)

SELECT t_name FROM tracks t 
FULL OUTER JOIN track_compilation tc ON t.track_id = tc.track_id 
WHERE t.track_id IS NULL OR tc.track_id IS NULL

SELECT alias FROM performers p 
JOIN performer_album pa ON p.performer_id  = pa.performer_id  
JOIN albums a ON pa.album_id = a.album_id 
JOIN tracks t ON t.album_id = a.album_id 
GROUP BY alias, duration 
HAVING duration = (SELECT MIN(duration) FROM tracks)

SELECT a_name FROM albums a 
JOIN tracks t ON a.album_id = t.album_id 
WHERE a.album_id IN (
	SELECT album_id FROM tracks
	GROUP BY album_id
	HAVING COUNT(album_id)= (
		SELECT COUNT(album_id)
		FROM tracks 
		GROUP BY album_id 
		ORDER BY COUNT
		LIMIT 1
	)
)
