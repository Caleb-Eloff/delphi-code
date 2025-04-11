unit schoolMarks_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, Generics.Collections;

type
  TfrmSchoolMarks = class(TForm)
    lbxResults: TListBox;
    lblResults: TLabel;
    btnReadCSV: TButton;
    btnQ1: TButton;
    btnQ2: TButton;
    btnQ3: TButton;
    btnQ4: TButton;
    btnQ5: TButton;
    btnQ6: TButton;
    btnQ7: TButton;
    btnQ8: TButton;
    btnQ9: TButton;
    btnQ10: TButton;
    btnQ11: TButton;
    btnQ12: TButton;
    btnQ13: TButton;
    btnQ14: TButton;
    btnQ15: TButton;
    procedure btnReadCSVClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSchoolMarks: TfrmSchoolMarks;
  aData: Array [1 .. 5, 1 .. 7] of Integer;

implementation

{$R *.dfm}

procedure CSVIntoArray;
var
  sData: String;
  iComma, i, j: Integer;
  fCSV: TextFile;
  // aData : Array[1..5, 1..7] of Integer; (Global variable)

begin
  AssignFile(fCSV, 'marks.csv');
  Reset(fCSV);
  ReadLn(fCSV, sData);
  for i := 1 to 5 do
  begin
    ReadLn(fCSV, sData);
    for j := 1 to 7 do
    begin
      iComma := Pos(',', sData);
      if iComma > 0 then
      begin
        aData[i, j] := StrToInt(Copy(sData, 1, iComma - 1));
        Delete(sData, 1, iComma);
      end
      else
        aData[i, j] := StrToInt(Copy(sData, 1, Length(sData)));
    end;
  end;
end;



procedure TfrmSchoolMarks.btnReadCSVClick(Sender: TObject);
var
  i, j: Integer;
  sOutput: String;
begin
  CSVIntoArray;
  lbxResults.Clear;
  for i := 1 to 5 do
  begin
    sOutput := '';
    for j := 1 to 7 do
    begin
      sOutput := sOutput + IntToStr(aData[i, j]) + #9;
    end;
    lbxResults.Items.Add(sOutput);
  end;
end;

end.
