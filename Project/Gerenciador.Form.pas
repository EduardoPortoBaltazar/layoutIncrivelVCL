unit Gerenciador.Form;

interface

uses
  System.Classes, Vcl.ExtCtrls, Vcl.Forms, System.Generics.Collections;

type
  iGerenciadorForm = interface
    ['{95C98F48-F11C-4C39-B2F0-FC25C97A3832}']
    function AddForm(Key: string; Value: TComponentClass; const Parent: TPanel; Index: Boolean = false): iGerenciadorForm;
    function GetForm (Value: string): TForm;
    function GetFormIndex: TForm;
    function RemoveForm (Value: string): iGerenciadorForm;
  end;

  TGerenciadorForm = class (TInterfacedObject, iGerenciadorForm)
  private
    FormIndex: TForm;
    ListaForm: TObjectDictionary<string, TForm>;

  public
    constructor Create;
    destructor Destroy; Override;
    class function New: iGerenciadorForm;

    function AddForm(Key: string; Value: TComponentClass; const Parent: TPanel; Index: Boolean = false): iGerenciadorForm;
    function GetForm (Value: string): TForm;
    function GetFormIndex: TForm;
    function RemoveForm (Value: string): iGerenciadorForm;


  end;

var
  _Gerenciador: iGerenciadorForm;

implementation

{ TGerenciadorForm }

function TGerenciadorForm.AddForm(Key: string; Value: TComponentClass; const Parent: TPanel; Index: Boolean): iGerenciadorForm;
var
  Lform: TForm;
begin
   Result := Self;

   if not ListaForm.TryGetValue(Key, Lform) then
   begin
     Application.CreateForm(Value,  Lform);
     Lform.Caption := Key;
     ListaForm.Add(key, Lform);
   end;

   Lform.Parent := Parent;
   Lform.Show;

   if Index then
     FormIndex := Lform;
end;

constructor TGerenciadorForm.Create;
begin
  ListaForm := TObjectDictionary<string, TForm>.Create;
end;

destructor TGerenciadorForm.Destroy;
begin
  ListaForm.Free;
  inherited;
end;

function TGerenciadorForm.GetForm(Value: string): TForm;
begin
  ListaForm.TryGetValue(Value, Result);
end;

function TGerenciadorForm.GetFormIndex: TForm;
begin
  Result := FormIndex;
end;

class function TGerenciadorForm.New: iGerenciadorForm;
begin

end;

function TGerenciadorForm.RemoveForm(Value: string): iGerenciadorForm;
var
  LForm: TForm;
begin
  if ListaForm.TryGetValue(Value, LForm) then
  begin
    LForm.Destroy;
    ListaForm.Remove(Value);
  end;
end;

initialization
    _Gerenciador := TGerenciadorForm.New;

end.
