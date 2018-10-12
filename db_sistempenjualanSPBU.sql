USE [master]
GO
/****** Object:  Database [db_LaporanpenjualanSPBU]    Script Date: 12/10/2018 21:35:48 ******/
CREATE DATABASE [db_LaporanpenjualanSPBU]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_LaporanpenjualanSPBU', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\db_LaporanpenjualanSPBU.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_LaporanpenjualanSPBU_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\db_LaporanpenjualanSPBU_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_LaporanpenjualanSPBU].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET RECOVERY FULL 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET  MULTI_USER 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_LaporanpenjualanSPBU', N'ON'
GO
USE [db_LaporanpenjualanSPBU]
GO
/****** Object:  Table [dbo].[tbl_bbm]    Script Date: 12/10/2018 21:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_bbm](
	[id_bbm] [char](10) NOT NULL,
	[nama_bbm] [varchar](50) NULL,
	[harga] [int] NULL,
 CONSTRAINT [PK_tbl_bbm] PRIMARY KEY CLUSTERED 
(
	[id_bbm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_detail_pompa]    Script Date: 12/10/2018 21:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_detail_pompa](
	[id_detail_pompa] [char](10) NOT NULL,
	[id_pompa] [char](10) NULL,
	[tgl_transaksi] [date] NULL,
	[meter_awal] [int] NULL,
	[meter_akhir] [int] NULL,
	[jml_meter] [int] NULL,
 CONSTRAINT [PK_tbl_detail_pompa] PRIMARY KEY CLUSTERED 
(
	[id_detail_pompa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_pengeluaran]    Script Date: 12/10/2018 21:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_pengeluaran](
	[id_pengeluaran] [char](10) NOT NULL,
	[tgl_transaksi] [date] NULL,
	[jenis_pengeluaran] [varchar](50) NULL,
	[jumlah] [int] NULL,
 CONSTRAINT [PK_tbl_pengeluaran] PRIMARY KEY CLUSTERED 
(
	[id_pengeluaran] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_penjualan]    Script Date: 12/10/2018 21:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_penjualan](
	[id_penjualan] [char](10) NOT NULL,
	[id_bbm] [char](10) NULL,
	[id_detail_pompa] [char](10) NULL,
	[penjualan] [int] NULL,
 CONSTRAINT [PK_tbl_penjualan] PRIMARY KEY CLUSTERED 
(
	[id_penjualan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_pompa]    Script Date: 12/10/2018 21:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_pompa](
	[id_pompa] [char](10) NOT NULL,
	[id_bbm] [char](10) NULL,
	[nama_pompa] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_pompa] PRIMARY KEY CLUSTERED 
(
	[id_pompa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_stok]    Script Date: 12/10/2018 21:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_stok](
	[id_stok] [char](10) NOT NULL,
	[id_bbm] [char](10) NULL,
	[penerimaan] [int] NULL,
	[stok_awal] [int] NULL,
	[stok_akhir] [int] NULL,
 CONSTRAINT [PK_tbl_stok] PRIMARY KEY CLUSTERED 
(
	[id_stok] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_transaksi]    Script Date: 12/10/2018 21:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_transaksi](
	[id_transaksi] [char](10) NOT NULL,
	[id_penjualan] [char](10) NULL,
	[id_pengeluaran] [char](10) NULL,
	[tgl_transaksi] [date] NULL,
	[jml_penjualan] [int] NULL,
	[jml_pengeluaran] [int] NULL,
	[pnrm_bbm_hari_ini] [int] NULL,
 CONSTRAINT [PK_tbl_transaksi] PRIMARY KEY CLUSTERED 
(
	[id_transaksi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tbl_detail_pompa]  WITH CHECK ADD  CONSTRAINT [FK_tbl_detail_pompa_tbl_pompa] FOREIGN KEY([id_pompa])
REFERENCES [dbo].[tbl_pompa] ([id_pompa])
GO
ALTER TABLE [dbo].[tbl_detail_pompa] CHECK CONSTRAINT [FK_tbl_detail_pompa_tbl_pompa]
GO
ALTER TABLE [dbo].[tbl_penjualan]  WITH CHECK ADD  CONSTRAINT [FK_tbl_penjualan_tbl_bbm] FOREIGN KEY([id_bbm])
REFERENCES [dbo].[tbl_bbm] ([id_bbm])
GO
ALTER TABLE [dbo].[tbl_penjualan] CHECK CONSTRAINT [FK_tbl_penjualan_tbl_bbm]
GO
ALTER TABLE [dbo].[tbl_penjualan]  WITH CHECK ADD  CONSTRAINT [FK_tbl_penjualan_tbl_detail_pompa] FOREIGN KEY([id_detail_pompa])
REFERENCES [dbo].[tbl_detail_pompa] ([id_detail_pompa])
GO
ALTER TABLE [dbo].[tbl_penjualan] CHECK CONSTRAINT [FK_tbl_penjualan_tbl_detail_pompa]
GO
ALTER TABLE [dbo].[tbl_pompa]  WITH CHECK ADD  CONSTRAINT [FK_tbl_pompa_tbl_bbm] FOREIGN KEY([id_bbm])
REFERENCES [dbo].[tbl_bbm] ([id_bbm])
GO
ALTER TABLE [dbo].[tbl_pompa] CHECK CONSTRAINT [FK_tbl_pompa_tbl_bbm]
GO
ALTER TABLE [dbo].[tbl_stok]  WITH CHECK ADD  CONSTRAINT [FK_tbl_stok_tbl_bbm] FOREIGN KEY([id_bbm])
REFERENCES [dbo].[tbl_bbm] ([id_bbm])
GO
ALTER TABLE [dbo].[tbl_stok] CHECK CONSTRAINT [FK_tbl_stok_tbl_bbm]
GO
ALTER TABLE [dbo].[tbl_transaksi]  WITH CHECK ADD  CONSTRAINT [FK_tbl_transaksi_tbl_pengeluaran] FOREIGN KEY([id_pengeluaran])
REFERENCES [dbo].[tbl_pengeluaran] ([id_pengeluaran])
GO
ALTER TABLE [dbo].[tbl_transaksi] CHECK CONSTRAINT [FK_tbl_transaksi_tbl_pengeluaran]
GO
ALTER TABLE [dbo].[tbl_transaksi]  WITH CHECK ADD  CONSTRAINT [FK_tbl_transaksi_tbl_penjualan] FOREIGN KEY([id_penjualan])
REFERENCES [dbo].[tbl_penjualan] ([id_penjualan])
GO
ALTER TABLE [dbo].[tbl_transaksi] CHECK CONSTRAINT [FK_tbl_transaksi_tbl_penjualan]
GO
USE [master]
GO
ALTER DATABASE [db_LaporanpenjualanSPBU] SET  READ_WRITE 
GO
