SELECT 
	pe.usuario AS pessoa_usuaria,
    COUNT(hi.cancao_id) AS musicas_ouvidas,
    ROUND(SUM(ca.cancao_duracao_segundos / 60), 2) AS total_minutos
FROM SpotifyClone.usuario pe
JOIN SpotifyClone.historico hi ON hi.pessoa_id = pe.pessoa_id
JOIN SpotifyClone.cancoes ca ON ca.cancao_id = hi.cancao_id
GROUP BY pe.pessoa_nome
ORDER BY pe.pessoa_nome;