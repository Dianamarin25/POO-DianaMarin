USE [master]
GO
/****** Object:  Database [RegistrosBD]    Script Date: 4/7/2021 11:31:37 ******/
CREATE DATABASE [RegistrosBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RegistrosBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\RegistrosBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RegistrosBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\RegistrosBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 COLLATE Modern_Spanish_CI_AS
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [RegistrosBD] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RegistrosBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RegistrosBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RegistrosBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RegistrosBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RegistrosBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RegistrosBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [RegistrosBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RegistrosBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RegistrosBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RegistrosBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RegistrosBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RegistrosBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RegistrosBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RegistrosBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RegistrosBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RegistrosBD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RegistrosBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RegistrosBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RegistrosBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RegistrosBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RegistrosBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RegistrosBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RegistrosBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RegistrosBD] SET RECOVERY FULL 
GO
ALTER DATABASE [RegistrosBD] SET  MULTI_USER 
GO
ALTER DATABASE [RegistrosBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RegistrosBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RegistrosBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RegistrosBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RegistrosBD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RegistrosBD] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'RegistrosBD', N'ON'
GO
ALTER DATABASE [RegistrosBD] SET QUERY_STORE = OFF
GO
USE [RegistrosBD]
GO
/****** Object:  Table [dbo].[ciudad]    Script Date: 4/7/2021 11:31:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ciudad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](60) COLLATE Modern_Spanish_CI_AS NULL,
	[activo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 4/7/2021 11:31:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[id] [nvarchar](16) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[nombres] [nvarchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[apellidos] [nvarchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[ciudad] [int] NULL,
	[direccion] [nvarchar](100) COLLATE Modern_Spanish_CI_AS NULL,
	[numCelular] [nvarchar](60) COLLATE Modern_Spanish_CI_AS NULL,
	[fechaNac] [datetime] NULL,
	[activo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ciudad] ON 
GO
INSERT [dbo].[ciudad] ([id], [nombre], [activo]) VALUES (1, N'Jinotega', 1)
GO
INSERT [dbo].[ciudad] ([id], [nombre], [activo]) VALUES (2, N'Matagalpa', 1)
GO
INSERT [dbo].[ciudad] ([id], [nombre], [activo]) VALUES (3, N'Managua', 1)
GO
INSERT [dbo].[ciudad] ([id], [nombre], [activo]) VALUES (4, N'Carazo', 1)
GO
INSERT [dbo].[ciudad] ([id], [nombre], [activo]) VALUES (5, N'Esteli', 1)
GO
INSERT [dbo].[ciudad] ([id], [nombre], [activo]) VALUES (6, N'Masaya', 1)
GO
INSERT [dbo].[ciudad] ([id], [nombre], [activo]) VALUES (7, N'Boaco', 1)
GO
INSERT [dbo].[ciudad] ([id], [nombre], [activo]) VALUES (8, N'Nueva Segovia', 1)
GO
INSERT [dbo].[ciudad] ([id], [nombre], [activo]) VALUES (9, N'Leon', 1)
GO
INSERT [dbo].[ciudad] ([id], [nombre], [activo]) VALUES (10, N'Chontales', 1)
GO
SET IDENTITY_INSERT [dbo].[ciudad] OFF
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'10', N'Diana Marin', N'Tenorio Rivera', 1, N'De la Parroquia, 3 1/2 cuadras al Sur', N'87404948', CAST(N'1973-04-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'11', N'Ricardo Ernesto', N'Urbina Mendoza', 6, N'Plaza Inter, 1 cuadra al Sur, 1 cuadra al Oeste', N'89364585', CAST(N'1999-08-23T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'12', N'Josue Camilo', N'Valle Marchena', 6, N'Casa de los Mejia Godoy, 1 cuadra al lago', N'76498465', CAST(N'1987-08-01T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'13', N'Maria Esther', N'Cabrera Garcia', 3, N'Parque Darío, 1/2 cuadra arriba', N'87364098', CAST(N'2000-01-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'14', N'Lucia Fernanda', N'Mercado Martinez', 3, N'Del Reloj, 1 cuadra abajo', N'87765789', CAST(N'2003-03-17T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'15', N'Marggie Consuelo', N'Castillo Aguirre', 6, N'Esquina Sureste del Parque Central', N'76897890', CAST(N'1998-08-02T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'16', N'Jennifer Karina', N'Jarquin Soto', 7, N'Km 19 Carretera a Ticuantepe', N'87645908', CAST(N'1998-08-06T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'17', N'Dorian Noel', N'Marenco Mayorga', 8, N'Parque Sandino, 500 varas al Esta', N'34567890', CAST(N'1996-08-03T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'18', N'Alfredo Noel', N'Tendo Cortez', 10, N'Puente León 2 cuadras abajo', N'35467890', CAST(N'1970-08-21T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'19', N'Angie Estephanie', N'Salinas Torrez', 1, N'Semáforos del Zumen, 50 varas al Sur', N'76890846', CAST(N'1986-10-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'20', N'Laura Natalia', N'Zvala Soto', 2, N'Pista Juan Pablo II, contiguo a Union Fenosa', N'78746457', CAST(N'2002-12-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'21', N'Josias Adrian', N'Montenegro Urbina', 3, N'De la Subasta 10 vrs al lago, frente a Café Soluble', N'84746748', CAST(N'1990-01-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'22', N'Grace Fernanda', N'Gomez Munguia', 4, N'Entrada a reparto Cailagua, 20 varas al Sur', N'89484647', CAST(N'1997-12-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'23', N'Rodolfo Jose', N'Escorcia Perez', 5, N'De donde fue el cine Cabrera 1 cuadra al Norte', N'78464748', CAST(N'1960-09-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'24', N'Cristian Roberto', N'Morales Jarquin', 6, N'Frente a Iglesie Santa Ana', N'78467464', CAST(N'1978-02-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'25', N'Yassiri Alexandra', N'Lopes Sanchez ', 7, N'Calle Principal de San Juan del Sur', N'78846440', CAST(N'2001-08-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'26', N'Candy Joseph', N'Aleman Madrigal', 8, N'Costado oeste del parque central', N'7849049', CAST(N'2002-09-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'27', N'Martin Carlos', N'Oz  Arguello', 9, N'Barrio San Judas, Los Cocos, 3 cuadras arriba', N'78474689', CAST(N'2003-10-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'28', N'Carmen Maria', N'Pichardo Aguilar', 10, N'Contiguo a Escuela Salvador Mendieta', N'78647894', CAST(N'1965-11-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'29', N'Josefa Camila', N'Telleria Barrera', 1, N'Contiguo a Escuela Salvador Mendieta', N'89043456', CAST(N'1967-12-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'30', N'Jose Alejandro', N'Hopper Rubio', 2, N'Reparto San Juan Contiguo a Tercer Ojo', N'72325467', CAST(N'1970-01-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'31', N'Nestor Alejandro', N'Rugama Perez', 3, N'semafaros el riguero 3 arriba', N'74654987', CAST(N'1971-02-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'32', N'Brian Joel', N'Cano Santana', 4, N'Km 65 Carretera a Masachapa 1262', N'74849404', CAST(N'1972-03-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'33', N'Tyler Jose', N'Reyes Garcia', 5, N'Club Terraza 300 metros al sur ', N'73546384', CAST(N'1973-04-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'34', N'Franciosco Mario', N'Herrera Toledo', 6, N'Del Bavinic 2 cuadras y media al norte Mano derecha', N'78494746', CAST(N'1980-05-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'35', N'Willian Noel', N'Ruiz Cuadra', 7, N'Frente a Zona Hippos Edificio Compostela', N'78404946', CAST(N'1981-06-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'36', N'Aldo Byron', N'Estrada Morales', 8, N'De la Universidad Internacional de Agricultura y Ganadería 50 vrs al este', N'67484940', CAST(N'1982-07-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'37', N'Sofia Anto', N'Davila Narvaez', 9, N' Contiguo al Hotel Central, Altagracia', N'78464789', CAST(N'1983-08-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'38', N'Ana Paula', N'Gutierrez Bravo', 10, N'Barrio Pedro Joaquín Chamorro, contiguo a Puerto Visión', N'76890456', CAST(N'1984-09-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'39', N'Olga Josefina', N'Murillo Uriarte', 9, N'Oficinas del Muelle Municipal de Laguna de Perlas', N'78467590', CAST(N'1985-10-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'40', N'Miriam Camila', N'Gozas Huetes', 8, N'Alcaldía Municipal de Corn Island, Brig Brey', N'73564546', CAST(N'1986-08-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'41', N'Jose Carlos', N'Sanchez Arauz', 7, N'Semáforos del Colegio Bautista ½ cuadra al este, Barrio El Calvario', N'88776590', CAST(N'1987-11-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'42', N'Gary Jose', N'Catillo Ramirez', 6, N'Hotel Crowne 1c. Al sur, 1c.abajo', N'76543736', CAST(N'1988-12-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'43', N'Leire Carolina', N'Garcia Santana', 5, N' De la Librería Funcional 25 varas al norte.', N'88373635', CAST(N'1990-01-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'44', N'Angela Paola', N'Obando Jiron', 4, N'De la CST ½ cuadra al norte o del Centro Médico de Juigalpa ½ cuadra al sur', N'78965478', CAST(N'1991-02-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'45', N'Joseling Carolina', N'Rivas Catillo', 3, N'Del PALI ½ cuadra al sur, Mercado de Artesanías de Jinotepe', N'67456748', CAST(N'1992-03-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'46', N'Sabrina Cort', N'Salazar Molina', 2, N'Del SILAIS 1½ cuadra al oeste', N'765478906', CAST(N'1992-04-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'47', N'Maria Alejandra', N'Munoz Perez', 1, N'Pasarela Universitaria 75 vrs al norte, Contiguo a Pizza Roma', N'78946789', CAST(N'1993-05-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'48', N'Otto Alejandro', N'Melendez Serrano', 2, N'Del Cuerpo de Bomberos de Granada 75 varas al este', N'78467896', CAST(N'1994-06-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'49', N'Axel Elias', N'Robles Zelaya', 3, N'De la Delegación del MINED 1/2 cuadra al sur', N'78456784', CAST(N'1994-07-19T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'5', N'Ernesto Jose', N'Marin Ampie', 4, N'Rotonda El Güegüense, 2 cuadras arriba', N'87654098', CAST(N'1977-06-20T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'50', N'Alex Victor', N' Calero Duarte', 4, N'De la Librería Funcional 25 varas al norte', N'78645678', CAST(N'1995-08-03T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'6', N'Joshua Josue', N'Manzanarez', 6, N'Clínica Santa María, 1 cuadra al Sur, 20 varas abajo', N'76590876', CAST(N'2000-08-07T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'7', N'Brunno Joel', N'Samqui Jon', 7, N'Semáforos de Enitel Villa Fontana, 30 mts al Norte', N'87654098', CAST(N'1965-10-25T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'8', N'Luis Victor', N' Soto Guido', 5, N'libreria de la tenderi una arriba', N'7864566', CAST(N'1995-08-03T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'9', N'Fernanda Antonella', N'Martinez Blandon', 1, N'De la catedral, 1 cuadra al Este, 1/2 cuadra al Sur', N'72436987', CAST(N'2000-05-19T00:00:00.000' AS DateTime), 1)
GO
USE [master]
GO
ALTER DATABASE [RegistrosBD] SET  READ_WRITE 
GO
