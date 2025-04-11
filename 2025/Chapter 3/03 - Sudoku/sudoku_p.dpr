program sudoku_p;

uses
  Vcl.Forms,
  sudoku_u in 'sudoku_u.pas' {frmSudoku};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSudoku, frmSudoku);
  Application.Run;
end.
