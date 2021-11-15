USE [SalesWP]
GO
CREATE TABLE [prog].[catProduct](
	idCatProduct INT IDENTITY(1,1),
	levelProduct NUMERIC(1,0) NOT NULL,
	name VARCHAR(50) NOT NULL,
	CONSTRAINT chk_catProduct_level CHECK (levelProduct IN (1,2,3)),
	CONSTRAINT PK_catProduct PRIMARY KEY (idCatProduct, levelProduct)
)