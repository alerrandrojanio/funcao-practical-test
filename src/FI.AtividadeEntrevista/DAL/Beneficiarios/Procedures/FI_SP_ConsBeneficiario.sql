CREATE PROC FI_SP_ConsBeneficiario
	@IDCLIENTE BIGINT
AS
BEGIN
	IF(ISNULL(@ID,0) = 0)
		SELECT NOME, CPF, IDCLIENTE, ID FROM BENEFICIARIOS WITH(NOLOCK)
	ELSE
		SELECT NOME, CPF, IDCLIENTE, ID FROM BENEFICIARIOS WITH(NOLOCK) WHERE IDCLIENTE = @IDCLIENTE
END