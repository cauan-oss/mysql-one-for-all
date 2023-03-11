SELECT
	pe.pessoa_nome AS pessoa_usuaria,
    IF(MAX(YEAR(historico_data_reproducao)) >= 2021,
		'Ativa',
        'Inativa') AS status_pessoa_usuaria
FROM SpotifyClone.usuario AS pe
JOIN SpotifyClone.historico AS hi ON hi.pessoa_id = pe.pessoa_id
GROUP BY pe.pessoa_nome
ORDER BY pe.pessoa_nome;