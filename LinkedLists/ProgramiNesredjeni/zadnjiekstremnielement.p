program zadnjiekstremnielement;

var
  min,max, a, n,rb, i: Longint;

begin
read(n);
read(a);
max:=a;
min:=a;
rb:=1;
for i:=2 to n do 
begin
  read(a);
  if a<min then
  begin 
  min:=0;
  min:=a;
  rb:=i;
  end;
  if a>=max then 
  begin
    max:=0;
    max:=a;
    rb:=i;
  end;
end;

write(rb)

  
end.