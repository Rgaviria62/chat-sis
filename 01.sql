SELECT
	sc.ate_IdAtencion,
	sc.ate_IdEESS,
	p.pre_Nombre,
	sc.ate_Lote,
	sc.ate_Numero,
	sc.ate_IdResAtencion,
	sc.ate_Profesional,
	sc.ate_FecAte,
	sc.ate_NroDocumento,
	sb.Afiliacion,
	sc.ate_FecNac,
	sb.Apellido_Pat,
	sb.Apellido_Mat,
	sb.Nombres,
	sb.Edad,
	sb.Sexo,
	sb.Ubigeo,
	sb.EESS_Afiliacion,
	sb.EESS_Adscripcion,
	sb.Nombre_EESS,
	sb.Prov_EESS,
	sb.Dist_EESS,
	sb.UE,
	sb.Estado,
	sc.ate_IdServicio,
	asm_IdAtencion,
	asm_IdSmi,
	asm_Dato 
FROM
	i_atencion sc
	INNER JOIN i_atesmi ar ON ate_IdAtencion = ar.asm_IdAtencion
	INNER JOIN arfsis.subsidiadoa sb ON sb.Num_Doc = ate_NroDocumento
	INNER JOIN bdsis_maestros.m_eess p ON ate_IdEESS = p.pre_IdEESS 
WHERE
	sc.ate_IdServicio IN('001','002')	
	AND sc.ate_NroDocumento >= '1' 
	AND asm_Dato >= '0' 
	AND sc.ate_FecNac > '2021-01-00' 
	AND sc.ate_FecAte >= '2021-01-00' 
	AND sc.ate_FecAte <= '2022-06-00' 
ORDER BY
	sc.ate_NroDocumento;