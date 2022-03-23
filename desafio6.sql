SELECT
	(ROUND(MIN(plans.value), 2)) AS faturamento_minimo,
    (ROUND(MAX(plans.value), 2)) AS faturamento_maximo,
    (ROUND(AVG(plans.value),2)) AS faturamento_medio,
    (ROUND(SUM(plans.value), 2)) AS faturamento_total
FROM
	SpotifyClone.user AS user
JOIN
	SpotifyClone.plans AS plans ON plans.plan_id = user.plan_id
