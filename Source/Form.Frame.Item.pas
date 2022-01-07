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
    procedure Panel1MouseLeave(Sender: TObject);
    procedure Panel1MouseEnter(Sender: TObject);
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

function HexToColor(sColor: string): TColor;
begin
  Result :=
    RGB(
      StrToInt('$' + Copy(sColor, 1,2)),
      StrToInt('$' + Copy(sColor, 3,2)),
      StrToInt('$' + Copy(sColor, 5,2))
    );
end;

procedure TFrameItem.Panel1Click(Sender: TObject);
begin
 _Gerenciador.AddForm(FInjectKey, FinjectComponent, FInjectPanel);
end;

procedure TFrameItem.Panel1MouseEnter(Sender: TObject);
begin
  Panel1.Color := HexToColor('2e3439');
end;

procedure TFrameItem.Panel1MouseLeave(Sender: TObject);
begin
  Panel1.Color := HexToColor('23272b');
end;

procedure TFrameItem.PanelInjection(Key: string; Value: TComponentClass; const Parent: TPanel);
begin
  FInjectPanel     := Parent;
  FInjectKey       := Key;
  FinjectComponent := Value;
end;

end.
