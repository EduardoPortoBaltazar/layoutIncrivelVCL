unit Form.Frame.Item;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrameItem = class(TFrame)
    Panel1: TPanel;
    lblDescricao: TLabel;
    Shape1: TShape;
    lblComentario: TLabel;
    procedure Panel1Click(Sender: TObject);
  private
    FInjectPanel: TPanel;
    FInjectKey: string;
    FinjectComponent: TComponentClass;

  public
    procedure PanelInjection(Key: string; Value : TComponentClass; const Parent : TPanel);

  end;

implementation

uses
  Gerenciador.Form;

{$R *.dfm}

{ TFrameItem }

procedure TFrameItem.Panel1Click(Sender: TObject);
begin
 _Gerenciador.AddForm(FInjectKey, FinjectComponent, FInjectPanel);
end;

procedure TFrameItem.PanelInjection(Key: string; Value: TComponentClass; const Parent: TPanel);
begin
  FInjectPanel     := Parent;
  FInjectKey       := Key;
  FinjectComponent := Value;
end;

end.
