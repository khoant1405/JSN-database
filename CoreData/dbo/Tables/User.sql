CREATE TABLE [dbo].[User](
	[Id] UNIQUEIDENTIFIER NOT NULL,
	[UserName] [nvarchar](50) UNIQUE NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Role] NVARCHAR(50) NOT NULL,
	[PasswordHash] [varbinary](max) NOT NULL,
	[PasswordSalt] [varbinary](max) NOT NULL,
	[RefreshToken] [nvarchar](max) NULL,
	[TokenCreated] [datetime2](7) NULL,
	[TokenExpires] [datetime2](7) NULL,
 CONSTRAINT [Pk_User_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[User] ADD  DEFAULT ((1)) FOR [IsActive]
GO