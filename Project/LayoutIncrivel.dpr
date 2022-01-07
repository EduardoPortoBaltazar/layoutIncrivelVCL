program LayoutIncrivel;

{$R *.dres}

uses
  Vcl.Forms,
  FPrincipal in 'FPrincipal.pas' {frmPrincipal},
  Gerenciador.Form in 'Gerenciador.Form.pas',
  Form.Explorer in '..\Source\Form.Explorer.pas' {frmExplorer},
  Form.Frame in '..\Source\Form.Frame.pas' {Frame1},
  Form.Frame.Item in '..\Source\Form.Frame.Item.pas' {FrameItem: TFrame},
  Form.Produto in '..\Source\Form.Produto.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
