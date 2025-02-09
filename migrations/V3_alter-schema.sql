
ALTER TABLE [dbo].[FieldConfigurations] ADD  DEFAULT ((0)) FOR [ShowPercentage]
GO
ALTER TABLE [dbo].[FieldConfigurations]  WITH CHECK ADD FOREIGN KEY([SetupId])
REFERENCES [dbo].[SetupData] ([Id])
GO
ALTER TABLE [dbo].[SetupData]  WITH CHECK ADD FOREIGN KEY([WidgetId])
REFERENCES [dbo].[Widgets] ([Id])
GO

ALTER DATABASE [ArgaamScreener_DEV] SET  READ_WRITE 
GO