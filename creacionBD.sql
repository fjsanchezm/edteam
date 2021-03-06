USE [master]
GO

IF DB_ID (N'mytest') IS NOT NULL
DROP DATABASE mytestEdteam;
GO
CREATE DATABASE mytestEdteam;
GO

ALTER DATABASE [mytestEdteam] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mytestEdteam].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [mytestEdteam] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [mytestEdteam] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [mytestEdteam] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [mytestEdteam] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [mytestEdteam] SET ARITHABORT OFF 
GO

ALTER DATABASE [mytestEdteam] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [mytestEdteam] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [mytestEdteam] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [mytestEdteam] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [mytestEdteam] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [mytestEdteam] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [mytestEdteam] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [mytestEdteam] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [mytestEdteam] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [mytestEdteam] SET  DISABLE_BROKER 
GO

ALTER DATABASE [mytestEdteam] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [mytestEdteam] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [mytestEdteam] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [mytestEdteam] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [mytestEdteam] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [mytestEdteam] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [mytestEdteam] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [mytestEdteam] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [mytestEdteam] SET  MULTI_USER 
GO

ALTER DATABASE [mytestEdteam] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [mytestEdteam] SET DB_CHAINING OFF 
GO

ALTER DATABASE [mytestEdteam] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [mytestEdteam] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [mytestEdteam] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [mytestEdteam] SET  READ_WRITE 
GO


