SELECT
	*
FROM
	( SELECT jn.ate_IdAtencion, jn.ate_FecNac, jn.ate_NroDocumento, jn.ate_IdServicio, jn.ate_FecAte FROM `c.s. 07 de junio`.i_atencion jn ) t1
	INNER JOIN arfsis.ip05_enf ar ON ar.Num_Doc = t1.ate_NroDocumento
	INNER JOIN `c.s. 07 de junio`.i_atediagnosticos ad ON t1.ate_IdAtencion = ad.adi_IdAtencion
	INNER JOIN `c.s. 07 de junio`.i_ateprocedimientos  ap ON ad.adi_IdDiagnostico = ap.apro_IdDiagnostico
WHERE
	ap.apro_CodProcedimiento IN('82947','82948')	
	AND t1.ate_FecAte >= "2022-01-00" 
	AND t1.ate_FecAte <= "2022-05-31"
	GROUP BY
	t1.ate_IdServicio,
	t1.ate_NroDocumento 