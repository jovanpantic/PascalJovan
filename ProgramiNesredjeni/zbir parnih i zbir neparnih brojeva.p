program zbirparnihizbirneparnihbrojeva;

var
 zp,zn,a,i,n:longint;

begin
  write('unesi n ');
  read(n);
  zp:=0;
  zn:=0;
  for i:=1 to n do 
  begin
    write('unesi a ');
    read(a);
    if (a mod 2)=0 then zp:=zp+a
    else zn:=zn+a;
  end;


write('zbir parnih: ',zp,' zbir neparnih: ',zn);

end.