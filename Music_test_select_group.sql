SELECT title_name, COUNT(artist_id) artist_count FROM genre g  
LEFT JOIN genre_artist ga ON g.genre_id = ga.genre_id
GROUP BY g.title_name
ORDER BY artist_count DESC;

SELECT compilation_name, COUNT(tracks_id) tracks_count FROM compilation c 
LEFT JOIN tracks_compilation tc ON c.compilation_id = tc.compilation_id 
WHERE (SELECT EXTRACT(YEAR FROM compilation_year)) BETWEEN '2019' AND '2020'
GROUP BY c.compilation_name
ORDER BY tracks_count DESC;

SELECT compilation_name, AVG(track_duraction) tracks_middle FROM compilation c 
JOIN tracks_compilation tc ON c.compilation_id = tc.compilation_id 
JOIN tracks t ON tc.tracks_id = t.track_id 
GROUP BY c.compilation_name
ORDER BY tracks_middle DESC;

SELECT artist_name, album_year FROM artist a  
JOIN artist_album aa  ON a.artist_id = aa.artist_id 
JOIN album a2 ON aa.album_id = a2.album_id
WHERE artist_name != (
	SELECT artist_name FROM artist a  
	JOIN artist_album aa  ON a.artist_id = aa.artist_id 
	JOIN album a2 ON aa.album_id = a2.album_id
	WHERE (SELECT EXTRACT(YEAR FROM album_year)) = '2020');

SELECT DISTINCT compilation_name FROM compilation c
JOIN tracks_compilation tc ON c.compilation_id = tc.compilation_id
JOIN tracks t ON tc.tracks_id = t.track_id
JOIN artist_album aa ON t.album_id = aa.album_id 
JOIN artist a ON aa.artist_id = a.artist_id
WHERE a.artist_name = 'The Weeknd';

SELECT album_name, COUNT(ga.artist_id) FROM album a
JOIN artist_album aa ON a.album_id = aa.album_id
JOIN artist a2 ON aa.artist_id = a2.artist_id
JOIN genre_artist ga ON a2.artist_id = ga.artist_id 
GROUP BY a.album_name
HAVING COUNT(ga.artist_id) > 1
ORDER BY COUNT(ga.artist_id) DESC;

SELECT track_name FROM tracks t
LEFT JOIN tracks_compilation tc ON t.track_id = tc.tracks_id
WHERE tc.compilation_id IS NULL;

SELECT artist_name FROM artist a
LEFT JOIN artist_album aa ON a.artist_id = aa.artist_id 
LEFT JOIN tracks t ON aa.album_id = t.album_id
WHERE t.track_duraction = (SELECT MIN(track_duraction) FROM tracks);

SELECT album_name album, COUNT(track_name) track_count FROM album a 
LEFT JOIN tracks t  ON a.album_id = t.album_id
GROUP BY album_name
HAVING COUNT(track_name) = 
	(
		SELECT COUNT(track_name) FROM album a2
		LEFT JOIN tracks t2  ON a2.album_id = t2.album_id 
		GROUP BY album_name
		ORDER BY COUNT(track_name)
		LIMIT 1
	);


