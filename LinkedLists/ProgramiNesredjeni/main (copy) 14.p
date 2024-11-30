program link_liste;

type 
Pokazivac = ^slog;
slog = record
  broj:integer;
  adresa:pokazivac;
end;

var
prvaadresa,drugaadresa,trecaadresa,trenutnaadresa:Pokazivac;
procedure ispisati(trenutnadresa:pokazivac);
begin
  while trenutnaadresa <> nil do 
    begin
      writeln(trenutnaadresa^.broj);
      trenutnaadresa:=trenutnaadresa^.adresa;
    end;
end;
begin

  New(prvaadresa);
  prvaadresa^.broj:=10;
  prvaadresa^.adresa:=nil;
  trenutnaadresa:=prvaadresa;
  
  ispisati(prvaadresa);
  
  writeln('');
  
  New(drugaadresa);
  drugaadresa^.broj:=20;
  drugaadresa^.adresa:=nil;
  prvaadresa^.adresa:=drugaadresa;
  trenutnaadresa:=prvaadresa;
  
  ispisati(drugaadresa);

  writeln('');
  
  New(trecaadresa);
  trecaadresa^.broj:=30;
  trecaadresa^.adresa:=nil;
  drugaadresa^.adresa:=trecaadresa;
  trenutnaadresa:=prvaadresa;
  
  ispisati(trecaaadresa);
  
  writeln('');
  
  trenutnaadresa:=prvaadresa;
  drugaadresa^.adresa:=nil;
  
  ispisati(prvaadresa);


  writeln('');
   
end.
