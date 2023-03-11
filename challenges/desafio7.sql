SELECT
	ar.artista_nome AS artista,
    al.album_nome AS album,
   COUNT(se.artista_id) AS pessoas_seguidoras
FROM
	SpotifyClone.artistas AS ar

JOIN
	SpotifyClone.album AS al ON al.artista_id = ar.artista_id
JOIN
	SpotifyClone.seguindo AS se ON se.artista_id = ar.artista_id

GROUP BY al.album_nome, ar.artista_nome

ORDER BY pessoas_seguidoras DESC, artista, album;