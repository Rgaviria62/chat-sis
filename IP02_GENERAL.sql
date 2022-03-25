SELECT
	*,
	ate_IdServicio,
	COUNT( ate_IdServicio IN ( '071' ) ) AS TOTAL 
FROM
	( SELECT jn.ate_IdAtencion, jn.ate_FecNac, jn.ate_NroDocumento, jn.ate_IdServicio, jn.ate_FecAte FROM `c.s. 07 de junio`.i_atencion jn ) t1
	INNER JOIN arfsis.subsidiadoa ar ON ar.Num_Doc = t1.ate_NroDocumento
	INNER JOIN `c.s. 07 de junio`.i_atediagnosticos ad ON t1.ate_IdAtencion = ad.adi_IdAtencion
	INNER JOIN `c.s. 07 de junio`.i_ateprocedimientos ap ON ad.adi_IdDiagnostico = ap.apro_IdDiagnostico 
WHERE
	ap.apro_CodProcedimiento IN ( '85018', '85007', '85027', '85031' ) 
	AND t1.ate_fecNAc > "2021-01-00" 
	AND t1.ate_FecAte >= "2021-01-00" 
	AND t1.ate_FecAte <= "2022-06-00" 
GROUP BY
		t1.ate_NroDocumento