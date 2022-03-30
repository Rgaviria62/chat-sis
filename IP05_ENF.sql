SELECT
	*
FROM
	( SELECT jn.ate_IdAtencion, jn.ate_FecNac,jn.ate_EdadReal, jn.ate_NroDocumento, jn.ate_IdServicio, jn.ate_FecAte FROM `c.s. 07 de junio`.i_atencion jn ) t1
	INNER JOIN arfsis.subsidiadoa ar ON ar.Num_Doc = t1.ate_NroDocumento
	INNER JOIN `c.s. 07 de junio`.i_atediagnosticos ad ON t1.ate_IdAtencion = ad.adi_IdAtencion
	INNER JOIN `c.s. 07 de junio`.i_atesmi ap ON ad.adi_IdAtencion = ap.asm_IdAtencion
WHERE
	t1.ate_IdServicio IN ('056','903','904','017','906')
	AND t1.ate_EdadReal >= '15'
	AND ad.adi_CodDia NOT IN('E10','E14','O24','I10','I15','O10','O11')
	AND	ap.asm_IdSmi IN ( '301' )		
	AND t1.ate_FecAte >= "2022-01-00" 
	AND t1.ate_FecAte <= "2022-06-00" 
	GROUP BY
	t1.ate_IdServicio,
	t1.ate_NroDocumento 