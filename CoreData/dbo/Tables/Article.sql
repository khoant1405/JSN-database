CREATE TABLE [dbo].[Article](
	[Id] INT NOT NULL,
	[ArticleName] [nvarchar](500) NOT NULL,
	[Status] [nvarchar](255) NOT NULL,
	[CreationDate] [datetime2](7) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[RefURL] [nvarchar](255) NOT NULL,
	[ImageThumb] [nvarchar](255) NULL,
	[Description] [nvarchar](500) NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [Pk_Article_Id] PRIMARY KEY CLUSTERED 
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