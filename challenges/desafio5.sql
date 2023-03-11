SELECT 
	ca.cancao_nome AS cancao,
	COUNT(hi.cancao_id) AS reproducoes
FROM 
	SpotifyClone.historico AS hi
	JOIN SpotifyClone.cancoes AS ca ON ca.cancao_id = hi.cancao_id
GROUP BY ca.cancao_nome
ORDER BY reproducoes DESC, ca.cancao_nome
LIMIT 2;