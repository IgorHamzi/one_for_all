SELECT 
	artists.name AS artista,
    albums.name AS album,
    COUNT(follow.follow_id) AS seguidores
FROM 
	SpotifyClone.albums AS albums
JOIN 
	SpotifyClone.artists AS artists ON artists.artist_id = albums.artist_id
JOIN 
	SpotifyClone.follow AS follow ON follow.artist_id = albums.artist_id
GROUP BY 
	artists.name, albums.name
ORDER BY 
	seguidores DESC, artists.name ASC, albums.name ASC
