USE [ArgaamScreener_DEV];
GO

SET IDENTITY_INSERT [dbo].[Widgets] ON 

INSERT [dbo].[Widgets] ([Id], [NameEn], [NameAr], [IsActive]) VALUES (1, N'Page', N'صفحة', 1)
INSERT [dbo].[Widgets] ([Id], [NameEn], [NameAr], [IsActive]) VALUES (2, N'Sections', N'أقسام', 1)
INSERT [dbo].[Widgets] ([Id], [NameEn], [NameAr], [IsActive]) VALUES (3, N'Tab', N'تبويب', 1)
SET IDENTITY_INSERT [dbo].[Widgets] OFF
GO

SET IDENTITY_INSERT [dbo].[Filters] ON 

INSERT [dbo].[Filters] ([Id], [Name], [IsActive], [DisplaySeq], [IsSelected]) VALUES (1, N'Ranking', 1, 1, 1)
INSERT [dbo].[Filters] ([Id], [Name], [IsActive], [DisplaySeq], [IsSelected]) VALUES (2, N'Historical', 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Filters] OFF
GO
SET IDENTITY_INSERT [dbo].[SetupData] ON 

INSERT [dbo].[SetupData] ([Id], [Name], [DisplayNameEn], [DisplayNameAr], [WidgetId], [IsActive], [IsSelected], [ParentId], [DisplaySeq]) VALUES (1, N'Screener', N'Screener', N'تحليل الأسهم', 1, 1, 1, 0, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[SetupData] ([Id], [Name], [DisplayNameEn], [DisplayNameAr], [WidgetId], [IsActive], [IsSelected], [ParentId], [DisplaySeq]) VALUES (2, N'Top 10', N'Top 10', N'أعلى 10', 1, 1, 0, 0, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[SetupData] ([Id], [Name], [DisplayNameEn], [DisplayNameAr], [WidgetId], [IsActive], [IsSelected], [ParentId], [DisplaySeq]) VALUES (3, N'Stock Screener', N'Stock Screener', N'تحليل الأسهم', 2, 1, 1, 1, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[SetupData] ([Id], [Name], [DisplayNameEn], [DisplayNameAr], [WidgetId], [IsActive], [IsSelected], [ParentId], [DisplaySeq]) VALUES (4, N'Top 10 Companies', N'Top 10 Companies', N'أعلى 10 شركات', 2, 1, 1, 2, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[SetupData] ([Id], [Name], [DisplayNameEn], [DisplayNameAr], [WidgetId], [IsActive], [IsSelected], [ParentId], [DisplaySeq]) VALUES (5, N'Multiples', N'Multiples', N'المكررات', 3, 1, 0, 3, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[SetupData] ([Id], [Name], [DisplayNameEn], [DisplayNameAr], [WidgetId], [IsActive], [IsSelected], [ParentId], [DisplaySeq]) VALUES (6, N'Financial Ratios', N'Financial Ratios', N'المؤشرات المالية', 3, 1, 0, 3, CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[SetupData] ([Id], [Name], [DisplayNameEn], [DisplayNameAr], [WidgetId], [IsActive], [IsSelected], [ParentId], [DisplaySeq]) VALUES (7, N'Size And Ranking', N'Size And Ranking', N'الحجم و الترتيب', 3, 1, 1, 3, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[SetupData] ([Id], [Name], [DisplayNameEn], [DisplayNameAr], [WidgetId], [IsActive], [IsSelected], [ParentId], [DisplaySeq]) VALUES (8, N'Ranking', N'Ranking', N'الترتيب', 3, 1, 1, 4, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[SetupData] ([Id], [Name], [DisplayNameEn], [DisplayNameAr], [WidgetId], [IsActive], [IsSelected], [ParentId], [DisplaySeq]) VALUES (9, N'Stock Performance', N'Stock Performance', N'أداء الأسهم', 3, 1, 0, 4, CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[SetupData] ([Id], [Name], [DisplayNameEn], [DisplayNameAr], [WidgetId], [IsActive], [IsSelected], [ParentId], [DisplaySeq]) VALUES (10, N'Multiples', N'Multiples', N'المكررات', 3, 1, 0, 4, CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[SetupData] ([Id], [Name], [DisplayNameEn], [DisplayNameAr], [WidgetId], [IsActive], [IsSelected], [ParentId], [DisplaySeq]) VALUES (11, N'Financial Ratios', N'Financial Ratios', N'المؤشرات المالية', 3, 1, 0, 4, CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[SetupData] ([Id], [Name], [DisplayNameEn], [DisplayNameAr], [WidgetId], [IsActive], [IsSelected], [ParentId], [DisplaySeq]) VALUES (12, N'Growth And Dividends', N'Growth And Dividends', N'النمو والتوزيعات', 3, 1, 0, 4, CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[SetupData] ([Id], [Name], [DisplayNameEn], [DisplayNameAr], [WidgetId], [IsActive], [IsSelected], [ParentId], [DisplaySeq]) VALUES (13, N'Growth', N'Growth', N'النمو', 3, 1, 0, 3, CAST(1.10 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[SetupData] OFF
GO

SET IDENTITY_INSERT [dbo].[FieldConfigurations] ON 

INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (1, 5, 1, N'P/E', N'مكرر الربح', N'(TTM)', N'(آخر 12 شهرا)', 1, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (2, 5, 1, N'P/E', N'مكرر الربح', N'(Annualized)', N'(معدل سنويا)', 2, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (3, 5, 2, N'Book Value', N'القيمة الدفترية', N'(Last Fiscal Period)', N'(آخر فترة مالية)', 3, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (4, 5, 3, N'Price/Book', N'م. القيمة الدفترية', NULL, NULL, 4, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (5, 5, 4, N'Price/Sales', N'مضاعف الإيرادات', N'(TTM)', N'(آخر 12 شهرا)', 5, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (6, 6, 5, N'Gross Profit Margins ', N'هامش الربح الإجمالي', N'(TTM)', N'هامش الربح الإجمالي', 1, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (7, 6, 6, N'Net Margin ', N'هامش الربح الصافي', N'(TTM)', N'هامش الربح الصافي', 2, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (8, 6, 7, N'Return on assets ', N'العائد على متوسط الأصول', N'(TTM)', N'العائد على متوسط الأصول', 3, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (9, 6, 8, N'Return on equity ', N'العائد على متوسط حقوق المساهمين', N'(TTM)', N'العائد على متوسط حقوق المساهمين', 4, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (10, 6, 9, N'Net indeptedness/equity ', N'صافي المديونية/حقوق المساهمين', N'(TTM)', N'صافي المديونية/حقوق المساهمين', 5, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (11, 6, 10, N'EV / Revenues', N'قيمة المنشأة/الايرادات ', N'(TTM)', N'قيمة المنشأة/الايرادات ', 6, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (12, 7, 11, N'Market Cap', N'القيمة السوقية', N'(Last Close)', N'(آخر إغلاق) ', 1, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 2, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (13, 7, 12, N'Capital', N'رأس المال', N'(Last Fiscal Period)', N'(اّخر فترة مالية)', 2, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 2, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (14, 7, 13, N'Assets', N'إجمالي الأصول', N'(Last Fiscal Period)', N'(اّخر فترة مالية)', 3, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 2, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (15, 7, 14, N'Shareholder''s Equity', N'حقوق المساهمين', N'(Last Fiscal Period)', N'(اّخر فترة مالية)', 4, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 2, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (16, 7, 15, N'Revenue', N'الإيرادات', N'(TTM)', N'(آخر 12 شهراً)', 5, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 2, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (17, 7, 16, N'Profit', N'الأرباح', N'(TTM)', N'(آخر 12 شهراً)', 6, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 2, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (18, 8, 17, N'Market Cap', N'القيمة السوقية', NULL, NULL, 1, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, NULL, NULL, NULL, N'تُحدث يومياً حسب آخر إغلاق')
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (19, 8, 18, N'Shareholders Equity', N'حقوق المساهمين', NULL, NULL, 2, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, NULL, NULL, NULL, N'تُحدث ربعياً حسب آخر فترة مالية')
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (20, 8, 19, N'Revenues', N'الإيرادات', NULL, NULL, 3, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, NULL, NULL, NULL, N'تُحدث ربعياً حسب آخر 12 شهراً')
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (21, 8, 20, N'Profit', N'الأرباح', NULL, NULL, 4, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, NULL, NULL, NULL, N'تُحدث ربعياً حسب آخر 12 شهراً')
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (22, 10, 21, N'P/E', N'مكرر الربح', NULL, NULL, 1, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, NULL, NULL, NULL, N'يُحدث يومياً حسب آخر 12 شهراً')
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (23, 10, 22, N'Operating Profit', N'مكرر الربح المعدل', NULL, NULL, 2, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, NULL, NULL, NULL, N'يُحدث يومياً حسب آخر ربع معدل')
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (24, 10, 23, N'Price\Book', N'مضاعف القيمة الدفترية', N'(X)', N'(مرة)', 3, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, NULL, NULL, NULL, N'تُحدث يومياً حسب آخر 12 شهرا')
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (25, 10, 24, N'Price/Sales', N'مضاعف الإيرادات', NULL, NULL, 4, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, NULL, NULL, NULL, N'يُحدث يومياً حسب آخر 12 شهرا')
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (26, 11, 25, N'Return On Shareholders', N'العائد على متوسط حقوق المساهمين', N'(%)', N'(%)', 1, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (27, 11, 26, N'Indebtedness Over Shareholders', N'صافي المديونية/حقوق المساهمين', N'(%)', N'(%)', 2, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (28, 11, 27, N'Net Profit Margin', N'هامش الربح الصافي', N'(%)', N'(%)', 3, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (29, 11, 28, N'Total Profit Margin', N'هامش الربح الإجمالي', N'(%)', N'(%)', 4, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (30, 9, 29, N'Gainers', N'المرتفعة', N'(%)', N'(%)', 1, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (31, 9, 30, N'Losers', N'المنخفضة', N'(%)', N'(%)', 2, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (32, 9, 31, N'Active by share traded', N'حجم التداول', NULL, NULL, 3, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (33, 9, 32, N'Active by Turnover', N'النشطة بالقيمة', NULL, NULL, 4, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (34, 12, 33, N'Top Growth Companies', N'الشركات الأعلى نمواً', NULL, NULL, 1, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (35, 12, 34, N'Top Losing Companies', N'الشركات الأكثر تسجيلا للخسائر', NULL, NULL, 2, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (36, 12, 35, N'Top Dividend Companies', N'ترتيب الشركات الأكثر توزيعا', NULL, NULL, 3, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (37, 12, 36, N'Highest Return', N'العائد الكلي', N'(%)', N'(%)', 4, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (38, 13, 37, N'Market Cap', N'القيمة السوقية', N'(Change%)', N'(التغير %)', 1, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (39, 13, 38, N'Assets%', N'إجمالي الأصول %', N'(Last Fiscal Period)', N'(اّخر فترة مالية)', 2, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (40, 13, 39, N'Shareholder''s Equity%', N'حقوق المساهمين %', N'(Last Fiscal Period)', N'(آخر فتره مالية)', 3, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (41, 13, 40, N'Revenue%', N'الايرادات %', N'(TTM)', N'(آخر 12 شهرا)', 4, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (42, 13, 41, N'Profit%', N'الارباح %', N'(TTM)', N'(آخر 12 شهرا)', 5, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (43, 6, 38, N'Assets Growth', N'النمو في الاصول', N' (Last Fiscal period)', N'النمو في الاصول', 1, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 8, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (44, 6, 42, N'Deposits', N'النمو في ودائع العملاء', N' (Last Fiscal period)', N'النمو في ودائع العملاء', 2, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 8, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (45, 6, 43, N'Loans and Advances', N'النمو في القروض', N' (Last Fiscal period)', N'النمو في القروض', 3, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 8, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (46, 6, 44, N'Interest Margin', N'هامش الفائدة', N' (TTM)', N'هامش الفائدة', 4, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 8, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (47, 6, 45, N'Demand Deposits/Customer Deposits', N'الودائع تحت الطلب/إجمالي الودائع', N' (Last Fiscal period)', N'الودائع تحت الطلب/إجمالي الودائع', 5, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 8, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (48, 6, 46, N'Cost of Credit Risk', N'كلفة مخاطر الائتمان', N' (TTM)', N'كلفة مخاطر الائتمان', 6, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 8, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (49, 6, 38, N'Assets Growth', N'النمو في الاصول', N' (Last Fiscal period)', N'النمو في الاصول', 1, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 15, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (50, 6, 47, N'Insurance Revenue Growth', N'النمو في إيرادات التأمين', N' (TTM)', N'النمو في إيرادات التأمين', 2, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 15, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (51, 6, 7, N'Return on assets ', N'العائد على متوسط الأصول', N'', N'العائد على متوسط الأصول', 3, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 15, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (52, 6, 8, N'Return on equity ', N'العائد على متوسط حقوق المساهمين', N'', N'العائد على متوسط حقوق المساهمين', 4, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 15, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (53, 6, 48, N'Insurance Results Margin', N'هامش نتائج التأمين', N' (TTM)', N'هامش نتائج التأمين', 5, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 15, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (54, 6, 49, N'Expenses Ratio', N'معدل المصروفات', N' (TTM)', N'معدل المصروفات', 6, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 15, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (55, 6, 50, N'Market Value of Assets/Unit', N'القيمة السوقية للاصول العائدة للوحدة', N'(TTM)', N'القيمة السوقية للاصول العائدة للوحدة', 1, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 238, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (56, 6, 51, N'Funds from Operations/Unit', N'ربح الوحدة من العمليات التشغيلية', N'(TTM)', N'ربح الوحدة من العمليات التشغيلية', 2, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 238, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (57, 6, 7, N'Return on assets ', N'العائد على متوسط الأصول', N'', N'العائد على متوسط الأصول', 3, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 238, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (58, 6, 8, N'Return on equity ', N'العائد على متوسط حقوق المساهمين', N'', N'العائد على متوسط حقوق المساهمين', 4, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 238, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (59, 6, 52, N'Total Debt/Equity', N'إجمالي القروض/حقوق المساهمين', N' (TTM)', N'إجمالي القروض/حقوق المساهمين', 5, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 238, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (60, 6, 53, N'Total Debt/Assets', N'إجمالي القروض/الموجودات', N' (TTM)', N'إجمالي القروض/الموجودات', 6, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 238, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (61, 6, 54, N'Financing Expenses/Financing Income', N'مصاريف التمويلات/دخل التمويلات', N' (TTM)', N'مصاريف التمويلات/دخل التمويلات', 1, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 240, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (62, 6, 55, N'Average Cost of Financin', N'متوسط تكلفة التمويل', N' (TTM)', N'متوسط تكلفة التمويل', 2, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 240, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (63, 6, 7, N'Return on assets ', N'العائد على متوسط الأصول', N'', N'العائد على متوسط الأصول', 3, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 240, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (64, 6, 8, N'Return on equity ', N'العائد على متوسط حقوق المساهمين', N'', N'العائد على متوسط حقوق المساهمين', 4, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 240, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (65, 6, 56, N'Average Return on Financing contracts', N'متوسط العائد على عقود التمويل', N' (TTM)', N'متوسط العائد على عقود التمويل', 5, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 240, 1, 1, NULL, NULL)
INSERT [dbo].[FieldConfigurations] ([Id], [SetupId], [FieldId], [FieldNameEn], [FieldNameAr], [UnitNameEn], [UnitNameAr], [DisplaySeq], [IsActive], [Arguments], [SECTORID], [IndicatorID], [ShowPercentage], [NotesEn], [NotesAr]) VALUES (66, 6, 57, N'Average Margin Financing', N'متوسط هامش التمويل', N' (TTM)', N'متوسط هامش التمويل', 6, 1, N'id, filterid , marketid , fiscalperiodtypeid , noofcompanies, language', 240, 1, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[FieldConfigurations] OFF
GO
SET IDENTITY_INSERT [dbo].[FilterConfig] ON 

INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (1, N'{"configuration":[{"fid":"1","cid":"1","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 1)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (2, N'{"configuration":[{"fid":"1","cid":"1","config":[{"ftid":"5"}],"noc":"-1"}]}', 1, 2)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (3, N'{"configuration":[{"fid":"1","cid":"2","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 3)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (4, N'{"configuration":[{"fid":"1","cid":"3","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 4)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (5, N'{"configuration":[{"fid":"1","cid":"4","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 5)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (6, N'{"configuration":[{"fid":"1","cid":"5","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 6)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (7, N'{"configuration":[{"fid":"1","cid":"6","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 7)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (8, N'{"configuration":[{"fid":"1","cid":"7","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 8)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (9, N'{"configuration":[{"fid":"1","cid":"8","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 9)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (10, N'{"configuration":[{"fid":"1","cid":"9","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 10)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (11, N'{"configuration":[{"fid":"1","cid":"10","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 11)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (12, N'{"configuration":[{"fid":"1","cid":"11","config":[{"ftid":"4"}],"noc":"-1"}]}', 1, 12)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (13, N'{"configuration":[{"fid":"1","cid":"12","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 13)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (14, N'{"configuration":[{"fid":"1","cid":"13","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 14)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (15, N'{"configuration":[{"fid":"1","cid":"14","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 15)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (16, N'{"configuration":[{"fid":"1","cid":"15","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 16)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (17, N'{"configuration":[{"fid":"1","cid":"16","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 17)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (18, N'{"configuration":[
	{"fid":"1","cid":17,"ten" : "Last Close" , "tar" : "آخر إغلاق","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"1"},
	{"fid":"2","cid":17,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"2"}
	]}', 1, 18)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (19, N'{"configuration":[   {"fid":"1","cid":18,"ten" : "Last Fiscal Period" , "tar" : "آخر فترة مالية","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"1"},   {"fid":"2","cid":18,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"2"}   ]}', 1, 19)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (20, N'{"configuration":[
	{"fid":"1","cid":19,"ten" : "TTM" , "tar" : "آخر 12 شهرا","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"1"},
	{"fid":"2","cid":19,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"2"}
	]}', 1, 20)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (21, N'{"configuration":[
	{"fid":"1","cid":20,"ten" : "TTM" , "tar" : "آخر 12 شهرا","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"1"},
	{"fid":"2","cid":20,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"2"}
	]}', 1, 21)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (22, N'{"configuration":[   {"fid":"1","cid":21,"ten" : "TTM" , "tar" : "آخر 12 شهرا","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"1"},   {"fid":"2","cid":21,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"2" , "extraparams":{"ob":"asc"}}   ]}', 1, 22)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (23, N'{"configuration":[   {"fid":"1","cid":22,"ten" : "TTM" , "tar" : "آخر 12 شهرا","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"1"},   {"fid":"2","cid":22,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"2" ,  "extraparams":{"ob":"asc"}}   ]}', 1, 23)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (24, N'{"configuration":[   {"fid":"1","cid":23,"ten" : "TTM" , "tar" : "آخر 12 شهرا","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"1"},   {"fid":"2","cid":23,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"2" ,  "extraparams":{"ob":"asc"}}   ]}', 1, 24)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (25, N'{"configuration":[   {"fid":"1","cid":24,"ten" : "TTM" , "tar" : "آخر 12 شهرا","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"1"},   {"fid":"2","cid":24,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"2" ,  "extraparams":{"ob":"asc"}}   ]}', 1, 25)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (26, N'{"configuration":[
	{"fid":"1","cid":25,"ten" : "TTM" , "tar" : "آخر 12 شهرا","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"1"},
	{"fid":"2","cid":25,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"2"}
	]}', 1, 26)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (27, N'{"configuration":[
	{"fid":"1","cid":26,"ten" : "TTM" , "tar" : "آخر 12 شهرا","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"1"},
	{"fid":"2","cid":26,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"2"}
	]}', 1, 27)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (28, N'{"configuration":[
	{"fid":"1","cid":27,"ten" : "TTM" , "tar" : "آخر 12 شهرا","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"1"},
	{"fid":"2","cid":27,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"2"}
	]}', 1, 28)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (29, N'{"configuration":[
	{"fid":"1","cid":28,"ten" : "TTM" , "tar" : "آخر 12 شهرا","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"1"},
	{"fid":"2","cid":28,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"2"}
	]}', 1, 29)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (30, N'{"configuration":[   {"fid":"1","cid":29,"ten" : "Day" , "tar" : "1 يوم","config":[{"ftid":"1D"}],"noc":"10" , "IA" : "1","dsno":"1"},   {"fid":"1","cid":29,"ten" : "Month" , "tar" : "شهر","config":[{"ftid":"1M"}],"noc":"10" , "IA" : "0","dsno":"2"},   {"fid":"1","cid":29,"ten" : "3 Months" , "tar" : "3 أشهر","config":[{"ftid":"3M"}],"noc":"10" , "IA" : "0","dsno":"3"}, {"fid":"1","cid":29,"ten" : "Year" , "tar" : "سنة","config":[{"ftid":"1Y"}],"noc":"10" , "IA" : "0","dsno":"3.1"} , {"fid":"1","cid":29,"ten" : "5 Years" , "tar" : "5 سنوات","config":[{"ftid":"5Y"}],"noc":"10" , "IA" : "0","dsno":"4"},   {"fid":"1","cid":29,"ten" : "YTD" , "tar" : "منذ بداية العام","config":[{"ftid":"YTD"}],"noc":"10" , "IA" : "0","dsno":"5"}   ]}', 1, 30)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (31, N'{"configuration":[   {"fid":"1","cid":30,"ten" : "Day" , "tar" : "1 يوم","config":[{"ftid":"1D"}],"noc":"10" , "IA" : "1","dsno":"1"},   {"fid":"1","cid":30,"ten" : "Month" , "tar" : "شهر","config":[{"ftid":"1M"}],"noc":"10" , "IA" : "0","dsno":"2"},   {"fid":"1","cid":30,"ten" : "3 Months" , "tar" : "3 أشهر","config":[{"ftid":"3M"}],"noc":"10" , "IA" : "0","dsno":"3"}, {"fid":"1","cid":30,"ten" : "Year" , "tar" : "سنة","config":[{"ftid":"1Y"}],"noc":"10" , "IA" : "0","dsno":"3.1"} ,  {"fid":"1","cid":30,"ten" : "5 Years" , "tar" : "5 سنوات","config":[{"ftid":"5Y"}],"noc":"10" , "IA" : "0","dsno":"4"},   {"fid":"1","cid":30,"ten" : "YTD" , "tar" : "منذ بداية العام","config":[{"ftid":"YTD"}],"noc":"10" , "IA" : "0","dsno":"5"}   ]}', 1, 31)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (32, N'{"configuration":[ {"fid":"1","cid":31,"ten" : "Week" , "tar" : "أسبوع","config":[{"ftid":"1M"}],"noc":"10" , "IA" : "1","dsno":"0.1"} ,     {"fid":"1","cid":31,"ten" : "Month" , "tar" : "شهر","config":[{"ftid":"1M"}],"noc":"10" , "IA" : "0","dsno":"1"},   {"fid":"1","cid":31,"ten" : "3 Months" , "tar" : "3 أشهر","config":[{"ftid":"3M"}],"noc":"10" , "IA" : "1","dsno":"2"},  {"fid":"1","cid":31,"ten" : "6 Months" , "tar" : "6 أشهر","config":[{"ftid":"3M"}],"noc":"10" , "IA" : "0","dsno":"3"},  {"fid":"1","cid":31,"ten" : "Year" , "tar" : "سنة","config":[{"ftid":"1Y"}],"noc":"10" , "IA" : "0","dsno":"4"}]}', 1, 32)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (33, N'{"configuration":[ {"fid":"1","cid":32,"ten" : "Week" , "tar" : "أسبوع","config":[{"ftid":"1M"}],"noc":"10" , "IA" : "1","dsno":"0.1"} ,     {"fid":"1","cid":32,"ten" : "Month" , "tar" : "شهر","config":[{"ftid":"1M"}],"noc":"10" , "IA" : "0","dsno":"1"},   {"fid":"1","cid":32,"ten" : "3 Months" , "tar" : "3 أشهر","config":[{"ftid":"3M"}],"noc":"10" , "IA" : "1","dsno":"2"},  {"fid":"1","cid":32,"ten" : "6 Months" , "tar" : "6 أشهر","config":[{"ftid":"3M"}],"noc":"10" , "IA" : "0","dsno":"3"},  {"fid":"1","cid":32,"ten" : "Year" , "tar" : "سنة","config":[{"ftid":"1Y"}],"noc":"10" , "IA" : "0","dsno":"4"}]}', 1, 33)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (34, N'{"configuration":[
	{"fid":"1","cid":33,"ten" : "3 Years" , "tar" : "3 سنوات","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"1"},
	{"fid":"1","cid":33,"ten" : "5 Years" , "tar" : "5 سنوات","config":[{"ftid":"5"}],"noc":"10" , "IA" : "0","dsno":"2"},
	{"fid":"1","cid":33,"ten" : "7 Years" , "tar" : "7 سنوات","config":[{"ftid":"7"}],"noc":"10" , "IA" : "0","dsno":"3"},
	{"fid":"1","cid":33,"ten" : "10 Years" , "tar" : "10 سنوات","config":[{"ftid":"10"}],"noc":"10" , "IA" : "0","dsno":"4"}
	]}', 1, 34)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (35, N'{"configuration":[
	{"fid":"1","cid":34,"ten" : "3 Years" , "tar" : "3 سنوات","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"1"},
	{"fid":"1","cid":34,"ten" : "5 Years" , "tar" : "5 سنوات","config":[{"ftid":"5"}],"noc":"10" , "IA" : "0","dsno":"2"},
	{"fid":"1","cid":34,"ten" : "7 Years" , "tar" : "7 سنوات","config":[{"ftid":"7"}],"noc":"10" , "IA" : "0","dsno":"3"},
	{"fid":"1","cid":34,"ten" : "10 Years" , "tar" : "10 سنوات","config":[{"ftid":"10"}],"noc":"10" , "IA" : "0","dsno":"4"}
	]}', 1, 35)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (36, N'{"configuration":[
	{"fid":"1","cid":35,"ten" : "3 Years" , "tar" : "3 سنوات","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"1"},
	{"fid":"1","cid":35,"ten" : "5 Years" , "tar" : "5 سنوات","config":[{"ftid":"5"}],"noc":"10" , "IA" : "0","dsno":"2"},
	{"fid":"1","cid":35,"ten" : "7 Years" , "tar" : "7 سنوات","config":[{"ftid":"7"}],"noc":"10" , "IA" : "0","dsno":"3"},
	{"fid":"1","cid":35,"ten" : "10 Years" , "tar" : "10 سنوات","config":[{"ftid":"10"}],"noc":"10" , "IA" : "0","dsno":"4"}
	]}', 1, 36)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (37, N'{"configuration":[
	{"fid":"1","cid":36,"ten" : "3 Years" , "tar" : "3 سنوات","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"1"},
	{"fid":"1","cid":36,"ten" : "5 Years" , "tar" : "5 سنوات","config":[{"ftid":"5"}],"noc":"10" , "IA" : "0","dsno":"2"},
	{"fid":"1","cid":36,"ten" : "7 Years" , "tar" : "7 سنوات","config":[{"ftid":"7"}],"noc":"10" , "IA" : "0","dsno":"3"},
	{"fid":"1","cid":36,"ten" : "10 Years" , "tar" : "10 سنوات","config":[{"ftid":"10"}],"noc":"10" , "IA" : "0","dsno":"4"}
	]}', 1, 37)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (38, N'{"configuration":[{"fid":"1","cid":"37","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 38)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (39, N'{"configuration":[{"fid":"1","cid":"38","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 39)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (40, N'{"configuration":[{"fid":"1","cid":"39","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 40)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (41, N'{"configuration":[{"fid":"1","cid":"40","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 41)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (42, N'{"configuration":[{"fid":"1","cid":"41","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 42)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (43, N'{"configuration":[{"fid":"1","cid":"38","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 43)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (44, N'{"configuration":[{"fid":"1","cid":"42","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 44)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (45, N'{"configuration":[{"fid":"1","cid":"43","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 45)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (46, N'{"configuration":[{"fid":"1","cid":"44","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 46)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (47, N'{"configuration":[{"fid":"1","cid":"45","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 47)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (48, N'{"configuration":[{"fid":"1","cid":"46","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 48)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (49, N'{"configuration":[{"fid":"1","cid":"38","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 49)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (50, N'{"configuration":[{"fid":"1","cid":"47","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 50)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (51, N'{"configuration":[{"fid":"1","cid":"7","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 51)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (52, N'{"configuration":[{"fid":"1","cid":"8","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 52)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (53, N'{"configuration":[{"fid":"1","cid":"48","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 53)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (54, N'{"configuration":[{"fid":"1","cid":"49","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 54)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (55, N'{"configuration":[{"fid":"1","cid":"50","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 55)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (56, N'{"configuration":[{"fid":"1","cid":"51","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 56)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (57, N'{"configuration":[{"fid":"1","cid":"7","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 57)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (58, N'{"configuration":[{"fid":"1","cid":"8","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 58)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (59, N'{"configuration":[{"fid":"1","cid":"52","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 59)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (60, N'{"configuration":[{"fid":"1","cid":"53","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 60)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (61, N'{"configuration":[{"fid":"1","cid":"54","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 61)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (62, N'{"configuration":[{"fid":"1","cid":"55","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 62)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (63, N'{"configuration":[{"fid":"1","cid":"7","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 63)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (64, N'{"configuration":[{"fid":"1","cid":"8","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 64)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (65, N'{"configuration":[{"fid":"1","cid":"56","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 65)
INSERT [dbo].[FilterConfig] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (66, N'{"configuration":[{"fid":"1","cid":"57","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 66)
SET IDENTITY_INSERT [dbo].[FilterConfig] OFF
GO
SET IDENTITY_INSERT [dbo].[FilterConfig25Sep2024] ON 

INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (1, N'{"configuration":[{"fid":"1","cid":"1","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 1)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (2, N'{"configuration":[{"fid":"1","cid":"1","config":[{"ftid":"5"}],"noc":"-1"}]}', 1, 2)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (3, N'{"configuration":[{"fid":"1","cid":"2","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 3)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (4, N'{"configuration":[{"fid":"1","cid":"3","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 4)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (5, N'{"configuration":[{"fid":"1","cid":"4","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 5)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (6, N'{"configuration":[{"fid":"1","cid":"5","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 6)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (7, N'{"configuration":[{"fid":"1","cid":"6","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 7)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (8, N'{"configuration":[{"fid":"1","cid":"7","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 8)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (9, N'{"configuration":[{"fid":"1","cid":"8","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 9)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (10, N'{"configuration":[{"fid":"1","cid":"9","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 10)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (11, N'{"configuration":[{"fid":"1","cid":"10","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 11)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (12, N'{"configuration":[{"fid":"1","cid":"11","config":[{"ftid":"4"}],"noc":"-1"}]}', 1, 12)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (13, N'{"configuration":[{"fid":"1","cid":"12","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 13)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (14, N'{"configuration":[{"fid":"1","cid":"13","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 14)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (15, N'{"configuration":[{"fid":"1","cid":"14","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 15)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (16, N'{"configuration":[{"fid":"1","cid":"15","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 16)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (17, N'{"configuration":[{"fid":"1","cid":"16","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 17)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (18, N'{"configuration":[
	{"fid":"1","cid":17,"ten" : "Last Close" , "tar" : "آخر إغلاق","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"2"},
	{"fid":"2","cid":17,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"1"}
	]}', 1, 18)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (19, N'{"configuration":[
	{"fid":"1","cid":18,"ten" : "Last Fiscal Period" , "tar" : "القيمة الدفترية","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"2"},
	{"fid":"2","cid":18,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"1"}
	]}', 1, 19)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (20, N'{"configuration":[
	{"fid":"1","cid":19,"ten" : "TTM" , "tar" : "آخر 12 شهرا","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"2"},
	{"fid":"2","cid":19,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"1"}
	]}', 1, 20)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (21, N'{"configuration":[
	{"fid":"1","cid":20,"ten" : "TTM" , "tar" : "آخر 12 شهرا","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"2"},
	{"fid":"2","cid":20,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"1"}
	]}', 1, 21)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (22, N'{"configuration":[   {"fid":"1","cid":21,"ten" : "TTM" , "tar" : "آخر 12 شهرا","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"2"},   {"fid":"2","cid":21,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"1" , "extraparams":{"ob":"asc"}}   ]}', 1, 22)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (23, N'{"configuration":[   {"fid":"1","cid":22,"ten" : "TTM" , "tar" : "آخر 12 شهرا","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"2"},   {"fid":"2","cid":22,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"1" ,  "extraparams":{"ob":"asc"}}   ]}', 1, 23)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (24, N'{"configuration":[
	{"fid":"1","cid":23,"ten" : "TTM" , "tar" : "آخر 12 شهرا","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"2"},
	{"fid":"2","cid":23,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"1"}
	]}', 1, 24)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (25, N'{"configuration":[
	{"fid":"1","cid":24,"ten" : "TTM" , "tar" : "آخر 12 شهرا","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"2"},
	{"fid":"2","cid":24,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"1"}
	]}', 1, 25)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (26, N'{"configuration":[
	{"fid":"1","cid":25,"ten" : "TTM" , "tar" : "آخر 12 شهرا","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"2"},
	{"fid":"2","cid":25,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"1"}
	]}', 1, 26)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (27, N'{"configuration":[
	{"fid":"1","cid":26,"ten" : "TTM" , "tar" : "آخر 12 شهرا","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"2"},
	{"fid":"2","cid":26,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"1"}
	]}', 1, 27)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (28, N'{"configuration":[
	{"fid":"1","cid":27,"ten" : "TTM" , "tar" : "آخر 12 شهرا","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"2"},
	{"fid":"2","cid":27,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"1"}
	]}', 1, 28)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (29, N'{"configuration":[
	{"fid":"1","cid":28,"ten" : "TTM" , "tar" : "آخر 12 شهرا","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"2"},
	{"fid":"2","cid":28,"ten" : "Historical Evolution" , "tar" : "التطور التاريخي","config":[{"ftid":"4"}],"noc":"10" , "IA" : "0","dsno":"1"}
	]}', 1, 29)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (30, N'{"configuration":[
	{"fid":"1","cid":29,"ten" : "Day" , "tar" : "1 يوم","config":[{"ftid":"1D"}],"noc":"10" , "IA" : "1","dsno":"1"},
	{"fid":"1","cid":29,"ten" : "Month" , "tar" : "شهر","config":[{"ftid":"1M"}],"noc":"10" , "IA" : "0","dsno":"2"},
	{"fid":"1","cid":29,"ten" : "3 Months" , "tar" : "3 أشهر","config":[{"ftid":"3M"}],"noc":"10" , "IA" : "0","dsno":"3"},
	{"fid":"1","cid":29,"ten" : "5 Years" , "tar" : "5 سنوات","config":[{"ftid":"5Y"}],"noc":"10" , "IA" : "0","dsno":"4"},
	{"fid":"1","cid":29,"ten" : "From beginning of the year" , "tar" : "منذ بداية العام","config":[{"ftid":"YTD"}],"noc":"10" , "IA" : "0","dsno":"5"}
	]}', 1, 30)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (31, N'{"configuration":[
	{"fid":"1","cid":30,"ten" : "Day" , "tar" : "1 يوم","config":[{"ftid":"1D"}],"noc":"10" , "IA" : "1","dsno":"1"},
	{"fid":"1","cid":30,"ten" : "Month" , "tar" : "شهر","config":[{"ftid":"1M"}],"noc":"10" , "IA" : "0","dsno":"2"},
	{"fid":"1","cid":30,"ten" : "3 Months" , "tar" : "3 أشهر","config":[{"ftid":"3M"}],"noc":"10" , "IA" : "0","dsno":"3"},
	{"fid":"1","cid":30,"ten" : "5 Years" , "tar" : "5 سنوات","config":[{"ftid":"5Y"}],"noc":"10" , "IA" : "0","dsno":"4"},
	{"fid":"1","cid":30,"ten" : "From beginning of the year" , "tar" : "منذ بداية العام","config":[{"ftid":"YTD"}],"noc":"10" , "IA" : "0","dsno":"5"}
	]}', 1, 31)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (32, N'{"configuration":[
	{"fid":"1","cid":31,"ten" : "Day" , "tar" : "1 يوم","config":[{"ftid":"1D"}],"noc":"10" , "IA" : "1","dsno":"1"},
	{"fid":"1","cid":31,"ten" : "Month" , "tar" : "شهر","config":[{"ftid":"1M"}],"noc":"10" , "IA" : "0","dsno":"2"},
	{"fid":"1","cid":31,"ten" : "3 Months" , "tar" : "3 أشهر","config":[{"ftid":"3M"}],"noc":"10" , "IA" : "0","dsno":"3"},
	{"fid":"1","cid":31,"ten" : "5 Years" , "tar" : "5 سنوات","config":[{"ftid":"5Y"}],"noc":"10" , "IA" : "0","dsno":"4"},
	{"fid":"1","cid":31,"ten" : "From beginning of the year" , "tar" : "منذ بداية العام","config":[{"ftid":"YTD"}],"noc":"10" , "IA" : "0","dsno":"5"}
	]}', 1, 32)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (33, N'{"configuration":[
	{"fid":"1","cid":32,"ten" : "Day" , "tar" : "1 يوم","config":[{"ftid":"1D"}],"noc":"10" , "IA" : "1","dsno":"1"},
	{"fid":"1","cid":32,"ten" : "Month" , "tar" : "شهر","config":[{"ftid":"1M"}],"noc":"10" , "IA" : "0","dsno":"2"},
	{"fid":"1","cid":32,"ten" : "3 Months" , "tar" : "3 أشهر","config":[{"ftid":"3M"}],"noc":"10" , "IA" : "0","dsno":"3"},
	{"fid":"1","cid":32,"ten" : "5 Years" , "tar" : "5 سنوات","config":[{"ftid":"5Y"}],"noc":"10" , "IA" : "0","dsno":"4"},
	{"fid":"1","cid":32,"ten" : "From beginning of the year" , "tar" : "منذ بداية العام","config":[{"ftid":"YTD"}],"noc":"10" , "IA" : "0","dsno":"5"}
	]}', 1, 33)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (34, N'{"configuration":[
	{"fid":"1","cid":33,"ten" : "3 Years" , "tar" : "3 سنوات","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"1"},
	{"fid":"1","cid":33,"ten" : "5 Years" , "tar" : "5 سنوات","config":[{"ftid":"5"}],"noc":"10" , "IA" : "0","dsno":"2"},
	{"fid":"1","cid":33,"ten" : "7 Years" , "tar" : "7 سنوات","config":[{"ftid":"7"}],"noc":"10" , "IA" : "0","dsno":"3"},
	{"fid":"1","cid":33,"ten" : "10 Years" , "tar" : "10 سنوات","config":[{"ftid":"10"}],"noc":"10" , "IA" : "0","dsno":"4"}
	]}', 1, 34)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (35, N'{"configuration":[
	{"fid":"1","cid":34,"ten" : "3 Years" , "tar" : "3 سنوات","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"1"},
	{"fid":"1","cid":34,"ten" : "5 Years" , "tar" : "5 سنوات","config":[{"ftid":"5"}],"noc":"10" , "IA" : "0","dsno":"2"},
	{"fid":"1","cid":34,"ten" : "7 Years" , "tar" : "7 سنوات","config":[{"ftid":"7"}],"noc":"10" , "IA" : "0","dsno":"3"},
	{"fid":"1","cid":34,"ten" : "10 Years" , "tar" : "10 سنوات","config":[{"ftid":"10"}],"noc":"10" , "IA" : "0","dsno":"4"}
	]}', 1, 35)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (36, N'{"configuration":[
	{"fid":"1","cid":35,"ten" : "3 Years" , "tar" : "3 سنوات","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"1"},
	{"fid":"1","cid":35,"ten" : "5 Years" , "tar" : "5 سنوات","config":[{"ftid":"5"}],"noc":"10" , "IA" : "0","dsno":"2"},
	{"fid":"1","cid":35,"ten" : "7 Years" , "tar" : "7 سنوات","config":[{"ftid":"7"}],"noc":"10" , "IA" : "0","dsno":"3"},
	{"fid":"1","cid":35,"ten" : "10 Years" , "tar" : "10 سنوات","config":[{"ftid":"10"}],"noc":"10" , "IA" : "0","dsno":"4"}
	]}', 1, 36)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (37, N'{"configuration":[
	{"fid":"1","cid":36,"ten" : "3 Years" , "tar" : "3 سنوات","config":[{"ftid":"3"}],"noc":"10" , "IA" : "1","dsno":"1"},
	{"fid":"1","cid":36,"ten" : "5 Years" , "tar" : "5 سنوات","config":[{"ftid":"5"}],"noc":"10" , "IA" : "0","dsno":"2"},
	{"fid":"1","cid":36,"ten" : "7 Years" , "tar" : "7 سنوات","config":[{"ftid":"7"}],"noc":"10" , "IA" : "0","dsno":"3"},
	{"fid":"1","cid":36,"ten" : "10 Years" , "tar" : "10 سنوات","config":[{"ftid":"10"}],"noc":"10" , "IA" : "0","dsno":"4"}
	]}', 1, 37)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (38, N'{"configuration":[{"fid":"1","cid":"37","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 38)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (39, N'{"configuration":[{"fid":"1","cid":"38","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 39)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (40, N'{"configuration":[{"fid":"1","cid":"39","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 40)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (41, N'{"configuration":[{"fid":"1","cid":"40","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 41)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (42, N'{"configuration":[{"fid":"1","cid":"41","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 42)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (43, N'{"configuration":[{"fid":"1","cid":"38","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 43)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (44, N'{"configuration":[{"fid":"1","cid":"42","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 44)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (45, N'{"configuration":[{"fid":"1","cid":"43","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 45)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (46, N'{"configuration":[{"fid":"1","cid":"44","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 46)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (47, N'{"configuration":[{"fid":"1","cid":"45","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 47)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (48, N'{"configuration":[{"fid":"1","cid":"46","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 48)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (49, N'{"configuration":[{"fid":"1","cid":"38","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 49)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (50, N'{"configuration":[{"fid":"1","cid":"47","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 50)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (51, N'{"configuration":[{"fid":"1","cid":"7","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 51)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (52, N'{"configuration":[{"fid":"1","cid":"8","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 52)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (53, N'{"configuration":[{"fid":"1","cid":"48","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 53)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (54, N'{"configuration":[{"fid":"1","cid":"49","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 54)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (55, N'{"configuration":[{"fid":"1","cid":"50","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 55)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (56, N'{"configuration":[{"fid":"1","cid":"51","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 56)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (57, N'{"configuration":[{"fid":"1","cid":"7","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 57)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (58, N'{"configuration":[{"fid":"1","cid":"8","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 58)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (59, N'{"configuration":[{"fid":"1","cid":"52","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 59)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (60, N'{"configuration":[{"fid":"1","cid":"53","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 60)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (61, N'{"configuration":[{"fid":"1","cid":"54","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 61)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (62, N'{"configuration":[{"fid":"1","cid":"55","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 62)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (63, N'{"configuration":[{"fid":"1","cid":"7","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 63)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (64, N'{"configuration":[{"fid":"1","cid":"8","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 64)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (65, N'{"configuration":[{"fid":"1","cid":"56","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 65)
INSERT [dbo].[FilterConfig25Sep2024] ([Id], [ConfigJson], [IsActive], [FieldConfigurationID]) VALUES (66, N'{"configuration":[{"fid":"1","cid":"57","config":[{"ftid":"3"}],"noc":"-1"}]}', 1, 66)
SET IDENTITY_INSERT [dbo].[FilterConfig25Sep2024] OFF
GO