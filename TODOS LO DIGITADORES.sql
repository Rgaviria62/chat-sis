SELECT
	*,ate_IdUsuarioTrans,
COUNT(*) AS TOTAL
FROM
	(
	SELECT
		sc.ate_IdUsuarioTrans,
		sc.ate_IdEESS,
		sc.ate_FecCrea,
		sc.ate_Periodo
	FROM
		`c.s. micaela`.i_atencion sc UNION
	SELECT
		sb.ate_IdUsuarioTrans,
		sb.ate_IdEESS,
		sb.ate_FecCrea,
		sb.ate_Periodo
	FROM
		`c.s. 09 oct`.i_atencion sb UNION
	SELECT
		bl.ate_IdUsuarioTrans,
		bl.ate_IdEESS,
		bl.ate_FecCrea,
		bl.ate_Periodo
	FROM
		`c.s. bellavista`.i_atencion bl UNION
	SELECT
		fr.ate_IdUsuarioTrans,
		fr.ate_IdEESS,
		fr.ate_FecCrea,
		fr.ate_Periodo
	FROM
		`c.s. fraternidad`.i_atencion fr UNION
	SELECT
		ip.ate_IdUsuarioTrans,
		ip.ate_IdEESS,
		ip.ate_FecCrea,
		ip.ate_Periodo
	FROM
		`c.s. iparia`.i_atencion ip UNION
	SELECT
		ms.ate_IdUsuarioTrans,
		ms.ate_IdEESS,
		ms.ate_FecCrea,
		ms.ate_Periodo
	FROM
		`c.s. masisea`.i_atencion ms UNION
	SELECT
		pu.ate_IdUsuarioTrans,
		pu.ate_IdEESS,
		pu.ate_FecCrea,
		pu.ate_Periodo
	FROM
		`c.s. purus`.i_atencion pu UNION
	SELECT
		sf.ate_IdUsuarioTrans,
		sf.ate_IdEESS,
		sf.ate_FecCrea,
		sf.ate_Periodo
	FROM
		`c.s. san fernando`.i_atencion sf UNION
	SELECT
		mr.ate_IdUsuarioTrans,
		mr.ate_IdEESS,
		mr.ate_FecCrea,
		mr.ate_Periodo
	FROM
		`p. s. las mercedes`.i_atencion mr UNION
	SELECT
		dm.ate_IdUsuarioTrans,
		dm.ate_IdEESS,
		dm.ate_FecCrea,
		dm.ate_Periodo
	FROM
		`p.s. dos de mayo`.i_atencion dm UNION
	SELECT
		lf.ate_IdUsuarioTrans,
		lf.ate_IdEESS,
		lf.ate_FecCrea,
		lf.ate_Periodo
	FROM
		`p.s. la florida`.i_atencion lf UNION
	SELECT
		nb.ate_IdUsuarioTrans,
		nb.ate_IdEESS,
		nb.ate_FecCrea,
		nb.ate_Periodo 
	FROM
		`p.s. nuevo bolognesi`.i_atencion nb UNION
	SELECT
		jn.ate_IdUsuarioTrans,
		jn.ate_IdEESS,
		jn.ate_FecCrea,
		jn.ate_Periodo
	FROM
		`c.s. 07 de junio`.i_atencion jn
		UNION
	SELECT
		mn.ate_IdUsuarioTrans,
		mn.ate_IdEESS,
		mn.ate_FecCrea,
		mn.ate_Periodo
	FROM
		`p.s. manantay`.i_atencion mn
		UNION
	SELECT
		nm.ate_IdUsuarioTrans,
		nm.ate_IdEESS,
		nm.ate_FecCrea,
		nm.ate_Periodo
	FROM
		`p.s. nueva magdalena`.i_atencion nm
		 
	) t1
	
WHERE	
 t1.ate_FecCrea >= '2022-03-00' 
AND t1.ate_FecCrea <= '2022-04-00' 
GROUP BY
	t1.ate_IdUsuarioTrans

	