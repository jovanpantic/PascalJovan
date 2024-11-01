program zbirsvihcifaraodadob;

var
  a,b,u,i,z,x,n: integer;

begin
  read(a);
  read(b);
  u:=0;
  for i:=a to b do
  begin
    z:=0;
    x:=i;
    while x>0 do 
    begin
      n:=x mod 10;
      z:=z+n;
      x:=x div 10;
    end;
    u:=u+z;
  end;
  write(u);

  
  
end.
