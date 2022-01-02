unit Form.Explorer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Generics.Collections,
  Form.Frame.Item;

type
  TfrmExplorer = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ScrollBox1: TScrollBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    ItemLista: TObjectList<TFrameItem>;

  public

  end;

var
  frmExplorer: TfrmExplorer;

implementation

uses
  Gerenciador.Form;

{$R *.dfm}

procedure TfrmExplorer.FormCreate(Sender: TObject);
begin
  ItemLista := TObjectList<TFrameItem>.Create;
end;

procedure TfrmExplorer.FormDestroy(Sender: TObject);
begin
  ItemLista.Free;
end;

procedure TfrmExplorer.FormShow(Sender: TObject);
var
  Item1, Item2, Item3 : TFrameItem;
  i: Integer;
begin
  Item1 := TFrameItem.Create(nil);
  Item1.Align := alTop;
  Item1.lblDescricao.Caption := 'Usuario';
  ItemLista.Add(Item1);

  Item2 := TFrameItem.Create(nil);
  Item2.Align := alTop;
  Item2.lblDescricao.Caption := 'Empresa';
  ItemLista.Add(Item2);

  for I := 0 to Pred(ItemLista.Count) do
    ItemLista[i].Parent := ScrollBox1;
end;

end.
