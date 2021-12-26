unit FPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Gerenciador.Form ;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Image2: TImage;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Shape1: TShape;
    imgFace: TImage;
    imgInsta: TImage;
    imgTwiter: TImage;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Image3: TImage;
    Panel17: TPanel;
    Shape2: TShape;
    Label1: TLabel;
    Image4: TImage;
    procedure Panel13Click(Sender: TObject);
    procedure Panel12Click(Sender: TObject);
    procedure Panel11Click(Sender: TObject);
    procedure Panel10Click(Sender: TObject);
    procedure Panel10DblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure imgFaceMouseEnter(Sender: TObject);
    procedure imgInstaMouseEnter(Sender: TObject);
    procedure imgFaceMouseLeave(Sender: TObject);
    procedure imgInstaMouseLeave(Sender: TObject);
    procedure imgTwiterMouseEnter(Sender: TObject);
    procedure imgTwiterMouseLeave(Sender: TObject);
    procedure Image4MouseEnter(Sender: TObject);
    procedure Image4MouseLeave(Sender: TObject);
  private
    procedure MoveShapItem(Value: TPanel);
    procedure ImageResource(AResource: string; AImage: TImage);

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
 Form.Explorer;

{$R *.dfm}

{ TForm1 }

procedure TfrmPrincipal.FormResize(Sender: TObject);
begin
  imgFace.Top   := imgInsta.Top - 75;
  imgTwiter.Top := imgInsta.Top + 75;

end;

procedure TfrmPrincipal.Image4MouseEnter(Sender: TObject);
begin
  ImageResource('BTN2', Image4);
end;

procedure TfrmPrincipal.Image4MouseLeave(Sender: TObject);
begin
  ImageResource('BTN1', Image4);
end;

procedure TfrmPrincipal.ImageResource(AResource: string; AImage: TImage);
var
  LResource : TResourceStream;
begin
  LResource := TResourceStream.Create(HInstance, AResource, RT_RCDATA);
  try
    AImage.Picture.LoadFromStream(LResource);
  finally
    LResource.Free;
  end;
end;

procedure TfrmPrincipal.imgFaceMouseEnter(Sender: TObject);
begin
  ImageResource('FACE2', imgFace);
end;

procedure TfrmPrincipal.imgFaceMouseLeave(Sender: TObject);
begin
  ImageResource('FACE1', imgFace);
end;

procedure TfrmPrincipal.imgInstaMouseEnter(Sender: TObject);
begin
  ImageResource('INSTA2', imgInsta);
end;

procedure TfrmPrincipal.imgInstaMouseLeave(Sender: TObject);
begin
  ImageResource('INSTA1', imgInsta);
end;

procedure TfrmPrincipal.imgTwiterMouseEnter(Sender: TObject);
begin
  ImageResource('TWITTER2', imgTwiter);
end;

procedure TfrmPrincipal.imgTwiterMouseLeave(Sender: TObject);
begin
  ImageResource('TWITTER1', imgTwiter);
end;

procedure TfrmPrincipal.MoveShapItem (Value: TPanel);
begin
 TThread.CreateAnonymousThread(
  procedure
  begin
    while Shape1.Left <> Value.Left do
    begin
      if Shape1.Left > Value.Left then
        Shape1.Left := Shape1.Left - 1
      else
        Shape1.Left := Shape1.Left + 1;
    end;
  end
 ).Start;
end;

procedure TfrmPrincipal.Panel10Click(Sender: TObject);
begin
 MoveShapItem(TPanel(Sender));
end;

procedure TfrmPrincipal.Panel10DblClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.Panel11Click(Sender: TObject);
begin
 MoveShapItem(TPanel(Sender));
end;

procedure TfrmPrincipal.Panel12Click(Sender: TObject);
begin
 MoveShapItem(TPanel(Sender));
 _Gerenciador := TGerenciadorForm.Create;
 _Gerenciador.AddForm('Explorer', TfrmExplorer, Panel5, True);
end;

procedure TfrmPrincipal.Panel13Click(Sender: TObject);
begin
 MoveShapItem(TPanel(Sender));
 _Gerenciador.RemoveForm(_Gerenciador.GetFormIndex.Caption);

end;

end.
