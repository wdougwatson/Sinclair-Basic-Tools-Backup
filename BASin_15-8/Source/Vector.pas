unit Vector;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FastIMG, StdCtrls;

type
  TVectorForm = class(TForm)
    ScrollBox2: TScrollBox;
    FastIMG3: TFastIMG;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Vectors: TStringlist;
  end;

var
  VectorForm: TVectorForm;

implementation

Uses Utility, VectEdit;

{$R *.DFM}

procedure TVectorForm.FormCreate(Sender: TObject);
begin

  Vectors := TStringlist.Create;

end;

procedure TVectorForm.FormDestroy(Sender: TObject);
begin

  Vectors.Free;

end;

procedure TVectorForm.Button2Click(Sender: TObject);
begin

  CentreFormOnForm(VectEditForm, Nil);
  ShowWindow(VectEditForm, True);

end;

end.
