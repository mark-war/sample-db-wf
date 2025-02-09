USE [ArgaamScreener_DEV];
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChartTabs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameEn] [nvarchar](255) NOT NULL,
	[NameAr] [nvarchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DisplaySeq] [int] NULL,
	[IsSelected] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldConfigurations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SetupId] [int] NULL,
	[FieldId] [int] NULL,
	[FieldNameEn] [nvarchar](255) NOT NULL,
	[FieldNameAr] [nvarchar](255) NOT NULL,
	[UnitNameEn] [nvarchar](255) NULL,
	[UnitNameAr] [nvarchar](255) NULL,
	[DisplaySeq] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[Arguments] [nvarchar](max) NULL,
	[SECTORID] [int] NULL,
	[IndicatorID] [int] NULL,
	[ShowPercentage] [bit] NULL,
	[NotesEn] [nvarchar](500) NULL,
	[NotesAr] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilterConfig](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConfigJson] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[FieldConfigurationID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilterConfig25Sep2024](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConfigJson] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[FieldConfigurationID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DisplaySeq] [int] NULL,
	[IsSelected] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SetupData](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[DisplayNameEn] [nvarchar](255) NOT NULL,
	[DisplayNameAr] [nvarchar](255) NOT NULL,
	[WidgetId] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsSelected] [bit] NULL,
	[ParentId] [int] NULL,
	[DisplaySeq] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Widgets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameEn] [nvarchar](255) NOT NULL,
	[NameAr] [nvarchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


-- PROCEDURES
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[GetFieldsConfigurations] 
AS
BEGIN
    SELECT 
	    FC.Id AS Pkey,
        SetupId AS TabID,
        FieldNameEn, 
        FieldNameAr, 
        UnitNameEn, 
        UnitNameAr, 
        ConfigJson,
		Arguments as Args,
		SECTORID AS SectorID,
		IndicatorID,
		CASE WHEN ShowPercentage = 1 THEN 1 ELSE 0 END AS ShowPercentage,
	    NotesEn , 
		NotesAr
    FROM 
        FieldConfigurations FC
    INNER JOIN 
        FilterConfig FCC ON FC.Id = FCC.FieldConfigurationID 
    WHERE 
        FC.IsActive = 1
    ORDER BY 
        SetupId, 
		SECTORID,
        DisplaySeq;
END;
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Screener_GetCompanyRankingTotalReturn] @fiscalperiodtypeid int, @noofcompanies int, @column nvarchar(225) 
as 
begin
 
declare @fromDate as nvarchar(225), @toDate as varchar(225)=GETDATE();
SET @fromDate = 
    CASE 
		WHEN @fiscalperiodtypeid = 5 THEN DATEADD(YEAR, -5, GETDATE())
		WHEN @fiscalperiodtypeid = 7 THEN DATEADD(YEAR, -7, GETDATE())
        WHEN @fiscalperiodtypeid = 10 THEN DATEADD(YEAR, -10, GETDATE())
		WHEN @fiscalperiodtypeid = 12 THEN DATEADD(YEAR, -12, GETDATE())
		WHEN @fiscalperiodtypeid = 15 THEN DATEADD(YEAR, -15, GETDATE())
        WHEN @fiscalperiodtypeid = 20 THEN DATEADD(YEAR, -20, GETDATE())
        ELSE DATEADD(YEAR, -10, GETDATE())
    END
	;WITH CTE_CompanyStockPrices AS (
  SELECT 
    CSP.*, 
    MSC.MarketID, 
    MSC.ShortNameAr, 
    MSC.ShortNameEn, 
    MSC.ListingDate 
  FROM 
    (
      SELECT 
        CSP.CompanyID, 
        CSP.CloseValue [Close], 
        CSP.ForDate 
      FROM 
        CompanyStockPrices CSP 
      WHERE 
        CSP.ForDate >= @fromDate
        AND CSP.ForDate <= @toDate
      UNION ALL 
      SELECT 
        CSP.CompanyID, 
        CSP.[Close], 
        CSP.ForDate 
      FROM 
        CompanyStockPricesArchive CSP 
      WHERE 
        CSP.ForDate >= @fromDate 
        AND CSP.ForDate <= @toDate
    ) CSP 
    INNER JOIN pub.MarketSectorCompanies MSC ON MSC.CompanyID = CSP.CompanyID 
	INNER JOIN CompanyArgaamSectors CAS  ON CAS.CompanyID = MSC.CompanyID
  WHERE 
    MSC.MarketID IN (3, 14) 
    AND MSC.SectorID != 84 
    AND MSC.MarketStatusID = 3 
    AND @fromDate >= MSC.ListingDate AND CAS.IsDisplay = 1
), 
CTEDates AS (
  SELECT 
    CSP.CompanyID, 
    MIN(ForDate) FromDate, 
    MAX(ForDate) ToDate 
  FROM 
    CTE_CompanyStockPrices CSP 
  GROUP BY 
    CSP.CompanyID
), 
CTE_FRRatioView AS (
  SELECT 
    CompanyID, 
    ExceptionalShares, 
    Sharesoutstandings2, 
    CashDividendPerShare, 
    ForDate 
  FROM 
    FROthers 
  UNION ALL 
  SELECT 
    CompanyID, 
    ExceptionalShares, 
    Sharesoutstandings2, 
    CashDividendPerShare, 
    ForDate 
  FROM 
    FRIslamicBanking 
  UNION ALL 
  SELECT 
    CompanyID, 
    ExceptionalShares, 
    Sharesoutstandings2, 
    CashDividendPerShare, 
    ForDate 
  FROM 
    FRBanks 
  UNION ALL 
  SELECT 
    CompanyID, 
    ExceptionalShares, 
    Sharesoutstandings2, 
    CashDividendPerShare, 
    ForDate 
  FROM 
    FRInsuranceNew 
  UNION ALL 
  SELECT 
    CompanyID, 
    NumberOfUnitsOutstanding ExceptionalShares, 
    NumberOfUnitsOutstanding Sharesoutstandings2, 
    CashDividendPerShare, 
    ForDate 
  FROM 
    FRReits 
  UNION ALL 
  SELECT 
    CompanyID, 
    ExceptionalShares, 
    Sharesoutstandings2, 
    CashDividendPerShare, 
    ForDate 
  FROM 
    FRFinance
), 
Dividend AS (
  SELECT 
    CashDividend, 
    DividendDate, 
    CDI.CompanyID 
  FROM 
    CompanyDividendInformations CDI 
    INNER JOIN CTEDates CTE ON CTE.CompanyID = CDI.CompanyID 
  WHERE 
    CashDividend IS NOT NULL 
    AND CDI.DividendDate >= CTE.FromDate 
    AND CDI.DividendDate <= CTE.ToDate
) 
,
CTE_Data AS(
Select 
  CTE_CSP.*, 
  (
    CDI.CashDividend / ISNULL(
      FRV.ExceptionalShares, FRV.SharesOutstandings2
    )
  ) Dividends, 
  (
    (
      CDI.CashDividend / ISNULL(
        FRV.ExceptionalShares, FRV.SharesOutstandings2
      )
    )/ CTE_CSP.[Close]
  ) DividendsPerPrice, 
  (
    ISNULL(
      (
        (
          (
            CDI.CashDividend / NULLIF(
              ISNULL(
                FRV.ExceptionalShares, FRV.SharesOutstandings2
              ), 
              (0)
            )
          )/ NULLIF(CTE_CSP.[Close], 0)
        )
      ), 
      0
    ) + 1
  ) Factor 
From 
  CTE_CompanyStockPrices CTE_CSP 
  Left Join Dividend CDI on CDI.CompanyID = CTE_CSP.CompanyID 
  AND (
    CTE_CSP.ForDate = CDI.DividendDate
  ) 
  inner join CTEDates CTE_D on CTE_D.CompanyID = CTE_CSP.CompanyID 
  AND (
    CTE_CSP.ForDate = CTE_D.FromDate 
    OR CTE_CSP.ForDate = CTE_D.ToDate 
    OR CTE_CSP.ForDate = CDI.DividendDate
  ) OUTER APPLY (
    SELECT 
      TOP 1 ExceptionalShares, 
      Sharesoutstandings2, 
      ForDate 
    FROM 
      CTE_FRRatioView CTE_FRV 
    WHERE 
      CTE_FRV.CompanyID = CTE_CSP.CompanyID 
      AND CTE_FRV.ForDate <= CTE_CSP.ForDate 
    ORDER BY 
      CTE_FRV.ForDate DESC
  ) FRV OUTER APPLY (
    SELECT 
      TOP 1 CTE_DInner.CompanyID, 
      CTE_DInner.CashDividend, 
      CTE_DInner.DividendDate, 
      CTE_CSPInner.[Close], 
      CTE_CSPInner.ForDate, 
      ExceptionalShares, 
      Sharesoutstandings2, 
      CashDividendPerShare 
    FROM 
      Dividend CTE_DInner 
      INNER JOIN CTE_CompanyStockPrices CTE_CSPInner ON CTE_CSPInner.CompanyID = CTE_DInner.CompanyID 
      AND CTE_CSPInner.ForDate = CTE_DInner.DividendDate 
      LEFT JOIN CTE_FRRatioView CTE_FRV ON CTE_FRV.CompanyID = CTE_DInner.CompanyID 
      AND CTE_FRV.ForDate <= CTE_DInner.DividendDate 
    WHERE 
      CTE_DInner.CompanyID = CTE_CSP.CompanyID 
      AND CTE_DInner.DividendDate <= CTE_CSP.ForDate 
    ORDER BY 
      CTE_DInner.DividendDate DESC
  ) LastAvailableFactor 
)
, CurrentFactor1 as (
SELECT CompanyID , CASE WHEN SUM(Dividends) > 0 THEN 1 ELSE 0 END IsDividendAvailable , CASE WHEN SUM(Dividends) > 0 THEN EXP(SUM(LOG(Factor)))  ELSE 1 END Factor1, ShortNameEn,ShortNameAr FROM CTE_Data  GROUP BY CompanyID, ShortNameEn,ShortNameAr
) ,
CurrentDividendReinvestment AS (
SELECT CompanyID , IIF(1 = -1 , NULL , (Factor1  * XD.[Close])) AS CurrentDividendReinvestment , XD.[Close] AS CurrentClose,Factor1 ,ShortNameEn,ShortNameAr , IsDividendAvailable  FROM CurrentFactor1  CDA OUTER APPLY (
    SELECT 
      TOP 1 [Close] 
    FROM  
      CTE_Data CTD 
    WHERE 
      CTD.CompanyID = CDA.CompanyID 
    ORDER BY 
      CTD.ForDate DESC
  ) XD
),
PreviousDividendReinvestment as (
SELECT CompanyID ,  xd.PreviousDividendReinvestment AS PreviousDividendReinvestment  , xd.CloseValue [PreviousClose], ShortNameEn,ShortNameAr from CurrentDividendReinvestment  CDA OUTER APPLY (
    SELECT 
      TOP 1 [Close] * CASE WHEN Dividends IS NULL OR Dividends = 0 THEN 1 ELSE Dividends + 1 END  as PreviousDividendReinvestment ,
	  [close] as CloseValue
    FROM  
      CTE_Data CTD 
    WHERE 
      CTD.CompanyID = CDA.CompanyID 
    ORDER BY 
      CTD.ForDate ASC
  ) XD
)
, CTE_FINALdIVIDENSsUM AS (
SELECT CDD.CompanyID  ,CDD.ShortNameEn,CDD.ShortNameAr,ISNULL(C.LogoURL,'') LogoUrl,dbo.GetStockSymbol(CDD.CompanyID) Code, IIF(CDD.IsDividendAvailable = 0 , 'The Company didn''t distribute any dividends in the selected period' , NULL ) NotesEn
, IIF(CDD.IsDividendAvailable = 0 , N'الشركة لم تقم بأي توزيعات خلال الفتره المختاره' , NULL ) NotesAr,
case When CurrentDividendReinvestment IS NULL then ((CAST(cdd.CurrentClose AS DECIMAL(18,2)) - CAST(PDD.PreviousClose AS DECIMAL(18,2))) / CAST(PDD.PreviousClose AS DECIMAL(18,2))) * 100
else ((CDD.CurrentDividendReinvestment - PDD.PreviousDividendReinvestment) / NULLIF(PreviousDividendReinvestment , 0) ) * 100 end AS TReturn 
FROM CurrentDividendReinvestment CDD INNER JOIN PreviousDividendReinvestment PDD ON CDD.CompanyID = PDD.CompanyID INNER JOIN Companies C ON C.CompanyID = PDD.CompanyID 
)
SELECT top (@noofcompanies) CAS.ArgaamSectorID, CTF.*,row_number() over (
      ORDER BY 
        TReturn DESC
    ) [Rank] FROM CTE_FINALdIVIDENSsUM CTF
	
		INNER JOIN CompanyArgaamSectors CAS ON CAS.COMPANYID = CTF.COMPANYID
        INNER JOIN ArgaamSectorFSTemplates AFS ON AFS.ArgaamSectorID = CAS.ArgaamSectorID
        INNER JOIN FSTemplates F ON AFS.FSTemplateID = F.FSTemplateID
        AND AFS.IsActive = 1
        AND CAS.IsDefault = 1
	
	order by TReturn desc
end