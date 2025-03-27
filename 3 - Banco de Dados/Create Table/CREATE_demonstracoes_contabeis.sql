CREATE TABLE demonstracoes_contabeis (
	"DATA" DATE,
	REGISTRO_OPERADORA VARCHAR(6),
	CD_CONTA_CONTABIL VARCHAR(9),
	DESCRICAO VARCHAR(150),
	VL_SALDO_INICIAL VARCHAR(15),
	VL_SALDO_FINAL VARCHAR(15) 
	--FOREIGN KEY (REGISTRO_OPERADORA) REFERENCES operadoras_de_plano_de_saude_ativas(REGISTRO_OPERADORA)
)

COMMENT ON COLUMN demonstracoes_contabeis."DATA" IS ' Data do início do trimestre dos dados (DIOPS) da operadora (data no formato AAAA-MM-DD).';
COMMENT ON COLUMN demonstracoes_contabeis.REGISTRO_OPERADORA IS 'Registro de operadora de plano privado de assistência à saúde concedido pela ANS  para operação no setor de saúde suplementar ';
COMMENT ON COLUMN demonstracoes_contabeis.CD_CONTA_CONTABIL IS 'Código de até 9 dígitos que identifica a conta contábil do Plano de Contas em vigor';
COMMENT ON COLUMN demonstracoes_contabeis.DESCRICAO IS 'Descrição da conta contábil do Plano de Contas em vigor';
COMMENT ON COLUMN demonstracoes_contabeis.VL_SALDO_INICIAL IS 'Valor, em reais, do saldo inicial da conta contábil do Plano de Contas em vigor';
COMMENT ON COLUMN demonstracoes_contabeis.VL_SALDO_FINAL IS 'Valor, em reais, do saldo final da conta contábil do Plano de Contas em vigor';


