unit FPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
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
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.FormResize(Sender: TObject);
begin
  imgFace.Top   := imgInsta.Top - 75;
  imgTwiter.Top := imgInsta.Top + 75;

end;

procedure TForm1.Image4MouseEnter(Sender: TObject);
begin
  ImageResource('BTN2', Image4);
end;

procedure TForm1.Image4MouseLeave(Sender: TObject);
begin
  ImageResource('BTN1', Image4);
end;

procedure TForm1.ImageResource(AResource: string; AImage: TImage);
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

procedure TForm1.imgFaceMouseEnter(Sender: TObject);
begin
  ImageResource('FACE2', imgFace);
end;

procedure TForm1.imgFaceMouseLeave(Sender: TObject);
begin
  ImageResource('FACE1', imgFace);
end;

procedure TForm1.imgInstaMouseEnter(Sender: TObject);
begin
  ImageResource('INSTA2', imgInsta);
end;

procedure TForm1.imgInstaMouseLeave(Sender: TObject);
begin
  ImageResource('INSTA1', imgInsta);
end;

procedure TForm1.imgTwiterMouseEnter(Sender: TObject);
begin
  ImageResource('TWITTER2', imgTwiter);
end;

procedure TForm1.imgTwiterMouseLeave(Sender: TObject);
begin
  ImageResource('TWITTER1', imgTwiter);
end;

procedure TForm1.MoveShapItem (Value: TPanel);
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

procedure TForm1.Panel10Click(Sender: TObject);
begin
 MoveShapItem(TPanel(Sender));
end;

procedure TForm1.Panel10DblClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Panel11Click(Sender: TObject);
begin
 MoveShapItem(TPanel(Sender));
end;

procedure TForm1.Panel12Click(Sender: TObject);
begin
 MoveShapItem(TPanel(Sender));
end;

procedure TForm1.Panel13Click(Sender: TObject);
begin
 MoveShapItem(TPanel(Sender));
end;

end.
