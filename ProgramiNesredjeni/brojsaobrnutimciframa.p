program brojsaobrnutimciframa;

var
  n,c: longint;
  

begin
  read(n);
  c:= n mod 10;
  n:=n div 10;
  write(c);
  while n>=1 do
  begin
    c:=n mod 10;
    n:=n div 10;
    write(c);
  end;
end.