SELECT 
	COUNT(DISTINCT ca.cancao_id) AS cancoes,
	COUNT(DISTINCT ar.artista_id) AS artistas,
  COUNT(DISTINCT al.album_id) AS albuns
FROM SpotifyClone.album al
JOIN SpotifyClone.artistas ar ON al.artista_id = ar.artista_id
JOIN SpotifyClone.cancoes ca ON al.album_id = ca.album_id;