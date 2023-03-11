SELECT
	ar.artista_nome AS artista,
    al.album_nome AS album
FROM
	SpotifyClone.artistas AS ar
JOIN
	SpotifyClone.album AS al ON al.artista_id = ar.artista_id
WHERE ar.artista_nome = 'Elis Regina'
ORDER BY al.album_nome;