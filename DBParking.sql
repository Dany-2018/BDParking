USE [master]
GO
/****** Object:  Database [ParkingDB]    Script Date: 17/05/2023 9:10:37 p. m. ******/
CREATE DATABASE [ParkingDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ParkingDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ParkingDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ParkingDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ParkingDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ParkingDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ParkingDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ParkingDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ParkingDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ParkingDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ParkingDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ParkingDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ParkingDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ParkingDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ParkingDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ParkingDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ParkingDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ParkingDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ParkingDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ParkingDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ParkingDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ParkingDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ParkingDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ParkingDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ParkingDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ParkingDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ParkingDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ParkingDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ParkingDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ParkingDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ParkingDB] SET  MULTI_USER 
GO
ALTER DATABASE [ParkingDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ParkingDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ParkingDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ParkingDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ParkingDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ParkingDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ParkingDB', N'ON'
GO
ALTER DATABASE [ParkingDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [ParkingDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ParkingDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 17/05/2023 9:10:37 p. m. ******/
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
/****** Object:  Table [dbo].[Vehiculos]    Script Date: 17/05/2023 9:10:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehiculos](
	[IdVehiculo] [int] IDENTITY(1,1) NOT NULL,
	[Placa] [nvarchar](max) NOT NULL,
	[Tipo] [nvarchar](max) NOT NULL,
	[Plaza] [int] NOT NULL,
	[AplicaDescuento] [bit] NOT NULL,
	[HoraIngreso] [datetime2](7) NOT NULL,
	[HoraSalida] [datetime2](7) NULL,
 CONSTRAINT [PK_Vehiculos] PRIMARY KEY CLUSTERED 
(
	[IdVehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230516205957_AgregarBaseDatos', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230516211951_AlimentarTablaVehiculo', N'7.0.5')
GO
SET IDENTITY_INSERT [dbo].[Vehiculos] ON 

INSERT [dbo].[Vehiculos] ([IdVehiculo], [Placa], [Tipo], [Plaza], [AplicaDescuento], [HoraIngreso], [HoraSalida]) VALUES (1, N'HRO11E', N'Motocicleta', 2, 1, CAST(N'2023-05-16T16:19:51.1709694' AS DateTime2), CAST(N'2023-05-16T21:47:37.5122476' AS DateTime2))
INSERT [dbo].[Vehiculos] ([IdVehiculo], [Placa], [Tipo], [Plaza], [AplicaDescuento], [HoraIngreso], [HoraSalida]) VALUES (2, N'FTO13R', N'Automovil', 4, 0, CAST(N'2023-05-16T16:19:51.1709715' AS DateTime2), CAST(N'2023-05-16T19:09:31.6066667' AS DateTime2))
INSERT [dbo].[Vehiculos] ([IdVehiculo], [Placa], [Tipo], [Plaza], [AplicaDescuento], [HoraIngreso], [HoraSalida]) VALUES (8, N'ASD125', N'Motocicleta', 1, 1, CAST(N'2023-05-16T22:02:28.3571947' AS DateTime2), CAST(N'2023-05-16T22:05:02.6280962' AS DateTime2))
INSERT [dbo].[Vehiculos] ([IdVehiculo], [Placa], [Tipo], [Plaza], [AplicaDescuento], [HoraIngreso], [HoraSalida]) VALUES (9, N'ASD124', N'Automovil', 4, 0, CAST(N'2023-05-16T22:03:04.7857039' AS DateTime2), CAST(N'2023-05-16T22:05:26.7137127' AS DateTime2))
INSERT [dbo].[Vehiculos] ([IdVehiculo], [Placa], [Tipo], [Plaza], [AplicaDescuento], [HoraIngreso], [HoraSalida]) VALUES (10, N'DGDG', N'Automovil', 1, 1, CAST(N'2023-05-17T04:41:56.8112433' AS DateTime2), CAST(N'2023-05-17T07:29:26.4365187' AS DateTime2))
INSERT [dbo].[Vehiculos] ([IdVehiculo], [Placa], [Tipo], [Plaza], [AplicaDescuento], [HoraIngreso], [HoraSalida]) VALUES (11, N'GTY567', N'Motocicleta', 2, 1, CAST(N'2023-05-17T04:43:07.2791119' AS DateTime2), CAST(N'2023-05-17T19:09:28.9189175' AS DateTime2))
INSERT [dbo].[Vehiculos] ([IdVehiculo], [Placa], [Tipo], [Plaza], [AplicaDescuento], [HoraIngreso], [HoraSalida]) VALUES (12, N'SDT34y', N'Automovil', 2, 1, CAST(N'2023-05-17T04:43:28.2226406' AS DateTime2), CAST(N'2023-05-17T07:29:43.5040650' AS DateTime2))
INSERT [dbo].[Vehiculos] ([IdVehiculo], [Placa], [Tipo], [Plaza], [AplicaDescuento], [HoraIngreso], [HoraSalida]) VALUES (14, N'ASD123', N'Automovil', 1, 1, CAST(N'2023-05-17T19:20:11.4403327' AS DateTime2), CAST(N'2023-05-17T19:32:14.0926979' AS DateTime2))
INSERT [dbo].[Vehiculos] ([IdVehiculo], [Placa], [Tipo], [Plaza], [AplicaDescuento], [HoraIngreso], [HoraSalida]) VALUES (15, N'XCV123', N'Automovil', 1, 1, CAST(N'2023-05-17T19:21:08.8504574' AS DateTime2), NULL)
INSERT [dbo].[Vehiculos] ([IdVehiculo], [Placa], [Tipo], [Plaza], [AplicaDescuento], [HoraIngreso], [HoraSalida]) VALUES (16, N'hf56', N'Automovil', 2, 1, CAST(N'2023-05-17T19:27:50.4019962' AS DateTime2), CAST(N'2023-05-17T19:32:25.9684969' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Vehiculos] OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_TOTAL_VENTAS]    Script Date: 17/05/2023 9:10:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_TOTAL_VENTAS]
AS
SELECT Tipo, SUM(TotalVehiculo - (CASE WHEN AplicaDescuento = 1 THEN TotalVehiculo * 0.25 ELSE 0 END)) AS TotalVehiculo 
FROM (
SELECT Tipo, AplicaDescuento, DATEDIFF(HOUR, HoraIngreso, HoraSalida) * CONVERT(FLOAT, (CASE WHEN Tipo = 'Automovil' THEN 120 ELSE 62 END)) AS TotalVehiculo 
FROM Vehiculos
) AS Q GROUP BY Tipo
GO
/****** Object:  StoredProcedure [dbo].[SP_VALOR_TOTAL_VEHICULO]    Script Date: 17/05/2023 9:10:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_VALOR_TOTAL_VEHICULO]
@idVehiculo int = NULL
AS
SELECT Tipo, AplicaDescuento, COALESCE(DATEDIFF(HOUR, HoraIngreso, HoraSalida), 1) * CONVERT(FLOAT, (CASE WHEN Tipo = 'Automovil' THEN 120 ELSE 62 END)) AS TotalVehiculo 
FROM Vehiculos 
WHERE IdVehiculo = @idVehiculo 
GO
USE [master]
GO
ALTER DATABASE [ParkingDB] SET  READ_WRITE 
GO
