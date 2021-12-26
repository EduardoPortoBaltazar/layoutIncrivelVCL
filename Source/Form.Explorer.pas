unit Form.Explorer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExplorer: TfrmExplorer;

implementation

uses
  Gerenciador.Form;

{$R *.dfm}

end.
