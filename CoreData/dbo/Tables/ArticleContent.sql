﻿CREATE TABLE [dbo].[ArticleContent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArticleId] [int] UNIQUE NOT NULL,
	[Content] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[ArticleContent]  WITH CHECK ADD  CONSTRAINT [Fk_ArticleContent_ArticleId] FOREIGN KEY([ArticleId])
REFERENCES [dbo].[Article] ([Id])
GO

ALTER TABLE [dbo].[ArticleContent] CHECK CONSTRAINT [Fk_ArticleContent_ArticleId]
GO