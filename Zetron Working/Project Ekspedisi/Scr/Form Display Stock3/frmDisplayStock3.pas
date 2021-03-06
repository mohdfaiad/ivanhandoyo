unit frmDisplayStock3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  untIvPositionDevExpress, untIvPositionStandard, ActnList, StdCtrls, cxButtons,
  ExtCtrls, dxSkinsCore, dxSkinsDefaultPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxTextEdit, ADODB,
  cxDBExtLookupComboBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxLabel, cxDBLabel, cxCalc;

type
  TfmDisplayStock3 = class(TForm)
    pnlHeader: TPanel;
    btnSearch: TcxButton;
    Panel1: TPanel;
    cgvStock: TcxGridDBTableView;
    cgKonosemenLevel1: TcxGridLevel;
    cgKonosemen: TcxGrid;
    Panel2: TPanel;
    Bevel1: TBevel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    ActionList2: TActionList;
    actCancel: TAction;
    actOk: TAction;
    actRefresh: TAction;
    IvPositionStandard2: TIvPositionStandard;
    IvPositionDevExpress2: TIvPositionDevExpress;
    Label2: TLabel;
    dbeMerk: TcxTextEdit;
    qryStock: TADOQuery;
    dsStock: TDataSource;
    Label1: TLabel;
    dbeBarang: TcxTextEdit;
    cgvStockStockId: TcxGridDBColumn;
    cgvStockStorageLocationId: TcxGridDBColumn;
    cgvStockItemReceiveCode: TcxGridDBColumn;
    cgvStockNo: TcxGridDBColumn;
    cgvStockPackingTransactionCode: TcxGridDBColumn;
    cgvStockBeritaAcaraCode: TcxGridDBColumn;
    cgvStockSuppliesCode: TcxGridDBColumn;
    cgvStockSuppliesName: TcxGridDBColumn;
    cgvStockQty: TcxGridDBColumn;
    cgvStockP: TcxGridDBColumn;
    cgvStockL: TcxGridDBColumn;
    cgvStockT: TcxGridDBColumn;
    cgvStockBerat: TcxGridDBColumn;
    cgvStockTotalM3: TcxGridDBColumn;
    cgvStockTotalBerat: TcxGridDBColumn;
    cgvStockMode: TcxGridDBColumn;
    cgvStockReferenceCode: TcxGridDBColumn;
    cgvStockStorageInDate: TcxGridDBColumn;
    cgvStockUnitMeasureId: TcxGridDBColumn;
    cgvStockMerekName: TcxGridDBColumn;
    procedure btnSearchClick(Sender: TObject);
    procedure cgvStockCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actRefreshExecute(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private
    procedure InitForm;
  public
    { Public declarations }
      var storageLocationId : string;
    class function ExecuteForm(var AStockCode : string) : TModalResult;
  end;

implementation

{$R *.dfm}

uses dtmGlobal, dtmEkspedisi, untProcedure, untEkspedisi;


procedure TfmDisplayStock3.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmDisplayStock3.actOkExecute(Sender: TObject);
begin
  if not qryStock.IsEmpty then
    ModalResult := mrOk;
end;

procedure TfmDisplayStock3.actRefreshExecute(Sender: TObject);
begin

  LockRefresh(qryStock);
end;

procedure TfmDisplayStock3.cgvStockCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  if not qryStock.IsEmpty then
    ModalResult := mrOk;
end;

procedure TfmDisplayStock3.btnSearchClick(Sender: TObject);
begin
  inherited;

  qryStock.Close;
  qryStock.Parameters[0].Value := '%' + dbeBarang.Text + '%';
  qryStock.Parameters[1].Value := '%' + dbeMerk.Text + '%';
  qryStock.Open;

end;

class function TfmDisplayStock3.ExecuteForm(var AStockCode : string): TModalResult;
var
  fmDisplayKonosemen: TfmDisplayStock3;
begin
  fmDisplayKonosemen := TfmDisplayStock3.Create(Application);
  with fmDisplayKonosemen do
  begin
    try
      InitForm;
      Result := ShowModal;
      if Result = mrOk then
      begin
        AStockCode := qryStock.FieldByName('StockCode').AsString;
      end;
    finally
      Release;
    end;
  end;
end;

procedure TfmDisplayStock3.InitForm;
begin
  OpenIfClose(qryStock);
end;

end.
