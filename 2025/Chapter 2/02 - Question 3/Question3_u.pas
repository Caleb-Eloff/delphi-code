unit Question3_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Star_U;

type
  TfrmStars = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    cbxStar: TComboBox;
    redDisplay: TRichEdit;
    btnObject: TButton;
    btnDisplay: TButton;
    btnVisibility: TButton;
    imgStar: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStars: TfrmStars;
  // Provided code
  objStarX: TStar;

implementation
 var
  aNavigationStars: array [1 .. 58] of String = (
    'Alpheratz','Ankaa','Schedar','Diphda','Achernar','Hamal','Acamar',
    'Menkar','Mirfak','Aldebaran','Rigel','Capella','Bellatrix','Elnath',
    'Alnilam','Betelgeuse','Canopus','Sirius','Adhara','Procyon','Pollux',
    'Avior','Suhail','Miaplacidus','Alphard','Regulus','Dubhe','Denebola',
    'Gienah','Acrux','Gacrux','Alioth','Spica','Alkaid','Hadar','Menkent',
    'Rigil Kentaurus','Arcturus','Zubenelgenubi','Kochab','Alphecca',
    'Antares','Atria','Sabik','Shaula','Rasalhague','Eltanin',
    'Kaus Australis','Vega','Nunki','Altair','Peacock','Deneb','Enif',
    'Al Na''ir','Fomalhaut','Markab','Polaris');

{$R *.dfm}

end.
