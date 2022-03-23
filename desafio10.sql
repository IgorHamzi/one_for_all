SELECT 
	songs.name AS nome,
    COUNT(DISTINCT reproductions.user_id) AS reproducoes
FROM 
	SpotifyClone.songs songs
JOIN 
	SpotifyClone.reproductions reproductions ON reproductions.song_id = songs.song_id
JOIN 
	SpotifyClone.user user ON user.user_id = reproductions.user_id
JOIN 
	SpotifyClone.plans plans ON plans.plan_id = user.plan_id
	AND (plans.name = 'gratuito' OR plans.name = 'pessoal')
GROUP BY 
	songs.name
ORDER BY 
	songs.name ASC
