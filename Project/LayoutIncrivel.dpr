program LayoutIncrivel;

{$R *.dres}

uses
  Vcl.Forms,
  FPrincipal in 'FPrincipal.pas' {frmPrincipal},
  Gerenciador.Form in 'Gerenciador.Form.pas',
  Form.Explorer in '..\Source\Form.Explorer.pas' {frmExplorer},
  Form.Frame in '..\Source\Form.Frame.pas' {Frame1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
