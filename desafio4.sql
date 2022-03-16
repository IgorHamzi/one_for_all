SELECT
	SpotifyClone.user.name AS usuario,
	CASE 
        WHEN DATE_FORMAT(MAX(SpotifyClone.reproductions.reproduction_date), '%Y') = 2021 THEN "Usuário ativo" 
        ELSE "Usuário inativo" 
	END AS condicao_usuario
FROM 
	SpotifyClone.user
JOIN 
	SpotifyClone.reproductions ON SpotifyClone.reproductions.user_id = SpotifyClone.user.user_id
GROUP BY 
	SpotifyClone.user.user_id
ORDER BY 
	SpotifyClone.user.name ASC
