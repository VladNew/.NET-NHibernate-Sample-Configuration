USE [master]
GO

CREATE DATABASE [ItCutiesDemo]
GO

USE [ItCutiesDemo]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [master]
GO
ALTER DATABASE [ItCutiesDemo] SET  READ_WRITE 
GO

USE [ItCutiesDemo]
GO

INSERT INTO dbo.Customer (FirstName, LastName) VALUES 
			 ('Andrew', 'Kowalski')
			,('Ann', 'Drew')
			,('Meg', 'Cabbot')
			,('Jeremy', 'Standford')
			,('Eliza', 'Kant')
			,('Jimmy', 'Kim')
GO

