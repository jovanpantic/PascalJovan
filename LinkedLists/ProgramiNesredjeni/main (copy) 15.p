program link_liste;

type 
Pokazivac = ^slog;
slog = record
  broj:integer;
  rec:string;
  adresa:pokazivac;
end;

var
prvaadresa,drugaadresa,trecaadresa,trenutnaadresa:Pokazivac;
procedure ispisati(trenutnadresa:pokazivac);
begin
  while trenutnaadresa <> nil do 
    begin
      writeln(trenutnaadresa^.broj);
      writeln(trenutnaadresa^.rec);
      trenutnaadresa:=trenutnaadresa^.adresa;
    end;
end;
begin

  New(prvaadresa);
  prvaadresa^.broj:=10;
  prvaadresa^.rec:=('knjiga');
  prvaadresa^.adresa:=nil;
  
  New(drugaadresa);
  drugaadresa^.broj:=20;
  drugaadresa^.rec:= ('majstor');
  drugaadresa^.adresa:=nil;
  
  New(trecaadresa);
  trecaadresa^.broj:=30;
  trecaadresa^.rec:= ('sto');
  trecaadresa^.adresa:=nil;
  
  prvaadresa^.adresa:=drugaadresa;
  drugaadresa^.adresa:=trecaadresa;
  
  trenutnaadresa:=prvaadresa;
  ispisati(prvaadresa);
  
  dispose(prvaadresa);
  dispose(drugaadresa);
  dispose(trecaadresa);
   
end.
