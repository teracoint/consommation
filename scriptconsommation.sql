USE [master]
GO
/****** Object:  Database [Consommation]    Script Date: 26/12/2022 5:56:16 PM ******/
CREATE DATABASE [Consommation]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Consommation', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Consommation.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Consommation_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Consommation_log.ldf' , SIZE = 2304KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Consommation] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Consommation].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Consommation] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Consommation] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Consommation] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Consommation] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Consommation] SET ARITHABORT OFF 
GO
ALTER DATABASE [Consommation] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Consommation] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Consommation] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Consommation] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Consommation] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Consommation] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Consommation] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Consommation] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Consommation] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Consommation] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Consommation] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Consommation] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Consommation] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Consommation] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Consommation] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Consommation] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Consommation] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Consommation] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Consommation] SET  MULTI_USER 
GO
ALTER DATABASE [Consommation] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Consommation] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Consommation] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Consommation] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Consommation] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Consommation] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Consommation] SET QUERY_STORE = OFF
GO
USE [Consommation]
GO
/****** Object:  Table [dbo].[Categorie]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorie](
	[IdCategorie] [int] NOT NULL,
	[DesCategorie] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categorie] PRIMARY KEY CLUSTERED 
(
	[IdCategorie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employe]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employe](
	[IdEmploye] [int] NOT NULL,
	[Nom] [nvarchar](50) NULL,
	[Prenom] [nvarchar](50) NULL,
	[Etablissement] [nvarchar](50) NULL,
	[Fonction] [nvarchar](50) NULL,
	[PrixRepas] [int] NULL,
 CONSTRAINT [PK__TableCom__3214EC072D70C598] PRIMARY KEY CLUSTERED 
(
	[IdEmploye] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entree]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entree](
	[IdEntree] [int] NOT NULL,
	[IdProduit] [int] NULL,
	[IdFournisseur] [int] NULL,
	[IdJourTravail] [int] NULL,
	[Quantite] [real] NULL,
	[Prix] [real] NULL,
	[Observation] [nvarchar](max) NULL,
 CONSTRAINT [PK__Entree__3214EC07EBEFF34F] PRIMARY KEY CLUSTERED 
(
	[IdEntree] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Etablissement]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Etablissement](
	[IdEtablissement] [int] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Designation] [nvarchar](50) NULL,
	[AmirSarf] [nvarchar](50) NULL,
	[Gerant] [nvarchar](50) NULL,
	[Grade] [nvarchar](50) NULL,
	[Adresse] [nvarchar](50) NULL,
	[Commune] [nvarchar](50) NULL,
	[Daira] [nvarchar](50) NULL,
	[Wilaya] [nvarchar](50) NULL,
	[Telephone] [nvarchar](50) NULL,
	[CCP] [nvarchar](50) NULL,
	[CompteTresor] [nvarchar](50) NULL,
 CONSTRAINT [PK_Etablissement] PRIMARY KEY CLUSTERED 
(
	[IdEtablissement] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fonction]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fonction](
	[IdFonction] [int] NOT NULL,
	[DesFonction] [nvarchar](50) NULL,
	[PrixPetDej] [int] NULL,
	[PrixDej] [int] NULL,
	[PrixGouter] [int] NULL,
	[PrixDiner] [int] NULL,
 CONSTRAINT [PK_Fonction] PRIMARY KEY CLUSTERED 
(
	[IdFonction] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fournisseur]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fournisseur](
	[IdFournisseur] [int] NOT NULL,
	[NomFournisseur] [nvarchar](50) NULL,
	[Activite] [nvarchar](50) NULL,
	[NumRegistre] [nvarchar](50) NULL,
	[NumFiscal] [nvarchar](50) NULL,
	[Adresse] [nvarchar](50) NULL,
	[Telephone] [nvarchar](20) NULL,
 CONSTRAINT [PK__Fourniss__A63C9FB9010692D2] PRIMARY KEY CLUSTERED 
(
	[IdFournisseur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JourTravail]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JourTravail](
	[IdJourTravail] [int] NOT NULL,
	[Date] [nvarchar](50) NULL,
	[Jour] [nvarchar](10) NULL,
 CONSTRAINT [PK__JourTrav__3214EC076A11F65C] PRIMARY KEY CLUSTERED 
(
	[IdJourTravail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LigneTableCommune]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LigneTableCommune](
	[IdLigneTabCom] [int] NOT NULL,
	[IdEmploye] [int] NULL,
	[IdJourTravail] [int] NULL,
	[PetDej] [int] NULL,
	[Dej] [int] NULL,
	[Gouter] [int] NULL,
	[Din] [int] NULL,
 CONSTRAINT [PK__Presence__3214EC0714502CAA] PRIMARY KEY CLUSTERED 
(
	[IdLigneTabCom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[IdMenu] [int] NULL,
	[DesMenu] [nvarchar](50) NULL,
	[DetailMenu] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuJour]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuJour](
	[IdMenuJour] [int] NOT NULL,
	[IdJourTravail] [int] NULL,
	[PetDej] [nvarchar](50) NULL,
	[Dej] [nvarchar](50) NULL,
	[Gouter] [nvarchar](50) NULL,
	[Diner] [nvarchar](50) NULL,
	[NbPetDej] [int] NULL,
	[NbDej] [int] NULL,
	[NbGouter] [int] NULL,
	[NbDiner] [int] NULL,
 CONSTRAINT [PK__Menu__3214EC078D19FB27] PRIMARY KEY CLUSTERED 
(
	[IdMenuJour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plat]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plat](
	[IdPlat] [int] NOT NULL,
	[DesPlat] [nvarchar](max) NULL,
 CONSTRAINT [PK_Plat] PRIMARY KEY CLUSTERED 
(
	[IdPlat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produit]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produit](
	[IdProduit] [int] NOT NULL,
	[DesProduit] [nvarchar](50) NULL,
	[QuantStock] [int] NULL,
	[PrixAchat] [int] NULL,
 CONSTRAINT [PK__Produit__DD0D2C5EDD26611F] PRIMARY KEY CLUSTERED 
(
	[IdProduit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Repas]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Repas](
	[IdRepas] [int] NOT NULL,
	[DesRepas] [nvarchar](max) NULL,
 CONSTRAINT [PK_Repas] PRIMARY KEY CLUSTERED 
(
	[IdRepas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sortie]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sortie](
	[IdSortie] [int] NOT NULL,
	[IdProduit] [int] NULL,
	[IdJourTravail] [int] NULL,
	[Quantite] [real] NULL,
	[Observation] [nvarchar](max) NULL,
 CONSTRAINT [PK__Sortie__3214EC07A250E7E9] PRIMARY KEY CLUSTERED 
(
	[IdSortie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[IdUser] [int] NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Pass] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Entree]  WITH CHECK ADD  CONSTRAINT [FK_Entree_Fournisseur] FOREIGN KEY([IdFournisseur])
REFERENCES [dbo].[Fournisseur] ([IdFournisseur])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Entree] CHECK CONSTRAINT [FK_Entree_Fournisseur]
GO
ALTER TABLE [dbo].[Entree]  WITH CHECK ADD  CONSTRAINT [FK_Entree_JourTravail] FOREIGN KEY([IdJourTravail])
REFERENCES [dbo].[JourTravail] ([IdJourTravail])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Entree] CHECK CONSTRAINT [FK_Entree_JourTravail]
GO
ALTER TABLE [dbo].[Entree]  WITH CHECK ADD  CONSTRAINT [FK_Entree_Produit] FOREIGN KEY([IdProduit])
REFERENCES [dbo].[Produit] ([IdProduit])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Entree] CHECK CONSTRAINT [FK_Entree_Produit]
GO
ALTER TABLE [dbo].[LigneTableCommune]  WITH CHECK ADD  CONSTRAINT [FK_LigneTableCommune_Employe1] FOREIGN KEY([IdEmploye])
REFERENCES [dbo].[Employe] ([IdEmploye])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LigneTableCommune] CHECK CONSTRAINT [FK_LigneTableCommune_Employe1]
GO
ALTER TABLE [dbo].[LigneTableCommune]  WITH CHECK ADD  CONSTRAINT [FK_LigneTableCommune_JourTravail] FOREIGN KEY([IdJourTravail])
REFERENCES [dbo].[JourTravail] ([IdJourTravail])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LigneTableCommune] CHECK CONSTRAINT [FK_LigneTableCommune_JourTravail]
GO
ALTER TABLE [dbo].[MenuJour]  WITH CHECK ADD  CONSTRAINT [FK_Menu_JourTravail] FOREIGN KEY([IdJourTravail])
REFERENCES [dbo].[JourTravail] ([IdJourTravail])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuJour] CHECK CONSTRAINT [FK_Menu_JourTravail]
GO
ALTER TABLE [dbo].[Sortie]  WITH CHECK ADD  CONSTRAINT [FK_Sortie_JourTravail] FOREIGN KEY([IdJourTravail])
REFERENCES [dbo].[JourTravail] ([IdJourTravail])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sortie] CHECK CONSTRAINT [FK_Sortie_JourTravail]
GO
ALTER TABLE [dbo].[Sortie]  WITH CHECK ADD  CONSTRAINT [FK_Sortie_Produit] FOREIGN KEY([IdProduit])
REFERENCES [dbo].[Produit] ([IdProduit])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sortie] CHECK CONSTRAINT [FK_Sortie_Produit]
GO
/****** Object:  StoredProcedure [dbo].[CATEGORIEDELETE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CATEGORIEDELETE]
	@IdCategorie int
AS
DELETE FROM CATEGORIE WHERE IdCategorie = @IdCategorie
GO
/****** Object:  StoredProcedure [dbo].[CATEGORIEDELETEALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CATEGORIEDELETEALL]
AS
DELETE FROM CATEGORIE
GO
/****** Object:  StoredProcedure [dbo].[CATEGORIEGETALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CATEGORIEGETALL]
AS
SELECT IdCategorie AS "رقم الصنف", DesCategorie AS "إسم الصنف" FROM CATEGORIE
GO
/****** Object:  StoredProcedure [dbo].[CATEGORIEGETLASTROW]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CATEGORIEGETLASTROW]
AS
SELECT COUNT(IdCategorie) FROM CATEGORIE
GO
/****** Object:  StoredProcedure [dbo].[CATEGORIEINSERT]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CATEGORIEINSERT]
	@IdCategorie int,
	@DesCategorie nvarchar(50)
AS
INSERT INTO CATEGORIE VALUES (@IdCategorie, @DesCategorie)
GO
/****** Object:  StoredProcedure [dbo].[CATEGORIEMAXID]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CATEGORIEMAXID]
AS
SELECT MAX(IdCategorie) FROM CATEGORIE
GO
/****** Object:  StoredProcedure [dbo].[CATEGORIEUPDATE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CATEGORIEUPDATE]
	@IdCategorie int,
	@DesCategorie nvarchar(250)
AS
UPDATE CATEGORIE SET DesCategorie = @DesCategorie WHERE IdCategorie = @IdCategorie
GO
/****** Object:  StoredProcedure [dbo].[CONSTABCOMJOURNALIERE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CONSTABCOMJOURNALIERE]
@IdJourTravail int
AS
SELECT Employe.IdEmploye, Employe.Nom, Employe.Prenom, Employe.Fonction, Employe.Etablissement, Employe.PrixRepas, JourTravail.Date, LigneTableCommune.PetDej, LigneTableCommune.Dej, LigneTableCommune.Gouter, LigneTableCommune.Din
FROM Employe, LigneTableCommune, JourTravail
WHERE Employe.IdEmploye = LigneTableCommune.IdEmploye and (LigneTableCommune.PetDej + LigneTableCommune.Dej + LigneTableCommune.Gouter + LigneTableCommune.Din > 0) and LigneTableCommune.IdJourTravail = JourTravail.IdJourTravail and JourTravail.IdJourTravail = @IdJourTravail



 
GO
/****** Object:  StoredProcedure [dbo].[CONSTABCOMMENSUELLE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CONSTABCOMMENSUELLE]
@Mois int
AS
SELECT  Employe.IdEmploye, 
		Employe.Nom, 
		Employe.Prenom, 
		Employe.Fonction, 
		Employe.Etablissement, 
		Employe.PrixRepas, 
		JourTravail.Date, 
		LigneTableCommune.PetDej, 
		LigneTableCommune.Dej, 
		LigneTableCommune.Gouter, 
		LigneTableCommune.Din,
		LigneTableCommune.IdJourTravail,
		JourTravail.IdJourTravail
FROM 
		Employe, 
		LigneTableCommune, 
		JourTravail
WHERE 
		Employe.IdEmploye = LigneTableCommune.IdEmploye and 
		(LigneTableCommune.PetDej + LigneTableCommune.Dej + LigneTableCommune.Gouter + LigneTableCommune.Din > 0) and 
		LigneTableCommune.IdJourTravail = JourTravail.IdJourTravail and 
		MONTH(Convert(Datetime2, JourTravail.Date, 103)) = @Mois

GO
/****** Object:  StoredProcedure [dbo].[CONSTABCOMMENSUELLEEMPLOYE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CONSTABCOMMENSUELLEEMPLOYE]
@Mois int,
@IdEmploye int
AS
SELECT Employe.Nom, Employe.Prenom, Employe.Fonction, Employe.Etablissement, Employe.PrixRepas, Convert(Datetime2, JourTravail.Date, 103), LigneTableCommune.PetDej, LigneTableCommune.Dej, LigneTableCommune.Gouter, LigneTableCommune.Din
FROM Employe, LigneTableCommune, JourTravail
WHERE Employe.IdEmploye = LigneTableCommune.IdEmploye and (LigneTableCommune.PetDej + LigneTableCommune.Dej + LigneTableCommune.Gouter + LigneTableCommune.Din > 0) and LigneTableCommune.IdJourTravail = JourTravail.IdJourTravail and MONTH(Convert(Datetime2, JourTravail.Date, 103)) = @Mois and Employe.IdEmploye = @IdEmploye

GO
/****** Object:  StoredProcedure [dbo].[EMPLOYEDELETE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EMPLOYEDELETE]
	@IdEmploye int
AS
DELETE FROM Employe WHERE IdEmploye = @IdEmploye
GO
/****** Object:  StoredProcedure [dbo].[EMPLOYEDELETEALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EMPLOYEDELETEALL]
AS
DELETE FROM EMPLOYE
GO
/****** Object:  StoredProcedure [dbo].[EMPLOYEGETALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EMPLOYEGETALL]
AS
SELECT IdEmploye AS "الرقم", Nom AS "الإسم", Prenom AS "اللقب", Etablissement AS "المؤسسة", Fonction AS "الوظيفة", PrixRepas AS "السعر" FROM EMPLOYE
GO
/****** Object:  StoredProcedure [dbo].[EMPLOYEGETALLDATA]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EMPLOYEGETALLDATA]
AS
SELECT IdEmploye, Nom + ' ' +  Prenom AS NomEmploye, Etablissement, Fonction, PrixRepas FROM EMPLOYE
GO
/****** Object:  StoredProcedure [dbo].[EMPLOYEGETFONCTION]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EMPLOYEGETFONCTION]
	@IdEmploye int 
AS
SELECT Fonction FROM EMPLOYE WHERE IdEmploye = @IdEmploye
GO
/****** Object:  StoredProcedure [dbo].[EMPLOYEGETLASTROW]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EMPLOYEGETLASTROW]
AS
SELECT COUNT(IdEmploye) FROM EMPLOYE
GO
/****** Object:  StoredProcedure [dbo].[EMPLOYEINSERT]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EMPLOYEINSERT]
	@IdEmploye int, 
	@Nom nvarchar(50),
	@Prenom nvarchar(50),
	@Etablissement nvarchar(50),
	@Fonction nvarchar(50),
	@PrixRepas int
AS
INSERT INTO EMPLOYE VALUES (@IdEmploye, @Nom, @Prenom, @Etablissement, @Fonction, @PrixRepas)
GO
/****** Object:  StoredProcedure [dbo].[EMPLOYEMAXID]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EMPLOYEMAXID]
AS
SELECT MAX(IdEmploye) FROM EMPLOYE
GO
/****** Object:  StoredProcedure [dbo].[EMPLOYEUPDATE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EMPLOYEUPDATE]
	@IdEmploye int,
	@Nom nvarchar(50),
	@Prenom nvarchar(50),
	@Etablissement nvarchar(50),
	@Fonction nvarchar(50),
	@PrixRepas int
AS
UPDATE EMPLOYE SET Nom = @Nom, Prenom = @Prenom, Etablissement = @Etablissement, Fonction = @Fonction, PrixRepas = @PrixRepas
	WHERE IdEmploye = @IdEmploye
GO
/****** Object:  StoredProcedure [dbo].[ENTREEDELETE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ENTREEDELETE]
	@IdEntree int
AS
DELETE FROM ENTREE WHERE IdEntree = @IdEntree
GO
/****** Object:  StoredProcedure [dbo].[ENTREEDELETEALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ENTREEDELETEALL]
AS
DELETE FROM ENTREE
GO
/****** Object:  StoredProcedure [dbo].[ENTREEGETALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ENTREEGETALL]
@IdJourTravail int
AS
SELECT IdEntree AS "الرقم", Produit.DesProduit AS "المؤونة", Fournisseur.NomFournisseur AS "اسم الممون", JourTravail.Date AS "يوم العمل", Quantite AS "الكمية", Prix AS "السعر", Observation AS "الملاحظة" 
FROM Entree, Produit, Fournisseur, JourTravail WHERE (Entree.IdProduit = Produit.IdProduit and Entree.IdFournisseur = Fournisseur.IdFournisseur and Entree.IdJourTravail = JourTravail.IdJourTravail and Entree.IdJourTravail = @IdJourTravail)


 
GO
/****** Object:  StoredProcedure [dbo].[ENTREEGETALLDATA]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ENTREEGETALLDATA]
AS SELECT * FROM ENTREE


 
GO
/****** Object:  StoredProcedure [dbo].[ENTREEGETLASTROW]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ENTREEGETLASTROW]
AS
SELECT COUNT(IdEntree) FROM ENTREE
GO
/****** Object:  StoredProcedure [dbo].[ENTREEINSERT]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ENTREEINSERT]
	@IdEntree int,
	@IdProduit int, 
	@IdFournisseur int, 
	@IdJourTravail int,
	@Quantite float, 
	@Prix float, 
	@Observation nvarchar(max) 
AS
INSERT INTO ENTREE VALUES (@IdEntree, @IdProduit, @IdFournisseur, @IdJourTravail, @Quantite, @Prix, @Observation)
GO
/****** Object:  StoredProcedure [dbo].[ENTREEMAXID]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ENTREEMAXID]
AS
SELECT MAX(IdEntree) FROM ENTREE
GO
/****** Object:  StoredProcedure [dbo].[ENTREEUPDATE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ENTREEUPDATE]
	@IdEntree int,
	@IdProduit int, 
	@IdFournisseur int, 
	@IdJourTravail int, 
	@Quantite float, 
	@Prix float, 
	@Observation nvarchar(max) 
AS
UPDATE ENTREE SET IdProduit = @IdProduit, IdFournisseur = @IdFournisseur, IdJourTravail = @IdJourTravail, Quantite = @Quantite, Prix = @Prix, Observation = @Observation WHERE IdEntree = @IdEntree
GO
/****** Object:  StoredProcedure [dbo].[ETABLISSEMENTDELETE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ETABLISSEMENTDELETE]
	@IdEtablissement int
AS
DELETE FROM ETABLISSEMENT WHERE IdEtablissement = @IdEtablissement
GO
/****** Object:  StoredProcedure [dbo].[ETABLISSEMENTDELETEALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ETABLISSEMENTDELETEALL]
AS
DELETE FROM ETABLISSEMENT 
GO
/****** Object:  StoredProcedure [dbo].[ETABLISSEMENTGETALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ETABLISSEMENTGETALL]
AS
SELECT IdEtablissement AS "الرقم",Code AS "الرمز", Designation AS "الإسم", AmirSarf AS "الآمر بالصرف", Gerant AS "المسير", Grade AS "الرتبة", Adresse AS "العنوان", Commune AS "البلدية", Daira AS "الدائرة", Wilaya AS "الولاية", Telephone AS "الهاتف", CCP AS "الحساب الجاري", CompteTresor AS "الحساب لدى الخزينة" 
FROM ETABLISSEMENT
GO
/****** Object:  StoredProcedure [dbo].[ETABLISSEMENTGETLASTROW]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ETABLISSEMENTGETLASTROW]
AS
SELECT COUNT(IdEtablissement) FROM ETABLISSEMENT
GO
/****** Object:  StoredProcedure [dbo].[ETABLISSEMENTINSERT]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[ETABLISSEMENTINSERT]
@IdEtablissement int,@Code nvarchar(50),

	@Designation nvarchar(50),
	@AmirSarf nvarchar(50),
	@Gerant nvarchar(50),
	@Grade nvarchar(50),
	@Adresse nvarchar(50),
	@Commune nvarchar(50),
	@Daira nvarchar(50),
	@Wilaya nvarchar(50),
	@Telephone nvarchar(50),
	@CCP nvarchar(50),
	@CompteTresor nvarchar(50)
	as
 INSERT INTO ETABLISSEMENT VALUES (@IdEtablissement,@Code, @Designation, @AmirSarf, @Gerant, @Grade, @Adresse, @Commune, @Daira, @Wilaya, @Telephone, @CCP, @CompteTresor)
GO
/****** Object:  StoredProcedure [dbo].[ETABLISSEMENTMAXID]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ETABLISSEMENTMAXID]
AS
SELECT MAX(IdEtablissement) FROM ETABLISSEMENT
GO
/****** Object:  StoredProcedure [dbo].[ETABLISSEMENTUPDATE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ETABLISSEMENTUPDATE]
    @IdEtablissement int,
	@Code nvarchar(50),
	@Designation nvarchar(50),
	@AmirSarf nvarchar(50),
	@Gerant nvarchar(50),
	@Grade nvarchar(50),
	@Adresse nvarchar(50),
	@Commune nvarchar(50),
	@Daira nvarchar(50),
	@Wilaya nvarchar(50),
	@Telephone nvarchar(50),
	@CCP nvarchar(50),
	@CompteTresor nvarchar(50)
AS
UPDATE ETABLISSEMENT SET Code = @Code, Designation = @Designation, AmirSarf = @AmirSarf, Gerant = @Gerant, Grade = @Grade, 
			Adresse = @Adresse, Commune = @Commune, Daira = @Daira, Wilaya = @Wilaya, Telephone = @Telephone, CCP = @CCP, CompteTresor = @CompteTresor
WHERE IdEtablissement = @IdEtablissement
GO
/****** Object:  StoredProcedure [dbo].[FEUILLECONSJOURNALIERE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FEUILLECONSJOURNALIERE]
@IdJourTravail int
AS
SELECT 
*
FROM
(SELECT Entree.IdProduit, Sum(Entree.Quantite) AS QuantiteEntree FROM ENTREE WHERE Entree.IdJourTravail = @IdJourTravail GROUP BY Entree.IdProduit) AS t1
INNER JOIN
(SELECT Sortie.IdProduit, Sum(Sortie.Quantite) AS QuantiteSortie FROM SORTIE WHERE Sortie.IdJourTravail = @IdJourTravail GROUP BY Sortie.IdProduit) AS t2
ON t1.IdProduit = t2.IdProduit 
INNER JOIN 
(SELECT IdProduit, DesProduit, QuantStock, PrixAchat, JourTravail.Date FROM Produit, JourTravail WHERE JourTravail.IdJourTravail = @IdJourTravail) AS t3
ON t3.IdProduit = t1.IdProduit 
UNION

SELECT
	Entree.IdProduit, 
	Sum(Entree.Quantite) AS QuantiteEntree, 
	Entree.IdProduit, 
	0,
	Entree.IdProduit,
	(SELECT DesProduit FROM Produit WHERE Produit.IdProduit = Entree.IdProduit),
	(SELECT QuantStock FROM Produit WHERE Produit.IdProduit = Entree.IdProduit),
	(SELECT PrixAchat FROM Produit WHERE Produit.IdProduit = Entree.IdProduit),
	(SELECT JourTravail.Date FROM JourTravail WHERE JourTravail.IdJourTravail = @IdJourTravail)
FROM Entree WHERE Entree.IdJourTravail = @IdJourTravail and (Entree.IdProduit NOT IN (SELECT IdProduit FROM Sortie WHERE Sortie.IdJourTravail = @IdJourTravail)) GROUP BY Entree.IdProduit
UNION

SELECT 
	Sortie.IdProduit, 
	0, 
	Sortie.IdProduit, 
	Sum(Sortie.Quantite) AS QuantiteSortie,
	Sortie.IdProduit, 
	(Select DesProduit From Produit Where Produit.IdProduit = Sortie.IdProduit),
	(Select QuantStock From Produit Where Produit.IdProduit = Sortie.IdProduit),
	(Select PrixAchat From Produit Where Produit.IdProduit = Sortie.IdProduit),
	(SELECT JourTravail.Date FROM JourTravail WHERE JourTravail.IdJourTravail = @IdJourTravail)
FROM Sortie WHERE Sortie.IdJourTravail = @IdJourTravail and (Sortie.IdProduit NOT IN (SELECT IdProduit FROM Entree WHERE Entree.IdJourTravail = @IdJourTravail)) GROUP BY Sortie.IdProduit
GO
/****** Object:  StoredProcedure [dbo].[FEUILLECONSMENSUELLE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FEUILLECONSMENSUELLE]
@Mois int
AS
SELECT 
*
FROM
(SELECT Entree.IdProduit, Sum(Entree.Quantite) AS QuantiteEntree FROM ENTREE WHERE Entree.IdJourTravail IN (SELECT IdJourTravail FROM JourTravail Where MONTH(Convert(Datetime2,JourTravail.Date,103)) = @Mois) GROUP BY Entree.IdProduit) AS t1
INNER JOIN
(SELECT Sortie.IdProduit, Sum(Sortie.Quantite) AS QuantiteSortie FROM SORTIE WHERE Sortie.IdJourTravail IN (SELECT IdJourTravail FROM JourTravail Where MONTH(Convert(Datetime2,JourTravail.Date,103)) = @Mois) GROUP BY Sortie.IdProduit) AS t2
ON t1.IdProduit = t2.IdProduit 
INNER JOIN 
--(SELECT IdProduit, DesProduit, QuantStock, PrixAchat, MONTH(JourTravail.Date) FROM Produit, JourTravail WHERE MONTH(JourTravail.Date) = @Mois) AS t3
(SELECT IdProduit, DesProduit, QuantStock, PrixAchat FROM Produit) AS t3
ON t3.IdProduit = t1.IdProduit 
UNION

SELECT
	Entree.IdProduit, 
	Sum(Entree.Quantite) AS QuantiteEntree, 
	Entree.IdProduit, 
	0,
	Entree.IdProduit,
	(SELECT DesProduit FROM Produit WHERE Produit.IdProduit = Entree.IdProduit),
	(SELECT QuantStock FROM Produit WHERE Produit.IdProduit = Entree.IdProduit),
	(SELECT PrixAchat FROM Produit WHERE Produit.IdProduit = Entree.IdProduit)
	--(SELECT JourTravail.Date FROM JourTravail WHERE MONTH(JourTravail.Date) = @Mois)
FROM Entree WHERE Entree.IdJourTravail IN (SELECT IdJourTravail FROM JourTravail Where MONTH(Convert(Datetime2,JourTravail.Date,103)) = @Mois) and (Entree.IdProduit NOT IN (SELECT IdProduit FROM Sortie WHERE Sortie.IdJourTravail IN (SELECT IdJourTravail FROM JourTravail Where MONTH(Convert(Datetime2,JourTravail.Date,103)) = @Mois))) GROUP BY Entree.IdProduit
UNION

SELECT 
	Sortie.IdProduit, 
	0, 
	Sortie.IdProduit, 
	Sum(Sortie.Quantite) AS QuantiteSortie,
	Sortie.IdProduit, 
	(Select DesProduit From Produit Where Produit.IdProduit = Sortie.IdProduit),
	(Select QuantStock From Produit Where Produit.IdProduit = Sortie.IdProduit),
	(Select PrixAchat From Produit Where Produit.IdProduit = Sortie.IdProduit)
	--(SELECT JourTravail.Date FROM JourTravail WHERE MONTH(JourTravail.Date) = @Mois)
FROM Sortie WHERE Sortie.IdJourTravail IN (SELECT IdJourTravail FROM JourTravail Where MONTH(Convert(Datetime2,JourTravail.Date,103)) = @Mois) and (Sortie.IdProduit NOT IN (SELECT IdProduit FROM Entree WHERE Entree.IdJourTravail IN (SELECT IdJourTravail FROM JourTravail Where MONTH(Convert(Datetime2,JourTravail.Date,103)) = @Mois))) GROUP BY Sortie.IdProduit
GO
/****** Object:  StoredProcedure [dbo].[FONCTIONDELETE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[FONCTIONDELETE]
	@IdFonction int
AS
DELETE FROM Fonction WHERE IdFonction = @IdFonction
GO
/****** Object:  StoredProcedure [dbo].[FONCTIONDELETEALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[ETABLISSEMENTDELETEALL]    Script Date: 2022/10/18 13:29:01 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
create PROCEDURE [dbo].[FONCTIONDELETEALL]
AS
DELETE FROM Fonction 
GO
/****** Object:  StoredProcedure [dbo].[FONCTIONGETALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[ETABLISSEMENTGETALL]    Script Date: 2022/10/18 13:29:49 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
CREATE PROCEDURE [dbo].[FONCTIONGETALL]
AS
SELECT IdFonction AS "رقم الوظيفة",DesFonction AS "إسم الوظيفة", PrixPetDej AS "سعر وجبة الفطور", PrixDej AS "سعر وجبة الغداء", PrixGouter AS "سعر اللمجة", PrixDiner AS "سعر وجبة العشاء" FROM Fonction
GO
/****** Object:  StoredProcedure [dbo].[FONCTIONGETLASTROW]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[FOURNISSEURGETLASTROW]    Script Date: 2022/10/19 15:04:20 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
create PROCEDURE [dbo].[FONCTIONGETLASTROW]
AS
SELECT COUNT(IdFonction) FROM Fonction
GO
/****** Object:  StoredProcedure [dbo].[FONCTIONINSERT]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[FONCTIONUPDATE]    Script Date: 2022/10/18 13:57:01 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
/****** Object:  StoredProcedure [dbo].[ETABLISSEMENTUPDATE]    Script Date: 2022/10/18 13:41:04 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
create PROCEDURE [dbo].[FONCTIONINSERT]
  @IdFonction int,
@DesFonction nvarchar(50),

	@PrixPetDej int,
	@PrixDej int,
	@PrixGouter int,
	@PrixDiner int
	
	as
 INSERT INTO Fonction VALUES (@IdFonction,@DesFonction, @PrixPetDej, @PrixDej, @PrixGouter, @PrixDiner)
GO
/****** Object:  StoredProcedure [dbo].[FONCTIONMAXID]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[ETABLISSEMENTMAXID]    Script Date: 2022/10/18 13:40:07 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
create PROCEDURE [dbo].[FONCTIONMAXID]
AS
SELECT MAX(IdFonction) FROM Fonction
GO
/****** Object:  StoredProcedure [dbo].[FONCTIONUPDATE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[ETABLISSEMENTUPDATE]    Script Date: 2022/10/18 13:41:04 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
create PROCEDURE [dbo].[FONCTIONUPDATE]
   @IdFonction int,
	@DesFonction nvarchar(50),
	@PrixPetDej int,
	@PrixDej int,
	@PrixGouter int,
	@PrixDiner int
	
AS
UPDATE Fonction SET DesFonction = @DesFonction, PrixPetDej = @PrixPetDej, PrixDej = @PrixDej, PrixGouter = @PrixGouter, PrixDiner = @PrixDiner 
WHERE IdFonction = @IdFonction 
GO
/****** Object:  StoredProcedure [dbo].[FOURNISSEURDELETE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FOURNISSEURDELETE]
	@IdFournisseur int
AS
DELETE FROM FOURNISSEUR WHERE IdFournisseur = @IdFournisseur
GO
/****** Object:  StoredProcedure [dbo].[FOURNISSEURDELETEALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FOURNISSEURDELETEALL]
AS
DELETE FROM FOURNISSEUR
GO
/****** Object:  StoredProcedure [dbo].[FOURNISSEURENTREE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FOURNISSEURENTREE]
@IdFournisseur int,
@d1 nvarchar(50),
@d2 nvarchar(50)
AS
SELECT 
	(Select JourTravail.Date FROM JourTravail WHERE JourTravail.IdJourTravail = Entree.IdJourTravail) AS DateEntree,
	Entree.IdEntree,
	Entree.IdProduit,
	Entree.IdJourTravail,
	Entree.IdFournisseur,
	Entree.Quantite,

	Produit.IdProduit,
	Produit.DesProduit,
	Produit.PrixAchat,

	Fournisseur.IdFournisseur,
	Fournisseur.Activite,
	Fournisseur.NomFournisseur
FROM 
	Entree, Fournisseur, Produit
WHERE 
	Entree.IdProduit = Produit.IdProduit 
	AND Fournisseur.IdFournisseur = @IdFournisseur 
    AND Entree.IdFournisseur = @IdFournisseur 
  	AND CONVERT(datetime2,(Select JourTravail.Date FROM JourTravail WHERE JourTravail.IdJourTravail = Entree.IdJourTravail),103) BETWEEN CONVERT(datetime2,@d1,103) AND CONVERT(datetime2,@d2,103)

GO
/****** Object:  StoredProcedure [dbo].[FOURNISSEURGETALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FOURNISSEURGETALL]
AS
SELECT IdFournisseur AS "الرقم", NomFournisseur AS "الإسم واللقب", Activite AS "النشاط",	NumRegistre AS "رقم السجل", NumFiscal AS "الرقم الجبائي",	Adresse AS "العنوان", Telephone AS "الهاتف" FROM FOURNISSEUR
GO
/****** Object:  StoredProcedure [dbo].[FOURNISSEURGETLASTROW]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FOURNISSEURGETLASTROW]
AS
SELECT COUNT(IdFournisseur) FROM FOURNISSEUR
GO
/****** Object:  StoredProcedure [dbo].[FOURNISSEURINSERT]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FOURNISSEURINSERT]
	@IdFournisseur int,
	@NomFournisseur nvarchar(50),
	@Activite nvarchar(50),
	@NumRegistre nvarchar(50),
	@NumFiscal nvarchar(50),
	@Adresse nvarchar(50),
	@Telephone nvarchar(20)
AS
INSERT INTO FOURNISSEUR VALUES (@IdFournisseur, @NomFournisseur, @Activite,	@NumRegistre, @NumFiscal, @Adresse, @Telephone)
GO
/****** Object:  StoredProcedure [dbo].[FOURNISSEURMAXID]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FOURNISSEURMAXID]
AS
SELECT MAX(IdFournisseur) FROM FOURNISSEUR
GO
/****** Object:  StoredProcedure [dbo].[FOURNISSEURUPDATE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FOURNISSEURUPDATE]
	@IdFournisseur int,
	@NomFournisseur nvarchar(50),
	@Activite nvarchar(50),
	@NumRegistre nvarchar(50),
	@NumFiscal nvarchar(50),
	@Adresse nvarchar(50),
	@Telephone nvarchar(20)
AS
UPDATE FOURNISSEUR SET NomFournisseur = @NomFournisseur, Activite = @Activite,	NumRegistre = @NumRegistre,
	NumFiscal = @NumFiscal,	Adresse = @Adresse, Telephone  = @Telephone WHERE IdFournisseur = @IdFournisseur
GO
/****** Object:  StoredProcedure [dbo].[JOURTRAVAILDELETE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JOURTRAVAILDELETE]
	@IdJourTravail int
AS
DELETE FROM JOURTRAVAIL WHERE IdJourTravail = @IdJourTravail
GO
/****** Object:  StoredProcedure [dbo].[JOURTRAVAILDELETEALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JOURTRAVAILDELETEALL]
AS
DELETE FROM JOURTRAVAIL
GO
/****** Object:  StoredProcedure [dbo].[JOURTRAVAILGETALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JOURTRAVAILGETALL]
AS
SELECT IdJourTravail AS "الرقم", Convert(Datetime2, Date, 103) AS "التاريخ", Jour AS "اليوم" FROM JOURTRAVAIL
GO
/****** Object:  StoredProcedure [dbo].[JOURTRAVAILGETLASTROW]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JOURTRAVAILGETLASTROW]
AS
SELECT COUNT(IdJourTravail) FROM JOURTRAVAIL
GO
/****** Object:  StoredProcedure [dbo].[JOURTRAVAILINSERT]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JOURTRAVAILINSERT]
	@IdJourTravail int,
	@Date nvarchar(20),
	@Jour nvarchar(10)
AS
INSERT INTO JOURTRAVAIL VALUES (@IdJourTravail, @Date, @Jour)
GO
/****** Object:  StoredProcedure [dbo].[JOURTRAVAILMAXID]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JOURTRAVAILMAXID]
AS
SELECT MAX(IdJourTravail) FROM JOURTRAVAIL
GO
/****** Object:  StoredProcedure [dbo].[JOURTRAVAILUPDATE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[JOURTRAVAILUPDATE]
	@IdJourTravail int,
	@Date nvarchar(20),
	@Jour nvarchar(10)
AS
UPDATE JOURTRAVAIL SET Date = @Date, Jour = @Jour
	WHERE IdJourTravail = @IdJourTravail
GO
/****** Object:  StoredProcedure [dbo].[LIGNETABLECOMMUNEDELETE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LIGNETABLECOMMUNEDELETE]
	@IdLigneTabCom int
AS
DELETE FROM LIGNETABLECOMMUNE WHERE IdLigneTabCom = @IdLigneTabCom
GO
/****** Object:  StoredProcedure [dbo].[LIGNETABLECOMMUNEDELETEALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LIGNETABLECOMMUNEDELETEALL]
AS
DELETE FROM LIGNETABLECOMMUNE
GO
/****** Object:  StoredProcedure [dbo].[LIGNETABLECOMMUNEGETALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LIGNETABLECOMMUNEGETALL]
@IdJourTravail int
AS
SELECT IdLigneTabCom, Employe.IdEmploye, JourTravail.IdJourTravail, PetDej, Dej, Gouter, Din 
FROM LIGNETABLECOMMUNE, EMPLOYE, JOURTRAVAIL
WHERE LIGNETABLECOMMUNE.IdEmploye = EMPLOYE.IdEmploye and LIGNETABLECOMMUNE.IdJourTravail = JOURTRAVAIL.IdJourTravail and LIGNETABLECOMMUNE.IdJourTravail = @IdJourTravail




GO
/****** Object:  StoredProcedure [dbo].[LIGNETABLECOMMUNEGETALLDGV]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LIGNETABLECOMMUNEGETALLDGV]
@IdJourTravail int
AS
SELECT IdLigneTabCom AS "الرقم", Employe.Nom + ' ' +  Employe.Prenom AS "الموظف", Employe.Fonction AS "الوظيفة", JOURTRAVAIL.IdJourTravail AS 'يوم العمل', PetDej AS "الفطور", Dej AS "الغذاء", Gouter AS "اللمجة", Din AS "العشاء" 
FROM LIGNETABLECOMMUNE, EMPLOYE, JOURTRAVAIL WHERE LIGNETABLECOMMUNE.IdEmploye = EMPLOYE.IdEmploye and LIGNETABLECOMMUNE.IdJourTravail = JOURTRAVAIL.IdJourTravail and LIGNETABLECOMMUNE.IdJourTravail = @IdJourTravail
GO
/****** Object:  StoredProcedure [dbo].[LIGNETABLECOMMUNEGETLASTROW]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LIGNETABLECOMMUNEGETLASTROW]
AS
SELECT COUNT(IdLigneTabCom) FROM LIGNETABLECOMMUNE
GO
/****** Object:  StoredProcedure [dbo].[LIGNETABLECOMMUNEINSERT]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LIGNETABLECOMMUNEINSERT]
	@IdLigneTabCom int,
	@IdEmploye int,
	@IdJourTravail int,
	@PetDej int,
	@Dej int,
	@Gouter int,
	@Din int
AS
INSERT INTO LIGNETABLECOMMUNE VALUES (@IdLigneTabCom, @IdEmploye, @IdJourTravail, @PetDej, @Dej, @Gouter, @Din)

GO
/****** Object:  StoredProcedure [dbo].[LIGNETABLECOMMUNEMAXID]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LIGNETABLECOMMUNEMAXID]
AS
SELECT MAX(IdLigneTabCom) FROM LIGNETABLECOMMUNE
GO
/****** Object:  StoredProcedure [dbo].[LIGNETABLECOMMUNETOTALREPAS]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LIGNETABLECOMMUNETOTALREPAS]
@IdJourTravail int
AS
SELECT  Sum(LigneTableCommune.PetDej) AS NbPetDej, Sum(LigneTableCommune.Dej) AS NbDej, Sum(LigneTableCommune.Gouter) AS NbGouter, Sum(LigneTableCommune.Din) AS NbDin
FROM LigneTableCommune, JourTravail
WHERE LigneTableCommune.IdJourTravail = JourTravail.IdJourTravail and JourTravail.IdJourTravail = @IdJourTravail
GO
/****** Object:  StoredProcedure [dbo].[LIGNETABLECOMMUNEUPDATE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LIGNETABLECOMMUNEUPDATE]
	@IdLigneTabCom int,
	@IdEmploye int,
	@IdJourTravail int,
	@PetDej int,
	@Dej int,
	@Gouter int,
	@Din int
AS
UPDATE LIGNETABLECOMMUNE SET IdEmploye = @IdEmploye, IdJourTravail = @IdJourTravail, PetDej = @PetDej, Dej = @Dej, Gouter = @Gouter, Din = @Din
		 WHERE IdLigneTabCom = @IdLigneTabCom

GO
/****** Object:  StoredProcedure [dbo].[MENUDELETE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MENUDELETE]
	@IdMenu int
AS
DELETE FROM MENU WHERE IdMenu = @IdMenu
GO
/****** Object:  StoredProcedure [dbo].[MENUDELETEALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MENUDELETEALL]
AS
DELETE FROM MENU
GO
/****** Object:  StoredProcedure [dbo].[MENUGETALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MENUGETALL]
AS
SELECT IdMenu AS "رقم القائمة", DesMenu AS "تعيين القائمة", DetailMenu AS "نفاصيل القائمة" FROM MENU

GO
/****** Object:  StoredProcedure [dbo].[MENUGETLASTROW]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MENUGETLASTROW]
AS
SELECT COUNT(IdMenu) FROM MENU
GO
/****** Object:  StoredProcedure [dbo].[MENUINSERT]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MENUINSERT]
	@IdMenu int,
	@DesMenu nvarchar(50),
	@DetailMenu nvarchar(100)
	
AS
INSERT INTO MENU VALUES (@IdMenu, @DesMenu, @DetailMenu)
GO
/****** Object:  StoredProcedure [dbo].[MENUJOURDELETE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MENUJOURDELETE]
	@IdMenuJour int
AS
DELETE FROM MENUJOUR WHERE IdMenuJour = @IdMenuJour
GO
/****** Object:  StoredProcedure [dbo].[MENUJOURDELETEALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MENUJOURDELETEALL]
AS
DELETE FROM MENUJOUR
GO
/****** Object:  StoredProcedure [dbo].[MENUJOURGETALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MENUJOURGETALL]
AS
SELECT IdMenuJour AS "الرقم", IdJourTravail AS "يوم العمل", PetDej AS "الفطور", Dej AS "الغذاء", Gouter As "اللمجة", Diner AS "العشاء", NbPetDej AS "ع الفطور", NbDej AS "ع الغذاء", NbGouter As "ع اللمجة", NbDiner AS "ع العشاء"  FROM MENUJOUR

GO
/****** Object:  StoredProcedure [dbo].[MENUJOURGETLASTROW]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MENUJOURGETLASTROW]
AS
SELECT COUNT(IdMenuJour) FROM MENUJOUR
GO
/****** Object:  StoredProcedure [dbo].[MENUJOURINSERT]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MENUJOURINSERT]
	@IdMenuJour int,
	@IdJourTravail int,
	@PetDej nvarchar(50),
	@Dej nvarchar(50),
	@Gouter nvarchar(50),
	@Diner nvarchar(50),
	@NbPetDej int,
	@NbDej int,
	@NbGouter int,
	@NbDiner int
AS
INSERT INTO MENUJOUR VALUES (@IdMenuJour, @IdJourTravail, @PetDej, @Dej, @Gouter, @Diner, @NbPetDej, @NbDej, @NbGouter, @NbDiner)
GO
/****** Object:  StoredProcedure [dbo].[MENUJOURMAXID]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MENUJOURMAXID]
AS
SELECT MAX(IdMenuJour) FROM MENUJOUR
GO
/****** Object:  StoredProcedure [dbo].[MENUJOURNBREPAS]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MENUJOURNBREPAS]
@IdJourTravail int
AS
SELECT  *
FROM MENUJOUR, JourTravail
WHERE MenuJour.IdJourTravail = JourTravail.IdJourTravail and JourTravail.IdJourTravail = @IdJourTravail
GO
/****** Object:  StoredProcedure [dbo].[MENUJOURUPDATE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MENUJOURUPDATE]
	@IdMenuJour int,
	@IdJourTravail int,
	@PetDej nvarchar(50),
	@Dej nvarchar(50),
	@Gouter nvarchar(50),
	@Diner nvarchar(50),
	@NbPetDej int,
	@NbDej int,
	@NbGouter int,
	@NbDiner int
AS
UPDATE MENUJOUR SET IdJourTravail = @IdJourTravail, PetDej = @PetDej, Dej = @Dej, Gouter = @Gouter, Diner = @Diner, NbPetDej = @NbPetDej, NbDej = @NbDej, NbGouter = @NbGouter, NbDiner = @NbDiner
		 WHERE IdMenuJour = @IdMenuJour
GO
/****** Object:  StoredProcedure [dbo].[MENUMAXID]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MENUMAXID]
AS
SELECT MAX(IdMenu) FROM MENU
GO
/****** Object:  StoredProcedure [dbo].[MENUUPDATE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MENUUPDATE]
	@IdMenu int,
	@DesMenu int,
	@DetailMenu int
	
AS
UPDATE MENU SET IdMenu = @IdMenu, DesMenu = @DesMenu, DetailMenu = @DetailMenu WHERE IdMenu = @IdMenu
GO
/****** Object:  StoredProcedure [dbo].[PLATGETLASTROW]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[PRODUITGETLASTROW]    Script Date: 2022/10/17 14:10:34 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
CREATE PROCEDURE [dbo].[PLATGETLASTROW]
AS
SELECT COUNT(IdPlat) FROM Plat
GO
/****** Object:  StoredProcedure [dbo].[PLATINSERT]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[PRODUITINSERT]    Script Date: 2022/10/17 14:11:24 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
CREATE PROCEDURE [dbo].[PLATINSERT]
	@IdPlat int,
	@DesPlat nvarchar(250)
	
AS
INSERT INTO Plat VALUES (@IdPlat, @DesPlat)
GO
/****** Object:  StoredProcedure [dbo].[PLATTMAXID]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[PRODUITMAXID]    Script Date: 2022/10/17 14:14:21 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
CREATE PROCEDURE [dbo].[PLATTMAXID]
AS
SELECT MAX(IdPlat) FROM Plat
GO
/****** Object:  StoredProcedure [dbo].[PLATUPDATE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[PRODUITUPDATE]    Script Date: 2022/10/17 14:15:20 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
CREATE PROCEDURE [dbo].[PLATUPDATE]
	@IdPlat int,
	@DesPlat nvarchar(250)
	
AS
UPDATE Plat SET IdPlat=@IdPlat, DesPlat = @DesPlat
GO
/****** Object:  StoredProcedure [dbo].[PRODUITDELETE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PRODUITDELETE]
	@IdProduit int
AS
DELETE FROM PRODUIT WHERE IdProduit = @IdProduit
GO
/****** Object:  StoredProcedure [dbo].[PRODUITDELETEALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PRODUITDELETEALL]
AS
DELETE FROM PRODUIT
GO
/****** Object:  StoredProcedure [dbo].[PRODUITGETALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PRODUITGETALL]
AS
SELECT IdProduit AS "رقم المؤونة", DesProduit AS "إسم المؤونة", QuantStock AS "الكمية", PrixAchat AS "سعر الشراء" FROM PRODUIT


 
GO
/****** Object:  StoredProcedure [dbo].[PRODUITGETLASTROW]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PRODUITGETLASTROW]
AS
SELECT COUNT(IdProduit) FROM PRODUIT
GO
/****** Object:  StoredProcedure [dbo].[PRODUITINSERT]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PRODUITINSERT]
	@IdProduit int,
	@DesProduit nvarchar(250),
	@QuantStock float,
	@PrixAchat float
AS
INSERT INTO PRODUIT VALUES (@IdProduit, @DesProduit, @QuantStock, @PrixAchat)
GO
/****** Object:  StoredProcedure [dbo].[PRODUITMAXID]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PRODUITMAXID]
AS
SELECT MAX(IdProduit) FROM PRODUIT
GO
/****** Object:  StoredProcedure [dbo].[PRODUITUPDATE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PRODUITUPDATE]
	@IdProduit int,
	@DesProduit nvarchar(250),
	@QuantStock float,
	@PrixAchat float
AS
UPDATE PRODUIT SET DesProduit=@DesProduit, QuantStock = @QuantStock, PrixAchat =@PrixAchat WHERE IdProduit =  @IdProduit
GO
/****** Object:  StoredProcedure [dbo].[PRODUITUPDATESTOCK]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PRODUITUPDATESTOCK]
	@IdProduit int,
	@QuantStock int
AS
UPDATE PRODUIT SET QuantStock = QuantStock + @QuantStock WHERE IdProduit =  @IdProduit
GO
/****** Object:  StoredProcedure [dbo].[REPASDELETE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[REPASDELETE]
	@IdRepas int
AS
DELETE FROM REPAS WHERE IdRepas = @IdRepas
GO
/****** Object:  StoredProcedure [dbo].[REPASDELETEALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[REPASDELETEALL]
AS
DELETE FROM REPAS
GO
/****** Object:  StoredProcedure [dbo].[REPASGETALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[REPASGETALL]
AS
SELECT IdRepas AS "رقم الوجبة", DesRepas AS "إسم الوجبة" FROM REPAS
GO
/****** Object:  StoredProcedure [dbo].[REPASGETLASTROW]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[REPASGETLASTROW]
AS
SELECT COUNT(IdRepas) FROM REPAS
GO
/****** Object:  StoredProcedure [dbo].[REPASINSERT]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[REPASINSERT]
	@IdRepas int,
	@DesRepas nvarchar(max)
AS
INSERT INTO REPAS VALUES(@IdRepas, @DesRepas)
GO
/****** Object:  StoredProcedure [dbo].[REPASMAXID]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[REPASMAXID]
AS
SELECT MAX(IdRepas) FROM REPAS
GO
/****** Object:  StoredProcedure [dbo].[REPASUPDATE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[REPASUPDATE]
	@IdRepas int,
	@DesRepas nvarchar(max)
AS
UPDATE REPAS SET DesRepas = @DesRepas WHERE IdRepas = @IdRepas
GO
/****** Object:  StoredProcedure [dbo].[SORTIEDELETE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SORTIEDELETE]
	@IdSortie int
AS
DELETE FROM SORTIE WHERE IdSortie = @IdSortie
GO
/****** Object:  StoredProcedure [dbo].[SORTIEDELETEALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SORTIEDELETEALL]
AS
DELETE FROM SORTIE
GO
/****** Object:  StoredProcedure [dbo].[SORTIEGETALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SORTIEGETALL]
@IdJourTravail int
AS
SELECT IdSortie AS "الرقم", Produit.DesProduit AS "المؤونة", JourTravail.Date AS "يوم العمل", Quantite AS "الكمية", Observation AS "الملاحظة" 
FROM SORTIE, PRODUIT, JOURTRAVAIL WHERE (Sortie.IdProduit = Produit.IdProduit and Sortie.IdJourTravail = JourTravail.IdJourTravail and Sortie.IdJourTravail = @IdJourTravail)
GO
/****** Object:  StoredProcedure [dbo].[SORTIEGETALLDATA]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SORTIEGETALLDATA]
AS
SELECT * FROM SORTIE
GO
/****** Object:  StoredProcedure [dbo].[SORTIEGETLASTROW]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SORTIEGETLASTROW]
AS
SELECT COUNT(IdSortie) FROM SORTIE
GO
/****** Object:  StoredProcedure [dbo].[SORTIEINSERT]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SORTIEINSERT]
	@IdSortie int,
	@IdProduit int, 
	@IdJourTravail int, 
	@Quantite float, 
	@Observation nvarchar(max) 
AS
INSERT INTO SORTIE VALUES (@IdSortie, @IdProduit, @IdJourTravail, @Quantite, @Observation)
GO
/****** Object:  StoredProcedure [dbo].[SORTIEMAXID]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SORTIEMAXID]
AS
SELECT MAX(IdSortie) FROM SORTIE
GO
/****** Object:  StoredProcedure [dbo].[SORTIEUPDATE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SORTIEUPDATE]
	@IdSortie int,
	@IdProduit int, 
	@IdJourTravail int, 
	@Quantite float, 
	@Observation nvarchar(max) 
AS
UPDATE SORTIE SET IdProduit = @IdProduit, IdJourTravail = @IdJourTravail, Quantite = @Quantite, Observation = @Observation WHERE IdSortie = @IdSortie
GO
/****** Object:  StoredProcedure [dbo].[TABLECOMMUNEDELETE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TABLECOMMUNEDELETE]
	@IdTableCommune int
AS
DELETE FROM TABLECOMMUNE WHERE IdTableCommune = @IdTableCommune
GO
/****** Object:  StoredProcedure [dbo].[TABLECOMMUNEDELETEALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TABLECOMMUNEDELETEALL]
AS
DELETE FROM TABLECOMMUNE
GO
/****** Object:  StoredProcedure [dbo].[TABLECOMMUNEGETALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TABLECOMMUNEGETALL]
AS
SELECT IdTableCommune AS "الرقم", IdJourTravail AS "بوم العمل", IdMenu AS "القائمة", DateTableCommune AS "التاريخ" FROM TABLECOMMUNE
GO
/****** Object:  StoredProcedure [dbo].[TABLECOMMUNEGETLASTROW]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TABLECOMMUNEGETLASTROW]
AS
SELECT COUNT(IdTableCommune) FROM TABLECOMMUNE
GO
/****** Object:  StoredProcedure [dbo].[TABLECOMMUNEINSERT]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TABLECOMMUNEINSERT]
	@IdTableCommune int,
	@IdJourTravail int, 
	@IdMenu int,
	@DateTableCommune int
AS
INSERT INTO TABLECOMMUNE VALUES (@IdTableCommune, @IdJourTravail, @IdMenu, @DateTableCommune)
GO
/****** Object:  StoredProcedure [dbo].[TABLECOMMUNEMAXID]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TABLECOMMUNEMAXID]
AS
SELECT MAX(IdTableCommune) FROM TABLECOMMUNE
GO
/****** Object:  StoredProcedure [dbo].[TABLECOMMUNEUPDATE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TABLECOMMUNEUPDATE]
	@IdTableCommune int,
	@IdJourTravail int, 
	@IdMenu int,
	@DateTableCommune int
AS
UPDATE TABLECOMMUNE SET IdJourTravail = @IdJourTravail, IdMenu = @IdMenu, DateTableCommune = @DateTableCommune
		 WHERE IdTableCommune = @IdTableCommune
GO
/****** Object:  StoredProcedure [dbo].[USERDELETE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USERDELETE]
	@IdUser int
AS
DELETE FROM USERS WHERE IdUser = @IdUser
GO
/****** Object:  StoredProcedure [dbo].[USERDELETEALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USERDELETEALL]
AS
DELETE FROM USERS
GO
/****** Object:  StoredProcedure [dbo].[USERGETALL]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USERGETALL]
AS
SELECT IdUser AS "رقم المستعمل", Username AS "إسم المستعمل", Pass AS "كلمة السر" FROM Users


 
GO
/****** Object:  StoredProcedure [dbo].[USERGETLASTROW]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USERGETLASTROW]
AS
SELECT COUNT(IdUser) FROM USERS
GO
/****** Object:  StoredProcedure [dbo].[USERINSERT]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USERINSERT]
	@IdUser int,
	@Username nvarchar(50),
	@Pass nvarchar(50)
AS
INSERT INTO USERS VALUES (@IdUser, @Username, @Pass)
GO
/****** Object:  StoredProcedure [dbo].[USERMAXID]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USERMAXID]
AS
SELECT MAX(IdUser) FROM USERS
GO
/****** Object:  StoredProcedure [dbo].[USERSEARCH]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USERSEARCH]
	@Username nvarchar(50),
	@Pass nvarchar(50)
AS
SELECT * FROM USERS WHERE Username = @Username and Pass = @Pass
GO
/****** Object:  StoredProcedure [dbo].[USERUPDATE]    Script Date: 26/12/2022 5:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USERUPDATE]
	@IdUser int,
	@Username nvarchar(50),
	@Pass nvarchar(50)
AS
UPDATE USERS SET IdUser=@IdUser, Username = @Username, Pass = @Pass WHERE IdUser =  @IdUser
GO
USE [master]
GO
ALTER DATABASE [Consommation] SET  READ_WRITE 
GO
