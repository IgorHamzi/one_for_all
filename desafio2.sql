SELECT 
	COUNT(distinct songs.song_id) AS cancoes,
    COUNT(distinct artists.artist_id) AS artistas,
    COUNT(distinct albums.album_id) AS albuns
FROM 
	SpotifyClone.songs
JOIN 
	SpotifyClone.albums ON SpotifyClone.albums.album_id = SpotifyClone.songs.album_id
JOIN 
	SpotifyClone.artists ON SpotifyClone.artists.artist_id = SpotifyClone.albums.artist_id
