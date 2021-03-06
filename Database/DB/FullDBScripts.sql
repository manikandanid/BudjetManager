USE [master]
GO

/****** Object:  Database [BudjetManager]    Script Date: 16-Jun-14 22:23:55 ******/
DROP DATABASE [BudjetManager]
GO

/****** Object:  Database [BudjetManager]    Script Date: 16-Jun-14 22:23:55 ******/
CREATE DATABASE [BudjetManager]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'POC', FILENAME = N'D:\Mani\My Work\Triangle Solutions\BudjetManager\Database\DB\BudjetManager.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'POC_log', FILENAME = N'D:\Mani\My Work\Triangle Solutions\BudjetManager\Database\DB\BudjetManager.ldf' , SIZE = 5184KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [BudjetManager] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BudjetManager].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [BudjetManager] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [BudjetManager] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [BudjetManager] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [BudjetManager] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [BudjetManager] SET ARITHABORT OFF 
GO

ALTER DATABASE [BudjetManager] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [BudjetManager] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [BudjetManager] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [BudjetManager] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [BudjetManager] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [BudjetManager] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [BudjetManager] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [BudjetManager] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [BudjetManager] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [BudjetManager] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [BudjetManager] SET  DISABLE_BROKER 
GO

ALTER DATABASE [BudjetManager] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [BudjetManager] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [BudjetManager] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [BudjetManager] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [BudjetManager] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [BudjetManager] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [BudjetManager] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [BudjetManager] SET RECOVERY FULL 
GO

ALTER DATABASE [BudjetManager] SET  MULTI_USER 
GO

ALTER DATABASE [BudjetManager] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [BudjetManager] SET DB_CHAINING OFF 
GO

ALTER DATABASE [BudjetManager] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [BudjetManager] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [BudjetManager] SET  READ_WRITE 
GO



USE [BudjetManager]
GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserType', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserType'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserLoanInformation', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserLoanInformation'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserLoanInformation', N'COLUMN',N'IsCompleted'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserLoanInformation', @level2type=N'COLUMN',@level2name=N'IsCompleted'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserLoanInformation', N'COLUMN',N'TargetLoanCompletionDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserLoanInformation', @level2type=N'COLUMN',@level2name=N'TargetLoanCompletionDate'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserLoanInformation', N'COLUMN',N'UserFinanceSourceTypeId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserLoanInformation', @level2type=N'COLUMN',@level2name=N'UserFinanceSourceTypeId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserLoanInformation', N'COLUMN',N'LoanType'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserLoanInformation', @level2type=N'COLUMN',@level2name=N'LoanType'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserLoanInformation', N'COLUMN',N'Name'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserLoanInformation', @level2type=N'COLUMN',@level2name=N'Name'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserIncome', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserIncome'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserIncome', N'COLUMN',N'IncomeTypeName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserIncome', @level2type=N'COLUMN',@level2name=N'IncomeTypeName'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserFinanceSourceAlert', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserFinanceSourceAlert'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserFinanceSource', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserFinanceSource'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserFinanceSource', N'COLUMN',N'Description'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserFinanceSource', @level2type=N'COLUMN',@level2name=N'Description'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserFinanceSource', N'COLUMN',N'Name'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserFinanceSource', @level2type=N'COLUMN',@level2name=N'Name'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserExpenseTypeSharedWith', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExpenseTypeSharedWith'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserExpenseType', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExpenseType'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserExpense', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExpense'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserAlertType', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserAlertType'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserAlertConfiguration', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserAlertConfiguration'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserAlertConfiguration', N'COLUMN',N'NextRunDate'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserAlertConfiguration', @level2type=N'COLUMN',@level2name=N'NextRunDate'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserAlertConfiguration', N'COLUMN',N'AlertForObjectId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserAlertConfiguration', @level2type=N'COLUMN',@level2name=N'AlertForObjectId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserAlertConfiguration', N'COLUMN',N'AlertForId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserAlertConfiguration', @level2type=N'COLUMN',@level2name=N'AlertForId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserAccountSharedWith', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserAccountSharedWith'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FinanceSourceType', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FinanceSourceType'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FinanceSourceType', N'COLUMN',N'Name'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FinanceSourceType', @level2type=N'COLUMN',@level2name=N'Name'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseType', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseType'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseType', N'COLUMN',N'ParentType'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseType', @level2type=N'COLUMN',@level2name=N'ParentType'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheetSharedWith', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheetSharedWith'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheetSharedWith', N'COLUMN',N'IsAutoApproval'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheetSharedWith', @level2type=N'COLUMN',@level2name=N'IsAutoApproval'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheetDetails', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheetDetails'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheetDetails', N'COLUMN',N'ExpenseProof'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheetDetails', @level2type=N'COLUMN',@level2name=N'ExpenseProof'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheetDetails', N'COLUMN',N'SourceExpenseDetailId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheetDetails', @level2type=N'COLUMN',@level2name=N'SourceExpenseDetailId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheetDetails', N'COLUMN',N'IsApproved'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheetDetails', @level2type=N'COLUMN',@level2name=N'IsApproved'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheetDetails', N'COLUMN',N'ExpenseOwner'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheetDetails', @level2type=N'COLUMN',@level2name=N'ExpenseOwner'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheetDetails', N'COLUMN',N'UserFinanceSourceId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheetDetails', @level2type=N'COLUMN',@level2name=N'UserFinanceSourceId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheetDetails', N'COLUMN',N'UserExpenseTypeId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheetDetails', @level2type=N'COLUMN',@level2name=N'UserExpenseTypeId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheet', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheet'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheet', N'COLUMN',N'IsDefault'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheet', @level2type=N'COLUMN',@level2name=N'IsDefault'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheet', N'COLUMN',N'TargetBudjetAllocated'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheet', @level2type=N'COLUMN',@level2name=N'TargetBudjetAllocated'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheet', N'COLUMN',N'ValidTo'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheet', @level2type=N'COLUMN',@level2name=N'ValidTo'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheet', N'COLUMN',N'ValidFrom'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheet', @level2type=N'COLUMN',@level2name=N'ValidFrom'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AlertType', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AlertType'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AlertForInfo', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AlertForInfo'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AlertForInfo', N'COLUMN',N'AlertForName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AlertForInfo', @level2type=N'COLUMN',@level2name=N'AlertForName'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AccessType', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessType'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AccessType', N'COLUMN',N'Type'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessType', @level2type=N'COLUMN',@level2name=N'Type'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AccessType', N'COLUMN',N'ID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessType', @level2type=N'COLUMN',@level2name=N'ID'

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ExpenseSheet_IsShared]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ExpenseSheet] DROP CONSTRAINT [DF_ExpenseSheet_IsShared]
END

GO
/****** Object:  Table [dbo].[UserType]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserType]') AND type in (N'U'))
DROP TABLE [dbo].[UserType]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[UserLoanInformation]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserLoanInformation]') AND type in (N'U'))
DROP TABLE [dbo].[UserLoanInformation]
GO
/****** Object:  Table [dbo].[UserInformation]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserInformation]') AND type in (N'U'))
DROP TABLE [dbo].[UserInformation]
GO
/****** Object:  Table [dbo].[UserIncome]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserIncome]') AND type in (N'U'))
DROP TABLE [dbo].[UserIncome]
GO
/****** Object:  Table [dbo].[UserFinanceSourceAlert]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserFinanceSourceAlert]') AND type in (N'U'))
DROP TABLE [dbo].[UserFinanceSourceAlert]
GO
/****** Object:  Table [dbo].[UserFinanceSource]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserFinanceSource]') AND type in (N'U'))
DROP TABLE [dbo].[UserFinanceSource]
GO
/****** Object:  Table [dbo].[UserExpenseTypeSharedWith]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserExpenseTypeSharedWith]') AND type in (N'U'))
DROP TABLE [dbo].[UserExpenseTypeSharedWith]
GO
/****** Object:  Table [dbo].[UserExpenseType]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserExpenseType]') AND type in (N'U'))
DROP TABLE [dbo].[UserExpenseType]
GO
/****** Object:  Table [dbo].[UserExpense]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserExpense]') AND type in (N'U'))
DROP TABLE [dbo].[UserExpense]
GO
/****** Object:  Table [dbo].[UserAlertType]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserAlertType]') AND type in (N'U'))
DROP TABLE [dbo].[UserAlertType]
GO
/****** Object:  Table [dbo].[UserAlertConfiguration]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserAlertConfiguration]') AND type in (N'U'))
DROP TABLE [dbo].[UserAlertConfiguration]
GO
/****** Object:  Table [dbo].[UserAccountSharedWith]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserAccountSharedWith]') AND type in (N'U'))
DROP TABLE [dbo].[UserAccountSharedWith]
GO
/****** Object:  Table [dbo].[FinanceSourceType]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FinanceSourceType]') AND type in (N'U'))
DROP TABLE [dbo].[FinanceSourceType]
GO
/****** Object:  Table [dbo].[ExpenseType]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseType]') AND type in (N'U'))
DROP TABLE [dbo].[ExpenseType]
GO
/****** Object:  Table [dbo].[ExpenseSheetSharedWith]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseSheetSharedWith]') AND type in (N'U'))
DROP TABLE [dbo].[ExpenseSheetSharedWith]
GO
/****** Object:  Table [dbo].[ExpenseSheetDetails]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseSheetDetails]') AND type in (N'U'))
DROP TABLE [dbo].[ExpenseSheetDetails]
GO
/****** Object:  Table [dbo].[ExpenseSheet]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseSheet]') AND type in (N'U'))
DROP TABLE [dbo].[ExpenseSheet]
GO
/****** Object:  Table [dbo].[AlertType]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AlertType]') AND type in (N'U'))
DROP TABLE [dbo].[AlertType]
GO
/****** Object:  Table [dbo].[AlertForInfo]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AlertForInfo]') AND type in (N'U'))
DROP TABLE [dbo].[AlertForInfo]
GO
/****** Object:  Table [dbo].[AccessType]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccessType]') AND type in (N'U'))
DROP TABLE [dbo].[AccessType]
GO
USE [master]
GO
/****** Object:  Database [BudjetManager]    Script Date: 16-Jun-14 22:25:38 ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'BudjetManager')
DROP DATABASE [BudjetManager]
GO
/****** Object:  Database [BudjetManager]    Script Date: 16-Jun-14 22:25:38 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'BudjetManager')
BEGIN
CREATE DATABASE [BudjetManager] ON  PRIMARY 
( NAME = N'POC', FILENAME = N'D:\Mani\My Work\Triangle Solutions\BudjetManager\Database\DB\BudjetManager.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'POC_log', FILENAME = N'D:\Mani\My Work\Triangle Solutions\BudjetManager\Database\DB\BudjetManager.ldf' , SIZE = 5184KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [BudjetManager] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BudjetManager].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BudjetManager] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BudjetManager] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BudjetManager] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BudjetManager] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BudjetManager] SET ARITHABORT OFF 
GO
ALTER DATABASE [BudjetManager] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BudjetManager] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BudjetManager] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BudjetManager] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BudjetManager] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BudjetManager] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BudjetManager] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BudjetManager] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BudjetManager] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BudjetManager] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BudjetManager] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BudjetManager] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BudjetManager] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BudjetManager] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BudjetManager] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BudjetManager] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BudjetManager] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BudjetManager] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BudjetManager] SET RECOVERY FULL 
GO
ALTER DATABASE [BudjetManager] SET  MULTI_USER 
GO
ALTER DATABASE [BudjetManager] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BudjetManager] SET DB_CHAINING OFF 
GO
USE [BudjetManager]
GO
/****** Object:  Table [dbo].[AccessType]    Script Date: 16-Jun-14 22:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccessType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AccessType](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Description] [varchar](300) NULL,
 CONSTRAINT [PK_AccessType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AlertForInfo]    Script Date: 16-Jun-14 22:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AlertForInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AlertForInfo](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[AlertForName] [varchar](200) NOT NULL,
	[Description] [varchar](300) NULL,
 CONSTRAINT [PK_AlertForInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AlertType]    Script Date: 16-Jun-14 22:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AlertType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AlertType](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Description] [varchar](500) NULL,
 CONSTRAINT [PK_AlertType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExpenseSheet]    Script Date: 16-Jun-14 22:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseSheet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ExpenseSheet](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Description] [varchar](500) NULL,
	[IsShared] [bit] NOT NULL,
	[ValidFrom] [datetime] NULL,
	[ValidTo] [datetime] NULL,
	[TargetBudjetAllocated] [decimal](18, 2) NULL,
	[UserId] [bigint] NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ExpenseSheet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExpenseSheetDetails]    Script Date: 16-Jun-14 22:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseSheetDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ExpenseSheetDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ExpenseSheetId] [bigint] NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[IncurredOn] [datetime] NOT NULL,
	[Description] [varchar](500) NULL,
	[UserExpenseTypeId] [bigint] NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[UserFinanceSourceId] [bigint] NOT NULL,
	[ExpenseOwner] [bigint] NOT NULL,
	[IsApproved] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SourceExpenseDetailId] [bigint] NOT NULL,
	[ExpenseProof] [varchar](500) NULL,
 CONSTRAINT [PK_ExpenseSheetDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExpenseSheetSharedWith]    Script Date: 16-Jun-14 22:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseSheetSharedWith]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ExpenseSheetSharedWith](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ExpenseSheetID] [bigint] NOT NULL,
	[UserID] [bigint] NOT NULL,
	[AccessTypeId] [tinyint] NOT NULL,
	[IsAutoApproval] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ExpenseSheetSharedWith] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ExpenseType]    Script Date: 16-Jun-14 22:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ExpenseType](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](300) NOT NULL,
	[Descrption] [varchar](500) NOT NULL,
	[ParentType] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FinanceSourceType]    Script Date: 16-Jun-14 22:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FinanceSourceType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FinanceSourceType](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Description] [varchar](500) NULL,
 CONSTRAINT [PK_FinanceSourceType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserAccountSharedWith]    Script Date: 16-Jun-14 22:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserAccountSharedWith]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserAccountSharedWith](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[SharedUserId] [bigint] NOT NULL,
	[AccessType] [tinyint] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_UserAccountSharedWith] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserAlertConfiguration]    Script Date: 16-Jun-14 22:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserAlertConfiguration]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserAlertConfiguration](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[AlertForId] [tinyint] NOT NULL,
	[IsRecurring] [bit] NOT NULL,
	[RecurringTypeId] [tinyint] NULL,
	[AlertForObjectId] [bigint] NOT NULL,
	[NextRunDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserAlertConfiguration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserAlertType]    Script Date: 16-Jun-14 22:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserAlertType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserAlertType](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[AlertConfigurationId] [bigint] NOT NULL,
	[AlertTypeId] [tinyint] NOT NULL,
 CONSTRAINT [PK_UserAlertType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserExpense]    Script Date: 16-Jun-14 22:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserExpense]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserExpense](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[UserExpenseTypeId] [bigint] NOT NULL,
	[IncurredOn] [datetime] NOT NULL,
	[Description] [varchar](500) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UserFinanceSourceId] [bigint] NOT NULL,
 CONSTRAINT [PK_UserExpense] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserExpenseType]    Script Date: 16-Jun-14 22:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserExpenseType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserExpenseType](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ExpenseTypeId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[IsShared] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_UserExpenseType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserExpenseTypeSharedWith]    Script Date: 16-Jun-14 22:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserExpenseTypeSharedWith]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserExpenseTypeSharedWith](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserExpenseTypeId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_UserExpenseTypeSharedWith] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserFinanceSource]    Script Date: 16-Jun-14 22:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserFinanceSource]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserFinanceSource](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[FinanceSourceTypeId] [tinyint] NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Description] [varchar](500) NULL,
	[UserId] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_UserFinanceSource] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserFinanceSourceAlert]    Script Date: 16-Jun-14 22:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserFinanceSourceAlert]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserFinanceSourceAlert](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserFinanceSourceId] [bigint] NOT NULL,
	[TargetAmount] [decimal](18, 2) NOT NULL,
	[ValidFrom] [datetime] NOT NULL,
	[ValidTo] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_UserFinanceSourceAlert] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserIncome]    Script Date: 16-Jun-14 22:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserIncome]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserIncome](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IncomeTypeName] [varchar](200) NOT NULL,
	[Description] [varchar](500) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[IncurredOn] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_UserIncome] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserInformation]    Script Date: 16-Jun-14 22:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserInformation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserInformation](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[Mobile] [varchar](15) NOT NULL,
	[EmailId] [varchar](200) NOT NULL,
	[DOB] [date] NULL,
	[AnniversaryDate] [date] NULL,
	[Address1] [varchar](200) NULL,
	[Address2] [varchar](200) NULL,
	[District] [varchar](200) NULL,
	[State] [varchar](200) NULL,
	[Country] [varchar](200) NOT NULL,
	[Pincode] [varchar](200) NOT NULL,
 CONSTRAINT [PK_UserInformation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserLoanInformation]    Script Date: 16-Jun-14 22:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserLoanInformation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserLoanInformation](
	[ID] [bigint] NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Description] [varchar](500) NULL,
	[UserId] [bigint] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[LoanType] [bit] NOT NULL,
	[UserFinanceSourceTypeId] [bigint] NULL,
	[TargetLoanCompletionDate] [datetime] NOT NULL,
	[IsCompleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 16-Jun-14 22:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](25) NOT NULL,
	[ValidFrom] [smalldatetime] NOT NULL,
	[ValidTo] [smalldatetime] NOT NULL,
	[UserTypeId] [tinyint] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 16-Jun-14 22:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserType](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserType] [varchar](200) NOT NULL,
	[Description] [varchar](500) NOT NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ExpenseSheet_IsShared]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ExpenseSheet] ADD  CONSTRAINT [DF_ExpenseSheet_IsShared]  DEFAULT ((0)) FOR [IsShared]
END

GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AccessType', N'COLUMN',N'ID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identity Column' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessType', @level2type=N'COLUMN',@level2name=N'ID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AccessType', N'COLUMN',N'Type'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the different access type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessType', @level2type=N'COLUMN',@level2name=N'Type'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AccessType', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Configuration  table contains the different access types a user can have' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AlertForInfo', N'COLUMN',N'AlertForName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Will contain the different functionality name expenseSheet, userfinancesource for which alert can be set' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AlertForInfo', @level2type=N'COLUMN',@level2name=N'AlertForName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AlertForInfo', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Configuration table contains the different functionality for which alert can be configured' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AlertForInfo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'AlertType', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Configuration table containing different alert that can be configured in the system' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AlertType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheet', N'COLUMN',N'ValidFrom'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This sheet can be edited by the user only if the incurred date for the expense is equal or greater than this date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheet', @level2type=N'COLUMN',@level2name=N'ValidFrom'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheet', N'COLUMN',N'ValidTo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This sheet can be edited by the user only if incurred date for the expense is equal or less than this date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheet', @level2type=N'COLUMN',@level2name=N'ValidTo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheet', N'COLUMN',N'TargetBudjetAllocated'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This contains the target budjet allocated for the sheet and color coding varies based on the remaning amount required to acheive the target amount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheet', @level2type=N'COLUMN',@level2name=N'TargetBudjetAllocated'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheet', N'COLUMN',N'IsDefault'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies whether this sheet is set to default for the user. If set to true, this sheet will be used to enter the recurring expense configured by the user. At any time only one sheet can be set to true for a user.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheet', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheet', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table contains the expense sheet information and the user to which it belongs to' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheet'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheetDetails', N'COLUMN',N'UserExpenseTypeId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the expense type matching the expense name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheetDetails', @level2type=N'COLUMN',@level2name=N'UserExpenseTypeId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheetDetails', N'COLUMN',N'UserFinanceSourceId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies which is the finance source for this expense' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheetDetails', @level2type=N'COLUMN',@level2name=N'UserFinanceSourceId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheetDetails', N'COLUMN',N'ExpenseOwner'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column will contain the user id who has paid for the expense' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheetDetails', @level2type=N'COLUMN',@level2name=N'ExpenseOwner'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheetDetails', N'COLUMN',N'IsApproved'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If edited or entered by another user with whom the expense sheet is shared, then this column contains the approval status for the expense' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheetDetails', @level2type=N'COLUMN',@level2name=N'IsApproved'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheetDetails', N'COLUMN',N'SourceExpenseDetailId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When the expense detail is edited by another shared user and this column will contain the source expense detail Id which is edited' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheetDetails', @level2type=N'COLUMN',@level2name=N'SourceExpenseDetailId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheetDetails', N'COLUMN',N'ExpenseProof'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column will contain the relative path of the image that is uploaded' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheetDetails', @level2type=N'COLUMN',@level2name=N'ExpenseProof'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheetDetails', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table contains the entries for the expense sheet' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheetDetails'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheetSharedWith', N'COLUMN',N'IsAutoApproval'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies whether the shared user changes for this expense sheet will be auto approved' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheetSharedWith', @level2type=N'COLUMN',@level2name=N'IsAutoApproval'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseSheetSharedWith', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the users with whom the expense is shared with' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseSheetSharedWith'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseType', N'COLUMN',N'ParentType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'contains the parent expense type Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseType', @level2type=N'COLUMN',@level2name=N'ParentType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ExpenseType', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the hierarchy of expense type created by the user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExpenseType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FinanceSourceType', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'will conain values like savings, credit card' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FinanceSourceType', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'FinanceSourceType', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'configuration table containing the different finance source type that can be created in the system' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FinanceSourceType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserAccountSharedWith', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contians the user with which the account is shared with' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserAccountSharedWith'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserAlertConfiguration', N'COLUMN',N'AlertForId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'contains the functionality name (table name) for which this configuration applies' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserAlertConfiguration', @level2type=N'COLUMN',@level2name=N'AlertForId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserAlertConfiguration', N'COLUMN',N'AlertForObjectId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'contians the Id value for the respective table which contains the functionality detail' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserAlertConfiguration', @level2type=N'COLUMN',@level2name=N'AlertForObjectId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserAlertConfiguration', N'COLUMN',N'NextRunDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'contains the date for which the next alert will be executed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserAlertConfiguration', @level2type=N'COLUMN',@level2name=N'NextRunDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserAlertConfiguration', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'contains the alert configuration and the funtionality for which the alert is configured by the user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserAlertConfiguration'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserAlertType', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'contains the alert type for the respective alert configuration' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserAlertType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserExpense', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the details of the expenses which the user wish to configure for alert & autoentry' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExpense'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserExpenseType', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'contains the expense type for the given user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExpenseType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserExpenseTypeSharedWith', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'contains the user list for which the user expense type is shared with' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserExpenseTypeSharedWith'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserFinanceSource', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'bank name & account no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserFinanceSource', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserFinanceSource', N'COLUMN',N'Description'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'can give their account number, bank name ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserFinanceSource', @level2type=N'COLUMN',@level2name=N'Description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserFinanceSource', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Will contain the respective source details like bank name, acc on for the savings finance source, bank name for the credit card' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserFinanceSource'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserFinanceSourceAlert', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Enables the user to set the target limit for the user''s FinanceSource' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserFinanceSourceAlert'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserIncome', N'COLUMN',N'IncomeTypeName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'contains the source from which the income is received' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserIncome', @level2type=N'COLUMN',@level2name=N'IncomeTypeName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserIncome', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'contains the income received by the user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserIncome'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserLoanInformation', N'COLUMN',N'Name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name for the loan' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserLoanInformation', @level2type=N'COLUMN',@level2name=N'Name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserLoanInformation', N'COLUMN',N'LoanType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'whether its loan taken or given' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserLoanInformation', @level2type=N'COLUMN',@level2name=N'LoanType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserLoanInformation', N'COLUMN',N'UserFinanceSourceTypeId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'contains the finance source from which the loan was given. Valid only for loan given type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserLoanInformation', @level2type=N'COLUMN',@level2name=N'UserFinanceSourceTypeId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserLoanInformation', N'COLUMN',N'TargetLoanCompletionDate'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Target completion date. Will be used for further feature expansion to track loan given/taken' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserLoanInformation', @level2type=N'COLUMN',@level2name=N'TargetLoanCompletionDate'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserLoanInformation', N'COLUMN',N'IsCompleted'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is loan completed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserLoanInformation', @level2type=N'COLUMN',@level2name=N'IsCompleted'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserLoanInformation', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table contain the loan given, taken by the user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserLoanInformation'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Users', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'contains the user information' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserType', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Configuration table - contains the different user type in the application' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserType'
GO
USE [master]
GO
ALTER DATABASE [BudjetManager] SET  READ_WRITE 
GO
