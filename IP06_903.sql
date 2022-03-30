SELECT
	*
FROM
	(
	SELECT
		sc.ate_NroFormato,
		sc.ate_EdadReal,
		sc.ate_FecNac,
		sc.ate_NroDocumento,
		sc.ate_IdServicio,
		sc.ate_FecAte 
	FROM
		`c.s. micaela`.i_atencion sc UNION
	SELECT
		sb.ate_NroFormato,
		sb.ate_EdadReal,
		sb.ate_FecNac,
		sb.ate_NroDocumento,
		sb.ate_IdServicio,
		sb.ate_FecAte 
	FROM
		`c.s. 09 oct`.i_atencion sb UNION
	SELECT
		bl.ate_NroFormato,
		bl.ate_EdadReal,
		bl.ate_FecNac,
		bl.ate_NroDocumento,
		bl.ate_IdServicio,
		bl.ate_FecAte 
	FROM
		`c.s. bellavista`.i_atencion bl UNION
	SELECT
		fr.ate_NroFormato,
		fr.ate_EdadReal,
		fr.ate_FecNac,
		fr.ate_NroDocumento,
		fr.ate_IdServicio,
		fr.ate_FecAte 
	FROM
		`c.s. fraternidad`.i_atencion fr UNION
	SELECT
		ip.ate_NroFormato,
		ip.ate_EdadReal,
		ip.ate_FecNac,
		ip.ate_NroDocumento,
		ip.ate_IdServicio,
		ip.ate_FecAte 
	FROM
		`c.s. iparia`.i_atencion ip UNION
	SELECT
		ms.ate_NroFormato,
		ms.ate_EdadReal,
		ms.ate_FecNac,
		ms.ate_NroDocumento,
		ms.ate_IdServicio,
		ms.ate_FecAte 
	FROM
		`c.s. masisea`.i_atencion ms UNION
	SELECT
		pu.ate_NroFormato,
		pu.ate_EdadReal,
		pu.ate_FecNac,
		pu.ate_NroDocumento,
		pu.ate_IdServicio,
		pu.ate_FecAte 
	FROM
		`c.s. purus`.i_atencion pu UNION
	SELECT
		sf.ate_NroFormato,
		sf.ate_EdadReal,
		sf.ate_FecNac,
		sf.ate_NroDocumento,
		sf.ate_IdServicio,
		sf.ate_FecAte 
	FROM
		`c.s. san fernando`.i_atencion sf UNION
	SELECT
		mr.ate_NroFormato,
		mr.ate_EdadReal,
		mr.ate_FecNac,
		mr.ate_NroDocumento,
		mr.ate_IdServicio,
		mr.ate_FecAte 
	FROM
		`p. s. las mercedes`.i_atencion mr UNION
	SELECT
		dm.ate_NroFormato,
		dm.ate_EdadReal,
		dm.ate_FecNac,
		dm.ate_NroDocumento,
		dm.ate_IdServicio,
		dm.ate_FecAte 
	FROM
		`p.s. dos de mayo`.i_atencion dm UNION
	SELECT
		lf.ate_NroFormato,
		lf.ate_EdadReal,
		lf.ate_FecNac,
		lf.ate_NroDocumento,
		lf.ate_IdServicio,
		lf.ate_FecAte 
	FROM
		`p.s. la florida`.i_atencion lf UNION
	SELECT
		nb.ate_NroFormato,
		nb.ate_EdadReal,
		nb.ate_FecNac,
		nb.ate_NroDocumento,
		nb.ate_IdServicio,
		nb.ate_FecAte 
	FROM
		`p.s. nuevo bolognesi`.i_atencion nb UNION
	SELECT
		jn.ate_NroFormato,
		jn.ate_EdadReal,
		jn.ate_FecNac,
		jn.ate_NroDocumento,
		jn.ate_IdServicio,
		jn.ate_FecAte 
	FROM
		`c.s. 07 de junio`.i_atencion jn UNION
	SELECT
		mn.ate_NroFormato,
		mn.ate_EdadReal,
		mn.ate_FecNac,
		mn.ate_NroDocumento,
		mn.ate_IdServicio,
		mn.ate_FecAte 
	FROM
		`p.s. manantay`.i_atencion mn 
		UNION
	SELECT
		mg.ate_NroFormato,
		mg.ate_EdadReal,
		mg.ate_FecNac,
		mg.ate_NroDocumento,
		mg.ate_IdServicio,
		mg.ate_FecAte 
	FROM
		`p.s. nueva magdalena`.i_atencion mg 		
	
	) t1
	INNER JOIN arfsis.subsidiadoa ar ON ar.Num_Doc = t1.ate_NroDocumento
WHERE	
	t1.ate_IdServicio IN ( '903' ) 
	AND t1.ate_EdadReal >= '60'
	AND t1.ate_FecAte >= "2021-01-00" 
	AND t1.ate_FecAte <= "2022-06-00" 
GROUP BY
		t1.ate_NroDocumento 
