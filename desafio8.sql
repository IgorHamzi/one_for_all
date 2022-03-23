SELECT 
	artists.name AS artista,
    albums.name AS album
FROM 
	SpotifyClone.albums AS albums
JOIN 
	SpotifyClone.artists AS artists ON artists.artist_id = albums.artist_id
WHERE 
	artists.name = 'Walter Phoenix'
GROUP BY 
	albums.name 
ORDER BY 
	albums.name ASC
