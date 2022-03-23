SELECT 
	user.name AS usuario,
    COUNT(reproductions.reproduction_date) AS qtde_musicas_ouvidas,
    ROUND((SUM(songs.duration)/60),2) AS total_minutos
FROM 
	SpotifyClone.user AS user
JOIN 
	SpotifyClone.reproductions AS reproductions ON reproductions.user_id = user.user_id
JOIN 
	SpotifyClone.songs songs ON songs.song_id = reproductions.song_id
GROUP BY 
	user.name
ORDER BY 
	user.name ASC
