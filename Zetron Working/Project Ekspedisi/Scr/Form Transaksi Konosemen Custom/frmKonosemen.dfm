inherited fmKonosemen: TfmKonosemen
  Caption = 'Konosemen'
  ClientHeight = 600
  ClientWidth = 792
  ExplicitTop = -58
  ExplicitWidth = 800
  ExplicitHeight = 634
  DesignSize = (
    792
    600)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 792
    ExplicitWidth = 792
  end
  inherited pnlCustom: TPanel
    Width = 792
    ExplicitWidth = 792
  end
  inherited dxDockSite1: TdxDockSite
    Width = 792
    Height = 525
    ExplicitWidth = 792
    ExplicitHeight = 525
    DockType = 0
    OriginalWidth = 792
    OriginalHeight = 525
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 764
      Height = 525
      ExplicitWidth = 764
      ExplicitHeight = 525
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 764
        Height = 525
        ExplicitWidth = 764
        ExplicitHeight = 525
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 764
        Height = 525
        ExplicitWidth = 764
        ExplicitHeight = 525
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
        object Splitter1: TSplitter
          Left = 0
          Top = 416
          Width = 760
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          ExplicitTop = 164
          ExplicitWidth = 202
        end
        object pnlHeader: TPanel
          Left = 0
          Top = 0
          Width = 760
          Height = 113
          Align = alTop
          TabOrder = 0
          object pnlLeft: TPanel
            Left = 1
            Top = 1
            Width = 758
            Height = 111
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = 0
            ExplicitTop = 4
            object Label1: TLabel
              Left = 9
              Top = 9
              Width = 84
              Height = 13
              Caption = 'Kode Konosemen'
              Transparent = True
            end
            object Label3: TLabel
              Left = 9
              Top = 27
              Width = 39
              Height = 13
              Caption = 'Tanggal'
              Transparent = True
            end
            object Label2: TLabel
              Left = 9
              Top = 45
              Width = 84
              Height = 13
              Caption = 'Kode Daftar Muat'
              Transparent = True
            end
            object Label6: TLabel
              Left = 9
              Top = 82
              Width = 80
              Height = 13
              Caption = 'Tarif Konosemen'
              Transparent = True
            end
            object Label7: TLabel
              Left = 316
              Top = 7
              Width = 27
              Height = 13
              Caption = 'Kapal'
              Transparent = True
            end
            object Label8: TLabel
              Left = 316
              Top = 26
              Width = 44
              Height = 13
              Caption = 'Nahkoda'
              Transparent = True
            end
            object Label9: TLabel
              Left = 316
              Top = 44
              Width = 49
              Height = 13
              Caption = 'Gross Ton'
              Transparent = True
            end
            object Label10: TLabel
              Left = 9
              Top = 63
              Width = 30
              Height = 13
              Caption = 'Merek'
              Transparent = True
            end
            object dbeKonosemenCode: TcxDBTextEdit
              Left = 112
              Top = 6
              DataBinding.DataField = 'KonosemenCode'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              TabOrder = 0
              Width = 121
            end
            object dbeKonosemenDate: TcxDBDateEdit
              Left = 112
              Top = 24
              DataBinding.DataField = 'KonosemenDate'
              DataBinding.DataSource = dsDefault
              TabOrder = 1
              Width = 121
            end
            object dbeDaftarMuatKapalCode: TcxDBExtLookupComboBox
              Left = 112
              Top = 42
              DataBinding.DataField = 'DaftarMuatKapalCode'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              Properties.View = cgvDaftarMuatKapal
              Properties.KeyFieldNames = 'DaftarMuatKapalCode'
              Properties.ListFieldItem = cgvDaftarMuatKapalTrayekCode
              Properties.MaxLength = 0
              TabOrder = 2
              Width = 145
            end
            object lblShipName: TcxDBLabel
              Left = 379
              Top = 7
              AutoSize = True
              DataBinding.DataField = 'ShipName'
              DataBinding.DataSource = dsPrevTrayek
              ParentColor = False
              Transparent = True
            end
            object lblShipCrewName: TcxDBLabel
              Left = 379
              Top = 24
              AutoSize = True
              DataBinding.DataField = 'ShipCrewName'
              DataBinding.DataSource = dsPrevTrayek
              ParentColor = False
              Transparent = True
            end
            object lblGrossTon: TcxDBLabel
              Left = 385
              Top = 42
              AutoSize = True
              DataBinding.DataField = 'GrossTon'
              DataBinding.DataSource = dsPrevTrayek
              ParentColor = False
              Transparent = True
            end
            object dbeMerekId: TcxDBExtLookupComboBox
              Left = 112
              Top = 60
              DataBinding.DataField = 'MerekId'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              Properties.View = cgvPrevMerek
              Properties.KeyFieldNames = 'MerekId'
              Properties.ListFieldItem = cgvPrevMerekMerekName
              Properties.MaxLength = 0
              Properties.OnEditValueChanged = dbeMerekIdPropertiesEditValueChanged
              TabOrder = 6
              Width = 145
            end
            object dbeTarifKonosemen: TcxDBTextEdit
              Left = 112
              Top = 78
              DataBinding.DataField = 'TarifKonosemen'
              DataBinding.DataSource = dsDefault
              Properties.CharCase = ecUpperCase
              TabOrder = 7
              Width = 121
            end
          end
        end
        object pnlDetail1: TPanel
          Left = 0
          Top = 113
          Width = 760
          Height = 303
          Align = alClient
          TabOrder = 1
        end
        object pcBody: TcxPageControl
          Left = 0
          Top = 419
          Width = 760
          Height = 102
          ActivePage = tsDipendencies
          Align = alBottom
          Images = dmGlobal.imgIconTabSheet
          NavigatorPosition = npLeftBottom
          Options = [pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
          Rotate = True
          TabOrder = 2
          TabPosition = tpRight
          ClientRectBottom = 102
          ClientRectRight = 722
          ClientRectTop = 0
          object tsInternalMemo: TcxTabSheet
            Hint = 'Memo Internal'
            ImageIndex = 2
            object dbmInternalMemo: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'internalmemo'
              DataBinding.DataSource = dsDefault
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              Height = 102
              Width = 722
            end
          end
          object tsStatementMemo: TcxTabSheet
            Hint = 'Memo Tercetak'
            ImageIndex = 3
            object dbmStatementMemo: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'statementmemo'
              DataBinding.DataSource = dsDefault
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              Height = 102
              Width = 722
            end
          end
          object tsDipendencies: TcxTabSheet
            Hint = 'Ketergantungan'
            ImageIndex = 4
            object cgDependencies: TcxGrid
              Left = 0
              Top = 0
              Width = 722
              Height = 102
              Align = alClient
              TabOrder = 0
              object cgvDependencies: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.Prior.Visible = False
                NavigatorButtons.Next.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Last.Visible = False
                NavigatorButtons.Insert.Visible = False
                NavigatorButtons.Delete.Visible = False
                NavigatorButtons.Edit.Visible = False
                NavigatorButtons.Post.Visible = False
                NavigatorButtons.Cancel.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cgvDependenciesTransaction: TcxGridDBColumn
                  Caption = 'Transaksi'
                  Options.Filtering = False
                end
                object cgvDependenciesCode: TcxGridDBColumn
                  Caption = 'Kode'
                  Options.Filtering = False
                end
                object cgvDependenciesDate: TcxGridDBColumn
                  Caption = 'Tanggal'
                  Options.Filtering = False
                end
              end
              object cgDependenciesLevel1: TcxGridLevel
                GridView = cgvDependencies
              end
            end
          end
        end
        object cgKonosemenDt: TcxGrid
          Left = 0
          Top = 113
          Width = 760
          Height = 303
          Align = alClient
          TabOrder = 3
          object cgvKonosemenDt: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Enabled = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Enabled = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Enabled = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Refresh.Visible = True
            NavigatorButtons.SaveBookmark.Enabled = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Enabled = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsKonosemenDt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'Price'
                Column = cgvKonosemenDtPrice
              end
              item
                Kind = skSum
                FieldName = 'PriceFra'
                Column = cgvKonosemenDtPriceFra
              end
              item
                Kind = skSum
                FieldName = 'PricePort'
                Column = cgvKonosemenDtPricePort
              end
              item
                Kind = skSum
                FieldName = 'Qty'
                Column = cgvKonosemenDtQty
              end
              item
                Kind = skSum
                FieldName = 'TotalAmount'
                Column = cgvKonosemenDtTotalAmount
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cgvKonosemenDtKonosemenCode: TcxGridDBColumn
              Caption = 'No Konosemen'
              DataBinding.FieldName = 'KonosemenCode'
              Visible = False
            end
            object cgvKonosemenDtKonosemenNo: TcxGridDBColumn
              Caption = 'No'
              DataBinding.FieldName = 'KonosemenNo'
              Width = 37
            end
            object cgvKonosemenDtItemReceiveCode: TcxGridDBColumn
              Caption = 'Kode Penerimaan'
              DataBinding.FieldName = 'ItemReceiveCode'
              Width = 89
            end
            object cgvKonosemenDtNo: TcxGridDBColumn
              DataBinding.FieldName = 'No'
              Width = 43
            end
            object cgvKonosemenDtNoPacking: TcxGridDBColumn
              Caption = 'No Packing'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 107
            end
            object cgvKonosemenDtSuppliesCode: TcxGridDBColumn
              Caption = 'Kode Barang'
              Width = 86
            end
            object cgvKonosemenDtSuppliesName: TcxGridDBColumn
              Caption = 'Nama Barang'
              Width = 93
            end
            object cgvKonosemenDtQty: TcxGridDBColumn
              DataBinding.FieldName = 'Qty'
              PropertiesClassName = 'TcxCalcEditProperties'
              Width = 43
            end
            object cgvKonosemenDtPrice: TcxGridDBColumn
              DataBinding.FieldName = 'Price'
              PropertiesClassName = 'TcxCalcEditProperties'
              Width = 78
            end
            object cgvKonosemenDtPriceFra: TcxGridDBColumn
              Caption = 'Price Fra'
              DataBinding.FieldName = 'PriceFra'
              PropertiesClassName = 'TcxCalcEditProperties'
              Width = 107
            end
            object cgvKonosemenDtPricePort: TcxGridDBColumn
              Caption = 'Price Port '
              PropertiesClassName = 'TcxCalcEditProperties'
            end
            object cgvKonosemenDtModeCY: TcxGridDBColumn
              DataBinding.FieldName = 'ModeCY'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'CYPort'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'CYDoor'
                  Value = '1'
                end>
              Width = 65
            end
            object cgvKonosemenDtTotalAmount: TcxGridDBColumn
              DataBinding.FieldName = 'TotalAmount'
              PropertiesClassName = 'TcxCalcEditProperties'
            end
          end
          object cgKonosemenDtLevel1: TcxGridLevel
            GridView = cgvKonosemenDt
          end
        end
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 525
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
    end
  end
  inherited ActionList1: TActionList
    Left = 592
  end
  inherited IvPositionStandard1: TIvPositionStandard
    Left = 624
  end
  inherited IvPositionDevExpress1: TIvPositionDevExpress
    Left = 656
  end
  inherited dsDefault: TDataSource
    DataSet = qryKonosemen
    Left = 560
  end
  inherited dxDockingManager1: TdxDockingManager
    Left = 688
  end
  inherited pmPrint: TPopupMenu
    Left = 624
  end
  object qryKonosemen: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryKonosemenBeforeInsert
    BeforePost = qryKonosemenBeforePost
    OnNewRecord = qryKonosemenNewRecord
    Parameters = <
      item
        Name = 'StartDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'EndDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from Konosemen'
      'where KonosemenDate between :StartDate and :EndDate'
      'order by KonosemenCode;')
    Left = 560
    Top = 80
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 592
    Top = 112
    object cgvStorageLocation: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmEkspedisi.dsPrevStorageLocation
      DataController.KeyFieldNames = 'StorageLocationId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvStorageLocationStorageLocationId: TcxGridDBColumn
        DataBinding.FieldName = 'StorageLocationId'
        Visible = False
      end
      object cgvStorageLocationStorageLocationCode: TcxGridDBColumn
        DataBinding.FieldName = 'StorageLocationCode'
        Visible = False
      end
      object cgvStorageLocationStorageLocationName: TcxGridDBColumn
        DataBinding.FieldName = 'StorageLocationName'
      end
      object cgvStorageLocationFlagShipStorage: TcxGridDBColumn
        DataBinding.FieldName = 'FlagShipStorage'
        Visible = False
      end
    end
    object cgvDaftarMuatKapal: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPrevTrayek
      DataController.KeyFieldNames = 'DaftarMuatKapalCode'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvDaftarMuatKapalTrayekCode: TcxGridDBColumn
        Caption = 'Kode Daftar Muat'
        DataBinding.FieldName = 'DaftarMuatKapalCode'
      end
      object cgvDaftarMuatKapalShipName: TcxGridDBColumn
        Caption = 'Kapal'
        DataBinding.FieldName = 'ShipName'
      end
      object cgvDaftarMuatKapalShipCrewName: TcxGridDBColumn
        Caption = 'Nahkoda'
        DataBinding.FieldName = 'ShipCrewName'
      end
      object cgvDaftarMuatKapalGrossTon: TcxGridDBColumn
        Caption = 'Gross Ton'
        DataBinding.FieldName = 'GrossTon'
      end
      object cgvDaftarMuatKapalTrayekDateGo: TcxGridDBColumn
        Caption = 'Tanggal Berangkat'
        DataBinding.FieldName = 'DaftarMuatKapalDateGo'
      end
    end
    object cgvCustomerForwarding: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmEkspedisi.dsPrevCustomerForwarding
      DataController.KeyFieldNames = 'TarifKonosemen'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvCustomerForwardingCustomerId: TcxGridDBColumn
        DataBinding.FieldName = 'CustomerId'
        Visible = False
      end
      object cgvCustomerForwardingCustomerCode: TcxGridDBColumn
        DataBinding.FieldName = 'CustomerCode'
        Visible = False
      end
      object cgvCustomerForwardingCustomerName: TcxGridDBColumn
        DataBinding.FieldName = 'CustomerName'
      end
      object cgvCustomerForwardingTarifKonosemen: TcxGridDBColumn
        DataBinding.FieldName = 'TarifKonosemen'
      end
    end
    object cgvPrevMerek: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmEkspedisi.dsPrevMerek
      DataController.KeyFieldNames = 'MerekId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevMerekMerekId: TcxGridDBColumn
        DataBinding.FieldName = 'MerekId'
        Visible = False
      end
      object cgvPrevMerekMerekCode: TcxGridDBColumn
        DataBinding.FieldName = 'MerekCode'
      end
      object cgvPrevMerekMerekName: TcxGridDBColumn
        DataBinding.FieldName = 'MerekName'
      end
      object cgvPrevMerekRouteId: TcxGridDBColumn
        DataBinding.FieldName = 'RouteId'
        Visible = False
      end
      object cgvPrevMerekCustomerId: TcxGridDBColumn
        DataBinding.FieldName = 'CustomerId'
        Visible = False
      end
    end
    object cgvPrevPackingTransactionHd: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.KeyFieldNames = 'PackingTransactionCode'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgvPrevPackingTransactionHdPackingCode: TcxGridDBColumn
        DataBinding.FieldName = 'PackingCode'
      end
      object cgvPrevPackingTransactionHdPackingName: TcxGridDBColumn
        DataBinding.FieldName = 'PackingName'
      end
      object cgvPrevPackingTransactionHdPackingTransactionCode: TcxGridDBColumn
        DataBinding.FieldName = 'PackingTransactionCode'
      end
      object cgvPrevPackingTransactionHdPackingTransactionDate: TcxGridDBColumn
        DataBinding.FieldName = 'PackingTransactionDate'
      end
      object cgvPrevPackingTransactionHdPackingAlias: TcxGridDBColumn
        DataBinding.FieldName = 'PackingAlias'
      end
      object cgvPrevPackingTransactionHdPrice: TcxGridDBColumn
        DataBinding.FieldName = 'Price'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevPackingTransactionHdP: TcxGridDBColumn
        DataBinding.FieldName = 'P'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevPackingTransactionHdL: TcxGridDBColumn
        DataBinding.FieldName = 'L'
        Visible = False
        VisibleForCustomization = False
      end
      object cgvPrevPackingTransactionHdT: TcxGridDBColumn
        DataBinding.FieldName = 'T'
        Visible = False
        VisibleForCustomization = False
      end
    end
  end
  object qryKonosemenDt: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    BeforeInsert = qryKonosemenDtBeforeInsert
    OnNewRecord = qryKonosemenDtNewRecord
    DataSource = dsDefault
    Parameters = <
      item
        Name = 'KonosemenCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select * from KonosemenDt'
      'where KonosemenCode = :KonosemenCode')
    Left = 528
    Top = 80
  end
  object dsKonosemenDt: TDataSource
    DataSet = qryKonosemenDt
    OnDataChange = dsKonosemenDtDataChange
    Left = 528
    Top = 112
  end
  object qryPrevTrayek: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'konosemencode'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      
        'select a.DaftarMuatKapalCode,a.RouteId,a.DaftarMuatKapalDateGo, ' +
        'b.ShipName, c.ShipCrewName, b.GrossTon'
      'from DaftarMuatKapal a'
      'left join Ship b on a.shipId = b.ShipId'
      'left join ShipCrew c on b.ShipCrewId = c.ShipCrewId '
      
        'left join Konosemen d on a.DaftarMuatKapalCode = d.DaftarMuatKap' +
        'alCode'
      'where DaftarMuatKapalClose is null or '
      
        '(not (d.DaftarMuatKapalCode is null) and d.KonosemenCode=:konose' +
        'mencode) '
      '')
    Left = 464
    Top = 80
  end
  object dsPrevTrayek: TDataSource
    DataSet = qryPrevTrayek
    Left = 464
    Top = 112
  end
  object qryPrevTarifKonosemen: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'merekid'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'routeid'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select b.TarifKonosemen '
      'from Merek a '
      'left join CustomerForwarding b on a.Customerid=b.Customerid'
      
        'where cast (a.MerekId as varchar) =:merekid and cast( a.RouteId ' +
        'as varchar )=:routeid')
    Left = 464
    Top = 144
  end
  object qryKonosemenDtPrice: TADOQuery
    Connection = dmGlobal.conGlobal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ItemReceiveCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'No'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select c.t,c.l,c.p,d.price,c.TarifTypeId,d.TarifTypeId,'
      'case  '
      ' when e.StatusDimensi=0 then c.t*c.l*c.p*d.price'
      ' when e.StatusDimensi=1 then c.berat*d.price'
      ' when e.StatusDimensi=2 then d.price'
      ' when e.StatusDimensi=3 then 0'
      'end'
      'as tarif,'
      'case  '
      ' when e.StatusDimensi=0 then c.t*c.l*c.p*d.pricefra'
      ' when e.StatusDimensi=1 then c.berat*d.pricefra'
      ' when e.StatusDimensi=2 then d.pricefra'
      ' when e.StatusDimensi=3 then 0'
      'end'
      'as tariffra'
      ',* '
      'from SuppliesReceiveDt c '
      
        'left join TarifItem d on c.TarifTypeId=d.TarifTypeId and d.Route' +
        'Id=1'
      'left join TarifType e on c.TarifTypeId=e.TarifTypeId'
      'where c.ItemReceiveCode=:ItemReceiveCode'
      ' and c.no=:No')
    Left = 496
    Top = 144
  end
end
