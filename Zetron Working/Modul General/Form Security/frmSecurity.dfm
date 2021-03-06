inherited fmSecurity: TfmSecurity
  Caption = 'Security'
  ClientHeight = 467
  ExplicitWidth = 600
  ExplicitHeight = 501
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 0
    Top = 454
    Width = 592
    Height = 13
    Align = alBottom
    Caption = '* max reprint digunakan pada menu-menu tertentu saja.'
    Transparent = True
    ExplicitWidth = 272
  end
  inherited pnlMenu: TPanel
    object bvlSaparator2: TBevel [0]
      Left = 267
      Top = 1
      Width = 9
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 202
      ExplicitTop = 3
    end
    object bvlSpacer12: TBevel [2]
      Left = 372
      Top = 1
      Width = 10
      Height = 48
      Align = alLeft
      Shape = bsSpacer
      ExplicitLeft = 600
      ExplicitTop = 2
    end
    object btnPost: TcxButton
      Left = 276
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actPost
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 2
    end
    object btnCancel: TcxButton
      Left = 324
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actCancel
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 3
    end
    object btnVisibleInvisibleAll: TcxButton
      Left = 187
      Top = 1
      Width = 80
      Height = 48
      Align = alLeft
      Action = actVisibleInvisibleAll
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 4
    end
    object btnVisibleInvisible: TcxButton
      Left = 107
      Top = 1
      Width = 80
      Height = 48
      Align = alLeft
      Action = actVisibleInvisible
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 5
    end
    object pnlProgressBar: TPanel
      Left = 382
      Top = 1
      Width = 136
      Height = 48
      Align = alLeft
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 6
      object Label5: TLabel
        Left = 50
        Top = 4
        Width = 32
        Height = 13
        Caption = 'Proses'
        Transparent = True
      end
      object pbProcess: TcxProgressBar
        Left = 8
        Top = 20
        ParentColor = False
        Properties.PeakValue = 5.000000000000000000
        TabOrder = 0
        Width = 115
      end
    end
  end
  object pnlInfo: TPanel [2]
    Left = 0
    Top = 50
    Width = 592
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object lblPosition: TLabel
      Left = 9
      Top = 8
      Width = 39
      Height = 13
      Caption = 'Jabatan'
      Transparent = True
    end
    object lcbPositionId: TcxExtLookupComboBox
      Left = 59
      Top = 6
      Properties.DropDownAutoSize = True
      Properties.View = dmGlobal.cgvPrevPosition
      Properties.KeyFieldNames = 'PositionId'
      Properties.ListFieldItem = dmGlobal.cgvPrevPositionPositionName
      Properties.OnEditValueChanged = lcbPositionIdPropertiesEditValueChanged
      TabOrder = 0
      Width = 217
    end
  end
  object dbtlPositionAccess: TcxDBTreeList [3]
    Left = 0
    Top = 81
    Width = 592
    Height = 373
    Align = alClient
    Bands = <
      item
      end>
    DataController.DataSource = dsMenus
    DataController.ImageIndexField = 'FlagOpen'
    DataController.ParentField = 'ParentId'
    DataController.KeyField = 'MenuId'
    Images = ilTreeView
    RootValue = -1
    StateImages = ilTreeView
    TabOrder = 1
    object dbtlPositionAccessRecId: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'RecId'
      Options.Editing = False
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      SortOrder = soAscending
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object dbtlPositionAccessPrimaryKey: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'PrimaryKey'
      Position.ColIndex = 4
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object dbtlPositionAccessParentId: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'ParentId'
      Options.Editing = False
      Options.Sorting = False
      Position.ColIndex = 2
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object dbtlPositionAccessMenuName: TcxDBTreeListColumn
      Caption.Text = 'Menu'
      DataBinding.FieldName = 'MenuName'
      Options.Editing = False
      Width = 257
      Position.ColIndex = 5
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object dbtlPositionAccessActionName: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'ActionName'
      Position.ColIndex = 3
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object dbtlPositionAccessMenuId: TcxDBTreeListColumn
      Visible = False
      Caption.Text = 'Menu'
      DataBinding.FieldName = 'MenuId'
      Options.Editing = False
      Options.Sorting = False
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object dbtlPositionAccessFlagOpen: TcxDBTreeListColumn
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Caption.Text = 'Open'
      DataBinding.FieldName = 'FlagOpen'
      Options.Sorting = False
      Width = 50
      Position.ColIndex = 6
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object dbtlPositionAccessFlagInsert: TcxDBTreeListColumn
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Caption.Text = 'Insert'
      DataBinding.FieldName = 'FlagInsert'
      Options.Sorting = False
      Width = 50
      Position.ColIndex = 7
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object dbtlPositionAccessFlagEdit: TcxDBTreeListColumn
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Caption.Text = 'Edit'
      DataBinding.FieldName = 'FlagEdit'
      Options.Sorting = False
      Width = 50
      Position.ColIndex = 8
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object dbtlPositionAccessFlagDelete: TcxDBTreeListColumn
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Caption.Text = 'Delete'
      DataBinding.FieldName = 'FlagDelete'
      Options.Sorting = False
      Width = 50
      Position.ColIndex = 9
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object dbtlPositionAccessMaxReprint: TcxDBTreeListColumn
      PropertiesClassName = 'TcxSpinEditProperties'
      Properties.SpinButtons.Position = sbpHorzLeftRight
      Visible = False
      Caption.Text = 'Max Reprint'
      DataBinding.FieldName = 'MaxReprint'
      Width = 100
      Position.ColIndex = 10
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  inherited ActionList1: TActionList
    object actVisibleInvisible: TAction
      Caption = 'On / Off'
      ShortCut = 114
      OnExecute = actVisibleInvisibleExecute
    end
    object actVisibleInvisibleAll: TAction
      Caption = 'On / Off All'
      ShortCut = 115
      OnExecute = actVisibleInvisibleAllExecute
    end
    object actPost: TAction
      Caption = 'Simpan'
      Hint = 'Simpan'
      ImageIndex = 8
      ShortCut = 121
      OnExecute = actPostExecute
    end
    object actCancel: TAction
      Caption = 'Batal'
      Hint = 'Batal'
      ImageIndex = 9
      OnExecute = actCancelExecute
    end
  end
  object mdMenus: TdxMemData
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F050000000200000002000B00496D616765496E6465
      780014000000010006004B65794964001400000001000900506172656E744964
      000200000002000D00466C616756616C6964617465000200000002000B004D61
      7852657072696E740001000001050000004D656E753100000000000000010000
      01070000004D656E75312E3101050000004D656E753100000000000001000001
      050000004D656E753200000000000000}
    SortOptions = []
    Left = 136
    Top = 112
    object mdMenusParentId: TStringField
      FieldName = 'ParentId'
      Size = 60
    end
    object mdMenusKeyId: TStringField
      FieldName = 'MenuId'
      Size = 60
    end
    object mdMenusActionName: TStringField
      FieldName = 'ActionName'
      Size = 60
    end
    object mdMenusMenuName: TStringField
      FieldName = 'MenuName'
      Size = 60
    end
    object mdMenusImageIndex: TSmallintField
      FieldName = 'FlagOpen'
    end
    object mdMenusFlagInsert: TSmallintField
      FieldName = 'FlagInsert'
    end
    object mdMenusFlagEdit: TSmallintField
      FieldName = 'FlagEdit'
    end
    object mdMenusFlagDelete: TSmallintField
      FieldName = 'FlagDelete'
    end
    object mdMenusMaxReprint: TSmallintField
      FieldName = 'MaxReprint'
    end
  end
  object dsMenus: TDataSource
    DataSet = mdMenus
    Left = 168
    Top = 112
  end
  object ilTreeView: TImageList
    Height = 18
    Width = 18
    Left = 136
    Top = 80
    Bitmap = {
      494C010103000400040012001200FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000480000001200000001002000000000004014
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CECE
      CE00A5A5AD009C9CAD009494A5009494A5008C8CA5008C8C9C0084849C007B7B
      9C007B7B9C00737394007B738C00EFEFEF000000000000000000000000000000
      0000CECECE00ADADA500A5A59C009CA59C009C9C9400949C8C0094948C008C94
      84008C8C7B008C8C7B008C8C7B0084846B007B7B6300EFEFEF00000000000000
      0000000000000000000000000000CECECE00A5A5AD009C9CAD009494A5009494
      A5008C8CA5008C8C9C0084849C007B7B9C007B7B9C00737394007B738C00EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CECEDE004A4A
      DE004242FF003939FF003131F7003131F7003131EF002929E7002929DE002121
      D6002121CE004242B5009C94A500DEDEDE00000000000000000000000000CECE
      C6006BBD5A0073D66B0073DE73006BDE6B0073DE6B007BD66B007BCE630084C6
      630084BD63008CBD63008CBD5A008CA5630094948400DEDEDE00000000000000
      00000000000000000000CECEDE004A4ADE004242FF003939FF003131F7003131
      F7003131EF002929E7002929DE002121D6002121CE004242B5009C94A500DEDE
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8CC6002929
      FF001008FF000000FF000000FF000000EF000000E7000000DE000000D6000000
      CE000000C6004239AD00ADA5B500D6D6D600000000000000000000000000CECE
      C6006BBD5A0073D66B0073DE73006BDE6B0073DE6B007BD66B007BCE630084C6
      630084BD63008CBD63008CBD5A008CA5630094948400DEDEDE00000000000000
      000000000000000000008C8CC6002929FF001008FF000000FF000000FF000000
      EF000000E7000000DE000000D6000000CE000000C6004239AD00ADA5B500D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006363CE003939
      FF002929FF001818FF000808FF000000F7000000EF000000E7000000DE000000
      D6000000CE005252AD00BDB5BD00CECECE0000000000000000000000000094AD
      84005AD65A0052D64A0052E7520042DE420042D639004ACE420052C6420063BD
      420063B542006BAD42006BAD390084945A00ADA59C00D6D6D600000000000000
      000000000000000000006363CE003939FF002929FF001818FF000808FF000000
      F7000000EF000000E7000000DE000000D6000000CE005252AD00BDB5BD00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005252D6005A5A
      FF005A5AFF004A4AFF003939FF002929FF001010F7000000E7000000E7000000
      DE000000D600635AB500C6BDC600BDBDC6000000000000000000000000007BAD
      6B0063DE630063D65A006BE76B0052DE52004ADE4A004AD6420052CE420063BD
      420063BD42006BB542006BB53900849C6300BDB5AD00CECECE00000000000000
      000000000000000000005252D6005A5AFF005A5AFF004A4AFF003939FF002929
      FF001010F7000000E7000000E7000000DE000000D600635AB500C6BDC600BDBD
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005252DE007373
      FF00847BFF007373FF006B6BFF006363FF005A5AFF004242F7000808EF000000
      E7000000DE00736BB500CECED600ADADB50000000000000000000000000073B5
      63007BDE7B007BD673008CE78C0084E77B0073E773006BDE6B005AD652005AC6
      42005ABD420063BD420063B539008CA57300C6BDB500BDBDBD00000000000000
      000000000000000000005252DE007373FF00847BFF007373FF006B6BFF006363
      FF005A5AFF004242F7000808EF000000E7000000DE00736BB500CECED600ADAD
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A5ADE009494
      FF00A5A5FF009C9CFF009494FF008C8CFF008484FF008484FF007B7BF7004242
      EF000808E700847BBD00DED6DE00A5A5AD0000000000000000000000000073BD
      630094E794008CDE8C00A5E7A500A5EFA50094E7940094E7940094E78C005ACE
      4A0052C639005AC642005ABD390094A57B00D6CEC600B5B5AD00000000000000
      000000000000000000005A5ADE009494FF00A5A5FF009C9CFF009494FF008C8C
      FF008484FF008484FF007B7BF7004242EF000808E700847BBD00DED6DE00A5A5
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A5ADE009494
      FF00A5A5FF009C9CFF009494FF008C8CFF008484FF008484FF007B7BF7004242
      EF000808E700847BBD00DED6DE00A5A5AD000000000000000000000000007BBD
      7300A5EFA500A5E79C00B5EFB500B5EFB500B5EFB500ADEFAD00ADEFAD00A5E7
      A5007BD673005ACE4A004ABD31009CAD8C00DED6D600ADADA500000000000000
      000000000000000000005A5ADE009494FF00A5A5FF009C9CFF009494FF008C8C
      FF008484FF008484FF007B7BF7004242EF000808E700847BBD00DED6DE00A5A5
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B6BDE00ADAD
      FF00B5B5FF00BDBDFF00B5B5FF00ADADFF00ADADFF00A5A5FF00A5A5FF00ADAD
      FF009C9CFF008C84BD00E7DEE7009C9CA5000000000000000000000000008CBD
      7B00BDF7BD00B5E7B500C6EFC600C6F7C600C6EFC600BDEFBD00BDEFBD00BDEF
      BD00BDEFBD00B5EFB50084CE7300A5B59400EFE7DE00A5A59C00000000000000
      000000000000000000006B6BDE00ADADFF00B5B5FF00BDBDFF00B5B5FF00ADAD
      FF00ADADFF00A5A5FF00A5A5FF00ADADFF009C9CFF008C84BD00E7DEE7009C9C
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B6BCE00B5B5
      FF00BDBDFF00BDBDFF00C6C6FF00C6C6FF00BDBDFF00BDBDFF00BDBDFF00BDBD
      FF00C6C6FF009494C600EFE7EF008C8C9C0000000000000000000000000094B5
      7B00C6F7C600C6F7C600CEF7CE00CEF7CE00D6F7D600D6F7D600CEF7CE00C6F7
      C600C6F7C600D6F7D60094DE9400ADBD9C00F7EFE7009C9C9400000000000000
      000000000000000000006B6BCE00B5B5FF00BDBDFF00BDBDFF00C6C6FF00C6C6
      FF00BDBDFF00BDBDFF00BDBDFF00BDBDFF00C6C6FF009494C600EFE7EF008C8C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5B5D6008C8C
      CE007373C6008C8CD6007B73DE00C6C6FF00D6D6FF00D6D6FF00CECEFF00CECE
      FF00D6D6FF00A59CC600F7EFF70084849C00000000000000000000000000CECE
      BD00ADBD9C009CB58C009CB58400ADC69C009CCE9400D6F7D600DEF7DE00DEF7
      DE00D6F7DE00DEFFDE0094DE8C00B5BDAD00FFF7F70094948C00000000000000
      00000000000000000000B5B5D6008C8CCE007373C6008C8CD6007B73DE00C6C6
      FF00D6D6FF00D6D6FF00CECEFF00CECEFF00D6D6FF00A59CC600F7EFF7008484
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8CB500BDB5C6008C84B5007B7BE700F7F7FF00E7E7FF00E7E7FF00E7E7
      FF00EFEFFF00B5ADD600FFFFFF007B7B9400000000000000000000000000CECE
      BD00ADBD9C009CB58C009CB58400ADC69C009CCE9400D6F7D600DEF7DE00DEF7
      DE00D6F7DE00DEFFDE0094DE8C00B5BDAD00FFF7F70094948C00000000000000
      0000000000000000000000000000000000008C8CB500BDB5C6008C84B5007B7B
      E700F7F7FF00E7E7FF00E7E7FF00E7E7FF00EFEFFF00B5ADD600FFFFFF007B7B
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7FF00EFEFF700DEDEEF006363C600DED6FF00E7E7FF00E7E7FF00EFEF
      FF00FFFFFF00636394007B73B5008484AD000000000000000000000000000000
      000000000000FFFFFF00B5AD9C00CEC6BD00ADAD9400A5CE9400F7FFF700EFFF
      EF00EFFFEF00F7FFF7009CD69400C6CEBD00FFFFFF008C8C8400000000000000
      000000000000000000000000000000000000F7F7FF00EFEFF700DEDEEF006363
      C600DED6FF00E7E7FF00E7E7FF00EFEFFF00FFFFFF00636394007B73B5008484
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B5B5DE007B7BCE007373CE006B6BCE006363
      CE006B6BD600E7E7E70000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00F7F7EF00EFEFE70094B57B00DEFFE700EFFF
      EF00EFFFF700FFFFFF009CD6940084846B00ADAD9400A5A59400000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      DE007B7BCE007373CE006B6BCE006363CE006B6BD600E7E7E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CED6BD00ADBD94009CB5
      840094BD84009CC68C007BAD6300E7E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000048000000120000000100010000000000D80000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFC0000000000FFFFFFFF
      FFFFFC0000000000E000F0003E000C0000000000C000E0003C000C0000000000
      C000E0003C000C0000000000C000E0003C000C0000000000C000E0003C000C00
      00000000C000E0003C000C0000000000C000E0003C000C0000000000C000E000
      3C000C0000000000C000E0003C000C0000000000C000E0003C000C0000000000
      C000E0003C000C0000000000F000E0003F000C0000000000F000F8003F000C00
      00000000FE03FC003FE03C0000000000FFFFFF80FFFFFC0000000000FFFFFFFF
      FFFFFC000000000000000000000000000000000000000000000000000000}
  end
end
