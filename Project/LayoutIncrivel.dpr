program LayoutIncrivel;

{$R *.dres}

uses
  Vcl.Forms,
  FPrincipal in 'FPrincipal.pas' {Form1},
  Gerenciador.Form in 'Gerenciador.Form.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
