﻿CREATE TABLE [dbo].[Article](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArticleName] [nvarchar](500) NOT NULL,
	[Status] [int] NOT NULL,
	[RefURL] [nvarchar](255) NOT NULL,
	[ImageThumb] [nvarchar](255) NULL,
	[Description] [nvarchar](500) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[UserId] [int] NOT NULL,
	[UserName] [nvarchar](50)
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [Fk_Article_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO

ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [Fk_Article_UserId]
GO