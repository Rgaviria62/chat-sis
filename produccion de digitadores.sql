SELECT ate_IdUsuarioTrans,
COUNT(*) AS TOTAL 
FROM
	i_atencion 
WHERE
	ate_Periodo = "2022" 
	AND ate_FecCrea >= '2022-02-00' 
	AND ate_FecCrea <= '2022-03-00' 
GROUP BY
	ate_IdUsuarioTrans