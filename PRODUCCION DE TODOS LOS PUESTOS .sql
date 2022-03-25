SELECT
	ate_IdEESS,
	ate_IdServicio
FROM
	(
	SELECT
		sc.ate_IdPPDD,
		sc.ate_IdServicio,
		sc.ate_FecCrea,
		sc.ate_IdEESS,
		sc.ate_Periodo,
		sc.ate_IdAtencion 
	FROM
		`c.s. micaela`.i_atencion sc UNION
	SELECT
		sb.ate_IdPPDD,
		sb.ate_IdServicio,
		sb.ate_FecCrea,
		sb.ate_IdEESS,
		sb.ate_Periodo,
		sb.ate_IdAtencion 
	FROM
		`c.s. 09 oct`.i_atencion sb UNION
	SELECT
		bl.ate_IdPPDD,
		bl.ate_IdServicio,
		bl.ate_FecCrea,
		bl.ate_IdEESS,
		bl.ate_Periodo,
		bl.ate_IdAtencion 
	FROM
		`c.s. bellavista`.i_atencion bl UNION
	SELECT
		fr.ate_IdPPDD,
		fr.ate_IdServicio,
		fr.ate_FecCrea,
		fr.ate_IdEESS,
		fr.ate_Periodo,
		fr.ate_IdAtencion 
	FROM
		`c.s. fraternidad`.i_atencion fr UNION
	SELECT
		ip.ate_IdPPDD,
		ip.ate_IdServicio,
		ip.ate_FecCrea,
		ip.ate_IdEESS,
		ip.ate_Periodo,
		ip.ate_IdAtencion 
	FROM
		`c.s. iparia`.i_atencion ip UNION
	SELECT
		ms.ate_IdPPDD,
		ms.ate_IdServicio,
		ms.ate_FecCrea,
		ms.ate_IdEESS,
		ms.ate_Periodo,
		ms.ate_IdAtencion 
	FROM
		`c.s. masisea`.i_atencion ms UNION
	SELECT
		pu.ate_IdPPDD,
		pu.ate_IdServicio,
		pu.ate_FecCrea,
		pu.ate_IdEESS,
		pu.ate_Periodo,
		pu.ate_IdAtencion 
	FROM
		`c.s. purus`.i_atencion pu UNION
	SELECT
		sf.ate_IdPPDD,
		sf.ate_IdServicio,
		sf.ate_FecCrea,
		sf.ate_IdEESS,
		sf.ate_Periodo,
		sf.ate_IdAtencion 
	FROM
		`c.s. san fernando`.i_atencion sf UNION
	SELECT
		mr.ate_IdPPDD,
		mr.ate_IdServicio,
		mr.ate_FecCrea,
		mr.ate_IdEESS,
		mr.ate_Periodo,
		mr.ate_IdAtencion 
	FROM
		`p. s. las mercedes`.i_atencion mr UNION
	SELECT
		dm.ate_IdPPDD,
		dm.ate_IdServicio,
		dm.ate_FecCrea,
		dm.ate_IdEESS,
		dm.ate_Periodo,
		dm.ate_IdAtencion 
	FROM
		`p.s. dos de mayo`.i_atencion dm UNION
	SELECT
		lf.ate_IdPPDD,
		lf.ate_IdServicio,
		lf.ate_FecCrea,
		lf.ate_IdEESS,
		lf.ate_Periodo,
		lf.ate_IdAtencion 
	FROM
		`p.s. la florida`.i_atencion lf UNION
	SELECT
		nb.ate_IdPPDD,
		nb.ate_IdServicio,
		nb.ate_FecCrea,
		nb.ate_IdEESS,
		nb.ate_Periodo,
		nb.ate_IdAtencion 
	FROM
		`p.s. nuevo bolognesi`.i_atencion nb UNION
	SELECT
		jn.ate_IdPPDD,
		jn.ate_IdServicio,
		jn.ate_FecCrea,
		jn.ate_IdEESS,
		jn.ate_Periodo,
		jn.ate_IdAtencion 
	FROM
		`c.s. 07 de junio`.i_atencion jn UNION
	SELECT
		mn.ate_IdPPDD,
		mn.ate_IdServicio,
		mn.ate_FecCrea,
		mn.ate_IdEESS,
		mn.ate_Periodo,
		mn.ate_IdAtencion 
	FROM
		`p.s. manantay`.i_atencion mn UNION
	SELECT
		nm.ate_IdPPDD,
		nm.ate_IdServicio,
		nm.ate_FecCrea,
		nm.ate_IdEESS,
		nm.ate_Periodo,
		nm.ate_IdAtencion 
	FROM
		`p.s. nueva magdalena`.i_atencion nm 
	) t1
	INNER JOIN bdsis_maestros.m_eess p ON t1.ate_IdEESS = p.pre_IdEESS 
WHERE
	t1.ate_Periodo='2021'
