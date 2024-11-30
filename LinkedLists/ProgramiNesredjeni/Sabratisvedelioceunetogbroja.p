program Sabratisvedelioceunetogbroja;

var
  n,i,z: integer;

begin
  read(n);
  z:=0;
  for i:=1 to n do if (n mod i)=0 then z:=z+i;
  write(z);

  
  
end.
