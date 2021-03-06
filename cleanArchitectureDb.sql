USE [CleanArchMVC_db]
GO
/****** Object:  Table [dbo].[Hobby]    Script Date: 02/02/2021 15:28:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hobby](
	[HobbyId] [int] IDENTITY(1,1) NOT NULL,
	[HobbyName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Hobby] PRIMARY KEY CLUSTERED 
(
	[HobbyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Hobby] ON
INSERT [dbo].[Hobby] ([HobbyId], [HobbyName]) VALUES (1, N'Cricket')
INSERT [dbo].[Hobby] ([HobbyId], [HobbyName]) VALUES (2, N'Football')
INSERT [dbo].[Hobby] ([HobbyId], [HobbyName]) VALUES (3, N'Hockey')
INSERT [dbo].[Hobby] ([HobbyId], [HobbyName]) VALUES (4, N'Music')
INSERT [dbo].[Hobby] ([HobbyId], [HobbyName]) VALUES (5, N'Writing')
INSERT [dbo].[Hobby] ([HobbyId], [HobbyName]) VALUES (6, N'Painting')
INSERT [dbo].[Hobby] ([HobbyId], [HobbyName]) VALUES (7, N'Travelling')
INSERT [dbo].[Hobby] ([HobbyId], [HobbyName]) VALUES (8, N'Outings')
INSERT [dbo].[Hobby] ([HobbyId], [HobbyName]) VALUES (9, N'Cooking')
INSERT [dbo].[Hobby] ([HobbyId], [HobbyName]) VALUES (10, N'Acting')
INSERT [dbo].[Hobby] ([HobbyId], [HobbyName]) VALUES (11, N'Dancing')
INSERT [dbo].[Hobby] ([HobbyId], [HobbyName]) VALUES (12, N'Coding')
SET IDENTITY_INSERT [dbo].[Hobby] OFF
/****** Object:  Table [dbo].[Country]    Script Date: 02/02/2021 15:28:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Country] ON
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (1, N'India')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (2, N'Australia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (3, N'Canada')
SET IDENTITY_INSERT [dbo].[Country] OFF
/****** Object:  Table [dbo].[State]    Script Date: 02/02/2021 15:28:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [int] NULL,
	[StateName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[State] ON
INSERT [dbo].[State] ([StateId], [CountryId], [StateName]) VALUES (1, 1, N'Gujarat')
INSERT [dbo].[State] ([StateId], [CountryId], [StateName]) VALUES (2, 1, N'MP')
INSERT [dbo].[State] ([StateId], [CountryId], [StateName]) VALUES (3, 1, N'Maharashtra')
INSERT [dbo].[State] ([StateId], [CountryId], [StateName]) VALUES (4, 2, N'NSW')
INSERT [dbo].[State] ([StateId], [CountryId], [StateName]) VALUES (5, 2, N'Sydney')
INSERT [dbo].[State] ([StateId], [CountryId], [StateName]) VALUES (6, 3, N'ontario')
INSERT [dbo].[State] ([StateId], [CountryId], [StateName]) VALUES (7, 3, N'vancouver')
SET IDENTITY_INSERT [dbo].[State] OFF
/****** Object:  Table [dbo].[City]    Script Date: 02/02/2021 15:28:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [int] NOT NULL,
	[CityName] [nvarchar](100) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City] ON
INSERT [dbo].[City] ([CityId], [StateId], [CityName]) VALUES (1, 1, N'Ahmedabad')
INSERT [dbo].[City] ([CityId], [StateId], [CityName]) VALUES (2, 1, N'baroda')
INSERT [dbo].[City] ([CityId], [StateId], [CityName]) VALUES (3, 2, N'gwaliyar')
INSERT [dbo].[City] ([CityId], [StateId], [CityName]) VALUES (4, 2, N'kanpur')
INSERT [dbo].[City] ([CityId], [StateId], [CityName]) VALUES (5, 3, N'mumbai')
INSERT [dbo].[City] ([CityId], [StateId], [CityName]) VALUES (6, 3, N'pune')
INSERT [dbo].[City] ([CityId], [StateId], [CityName]) VALUES (7, 4, N'street32')
INSERT [dbo].[City] ([CityId], [StateId], [CityName]) VALUES (8, 5, N'kingston')
INSERT [dbo].[City] ([CityId], [StateId], [CityName]) VALUES (9, 6, N'hamilton')
INSERT [dbo].[City] ([CityId], [StateId], [CityName]) VALUES (10, 7, N'montreal')
SET IDENTITY_INSERT [dbo].[City] OFF
/****** Object:  Table [dbo].[User]    Script Date: 02/02/2021 15:28:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](100) NULL,
	[Lastname] [nvarchar](100) NULL,
	[Dateofbirth] [datetime] NULL,
	[Profilepicture] [nvarchar](max) NULL,
	[Age] [numeric](18, 0) NULL,
	[Gender] [numeric](18, 0) NULL,
	[CityId] [int] NULL,
	[Address] [nvarchar](max) NULL,
	[Phoneno] [nvarchar](20) NULL,
	[Hobbies] [nvarchar](max) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserHobbies]    Script Date: 02/02/2021 15:28:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserHobbies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[HobbyId] [int] NULL,
 CONSTRAINT [PK_UserHobbies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertUpdateUser]    Script Date: 02/02/2021 15:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SP_InsertUpdateUser]
(
@UserId int,
@Firstname nvarchar(100),
@Lastname nvarchar(100),
@Dateofbirth datetime,
@Profilepicture nvarchar(MAX),
@Gender numeric(18,0),
@CityId int,
@Address nvarchar(max),
@Email nvarchar(50),
@Phoneno nvarchar(20),
@Hobbies nvarchar(max)) As
Begin
    if(@UserId > 0)
	BEGIN
      
	  UPDATE [User] SET Firstname = ISNULL(@Firstname,Firstname),Lastname = IsNull(@Lastname,Lastname),
	  Dateofbirth =IsNull(@Dateofbirth,Dateofbirth),Email =IsNull(@Email,Email),
	  Gender = ISNULL (@Gender,Gender), Profilepicture =ISNULL(NULLIF(@Profilepicture, ''), Profilepicture), CityId = ISNULL(@CityId,CityId),[Address] = ISNULL(@Address,[Address]),
	  Phoneno = ISNULL(@Phoneno,Phoneno),Hobbies = ISNULL(@Hobbies,Hobbies)
	  WHERE UserId = @UserId

	 
	END
	ELSE
	BEGIN
	  INSERT INTO [User] 
	  (Firstname,Lastname,Dateofbirth,Email,Profilepicture,Gender,CityId,[Address],Phoneno,Hobbies)
	  VALUES
	  (@Firstname,@Lastname,@Dateofbirth,@Email,@Profilepicture,@Gender,@CityId,@Address,@Phoneno,@Hobbies)
	
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUserList]    Script Date: 02/02/2021 15:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_GetUserList] as
Begin
 
SELECT * from [dbo].[User]

End
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_UserById]    Script Date: 02/02/2021 15:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SP_Get_UserById]
(@Id int)
AS
BEGIN
select ur.UserId,ur.Email,ur.Firstname,ur.Lastname,ur.Dateofbirth,ur.Profilepicture,ur.Gender,ur.CityId,
ur.Address,ur.Phoneno,ur.Hobbies,ct.StateId,st.CountryId from [User] as ur Inner join City
as ct on ct.CityId = ur.CityId Inner join [State] as st on st.StateId= ct.StateId Where UserId =@Id
ENd
GO
/****** Object:  StoredProcedure [dbo].[SP_Delete_user]    Script Date: 02/02/2021 15:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SP_Delete_user]
(@Id int)
AS
BEGIN
DELETE FROM [User] Where UserId =@Id
END
GO
/****** Object:  ForeignKey [FK_City_State]    Script Date: 02/02/2021 15:28:35 ******/
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_State] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([StateId])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_State]
GO
/****** Object:  ForeignKey [FK_State_Country]    Script Date: 02/02/2021 15:28:35 ******/
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([CountryId])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_State_Country]
GO
/****** Object:  ForeignKey [FK_UserHobbies_Hobby]    Script Date: 02/02/2021 15:28:35 ******/
ALTER TABLE [dbo].[UserHobbies]  WITH CHECK ADD  CONSTRAINT [FK_UserHobbies_Hobby] FOREIGN KEY([HobbyId])
REFERENCES [dbo].[Hobby] ([HobbyId])
GO
ALTER TABLE [dbo].[UserHobbies] CHECK CONSTRAINT [FK_UserHobbies_Hobby]
GO
/****** Object:  ForeignKey [FK_UserHobbies_User]    Script Date: 02/02/2021 15:28:35 ******/
ALTER TABLE [dbo].[UserHobbies]  WITH CHECK ADD  CONSTRAINT [FK_UserHobbies_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[UserHobbies] CHECK CONSTRAINT [FK_UserHobbies_User]
GO
/****** Object:  ForeignKey [FK_User_City]    Script Date: 02/02/2021 15:28:35 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([CityId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_City]
GO
