program chapter3Q1_p;

uses
  Vcl.Forms,
  chapter3Q1_u in 'chapter3Q1_u.pas' {frmPetersonGroup},
  chapter3Q1_d in 'chapter3Q1_d.pas' {dmoBandB: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPetersonGroup, frmPetersonGroup);
  Application.CreateForm(TdmoBandB, dmoBandB);
  Application.Run;
end.
