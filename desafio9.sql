SELECT 
	COUNT(reproductions.reproduction_date) AS quantidade_musicas_no_historico
FROM 
	SpotifyClone.user AS user
JOIN 
	SpotifyClone.reproductions AS reproductions ON reproductions.user_id = user.user_id
WHERE 
	user.name = 'Bill'
