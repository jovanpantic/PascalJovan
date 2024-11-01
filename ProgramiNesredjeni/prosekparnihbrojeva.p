program prosekparnihbrojeva;

var
   n, i, b,z: longint;
  p: double;

begin
  read(n);
  b := 0;
  z := 0; 
  p := 0;
  for i:=1 to n do 
  begin
    if (i mod 2)=0 then 
    begin
    b:=b+i;
    z:=z+1;
    end;
  end;
  p:=b/z;
  write(p);
  
end.