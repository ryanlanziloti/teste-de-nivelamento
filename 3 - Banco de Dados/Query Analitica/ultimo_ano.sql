SELECT "DATA",ope.registro_operadora,ope.nome_fantasia,cd_conta_contabil,descricao,A.diferenca
FROM (
	SELECT "DATA",registro_operadora,cd_conta_contabil,descricao,
			SUM(CAST(REPLACE(vl_saldo_final, ',', '.') AS NUMERIC)) - SUM(CAST(REPLACE(vl_saldo_inicial, ',', '.') AS NUMERIC)) diferenca
	FROM demonstracoes_contabeis 
	WHERE descricao = 'EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR '
	AND EXTRACT(YEAR FROM "DATA") ='2024'
	GROUP BY "DATA",registro_operadora,cd_conta_contabil,descricao
) A
INNER JOIN operadoras_de_plano_de_saude_ativas ope
	ON ope.registro_operadora = A.registro_operadora
ORDER BY diferenca
LIMIT 10