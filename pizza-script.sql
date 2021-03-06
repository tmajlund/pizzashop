USE [master]
GO
/****** Object:  Database [Tomasos]    Script Date: 2021-04-21 16:04:18 ******/
CREATE DATABASE [Tomasos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tomasos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Tomasos.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Tomasos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Tomasos_log.ldf' , SIZE = 4672KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Tomasos] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tomasos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Tomasos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Tomasos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Tomasos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Tomasos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Tomasos] SET ARITHABORT OFF 
GO
ALTER DATABASE [Tomasos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Tomasos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Tomasos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Tomasos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Tomasos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Tomasos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Tomasos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Tomasos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Tomasos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Tomasos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Tomasos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Tomasos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Tomasos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Tomasos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Tomasos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Tomasos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Tomasos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Tomasos] SET RECOVERY FULL 
GO
ALTER DATABASE [Tomasos] SET  MULTI_USER 
GO
ALTER DATABASE [Tomasos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Tomasos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Tomasos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Tomasos] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Tomasos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Tomasos] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Tomasos', N'ON'
GO
ALTER DATABASE [Tomasos] SET QUERY_STORE = OFF
GO
USE [Tomasos]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2021-04-21 16:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2021-04-21 16:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2021-04-21 16:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2021-04-21 16:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2021-04-21 16:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2021-04-21 16:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2021-04-21 16:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Gatuadress] [varchar](50) NULL,
	[Namn] [varchar](100) NULL,
	[Postnr] [varchar](20) NULL,
	[Postort] [varchar](100) NULL,
	[Points] [int] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2021-04-21 16:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bestallning]    Script Date: 2021-04-21 16:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bestallning](
	[BestallningID] [int] IDENTITY(1,1) NOT NULL,
	[BestallningDatum] [datetime] NOT NULL,
	[Totalbelopp] [int] NOT NULL,
	[Levererad] [bit] NOT NULL,
	[Id] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Bestallning] PRIMARY KEY CLUSTERED 
(
	[BestallningID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BestallningMatratt]    Script Date: 2021-04-21 16:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BestallningMatratt](
	[MatrattID] [int] NOT NULL,
	[BestallningID] [int] NOT NULL,
	[Antal] [int] NOT NULL,
 CONSTRAINT [PK_BestallningMatratt] PRIMARY KEY CLUSTERED 
(
	[MatrattID] ASC,
	[BestallningID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matratt]    Script Date: 2021-04-21 16:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matratt](
	[MatrattID] [int] IDENTITY(1,1) NOT NULL,
	[MatrattNamn] [varchar](50) NOT NULL,
	[Beskrivning] [varchar](200) NULL,
	[Pris] [int] NOT NULL,
	[MatrattTypID] [int] NOT NULL,
 CONSTRAINT [PK_Matratt] PRIMARY KEY CLUSTERED 
(
	[MatrattID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatrattProdukt]    Script Date: 2021-04-21 16:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatrattProdukt](
	[MatrattID] [int] NOT NULL,
	[ProduktID] [int] NOT NULL,
 CONSTRAINT [PK_MatrattProdukt] PRIMARY KEY CLUSTERED 
(
	[MatrattID] ASC,
	[ProduktID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatrattTyp]    Script Date: 2021-04-21 16:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatrattTyp](
	[MatrattTypID] [int] IDENTITY(1,1) NOT NULL,
	[Beskrivning] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MatrattTyp] PRIMARY KEY CLUSTERED 
(
	[MatrattTypID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkt]    Script Date: 2021-04-21 16:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkt](
	[ProduktID] [int] IDENTITY(1,1) NOT NULL,
	[ProduktNamn] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Produkt] PRIMARY KEY CLUSTERED 
(
	[ProduktID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210127093632_MyMigraton', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210127151604_MyMigration2', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210201105132_MyMigration3', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210201112339_MyMigration4', N'5.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210201112904_MyMigration5', N'5.0.2')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'cfb8625d-b93c-489d-91b8-4559a7050d90', N'RegularUser', N'REGULARUSER', N'01f00b65-9a0e-435d-8afb-a5a70113239b')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ebbe0429-849d-4a9f-b316-682cb4205572', N'PremiumUser', N'PREMIUMUSER', N'c2fd7aef-9f12-4877-a8d2-79790ab66fea')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f635ba75-efd0-4727-8533-0421836562c6', N'Admin', N'ADMIN', N'2e749010-272f-44f0-a608-51403d577281')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8fbd171a-2af5-4232-b95a-b0a4895fa0e4', N'cfb8625d-b93c-489d-91b8-4559a7050d90')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'13098a5d-c4fc-4e6e-891f-84481ee19328', N'ebbe0429-849d-4a9f-b316-682cb4205572')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ba73b2c5-1d1c-4ac3-aa9e-1888f23da1fd', N'ebbe0429-849d-4a9f-b316-682cb4205572')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fed532f7-3506-4cb5-9d95-785f60e3875e', N'ebbe0429-849d-4a9f-b316-682cb4205572')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9dc80905-a5c6-408f-a852-82e64bd9537c', N'f635ba75-efd0-4727-8533-0421836562c6')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Gatuadress], [Namn], [Postnr], [Postort], [Points]) VALUES (N'13098a5d-c4fc-4e6e-891f-84481ee19328', N'bergpremium', N'BERGPREMIUM', N'bergpremium@gmail.com', N'BERGPREMIUM@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJDWO7ZTYvsRmFpUPPB/l2/5D4rY/IeYCnFYhHyvGXlgB4jE3D3rCogriW+L6AdjZQ==', N'XR2HKMVSTB6UPE3I5QXLLPV7PVS5MLCG', N'9345123a-3e26-40a4-89ad-73cda8bd6c22', N'0753541208', 0, 0, NULL, 1, 0, N'Premiumvägen 34', N'Berg Premium 2', N'17553', N'Stockholm', 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Gatuadress], [Namn], [Postnr], [Postort], [Points]) VALUES (N'8fbd171a-2af5-4232-b95a-b0a4895fa0e4', N'thereseberg', N'THERESEBERG', N'therese.berg@perduco.se', N'THERESE.BERG@PERDUCO.SE', 0, N'AQAAAAEAACcQAAAAELOkS+S1PvDnZ2icRbqjY07G/XqjZKPcSgga3eqk2Y7h+8a7LfXRSduaB6ZdBn2y1w==', N'KU7CIO3FCOFULLXBPRFIK3QVIRWK252O', N'3a3a06fc-06f5-4a6c-a110-2e9773d8db29', N'0768934161', 0, 0, NULL, 1, 0, N'Lövlundsvägen 38A', N'Therese Berg', N'14930', N'Nynäshamn', 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Gatuadress], [Namn], [Postnr], [Postort], [Points]) VALUES (N'9dc80905-a5c6-408f-a852-82e64bd9537c', N'Admin', N'ADMIN', N'admin@tomasos.com', N'ADMIN@TOMASOS.COM', 0, N'AQAAAAEAACcQAAAAEBm/asm68Oqy1VpIWn4m8qdgR8jiK8S/CLUSqKel5XNosy8JwjGmyfNZcjBkfs4LhA==', N'XCXX67P6QEW5R3DGTLBTBPIP2L6ZI2TV', N'910a60c1-c11c-481f-82b4-5c25257c096e', NULL, 0, 0, NULL, 1, 0, NULL, N'Admin', NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Gatuadress], [Namn], [Postnr], [Postort], [Points]) VALUES (N'ba73b2c5-1d1c-4ac3-aa9e-1888f23da1fd', N'demo', N'DEMO', N'demo@hotmail.com', N'DEMO@HOTMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKmWQPsT9CcPsw/HOw19kwRE/ph76WgM7MmpPzkiF0TKiym8w1yrIiAWnecAcgA2yg==', N'UQNMDB6AZOIAE43KPXQUNGOWTKM6OD6B', N'aa03e559-1b3a-4d9f-beb4-707ada6f0437', N'078619464', 0, 0, NULL, 1, 0, N'Demo', N'Therese Demo', N'14789', N'Strängnäs', 20)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Gatuadress], [Namn], [Postnr], [Postort], [Points]) VALUES (N'fed532f7-3506-4cb5-9d95-785f60e3875e', N'theresepremium', N'THERESEPREMIUM', N'therese@hotmail.com', N'THERESE@HOTMAIL.COM', 0, N'AQAAAAEAACcQAAAAECdusPYAwMKRcZ3xzGLOSIgT/bXtoHdmu9s16Ljs0WRflPkUonDrwwTz6Ct08mi/gg==', N'ANI5OKFM2VFDK2IC3Z2X7HOI3YZKSITN', N'f4ce6fed-ba4c-4850-a348-45a69675517e', NULL, 0, 0, NULL, 1, 0, N'Premium 2', N'Therese Premium', N'15078', N'Stockholm', 50)
GO
SET IDENTITY_INSERT [dbo].[Bestallning] ON 

INSERT [dbo].[Bestallning] ([BestallningID], [BestallningDatum], [Totalbelopp], [Levererad], [Id]) VALUES (1, CAST(N'2021-02-09T11:05:00.920' AS DateTime), 155, 1, N'8fbd171a-2af5-4232-b95a-b0a4895fa0e4')
INSERT [dbo].[Bestallning] ([BestallningID], [BestallningDatum], [Totalbelopp], [Levererad], [Id]) VALUES (2, CAST(N'2021-02-09T14:35:39.077' AS DateTime), 155, 0, N'fed532f7-3506-4cb5-9d95-785f60e3875e')
INSERT [dbo].[Bestallning] ([BestallningID], [BestallningDatum], [Totalbelopp], [Levererad], [Id]) VALUES (5, CAST(N'2021-02-10T17:23:10.543' AS DateTime), 255, 1, N'8fbd171a-2af5-4232-b95a-b0a4895fa0e4')
INSERT [dbo].[Bestallning] ([BestallningID], [BestallningDatum], [Totalbelopp], [Levererad], [Id]) VALUES (6, CAST(N'2021-02-10T17:25:33.533' AS DateTime), 255, 0, N'8fbd171a-2af5-4232-b95a-b0a4895fa0e4')
INSERT [dbo].[Bestallning] ([BestallningID], [BestallningDatum], [Totalbelopp], [Levererad], [Id]) VALUES (7, CAST(N'2021-02-15T08:57:44.427' AS DateTime), 270, 1, N'13098a5d-c4fc-4e6e-891f-84481ee19328')
INSERT [dbo].[Bestallning] ([BestallningID], [BestallningDatum], [Totalbelopp], [Levererad], [Id]) VALUES (11, CAST(N'2021-02-15T10:28:49.367' AS DateTime), 260, 0, N'ba73b2c5-1d1c-4ac3-aa9e-1888f23da1fd')
INSERT [dbo].[Bestallning] ([BestallningID], [BestallningDatum], [Totalbelopp], [Levererad], [Id]) VALUES (12, CAST(N'2021-02-15T10:31:35.640' AS DateTime), 280, 0, N'ba73b2c5-1d1c-4ac3-aa9e-1888f23da1fd')
INSERT [dbo].[Bestallning] ([BestallningID], [BestallningDatum], [Totalbelopp], [Levererad], [Id]) VALUES (13, CAST(N'2021-02-15T10:32:25.843' AS DateTime), 356, 0, N'ba73b2c5-1d1c-4ac3-aa9e-1888f23da1fd')
SET IDENTITY_INSERT [dbo].[Bestallning] OFF
GO
INSERT [dbo].[BestallningMatratt] ([MatrattID], [BestallningID], [Antal]) VALUES (1, 1, 1)
INSERT [dbo].[BestallningMatratt] ([MatrattID], [BestallningID], [Antal]) VALUES (1, 2, 1)
INSERT [dbo].[BestallningMatratt] ([MatrattID], [BestallningID], [Antal]) VALUES (1, 7, 1)
INSERT [dbo].[BestallningMatratt] ([MatrattID], [BestallningID], [Antal]) VALUES (103, 1, 1)
INSERT [dbo].[BestallningMatratt] ([MatrattID], [BestallningID], [Antal]) VALUES (103, 2, 1)
INSERT [dbo].[BestallningMatratt] ([MatrattID], [BestallningID], [Antal]) VALUES (103, 5, 3)
INSERT [dbo].[BestallningMatratt] ([MatrattID], [BestallningID], [Antal]) VALUES (104, 11, 2)
INSERT [dbo].[BestallningMatratt] ([MatrattID], [BestallningID], [Antal]) VALUES (104, 12, 2)
INSERT [dbo].[BestallningMatratt] ([MatrattID], [BestallningID], [Antal]) VALUES (104, 13, 1)
INSERT [dbo].[BestallningMatratt] ([MatrattID], [BestallningID], [Antal]) VALUES (105, 11, 1)
INSERT [dbo].[BestallningMatratt] ([MatrattID], [BestallningID], [Antal]) VALUES (105, 12, 1)
INSERT [dbo].[BestallningMatratt] ([MatrattID], [BestallningID], [Antal]) VALUES (105, 13, 1)
INSERT [dbo].[BestallningMatratt] ([MatrattID], [BestallningID], [Antal]) VALUES (106, 13, 1)
INSERT [dbo].[BestallningMatratt] ([MatrattID], [BestallningID], [Antal]) VALUES (108, 7, 1)
INSERT [dbo].[BestallningMatratt] ([MatrattID], [BestallningID], [Antal]) VALUES (108, 12, 1)
INSERT [dbo].[BestallningMatratt] ([MatrattID], [BestallningID], [Antal]) VALUES (108, 13, 1)
INSERT [dbo].[BestallningMatratt] ([MatrattID], [BestallningID], [Antal]) VALUES (109, 7, 1)
INSERT [dbo].[BestallningMatratt] ([MatrattID], [BestallningID], [Antal]) VALUES (109, 13, 1)
GO
SET IDENTITY_INSERT [dbo].[Matratt] ON 

INSERT [dbo].[Matratt] ([MatrattID], [MatrattNamn], [Beskrivning], [Pris], [MatrattTypID]) VALUES (1, N'Calzone', N'Inbakad med italienska råvaror', 90, 1)
INSERT [dbo].[Matratt] ([MatrattID], [MatrattNamn], [Beskrivning], [Pris], [MatrattTypID]) VALUES (103, N'Skinksallad', N'God', 85, 3)
INSERT [dbo].[Matratt] ([MatrattID], [MatrattNamn], [Beskrivning], [Pris], [MatrattTypID]) VALUES (104, N'Hawaii', NULL, 85, 1)
INSERT [dbo].[Matratt] ([MatrattID], [MatrattNamn], [Beskrivning], [Pris], [MatrattTypID]) VALUES (105, N'Kycklingpizza', NULL, 90, 1)
INSERT [dbo].[Matratt] ([MatrattID], [MatrattNamn], [Beskrivning], [Pris], [MatrattTypID]) VALUES (106, N'Tonfisksallad', NULL, 90, 3)
INSERT [dbo].[Matratt] ([MatrattID], [MatrattNamn], [Beskrivning], [Pris], [MatrattTypID]) VALUES (108, N'Bolognese', NULL, 90, 2)
INSERT [dbo].[Matratt] ([MatrattID], [MatrattNamn], [Beskrivning], [Pris], [MatrattTypID]) VALUES (109, N'Räksallad', NULL, 90, 3)
INSERT [dbo].[Matratt] ([MatrattID], [MatrattNamn], [Beskrivning], [Pris], [MatrattTypID]) VALUES (111, N'Kebabpizza', NULL, 90, 1)
SET IDENTITY_INSERT [dbo].[Matratt] OFF
GO
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (1, 1)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (1, 2)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (1, 4)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (103, 1)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (103, 2)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (103, 4)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (103, 6)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (104, 1)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (104, 2)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (104, 12)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (105, 2)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (105, 4)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (105, 6)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (105, 10)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (106, 4)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (106, 6)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (106, 7)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (106, 11)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (106, 14)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (106, 15)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (108, 4)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (108, 6)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (108, 9)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (109, 2)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (109, 4)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (109, 6)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (109, 11)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (109, 14)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (109, 18)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (111, 2)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (111, 6)
INSERT [dbo].[MatrattProdukt] ([MatrattID], [ProduktID]) VALUES (111, 21)
GO
SET IDENTITY_INSERT [dbo].[MatrattTyp] ON 

INSERT [dbo].[MatrattTyp] ([MatrattTypID], [Beskrivning]) VALUES (1, N'Pizza')
INSERT [dbo].[MatrattTyp] ([MatrattTypID], [Beskrivning]) VALUES (2, N'Pasta')
INSERT [dbo].[MatrattTyp] ([MatrattTypID], [Beskrivning]) VALUES (3, N'Sallad')
SET IDENTITY_INSERT [dbo].[MatrattTyp] OFF
GO
SET IDENTITY_INSERT [dbo].[Produkt] ON 

INSERT [dbo].[Produkt] ([ProduktID], [ProduktNamn]) VALUES (1, N'Skinka')
INSERT [dbo].[Produkt] ([ProduktID], [ProduktNamn]) VALUES (2, N'Mozzarella')
INSERT [dbo].[Produkt] ([ProduktID], [ProduktNamn]) VALUES (3, N'Champinjoner')
INSERT [dbo].[Produkt] ([ProduktID], [ProduktNamn]) VALUES (4, N'Tomat')
INSERT [dbo].[Produkt] ([ProduktID], [ProduktNamn]) VALUES (6, N'Lök')
INSERT [dbo].[Produkt] ([ProduktID], [ProduktNamn]) VALUES (7, N'Tonfisk')
INSERT [dbo].[Produkt] ([ProduktID], [ProduktNamn]) VALUES (9, N'Köttfärs')
INSERT [dbo].[Produkt] ([ProduktID], [ProduktNamn]) VALUES (10, N'Kyckling')
INSERT [dbo].[Produkt] ([ProduktID], [ProduktNamn]) VALUES (11, N'Gurka')
INSERT [dbo].[Produkt] ([ProduktID], [ProduktNamn]) VALUES (12, N'Ananas')
INSERT [dbo].[Produkt] ([ProduktID], [ProduktNamn]) VALUES (14, N'Paprika')
INSERT [dbo].[Produkt] ([ProduktID], [ProduktNamn]) VALUES (15, N'Sallad')
INSERT [dbo].[Produkt] ([ProduktID], [ProduktNamn]) VALUES (16, N'Grädde')
INSERT [dbo].[Produkt] ([ProduktID], [ProduktNamn]) VALUES (18, N'Räkor')
INSERT [dbo].[Produkt] ([ProduktID], [ProduktNamn]) VALUES (20, N'Fläskfilé')
INSERT [dbo].[Produkt] ([ProduktID], [ProduktNamn]) VALUES (21, N'Kebab')
SET IDENTITY_INSERT [dbo].[Produkt] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2021-04-21 16:04:18 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2021-04-21 16:04:18 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2021-04-21 16:04:18 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2021-04-21 16:04:18 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2021-04-21 16:04:18 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2021-04-21 16:04:18 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2021-04-21 16:04:18 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((0)) FOR [Points]
GO
ALTER TABLE [dbo].[BestallningMatratt] ADD  CONSTRAINT [DF_BestallningMatratt_Antal]  DEFAULT ((1)) FOR [Antal]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Bestallning]  WITH CHECK ADD  CONSTRAINT [FK_Bestallning_AspNetUsers] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Bestallning] CHECK CONSTRAINT [FK_Bestallning_AspNetUsers]
GO
ALTER TABLE [dbo].[BestallningMatratt]  WITH CHECK ADD  CONSTRAINT [FK_BestallningMatratt_Bestallning] FOREIGN KEY([BestallningID])
REFERENCES [dbo].[Bestallning] ([BestallningID])
GO
ALTER TABLE [dbo].[BestallningMatratt] CHECK CONSTRAINT [FK_BestallningMatratt_Bestallning]
GO
ALTER TABLE [dbo].[BestallningMatratt]  WITH CHECK ADD  CONSTRAINT [FK_BestallningMatratt_Matratt] FOREIGN KEY([MatrattID])
REFERENCES [dbo].[Matratt] ([MatrattID])
GO
ALTER TABLE [dbo].[BestallningMatratt] CHECK CONSTRAINT [FK_BestallningMatratt_Matratt]
GO
ALTER TABLE [dbo].[Matratt]  WITH CHECK ADD  CONSTRAINT [FK_Matratt_MatrattTyp] FOREIGN KEY([MatrattTypID])
REFERENCES [dbo].[MatrattTyp] ([MatrattTypID])
GO
ALTER TABLE [dbo].[Matratt] CHECK CONSTRAINT [FK_Matratt_MatrattTyp]
GO
ALTER TABLE [dbo].[MatrattProdukt]  WITH CHECK ADD  CONSTRAINT [FK_MatrattProdukt_Matratt] FOREIGN KEY([MatrattID])
REFERENCES [dbo].[Matratt] ([MatrattID])
GO
ALTER TABLE [dbo].[MatrattProdukt] CHECK CONSTRAINT [FK_MatrattProdukt_Matratt]
GO
ALTER TABLE [dbo].[MatrattProdukt]  WITH CHECK ADD  CONSTRAINT [FK_MatrattProdukt_Produkt] FOREIGN KEY([ProduktID])
REFERENCES [dbo].[Produkt] ([ProduktID])
GO
ALTER TABLE [dbo].[MatrattProdukt] CHECK CONSTRAINT [FK_MatrattProdukt_Produkt]
GO
/****** Object:  StoredProcedure [dbo].[GetMeny]    Script Date: 2021-04-21 16:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetMeny] 
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    Select [MatrattNamn], [Pris]
	from [dbo].[Matratt]
END
GO
USE [master]
GO
ALTER DATABASE [Tomasos] SET  READ_WRITE 
GO
