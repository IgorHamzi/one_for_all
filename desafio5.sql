SELECT 
	songs.name AS cancao,
    COUNT(DISTINCT reproductions.user_id) AS reproducoes
FROM 	
	SpotifyClone.songs AS songs
JOIN 
	SpotifyClone.reproductions AS reproductions ON reproductions.song_id = songs.songs_id
GROUP BY 
	songs.name 
ORDER BY 
	reproducoes DESC, songs.name ASC
LIMIT
	2
