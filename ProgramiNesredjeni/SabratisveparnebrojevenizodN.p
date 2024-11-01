program SabratisveparnebrojevenizodN;
var
n,a,s,i:integer;

begin
  read(n);
  s:=0;
  for i:=1 to n do
  begin
    read(a);
    if (a mod 2)=0 then s:=s+a;
  end;
write(s);
    
end.