SELECT
	FORMAT(MIN(pl.plano_valor), 2) AS faturamento_minimo,
    FORMAT(MAX(pl.plano_valor), 2) AS faturamento_maximo,
    CONVERT(ROUND(AVG(pl.plano_valor), 2), CHAR) AS faturamento_medio,
    CONVERT(ROUND(SUM(pl.plano_valor), 2), CHAR) AS faturamento_total
FROM
	SpotifyClone.usuario AS pe
    JOIN SpotifyClone.plano AS pl ON pl.plano_id = pe.plano_id;