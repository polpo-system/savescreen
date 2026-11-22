MODULE SaveScreenTest;  (** SaveScreenTest.Run: the module loaded; needs the desktop's display *)

IMPORT Modules, Out;

VAR fails, checks: LONGINT;

PROCEDURE Check(what: ARRAY OF CHAR; ok: BOOLEAN);
BEGIN
  INC(checks);
  IF ~ok THEN INC(fails); Out.String("FAIL "); Out.String(what); Out.Ln END
END Check;

PROCEDURE Mod(name: ARRAY OF CHAR);
BEGIN
  Check(name, Modules.ThisMod(name) # NIL)
END Mod;

PROCEDURE Run*;
BEGIN
  fails := 0; checks := 0;
  Mod("SaveScreen");
  Out.String("SaveScreenTest: "); Out.Int(checks, 0); Out.String(" checks, "); Out.Int(fails, 0); Out.String(" failed"); Out.Ln
END Run;

END SaveScreenTest.
