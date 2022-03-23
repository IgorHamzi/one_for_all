SELECT 
	CONCAT(CAST((ROUND(MIN(plans.value), 2)) AS CHAR(3)), '.00') AS faturamento_minimo,
    CAST((ROUND(MAX(plans.value), 2)) AS DECIMAL(12,2)) AS faturamento_maximo,
    CAST((ROUND(AVG(plans.value),2)) AS DECIMAL(12,2)) AS faturamento_medio,
    CAST((ROUND(SUM(plans.value), 2)) AS DECIMAL(12,2)) AS faturamento_total
FROM 
	SpotifyClone.user AS user
JOIN 
	SpotifyClone.plans AS plans ON plans.plan_id = user.plan_id
