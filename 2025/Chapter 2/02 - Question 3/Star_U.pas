unit Star_U;
interface

type
  TStar = class(TObject)
  private
    // Provided code
    fName: String;
    fMagnitude: real;
    fDistance: integer;
    fConstellation: String;
    fNavigationalStatus: Boolean;

  public
    // Provided code
    function getName: String;

  end;

implementation

Uses Math, SysUtils;
{$R+}




// Provided code
function TStar.getName: String;
begin
  result := fName;
end;

end.

