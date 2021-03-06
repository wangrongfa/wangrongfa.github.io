IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_Member' AND xtype = 'v')
   DROP VIEW V_Member
GO


/****** 对象:  View [dbo].[V_Member]    脚本日期: 07/01/2014 15:51:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Member]
AS
SELECT     A.Guid, A.MemLoginID, A.Pwd, A.Email, A.AdvancePayment, B.Name AS LevelName, A.Score, A.RankScore, A.MemberRankGuid, A.AgentID, A.Photo, B.Discount, A.QQ, 
                      A.RealName, A.Mobile, A.PayPwd
FROM         dbo.ShopNum1_Member AS A LEFT OUTER JOIN
                      dbo.ShopNum1_MemberRank AS B ON A.MemberRankGuid = B.Guid
WHERE     (A.IsDeleted = 0) AND (A.IsForbid = 0)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 270
               Right = 230
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 268
               Bottom = 270
               Right = 414
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Member'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Member'
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_ProductCategory' AND xtype = 'v')
   DROP VIEW V_ProductCategory
GO
/****** 对象:  View [dbo].[V_ProductCategory]    脚本日期: 07/14/2014 11:10:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON 
GO
CREATE VIEW [dbo].[V_ProductCategory]
AS
SELECT     ID, Name, Keywords, Description, OrderID, CategoryLevel, FatherID, AgentID, BackgroundImage
FROM         dbo.ShopNum1_ProductCategory
WHERE     (IsShow = 1) AND (IsDeleted = 0)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ShopNum1_ProductCategory"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 204
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_ProductCategory'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_ProductCategory'
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_MemberMessage' AND xtype = 'v')
   DROP VIEW V_MemberMessage
GO
/****** 对象:  View [dbo].[V_MemberMessage]    脚本日期: 07/14/2014 13:39:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_MemberMessage]
AS
SELECT     A.Guid, A.Title, A.[Content], A.CreateTime, B.IsRead, B.ReceiveMemLoginID, B.ReceiveIsDeleted, B.SendMemLoginID, B.SendIsDeleted
FROM         dbo.ShopNum1_AgentMessageInfo AS A INNER JOIN
                      dbo.ShopNum1_AgentMemberMessage AS B ON A.Guid = B.MessageInfoGuid
WHERE     (B.ReceiveIsDeleted = 0)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 173
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 211
               Bottom = 114
               Right = 387
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_MemberMessage'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_MemberMessage'
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_Collect' AND xtype = 'v')
   DROP VIEW V_Collect
GO
/****** 对象:  View [dbo].[V_Collect]    脚本日期: 07/14/2014 17:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Collect]
AS
SELECT     A.Guid, A.MemLoginID, A.ProductGuid, A.CollectTime, B.ShopPrice, B.Name, B.OriginalImge, B.AgentID, B.MarketPrice
FROM         dbo.ShopNum1_Collect AS A INNER JOIN
                      dbo.ShopNum1_Product AS B ON A.ProductGuid = B.Guid

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 226
               Right = 176
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 214
               Bottom = 227
               Right = 425
            End
            DisplayFlags = 280
            TopColumn = 41
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_Collect'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_Collect'
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_DispatchMode' AND xtype = 'v')
   DROP VIEW V_DispatchMode
GO
/****** 对象:  View [dbo].[V_DispatchMode]    脚本日期: 07/16/2014 09:14:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_DispatchMode]
AS
SELECT     Guid, Name, IsPayArrived, SafeCost, Formula, OrderID, DispatchType, Remark
FROM         dbo.ShopNum1_DispatchMode
WHERE     (IsDeleted = 0)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ShopNum1_DispatchMode"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 183
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_DispatchMode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_DispatchMode'
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_OrderProduct' AND xtype = 'v')
   DROP VIEW V_OrderProduct
GO
/****** 对象:  View [dbo].[V_OrderProduct]    脚本日期: 07/16/2014 17:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_OrderProduct]
AS
SELECT     A.Guid, A.OrderInfoGuid, A.ProductGuid, A.Attributes, A.ExtensionAttriutes, A.Name, A.BuyNumber, A.BuyPrice, A.IsShipment, A.IsJoinActivity, 
                      A.IsPresent, b.OriginalImge, A.DetailedSpecifications
FROM         dbo.ShopNum1_OrderProduct AS A LEFT OUTER JOIN
                      dbo.ShopNum1_Product AS b ON A.ProductGuid = b.Guid

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 222
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 6
               Left = 260
               Bottom = 195
               Right = 471
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_OrderProduct'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_OrderProduct'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_AdvertisementImage' AND xtype = 'v')
   DROP VIEW V_AdvertisementImage
GO
/****** 对象:  View [dbo].[V_AdvertisementImage]    脚本日期: 07/19/2014 11:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[V_AdvertisementImage]
AS
SELECT     ID, ShopID, Value, Url, ConfigType
FROM         dbo.ShopNum1_AdvertisementImage


GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ShopNum1_AdvertisementImage"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 173
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_AdvertisementImage'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_AdvertisementImage'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_AgentPayment' AND xtype = 'v')
   DROP VIEW V_AgentPayment
GO
/****** 对象:  View [dbo].[V_AgentPayment]    脚本日期: 07/19/2014 11:27:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_AgentPayment]
AS
SELECT     Guid, PaymentType, Name, MerchantCode, IsCOD, ForAdvancePayment, OrderID, IsPercent, Charge, Memo, Public_Key, Private_Key, Partner, AgentID, Email, 
                      SecretKey, SecondKey
FROM         dbo.ShopNum1_AgentPaymentForWap
WHERE     (IsDeleted = 0)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ShopNum1_AgentPaymentForWap"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 263
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 9
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_AgentPayment'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_AgentPayment'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_BaskOrderComment' AND xtype = 'v')
   DROP VIEW V_BaskOrderComment
GO
/****** 对象:  View [dbo].[V_BaskOrderComment]    脚本日期: 07/19/2014 11:28:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_BaskOrderComment]
AS
SELECT     Guid, IsReply, ReplyGuid, MemLoginID, BaskOrderGuid, [Content], CreateTime
FROM         dbo.ShopNum1_BaskOrder_Comment
WHERE     (IsDeleted = 0)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[45] 4[17] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ShopNum1_BaskOrder_Comment"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 258
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_BaskOrderComment'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_BaskOrderComment'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_BaskOrderLog' AND xtype = 'v')
   DROP VIEW V_BaskOrderLog
GO
/****** 对象:  View [dbo].[V_BaskOrderLog]    脚本日期: 07/19/2014 11:30:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_BaskOrderLog]
AS
SELECT     Guid, MemLoginID, ProductGuid, Title, [Content], CreateTime, CreateUser, Image
FROM         dbo.ShopNum1_BaskOrder_Log
WHERE     (IsDeleted = 0)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ShopNum1_BaskOrder_Log"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 258
               Right = 183
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_BaskOrderLog'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_BaskOrderLog'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_BlessCard' AND xtype = 'v')
   DROP VIEW V_BlessCard
GO
/****** 对象:  View [dbo].[V_BlessCard]    脚本日期: 07/19/2014 11:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[V_BlessCard]
as select 
[Guid]
,[Name]
,[Cost]
,[FreeLimit]
from [ShopNum1_BlessCard] where [IsDeleted]=0
GO
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_DispatcherMode' AND xtype = 'v')
   DROP VIEW V_DispatcherMode
GO
/****** 对象:  View [dbo].[V_DispatcherMode]    脚本日期: 07/19/2014 11:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_DispatcherMode]
AS
SELECT     Guid, Formula, SafeCost, DispatchType
FROM         dbo.ShopNum1_DispatchMode AS A
WHERE     (IsDeleted = 0)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 183
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_DispatcherMode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_DispatcherMode'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_DispatchItem' AND xtype = 'v')
   DROP VIEW V_DispatchItem
GO
/****** 对象:  View [dbo].[V_DispatchItem]    脚本日期: 07/19/2014 11:33:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[V_DispatchItem]
as select 
[Guid]
,[ItemValue]
,[ItemCode]
,[DispatchMode]
from [ShopNum1_DispatchItem] A where A.IsDeleted=0
GO
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_DispatchItemRegion' AND xtype = 'v')
   DROP VIEW V_DispatchItemRegion
GO
/****** 对象:  View [dbo].[V_DispatchItemRegion]    脚本日期: 07/19/2014 11:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[V_DispatchItemRegion]
as select 
[Guid]
,[ItemValue]
,[ItemCode]
,[DispatchMode]
,Code
from [ShopNum1_DispatchItemRegion] where IsDeleted=0
GO
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_DispatchMode' AND xtype = 'v')
   DROP VIEW V_DispatchMode
GO
/****** 对象:  View [dbo].[V_DispatchMode]    脚本日期: 07/19/2014 11:35:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_DispatchMode]
AS
SELECT     Guid, Name, IsPayArrived, SafeCost, Formula, OrderID, DispatchType, Remark
FROM         dbo.ShopNum1_DispatchMode
WHERE     (IsDeleted = 0)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ShopNum1_DispatchMode"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 183
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_DispatchMode'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_DispatchMode'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_FullAndDiscount' AND xtype = 'v')
   DROP VIEW V_FullAndDiscount
GO
/****** 对象:  View [dbo].[V_FullAndDiscount]    脚本日期: 07/19/2014 11:36:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_FullAndDiscount]
	AS 
	SELECT [SalesPromotionInfoGuid]
      ,[MinimalCost]
      ,[DiscountMode]
      ,[Number]
  FROM [ShopNum1_FullAndDiscount]
GO
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_FullAndFree' AND xtype = 'v')
   DROP VIEW V_FullAndFree
GO
/****** 对象:  View [dbo].[V_FullAndFree]    脚本日期: 07/19/2014 11:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[V_FullAndFree]
	as
	Select 
		[SalesPromotionInfoGuid]
      ,[MinimalCost]
      ,[FreeItem]
     
  FROM [ShopNum1_FullAndFree]
GO
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_MemberAddress' AND xtype = 'v')
   DROP VIEW V_MemberAddress
GO
/****** 对象:  View [dbo].[V_MemberAddress]    脚本日期: 07/19/2014 11:38:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_MemberAddress]
AS
SELECT     Guid, Name, Email, Address, Postalcode, Tel, Mobile, IsDefault, MemLoginID, CreateUser, CreateTime, ModifyUser, ModifyTime, code
FROM         dbo.ShopNum1_Address
WHERE     (IsDeleted = 0)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ShopNum1_Address"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 272
               Right = 177
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_MemberAddress'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_MemberAddress'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_MemberRank' AND xtype = 'v')
   DROP VIEW V_MemberRank
GO
/****** 对象:  View [dbo].[V_MemberRank]    脚本日期: 07/19/2014 11:39:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_MemberRank]
AS
SELECT     Guid, Name, Discount, Score, PayoutMoney
FROM         dbo.ShopNum1_MemberRank
WHERE     (IsDeleted = 0)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ShopNum1_MemberRank"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 252
               Right = 184
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_MemberRank'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_MemberRank'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_Order' AND xtype = 'v')
   DROP VIEW V_Order
GO
/****** 对象:  View [dbo].[V_Order]    脚本日期: 08/29/2014 11:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Order]
AS
SELECT     Guid, MemLoginID, OrderNumber, OderStatus, ShipmentStatus, PaymentStatus, Name, Email, Address, Postalcode, Tel, Mobile, ClientToSellerMsg, 
                      DispatchModeGuid, PaymentGuid, PackGuid, BlessCardGuid, OutOfStockOperate, InvoiceTitle, InvoiceContent, ProductPrice, DispatchPrice, InsurePrice, 
                      PaymentPrice, PackPrice, BlessCardPrice, AlreadPayPrice, SurplusPrice, UseScore, ScorePrice, ShouldPayPrice, CreateTime, ConfirmTime, PayTime, DispatchTime, 
                      ShipmentNumber, PayMemo, ActivityGuid, InvoiceType, InvoiceTax, Discount, Deposit, IsPayDeposit, CreateUser, ModifyUser, ModifyTime, RegionCode, 
                      JoinActiveType, ActvieContent, UsedFavourTicket, LogisticsCompanyCode, IsDeleted, AgentID, PayType, PaymentName
FROM         dbo.ShopNum1_OrderInfo AS A

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 270
               Right = 228
            End
            DisplayFlags = 280
            TopColumn = 58
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Order'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Order'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_Pack' AND xtype = 'v')
   DROP VIEW V_Pack
GO
/****** 对象:  View [dbo].[V_Pack]    脚本日期: 07/19/2014 11:42:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[V_Pack]
as select 
A.[Guid]
,A.[Cost]
,A.[FreeLimit]
from [ShopNum1_Pack] A where A.IsDeleted=0
GO
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_Payment' AND xtype = 'v')
   DROP VIEW V_Payment
GO
/****** 对象:  View [dbo].[V_Payment]    脚本日期: 07/19/2014 11:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create VIEW [dbo].[V_Payment]
as
SELECT     Guid, PaymentType, Name, MerchantCode, IsCOD, ForAdvancePayment, OrderID, IsPercent, Charge, Memo, Public_Key, Private_Key, Partner, Email, 
                      SecretKey
FROM         dbo.ShopNum1_PaymentForWap
WHERE     (IsDeleted = 0)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ShopNum1_PaymentForWap"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 263
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_Payment'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_Payment'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_Product' AND xtype = 'v')
   DROP VIEW V_Product
GO
/****** 对象:  View [dbo].[V_Product]    脚本日期: 08/07/2014 13:36:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Product]
AS
SELECT     A.Guid, A.Name, A.OriginalImge, A.ThumbImage, A.SmallImage, A.RepertoryNumber, A.Weight, A.RepertoryCount, A.UnitName, A.RepertoryAlertCount, A.PresentScore, 
                      A.PresentRankScore, A.SocreIntegral, A.LimitBuyCount, A.MarketPrice, A.ShopPrice, A.Brief, A.Detail, A.ClickCount, A.CollectCount, A.BuyCount, A.CommentCount, 
                      A.ReferCount, A.ModifyTime, A.IsSaled, A.IsBest, A.IsNew, A.IsHot, A.IsReal, A.IsOnlySaled, A.Title, A.Description, A.Keywords, A.OrderID, A.BrandName, 
                      A.ProductCategoryID, A.SaleNumber, A.ActiveImage, A.SupplierLoginID, B.BaskOrderLogCount, A.AgentID, A.IsRecommend, 0 AS T, A.MobileDetail, A.BrandGuid
FROM         dbo.ShopNum1_Product AS A LEFT OUTER JOIN
                          (SELECT     ProductGuid, COUNT(*) AS BaskOrderLogCount
                            FROM          dbo.ShopNum1_BaskOrder_Log
                            GROUP BY ProductGuid) AS B ON A.Guid = B.ProductGuid
WHERE     (A.IsDeleted = 0) AND (A.IsAudit = 1) AND (A.IsSaled = 1)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[30] 4[33] 2[27] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 269
               Right = 249
            End
            DisplayFlags = 280
            TopColumn = 31
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 287
               Bottom = 91
               Right = 463
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Product'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Product'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_ProductAttibute' AND xtype = 'v')
   DROP VIEW V_ProductAttibute
GO
/****** 对象:  View [dbo].[V_ProductAttibute]    脚本日期: 07/19/2014 11:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[V_ProductAttibute]
as 
SELECT     B.Guid, A.Name, A.AttrValue, B.AtrributeValue, B.AttributePrice, B.ProductGuid, A.InputType, A.IsMultiSelect
FROM         dbo.ShopNum1_ProductAttribute AS A INNER JOIN
                      dbo.ShopNum1_ProductAttributeValue AS B ON A.Guid = B.ProductAttributeGuid
WHERE     (B.IsDeleted = 0)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 175
               Right = 200
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 238
               Bottom = 114
               Right = 419
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_ProductAttibute'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_ProductAttibute'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_ProductBrand' AND xtype = 'v')
   DROP VIEW V_ProductBrand
GO
/****** 对象:  View [dbo].[V_ProductBrand]    脚本日期: 07/19/2014 11:48:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_ProductBrand]
	AS 
	SELECT A.ID,A.BrandGuid,B.Name,A.ProductCategoryID
	FROM ShopNum1_ProductCategoryAndProductBranDrelation A
	JOIN ShopNum1_Brand B on(A.BrandGuid=B.Guid)
	WHERE B.IsDeleted=0
GO
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_ProductComment' AND xtype = 'v')
   DROP VIEW V_ProductComment
GO
/****** 对象:  View [dbo].[V_ProductComment]    脚本日期: 07/19/2014 13:22:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[V_ProductComment]
  as SELECT     Guid, ProductGuid, MemLoginID, Title, [Content], SendTime, Rank
FROM         dbo.ShopNum1_ProductComment
WHERE     (IsAudit = 1)
GO
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_ProductMemberRankPrice' AND xtype = 'v')
   DROP VIEW V_ProductMemberRankPrice
GO
/****** 对象:  View [dbo].[V_ProductMemberRankPrice]    脚本日期: 07/19/2014 13:23:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create View [dbo].[V_ProductMemberRankPrice]
	as
	select  
		[Guid]
      ,[ProductGuid]
      ,[MemberRankGuid]
      ,[Price] 
	from ShopNum1_ProductMemberRankPrice where IsDeleted=0
GO
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_ProductProperty' AND xtype = 'v')
   DROP VIEW V_ProductProperty
GO
/****** 对象:  View [dbo].[V_ProductProperty]    脚本日期: 07/19/2014 13:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create View [dbo].[V_ProductProperty]
	as
  SELECT A.ID,A.ProdGuid,B.PropName,A.PropValueName,B.OrderID
  FROM ShopNum1_ProductRelationProp A INNER JOIN ShopNum1_ProductProp B ON A.PropID=B.ID
GO
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_ShoppingCart' AND xtype = 'v')
   DROP VIEW V_ShoppingCart
GO
/****** 对象:  View [dbo].[V_ShoppingCart]    脚本日期: 07/19/2014 13:25:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_ShoppingCart]
AS
SELECT DISTINCT 
                      a.Guid, a.MemLoginID, a.ProductGuid, a.OriginalImge, a.Name, a.RepertoryNumber, a.Attributes, a.ExtensionAttriutes, a.BuyNumber, a.MarketPrice, 
                      a.BuyPrice, a.IsJoinActivity, a.IsPresent, a.CreateTime, a.AgentID, a.DetailedSpecifications, C.RepertoryCount, 
                      D.RepertoryCount AS RepertoryCount2, a.ShopPrice
FROM         dbo.ShopNum1_Cart AS a LEFT OUTER JOIN
                      dbo.V_Product AS C ON a.ProductGuid = C.Guid LEFT OUTER JOIN
                      dbo.ShopNum1_SpecificationProudct AS D ON a.DetailedSpecifications = D.Detail AND a.ProductGuid = D.ProductGuid

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 206
               Right = 222
            End
            DisplayFlags = 280
            TopColumn = 13
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 145
               Left = 595
               Bottom = 253
               Right = 776
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "D"
            Begin Extent = 
               Top = 5
               Left = 720
               Bottom = 113
               Right = 916
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_ShoppingCart'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_ShoppingCart'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'V_Weixin_ShopConfig' AND xtype = 'v')
   DROP VIEW V_Weixin_ShopConfig
GO
/****** 对象:  View [dbo].[V_Weixin_ShopConfig]    脚本日期: 07/19/2014 13:26:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Weixin_ShopConfig]
AS
SELECT     ID, ShopID, Value, ConfigType, Url
FROM         dbo.ShopNum1_Weixin_ShopConfig

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ShopNum1_Weixin_ShopConfig"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 193
               Right = 173
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_Weixin_ShopConfig'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'V_Weixin_ShopConfig'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'Usp_MemberRegist' AND xtype = 'P')
   DROP PROCEDURE Usp_MemberRegist
GO


/****** 对象:  StoredProcedure [dbo].[Usp_MemberRegist]    脚本日期: 07/01/2014 15:53:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE  [dbo].[Usp_MemberRegist](
	@MemLoginID NVARCHAR(50),
	@Email NVARCHAR(100),
	@Pwd NVARCHAR(50),
	@PayPwd NVARCHAR(50),
	@Mobile Nvarchar(20)
)
AS

BEGIN TRY
	BEGIN TRAN tran_Member_Regist
	
	DECLARE @MemberRankGuid UNIQUEIDENTIFIER
	
	SELECT @MemberRankGuid=Guid FROM ShopNum1_MemberRank WHERE IsDefault =1 And IsAgent=0 AND AgentID is null

	Insert into [dbo].[ShopNum1_Member](
				 [Guid]
				,[MemLoginID]
				,[Email]
				,[Pwd]
				,[PayPwd]
				,RegDate
				,MemberRankGuid
				,LoginTime
				,Score
				,CreateTime
				,ModifyTime,Mobile,Sex)
	values(NEWID(),@MemLoginID,@Email,@Pwd,@PayPwd,GETDATE(),@MemberRankGuid,0,10,GETDATE(),GETDATE(),@Mobile,2)

	COMMIT TRAN tran_Member_Regist
END TRY
BEGIN CATCH
	ROLLBACK TRAN tran_Member_Regist
	
END CATCH
GO
----------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'Usp_MemberRegist_fxs' AND xtype = 'P')
   DROP PROCEDURE Usp_MemberRegist_fxs
GO


/****** 对象:  StoredProcedure [dbo].[Usp_MemberRegist]    脚本日期: 07/01/2014 15:53:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE  [dbo].[Usp_MemberRegist_fxs](
	@MemLoginID NVARCHAR(50),
	@Email NVARCHAR(100),
	@Pwd NVARCHAR(50),
	@PayPwd NVARCHAR(50),
	@Mobile Nvarchar(20),
	@AgentID NVARCHAR(50)
)
AS

BEGIN TRY
	BEGIN TRAN tran_Member_Regist
	
	DECLARE @MemberRankGuid UNIQUEIDENTIFIER
    DECLARE @agentMemberRankGuid UNIQUEIDENTIFIER	
    SELECT @MemberRankGuid=Guid FROM ShopNum1_MemberRank WHERE IsDefault =1 And IsAgent=0 AND AgentID is null
    SELECT @agentMemberRankGuid=Guid FROM ShopNum1_MemberRank WHERE IsDefault =1 And IsAgent=0 AND AgentID=@AgentID

	Insert into [dbo].[ShopNum1_Member](
				 [Guid]
				,[MemLoginID]
				,[Email]
				,[Pwd]
				,[PayPwd]
				,RegDate
				,MemberRankGuid
				,AgentMemberRankGuid
				,LoginTime
				,Score
				,CreateTime
				,ModifyTime
				,AgentID
				,Mobile
				,Sex
				)
	values(NEWID(),@MemLoginID,@Email,@Pwd,@PayPwd,GETDATE(),@MemberRankGuid,@agentMemberRankGuid,0,10,GETDATE(),GETDATE(),@AgentID,@Mobile,2)

	COMMIT TRAN tran_Member_Regist
END TRY
BEGIN CATCH
	ROLLBACK TRAN tran_Member_Regist
	
END CATCH
GO
----------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'Usp_OrderSave_wap' AND xtype = 'P')
   DROP PROCEDURE Usp_OrderSave_wap
GO

/****** 对象:  StoredProcedure [dbo].[Usp_OrderSave_wap]    脚本日期: 07/19/2014 13:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usp_OrderSave_wap](
	@OrderId UNIQUEIDENTIFIER =NULL,
	@MemLoginID NVARCHAR(50),
	@OrderNumber NVARCHAR(50),
	@Name NVARCHAR(50),
	@Email NVARCHAR(100),
	@Address NVARCHAR(250),
	@Postalcode NVARCHAR(20),
	@Tel NVARCHAR(20),
	@Mobile NVARCHAR(20),
	@ClientToSellerMsg NVARCHAR(1000),
	@DispatchModeGuid UNIQUEIDENTIFIER,
	@PaymentGuid UNIQUEIDENTIFIER,
	@OutOfStockOperate NVARCHAR(50),
	@PackGuid UNIQUEIDENTIFIER,
	@BlessCardGuid UNIQUEIDENTIFIER,
	@ActivityGuid UNIQUEIDENTIFIER,
	@InvoiceTitle NVARCHAR(50),
	@InvoiceContent NVARCHAR(50),
	@InvoiceType NVARCHAR(50),
	@RegionCode NVARCHAR(12),
	@JoinActiveType INT,
	@ActvieContent NVARCHAR(50),
	@UsedFavourTicket NVARCHAR(50),
	@LogisticsCompanyCode NVARCHAR(100),
	@CreateUser NVARCHAR(50),
	@ModifyUser NVARCHAR(50),
	@ProductPrice DECIMAL(18,2),
	@DispatchPrice DECIMAL(18,2),
	@InsurePrice DECIMAL(18,2),
	@PaymentPrice DECIMAL(18,2),
	@PackPrice DECIMAL(18,2),
	@BlessCardPrice DECIMAL(18,2),
	@AlreadPayPrice DECIMAL(18,2),
	@SurplusPrice DECIMAL(18,2),
	@UseScore INT,
	@ScorePrice DECIMAL(18,2),
	@ShouldPayPrice DECIMAL(18,2),
	@PayType INT,
	@BuyType INT
)
AS

DECLARE @OrderStatus INT
DECLARE @ShipmentStatus INT 
DECLARE @PaymentStatus INT 
DECLARE @CreateTime DATETIME
DECLARE @DispatchModeName NVARCHAR(50)
DECLARE @PaymentName NVARCHAR(50)
DECLARE @PackName NVARCHAR(50)
DECLARE @BlessCardName NVARCHAR(50)
DECLARE @BlessCardContent NVARCHAR(4000)

if(@PayType = 0)
begin
	SET @OrderStatus=0
end
else
begin
	SET @OrderStatus=1
end

SET @ShipmentStatus=0
SET @PaymentStatus=0
SET @CreateTime=GETDATE()

SELECT @DispatchModeName=Name FROM ShopNum1_DispatchMode WHERE Guid=@DispatchModeGuid
SELECT @PaymentName=NAME FROM ShopNum1_PaymentForWap WHERE Guid=@PaymentGuid
SELECT @PackName=NAME FROM ShopNum1_Pack WHERE Guid=@PackGuid
SELECT @BlessCardName=NAME,@BlessCardContent=[Description] FROM ShopNum1_BlessCard WHERE Guid=@BlessCardGuid

IF NOT EXISTS(SELECT * FROM ShopNum1_OrderInfo WHERE [Guid]=@OrderId)
BEGIN
	INSERT INTO ShopNum1_OrderInfo
	(
		Guid,MemLoginID,OrderNumber,OderStatus,ShipmentStatus,PaymentStatus,
		Name,Email,[Address],Postalcode,Tel,Mobile,
		DispatchModeGuid,DispatchModeName,PaymentGuid,PaymentName,PackGuid,PackName,
		BlessCardGuid,BlessCardName,BlessCardContent,
		BuyType,ActivityGuid,InvoiceType,InvoiceTitle,InvoiceContent,OutOfStockOperate,ClientToSellerMsg,
		CreateTime,CreateUser,ModifyUser,ModifyTime,
		RegionCode,JoinActiveType,ActvieContent,UsedFavourTicket,LogisticsCompanyCode,
		ProductPrice,DispatchPrice,InsurePrice,PaymentPrice,PackPrice,BlessCardPrice,
		AlreadPayPrice,SurplusPrice,UseScore,ScorePrice,ShouldPayPrice,PayType
	)
	VALUES
	(
		@OrderId,@MemLoginID,@OrderNumber,@OrderStatus,@ShipmentStatus,@PaymentStatus,
		@Name,@Email,@Address,@Postalcode,@Tel,@Mobile,
		@DispatchModeGuid,@DispatchModeName,@PaymentGuid,isnull(@PaymentName,''),@PackGuid,@PackName,
		@BlessCardGuid,@BlessCardName,@BlessCardContent,
		@BuyType,@ActivityGuid,@InvoiceType,@InvoiceTitle,@InvoiceContent,@OutOfStockOperate,@ClientToSellerMsg,
		@CreateTime,@CreateUser,@CreateUser,@CreateTime,
		@RegionCode,@JoinActiveType,@ActvieContent,@UsedFavourTicket,@LogisticsCompanyCode,
		@ProductPrice,@DispatchPrice,@InsurePrice,@PaymentPrice,@PackPrice,@BlessCardPrice,
		@AlreadPayPrice,@SurplusPrice,@UseScore,@ScorePrice,@ShouldPayPrice,@PayType
	)
END
ELSE
BEGIN
	UPDATE ShopNum1_OrderInfo
	SET 
		NAME=@Name,
		Email=@Email,
		[Address]=@Address,
		Postalcode=@Postalcode,
		Tel=@Tel,
		Mobile=@Mobile,
		DispatchModeGuid=@DispatchModeGuid,
		DispatchModeName=@DispatchModeName,
		PaymentGuid=@PaymentGuid,
		PaymentName=@PaymentName,
		PackGuid=@PackGuid,
		PackName=@PackName,
		BlessCardGuid=@BlessCardGuid,
		BlessCardName=@BlessCardName,
		BlessCardContent=@BlessCardContent,
		ActivityGuid=@ActivityGuid,
		InvoiceType=@InvoiceType,
		InvoiceTitle=@InvoiceTitle,
		InvoiceContent=@InvoiceContent,
		OutOfStockOperate=@OutOfStockOperate,
		ClientToSellerMsg=@ClientToSellerMsg,
		ModifyUser=@ModifyUser,
		ModifyTime=GETDATE(),
		RegionCode=@RegionCode,
		JoinActiveType=@JoinActiveType,
		ActvieContent=@ActvieContent,
		UsedFavourTicket=@UsedFavourTicket,
		LogisticsCompanyCode=@LogisticsCompanyCode,
		ProductPrice=@ProductPrice,
		DispatchPrice=@DispatchPrice,
		InsurePrice=@InsurePrice,
		PaymentPrice=@PaymentPrice,
		PackPrice=@PackPrice,
		BlessCardPrice=@BlessCardPrice,
		AlreadPayPrice=@AlreadPayPrice,
		SurplusPrice=@SurplusPrice,
		UseScore=@UseScore,
		ScorePrice=@ScorePrice,
		ShouldPayPrice=@ShouldPayPrice
	WHERE Guid=@OrderId
END
GO
-------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'Usp_OrderSaveFxs_wap' AND xtype = 'P')
   DROP PROCEDURE Usp_OrderSaveFxs_wap
GO

/****** 对象:  StoredProcedure [dbo].[Usp_OrderSaveFxs_wap]    脚本日期: 08/29/2014 16:34:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usp_OrderSaveFxs_wap](
	@OrderId UNIQUEIDENTIFIER =NULL,
	@MemLoginID NVARCHAR(50),
	@OrderNumber NVARCHAR(50),
	@Name NVARCHAR(50),
	@Email NVARCHAR(100),
	@Address NVARCHAR(250),
	@Postalcode NVARCHAR(20),
	@Tel NVARCHAR(20),
	@Mobile NVARCHAR(20),
	@ClientToSellerMsg NVARCHAR(1000),
	@DispatchModeGuid UNIQUEIDENTIFIER,
	@PaymentGuid UNIQUEIDENTIFIER,
	@OutOfStockOperate NVARCHAR(50),
	@PackGuid UNIQUEIDENTIFIER,
	@BlessCardGuid UNIQUEIDENTIFIER,
	@ActivityGuid UNIQUEIDENTIFIER,
	@InvoiceTitle NVARCHAR(50),
	@InvoiceContent NVARCHAR(50),
	@InvoiceType NVARCHAR(50),
	@RegionCode NVARCHAR(12),
	@JoinActiveType INT,
	@ActvieContent NVARCHAR(50),
	@UsedFavourTicket NVARCHAR(50),
	@LogisticsCompanyCode NVARCHAR(100),
	@CreateUser NVARCHAR(50),
	@ModifyUser NVARCHAR(50),
	@ProductPrice DECIMAL(18,2),
	@DispatchPrice DECIMAL(18,2),
	@InsurePrice DECIMAL(18,2),
	@PaymentPrice DECIMAL(18,2),
	@PackPrice DECIMAL(18,2),
	@BlessCardPrice DECIMAL(18,2),
	@AlreadPayPrice DECIMAL(18,2),
	@SurplusPrice DECIMAL(18,2),
	@UseScore INT,
	@ScorePrice DECIMAL(18,2),
	@ShouldPayPrice DECIMAL(18,2),
	@AgentID NVARCHAR(50),
	@PayType INT,
	@BuyType INT
)	
AS

DECLARE @OrderStatus INT
DECLARE @ShipmentStatus INT 
DECLARE @PaymentStatus INT 
DECLARE @CreateTime DATETIME
DECLARE @DispatchModeName NVARCHAR(50)
DECLARE @PaymentName NVARCHAR(50)
DECLARE @PackName NVARCHAR(50)
DECLARE @BlessCardName NVARCHAR(50)
DECLARE @BlessCardContent NVARCHAR(4000)


SET @OrderStatus=0
SET @ShipmentStatus=0
SET @PaymentStatus=0
SET @CreateTime=GETDATE()
set @PaymentName=''
SET @DispatchModeName=''


SELECT @DispatchModeName=Name FROM ShopNum1_DispatchMode WHERE Guid=@DispatchModeGuid
SELECT @PaymentName=NAME FROM ShopNum1_PaymentForWap WHERE Guid=@PaymentGuid
SELECT @PackName=NAME FROM ShopNum1_Pack WHERE Guid=@PackGuid
SELECT @BlessCardName=NAME,@BlessCardContent=[Description] FROM ShopNum1_BlessCard WHERE Guid=@BlessCardGuid


IF NOT EXISTS(SELECT [Guid] FROM ShopNum1_OrderInfo WHERE [Guid]=@OrderId)
BEGIN
	INSERT INTO ShopNum1_OrderInfo
	(
		Guid,MemLoginID,OrderNumber,OderStatus,ShipmentStatus,PaymentStatus,
		Name,Email,[Address],Postalcode,Tel,Mobile,
		DispatchModeGuid,DispatchModeName,PaymentGuid,PaymentName,PackGuid,PackName,
		BlessCardGuid,BlessCardName,BlessCardContent,
		BuyType,ActivityGuid,InvoiceType,InvoiceTitle,InvoiceContent,OutOfStockOperate,ClientToSellerMsg,
		CreateTime,CreateUser,ModifyUser,ModifyTime,
		RegionCode,JoinActiveType,ActvieContent,UsedFavourTicket,LogisticsCompanyCode,
		ProductPrice,DispatchPrice,InsurePrice,PaymentPrice,PackPrice,BlessCardPrice,
		AlreadPayPrice,SurplusPrice,UseScore,ScorePrice,ShouldPayPrice,AgentID,PayType
	)
	VALUES
	(
		@OrderId,@MemLoginID,@OrderNumber,@OrderStatus,@ShipmentStatus,@PaymentStatus,
		@Name,@Email,@Address,@Postalcode,@Tel,@Mobile,
		@DispatchModeGuid,@DispatchModeName,@PaymentGuid,@PaymentName,@PackGuid,@PackName,
		@BlessCardGuid,@BlessCardName,@BlessCardContent,
		@BuyType,@ActivityGuid,@InvoiceType,@InvoiceTitle,@InvoiceContent,@OutOfStockOperate,@ClientToSellerMsg,
		@CreateTime,@CreateUser,@CreateUser,@CreateTime,
		@RegionCode,@JoinActiveType,@ActvieContent,@UsedFavourTicket,@LogisticsCompanyCode,
		@ProductPrice,@DispatchPrice,@InsurePrice,@PaymentPrice,@PackPrice,@BlessCardPrice,
		@AlreadPayPrice,@SurplusPrice,@UseScore,@ScorePrice,@ShouldPayPrice,@AgentID,@PayType
	)
END
ELSE
BEGIN
	UPDATE ShopNum1_OrderInfo
	SET 
		NAME=@Name,
		Email=@Email,
		[Address]=@Address,
		Postalcode=@Postalcode,
		Tel=@Tel,
		Mobile=@Mobile,
		DispatchModeGuid=@DispatchModeGuid,
		DispatchModeName=@DispatchModeName,
		PaymentGuid=@PaymentGuid,
		PaymentName=@PaymentName,
		PackGuid=@PackGuid,
		PackName=@PackName,
		BlessCardGuid=@BlessCardGuid,
		BlessCardName=@BlessCardName,
		BlessCardContent=@BlessCardContent,
		ActivityGuid=@ActivityGuid,
		InvoiceType=@InvoiceType,
		InvoiceTitle=@InvoiceTitle,
		InvoiceContent=@InvoiceContent,
		OutOfStockOperate=@OutOfStockOperate,
		ClientToSellerMsg=@ClientToSellerMsg,
		ModifyUser=@ModifyUser,
		ModifyTime=GETDATE(),
		RegionCode=@RegionCode,
		JoinActiveType=@JoinActiveType,
		ActvieContent=@ActvieContent,
		UsedFavourTicket=@UsedFavourTicket,
		LogisticsCompanyCode=@LogisticsCompanyCode,
		ProductPrice=@ProductPrice,
		DispatchPrice=@DispatchPrice,
		InsurePrice=@InsurePrice,
		PaymentPrice=@PaymentPrice,
		PackPrice=@PackPrice,
		BlessCardPrice=@BlessCardPrice,
		AlreadPayPrice=@AlreadPayPrice,
		SurplusPrice=@SurplusPrice,
		UseScore=@UseScore,
		ScorePrice=@ScorePrice,
		ShouldPayPrice=@ShouldPayPrice
	WHERE Guid=@OrderId
END
GO
-------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'Usp_OrderItemAdd' AND xtype = 'P')
   DROP PROCEDURE Usp_OrderItemAdd
GO

/****** 对象:  StoredProcedure [dbo].[Usp_OrderItemAdd]    脚本日期: 07/19/2014 13:31:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


 
CREATE PROCEDURE  [dbo].[Usp_OrderItemAdd](
	@OrderInfoGuid NVARCHAR(50),
	@ProductGuid UNIQUEIDENTIFIER,
	@Attributes NVARCHAR(250),
	@ExtensionAttriutes NVARCHAR(250),
	@BuyNumber INT,
	@BuyPrice DECIMAL(18,2),
	@IsJoinActivity int,
	@IsPresent INT,
	@DetailedSpecifications nvarchar(4000)
)
AS

			INSERT INTO ShopNum1_OrderProduct
			(	Guid,OrderInfoGuid,ProductGuid,Name,RepertoryNumber,BuyNumber,
				MarketPrice,ShopPrice,BuyPrice,Attributes,IsShipment,IsReal,ExtensionAttriutes,
				ParentGuid,IsJoinActivity,IsPresent,CreateTime,DetailedSpecifications,
				UsedScore,ArrivedWithMoney
			)
			SELECT	NEWID(),@OrderInfoGuid,@ProductGuid,NAME,RepertoryNumber,@BuyNumber,
					MarketPrice,ShopPrice,@BuyPrice,@Attributes,0,IsReal,@ExtensionAttriutes,
					NULL,@IsJoinActivity,@IsPresent,GETDATE(),@DetailedSpecifications,0,0
			FROM ShopNum1_Product 
			WHERE Guid=@ProductGuid

 update ShopNum1_Product set RepertoryCount=RepertoryCount-@BuyNumber  where Guid=@ProductGuid
GO
---------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'Usp_AdvancePaymentAndlog' AND xtype = 'P')
   DROP PROCEDURE Usp_AdvancePaymentAndlog
GO

/****** 对象:  StoredProcedure [dbo].[Usp_AdvancePaymentAndlog]    脚本日期: 07/19/2014 13:33:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE  [dbo].[Usp_AdvancePaymentAndlog](
	@MemLoginID  VARCHAR(50),
	@OrderNumber VARCHAR(50),
	@PayPwd VARCHAR(50),
	@Guids VARCHAR(50),
	@Type int
)
AS
DECLARE @ShouldPayPrice decimal(18,2)
DECLARE @AdvancePayment decimal(18,2)
DECLARE @CostMoney decimal(18,2)
DECLARE @UsedFavourTicket VARCHAR(50)
DECLARE @OrderInfoGuid uniqueidentifier

set @ShouldPayPrice=0
set @AdvancePayment=0
set @CostMoney=0
begin try
    begin tran
 
 if(@Type=1)
begin
	select @ShouldPayPrice = ShouldPayPrice,@UsedFavourTicket=UsedFavourTicket from ShopNum1_OrderInfo where MemloginID=@MemLoginID and orderNumber=@OrderNumber
	select @AdvancePayment = AdvancePayment from ShopNum1_Member  where MemloginID=@MemLoginID and PayPwd=@PayPwd

	if(@ShouldPayPrice<>0 and @AdvancePayment<>0 and @AdvancePayment > @ShouldPayPrice)
	begin
	 UPDATE ShopNum1_Member SET  CostMoney=CostMoney + @ShouldPayPrice,AdvancePayment=AdvancePayment-@ShouldPayPrice where MemloginID=@MemLoginID
	 UPDATE ShopNum1_OrderInfo SET PaymentStatus=2,OderStatus=1,AlreadPayPrice=ShouldPayPrice,ShouldPayPrice=0 where MemloginID=@MemLoginID and orderNumber=@OrderNumber
	 insert into ShopNum1_AdvancePaymentModifyLog ([Guid],OperateType,CurrentAdvancePayment,OperateMoney,LastOperateMoney,Date,Memo,MemLoginID,CreateUser,CreateTime,IsDeleted)
	 values(@Guids,0,@AdvancePayment,@ShouldPayPrice,@AdvancePayment-@ShouldPayPrice,GETDate(),'购物使用预存款',@MemLoginID,'admin',GetDate(),0)
		 if(@UsedFavourTicket <>'' and @UsedFavourTicket <> 'null')
		 begin
		 update ShopNum1_MemberFavourTicket set LimitTimes=LimitTimes-1 where MemLoginID=@MemLoginID and FavourTicketCode=@UsedFavourTicket
		 end
	end
end

if(@Type=2)
begin
	select @OrderInfoGuid=Guid,@MemLoginID=MemLoginID from ShopNum1_OrderInfo  where orderNumber=@OrderNumber
	UPDATE ShopNum1_OrderInfo SET PaymentStatus=2,OderStatus=1,AlreadPayPrice=ShouldPayPrice,ShouldPayPrice=0 where orderNumber=@OrderNumber
	insert into ShopNum1_OrderOperateLog([Guid],OrderInfoGuid,CreateUser,OderStatus,ShipmentStatus,PaymentStatus,Memo,OPerateDateTime,IsDeleted)
	values(@Guids,@OrderInfoGuid,@MemLoginID,1,0,1,'手机支付宝支付',getDate(),0)
end

 COMMIT TRAN
end try 
begin catch 
    ROLLBACK
end catch 
GO
---------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'Usp_ShoppingCartAdd' AND xtype = 'P')
   DROP PROCEDURE Usp_ShoppingCartAdd
GO

/****** Object:  StoredProcedure [dbo].[Usp_ShoppingCartAdd]    Script Date: 09/11/2014 16:35:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE  [dbo].[Usp_ShoppingCartAdd](
	@MemLoginID NVARCHAR(50),
	@ProductGuid UNIQUEIDENTIFIER,
	@Attributes NVARCHAR(250),
	@ExtensionAttriutes NVARCHAR(250),
	@BuyNumber INT,
	@BuyPrice DECIMAL(18,2),
	@IsJoinActivity int,
	@IsPresent INT,
	@DetailedSpecifications NVARCHAR(250),
	@SpecificationValue NVARCHAR(250),
	@AgentID NVARCHAR(50)
)	
AS 

DECLARE @Number INT
set @Number=0

	IF EXISTS(SELECT * FROM ShopNum1_Cart WHERE MemLoginID=@MemLoginID AND ProductGuid=@ProductGuid and Attributes=@Attributes)
		BEGIN
		
			IF EXISTS(select * from ShopNum1_SpecificationProudct where ProductGuid=@ProductGuid and Detail=@SpecificationValue)
				begin
				 SELECT @Number = RepertoryCount FROM ShopNum1_SpecificationProudct WHERE ProductGuid=@ProductGuid and Detail=@SpecificationValue
				end
			else
				 begin
						select @Number=RepertoryCount from ShopNum1_Product where Guid=@ProductGuid
				 end
				
			IF EXISTS(SELECT * FROM ShopNum1_Cart WHERE MemLoginID=@MemLoginID AND ProductGuid=@ProductGuid and Attributes=@Attributes and BuyNumber < @Number  or @BuyNumber = -1)
			BEGIN
				UPDATE ShopNum1_Cart SET BuyNumber =  BuyNumber+@BuyNumber	WHERE MemLoginID=@MemLoginID AND ProductGuid=@ProductGuid and Attributes=@Attributes
			END	
		END
	ELSE
		BEGIN
			INSERT INTO ShopNum1_Cart
			(	Guid,MemLoginID,ProductGuid,OriginalImge,Name,RepertoryNumber,BuyNumber,
				MarketPrice,ShopPrice,BuyPrice,Attributes,IsShipment,IsReal,ExtensionAttriutes,
				ParentGuid,IsJoinActivity,CartType,IsPresent,CreateTime,DetailedSpecifications,
				UsedScore,ArrivedWithMoney,AgentID
			)
			SELECT	NEWID(),@MemLoginID,@ProductGuid,OriginalImge,NAME,RepertoryNumber,@BuyNumber,
					MarketPrice,ShopPrice,@BuyPrice,@Attributes,0,IsReal,@ExtensionAttriutes,
					NULL,@IsJoinActivity,0,@IsPresent,GETDATE(),@DetailedSpecifications,0,0,@AgentID
			FROM ShopNum1_Product 
			WHERE Guid=@ProductGuid
		END
GO
---------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'Usp_ShoppingCartAdd_wap' AND xtype = 'P')
   DROP PROCEDURE Usp_ShoppingCartAdd_wap
GO

/****** 对象:  StoredProcedure [dbo].[Usp_ShoppingCartAdd_wap]    脚本日期: 08/01/2014 16:03:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE  [dbo].[Usp_ShoppingCartAdd_wap](
	@MemLoginID NVARCHAR(50),
	@ProductGuid UNIQUEIDENTIFIER,
	@Attributes NVARCHAR(250),
	@ExtensionAttriutes NVARCHAR(250),
	@BuyNumber INT,
	@BuyPrice DECIMAL(18,2),
	@IsJoinActivity int,
	@IsPresent INT,
	@DetailedSpecifications NVARCHAR(4000)
)	
AS 

	IF EXISTS(SELECT * FROM ShopNum1_Cart WHERE MemLoginID=@MemLoginID AND ProductGuid=@ProductGuid and Attributes=@Attributes)
		BEGIN
			--UPDATE ShopNum1_Cart
			--	SET BuyNumber =BuyNumber+@BuyNumber
			--WHERE 
			--	MemLoginID=@MemLoginID AND ProductGuid=@ProductGuid and Attributes=@Attributes
				
				
				UPDATE ShopNum1_Cart SET BuyNumber = (select case when RepertoryCount > (BuyNumber+@BuyNumber) then (BuyNumber+@BuyNumber) else RepertoryCount end from V_Product where Guid=ProductGuid) 
				WHERE MemLoginID=@MemLoginID AND ProductGuid=@ProductGuid and Attributes=@Attributes
				
		END
	ELSE
		BEGIN
			INSERT INTO ShopNum1_Cart
			(	Guid,MemLoginID,ProductGuid,OriginalImge,Name,RepertoryNumber,BuyNumber,
				MarketPrice,ShopPrice,BuyPrice,Attributes,IsShipment,IsReal,ExtensionAttriutes,
				ParentGuid,IsJoinActivity,CartType,IsPresent,CreateTime,DetailedSpecifications,
				UsedScore,ArrivedWithMoney,AgentID
			)
			SELECT	NEWID(),@MemLoginID,@ProductGuid,OriginalImge,NAME,RepertoryNumber,@BuyNumber,
					MarketPrice,ShopPrice,@BuyPrice,@Attributes,0,IsReal,@ExtensionAttriutes,
					NULL,@IsJoinActivity,0,@IsPresent,GETDATE(),@DetailedSpecifications,0,0,null
			FROM ShopNum1_Product 
			WHERE Guid=@ProductGuid
		END
GO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects
         WHERE name = 'Usp_ShoppingCartDelete' AND xtype = 'P')
   DROP PROCEDURE Usp_ShoppingCartDelete
GO

/****** 对象:  StoredProcedure [dbo].[Usp_ShoppingCartDelete]    脚本日期: 07/19/2014 13:35:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 
CREATE PROCEDURE  [dbo].[Usp_ShoppingCartDelete](
	@MemLoginID NVARCHAR(50),
	@Guid UNIQUEIDENTIFIER
)	
AS 
		BEGIN
			DELETE FROM ShopNum1_Cart
			WHERE 
				MemLoginID=@MemLoginID AND [Guid]=@Guid
		END
GO
----------------------------------------------------------------------------------------------------------------------------
/****** 对象:  Table [dbo].[ShopNum1_WapSign]    脚本日期: 08/06/2014 15:38:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShopNum1_WapSign](
	[Guid] [uniqueidentifier] NOT NULL,
	[AppId] [varchar](50) NOT NULL,
	[AppKey] [varchar](50) NOT NULL,
	[AppSign] [varchar](50) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[SignType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ShopNum1_WapSign] PRIMARY KEY CLUSTERED 
(
	[Guid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
---------------------------------------------------------------------------------------------------------------------------------------------------
/****** 对象:  Table [dbo].[ShopNum1_Footprint]    脚本日期: 08/08/2014 15:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShopNum1_Footprint](
	[id] [uniqueidentifier] NOT NULL,
	[ProductGuid] [uniqueidentifier] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductOriginalImge] [varchar](250) NOT NULL,
	[ProductMarketPrice] [decimal](18, 2) NOT NULL,
	[ProductShopPrice] [decimal](18, 2) NOT NULL,
	[MemLoginID] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_ShopNum1_Footprint] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
------------------------------------------------------------------------------------------------------------------------------------------------------
/****** 对象:  Table [dbo].[ShopNum1_BindWXacoount]    脚本日期: 09/22/2014 09:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShopNum1_BindWXacoount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[memloginId] [nvarchar](50) NOT NULL,
	[wxOpenID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ShopNum1_BindWXacoount] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF