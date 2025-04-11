unit ArrayQuestions_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math;

type
  TForm1 = class(TForm)
    btnQuestion1: TButton;
    btnQuestion2: TButton;
    btnQuestion3: TButton;
    btnQuestion4: TButton;
    lbxAnswer: TListBox;
    procedure btnQuestion1Click(Sender: TObject);
    procedure btnQuestion2Click(Sender: TObject);
    procedure btnQuestion3Click(Sender: TObject);
    procedure btnQuestion4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnQuestion1Click(Sender: TObject);
var
  
  line : String;
  j, k : Integer;
begin
  //Create Times table
  
  
  
  //Display
  lbxAnswer.clear;
  lbxAnswer.TabWidth := 20;
  line := '';

end;

procedure TForm1.btnQuestion2Click(Sender: TObject);
var
  
  j: Integer;
  k: Integer;
  line: String;
begin
  // create digits table
  

  // Display
  lbxAnswer.clear;
  lbxAnswer.TabWidth := 20;
  line := '';
  
end;

procedure TForm1.btnQuestion3Click(Sender: TObject);
var
  
  j: Integer;
  k: Integer;
  line: String;
begin
  // create sum of indices table
  

  // Display
  lbxAnswer.clear;
  lbxAnswer.TabWidth := 20;
  line := '';
  
end;

procedure TForm1.btnQuestion4Click(Sender: TObject);
var
  
  j: Integer;
  k: Integer;
  line: String;
begin
  // create lowercase character
  

  // Display
  lbxAnswer.clear;
  lbxAnswer.TabWidth := 20;
  line := '';
  
end;

end.
