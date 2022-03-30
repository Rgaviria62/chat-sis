SELECT
	* 
FROM
	( SELECT jn.ate_IdAtencion, jn.ate_FecNac, jn.ate_NroDocumento, jn.ate_IdServicio, jn.ate_FecAte FROM `c.s. 07 de junio`.i_atencion jn ) t1
	INNER JOIN arfsis.gestantes_red ar ON ar.Numero_Documento = t1.ate_NroDocumento
	INNER JOIN `c.s. 07 de junio`.i_atediagnosticos ad ON t1.ate_IdAtencion = ad.adi_IdAtencion
	INNER JOIN `c.s. 07 de junio`.i_atemedicamentos ap ON ad.adi_IdDiagnostico = ap.amed_IdDiagnostico 
WHERE
	t1.ate_IdServicio IN ( '009', '056' ) 
	AND t1.ate_FecAte >= "2021-01-00" 
	AND t1.ate_FecAte <= "2022-06-00" 
	AND ap.amed_CodMedicamento IN ( '03513', '03512', '03514', '36195', '03552', '3553', '18109', '18119' )