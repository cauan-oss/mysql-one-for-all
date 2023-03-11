SELECT
	COUNT(hi.historico_data_reproducao) AS musicas_no_historico
FROM SpotifyClone.historico AS hi
JOIN SpotifyClone.usuario AS pe ON pe.pessoa_id = hi.pessoa_id
WHERE pe.pessoa_nome = 'Barbara Liskov';