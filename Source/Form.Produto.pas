unit Form.Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  TfrmProduto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel4: TPanel;
    Shape1: TShape;
    Edit1: TEdit;
    Panel5: TPanel;
    Shape2: TShape;
    Label3: TLabel;
    Panel6: TPanel;
    DBGrid1: TDBGrid;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1CustNo: TFloatField;
    ClientDataSet1Company: TStringField;
    ClientDataSet1Addr1: TStringField;
    ClientDataSet1City: TStringField;
    ClientDataSet1State: TStringField;
    ClientDataSet1Country: TStringField;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProduto: TfrmProduto;

implementation

{$R *.dfm}

end.
