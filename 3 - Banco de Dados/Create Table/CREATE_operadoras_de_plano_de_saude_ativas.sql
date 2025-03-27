CREATE TABLE operadoras_de_plano_de_saude_ativas (
	REGISTRO_OPERADORA VARCHAR(6) PRIMARY KEY,
	CNPJ VARCHAR(14) UNIQUE NOT NULL,
	RAZAO_SOCIAL VARCHAR(140),
	NOME_FANTASIA VARCHAR(140),
	MODALIDADE VARCHAR(40),
	LOGRADOURO VARCHAR(40),
	NUMERO VARCHAR(20),
	COMPLEMENTO VARCHAR(40),
	BAIRRO VARCHAR(30),
	CIDADE VARCHAR(30),
	UF VARCHAR(2),
	CEP VARCHAR(8),
	DDD VARCHAR(4),
	TELEFONE VARCHAR(20),
	FAX VARCHAR(20),
	ENDERECO_ELETRONICO VARCHAR(255),
	REPRESENTANTE VARCHAR(50),
	CARGO_REPRESENTANTE VARCHAR(40),
	REGIAO_DE_COMERCIALIZACAO INTEGER CHECK (REGIAO_DE_COMERCIALIZACAO >= 0 AND REGIAO_DE_COMERCIALIZACAO <= 9) NULL,
	DATA_REGISTRO_ANS DATE
);

COMMENT ON COLUMN operadoras_de_plano_de_saude_ativas.REGISTRO_OPERADORA IS '"Registro de operadora de plano privado de assistência à
saúde concedido pela ANS à pessoa jurídica para operação no setor de saúde suplementar"';
COMMENT ON COLUMN operadoras_de_plano_de_saude_ativas.CNPJ IS 'CNPJ da Operadora';
COMMENT ON COLUMN operadoras_de_plano_de_saude_ativas.RAZAO_SOCIAL IS 'Razão Social da Operadora';
COMMENT ON COLUMN operadoras_de_plano_de_saude_ativas.NOME_FANTASIA IS 'Nome fantasia da operadora.';
COMMENT ON COLUMN operadoras_de_plano_de_saude_ativas.MODALIDADE IS '"Classificação das operadoras de
planos privados de assistência à saúde de acordo com seu estatuto jurídico.
"';
COMMENT ON COLUMN operadoras_de_plano_de_saude_ativas.LOGRADOURO IS 'Endereço da Sede da Operadora';
COMMENT ON COLUMN operadoras_de_plano_de_saude_ativas.NUMERO IS 'Número do Endereço da Sede da Operadora';
COMMENT ON COLUMN operadoras_de_plano_de_saude_ativas.COMPLEMENTO IS 'Complemento do Endereço da Sede da Operadora';
COMMENT ON COLUMN operadoras_de_plano_de_saude_ativas.BAIRRO IS 'Bairro do Endereço da Sede da Operadora';
COMMENT ON COLUMN operadoras_de_plano_de_saude_ativas.CIDADE IS 'Cidade do Endereço da Sede da Operadora';
COMMENT ON COLUMN operadoras_de_plano_de_saude_ativas.UF IS 'Estado do Endereço da Sede da Operadora';
COMMENT ON COLUMN operadoras_de_plano_de_saude_ativas.CEP IS 'CEP do Endereço da Sede da Operadora';
COMMENT ON COLUMN operadoras_de_plano_de_saude_ativas.DDD IS 'Código de DDD da Operadora';
COMMENT ON COLUMN operadoras_de_plano_de_saude_ativas.TELEFONE IS 'Numero de Telefone da Operadora';
COMMENT ON COLUMN operadoras_de_plano_de_saude_ativas.FAX IS 'Numero de Fax da Operadora';
COMMENT ON COLUMN operadoras_de_plano_de_saude_ativas.ENDERECO_ELETRONICO IS 'e-mail da Operadora';
COMMENT ON COLUMN operadoras_de_plano_de_saude_ativas.REPRESENTANTE IS 'Representante Legal da Operadora';
COMMENT ON COLUMN operadoras_de_plano_de_saude_ativas.CARGO_REPRESENTANTE IS 'Cargo do representante legal.';
COMMENT ON COLUMN operadoras_de_plano_de_saude_ativas.REGIAO_DE_COMERCIALIZACAO IS '"Área onde a operadora de plano privado de assistência à saúde comercializa ou disponibiliza seu plano de saúde, nos termos do Anexo I da Resolução Normativa nº 209/2009, da ANS.
• Região 1: em todo o território nacional ou em grupos de pelo menos três estados dentre os seguintes: São Paulo, Rio de Janeiro, Minas Gerais, Rio Grande do Sul, Paraná e Bahia;
• Região 2: no Estado de São Paulo ou em mais de um estado, excetuando os grupos definidos no critério da região 1;
• Região 3: em um único estado, qualquer que seja ele, excetuando-se o Estado de São Paulo;
• Região 4: no Município de São Paulo, do Rio de Janeiro, de Belo Horizonte, de Porto Alegre ou de Curitiba ou de Brasília;
• Região 5: em grupo de municípios, excetuando os definidos na região 4; e
• Região 6: em um único município, excetuando os definidos na região 4.

"';
COMMENT ON COLUMN operadoras_de_plano_de_saude_ativas.DATA_REGISTRO_ANS IS 'Data do Registro da Operadora na ANS (formato AAAA-MM-DD)';