program sabiranje_razlomaka;

Type
  sab= Record 
      br: integer;
      im: integer;
end;

var
raz1,raz2,zb:sab;

begin
read(raz1.br,raz1.im,raz2.br,raz2.im);

if raz1.im <> raz2.im then
begin
zb.im:=raz1.im*raz2.im;
zb.br:=raz1.br*raz2.im + raz2.br*raz1.im;
end
else 
begin
zb.br:=raz1.br+raz2.br;
zb.im:=raz1.im;
end;
writeln;
write(zb.br);
writeln;
write('-');
writeln;
write(zb.im);
end.
