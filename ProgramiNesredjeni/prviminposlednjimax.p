program prviminposlednjimax;

var
  min,max, a, n,rb2 ,rb1, i: Longint;

begin
read(n);
read(a);
max:=a;
min:=a;
rb1:=1;
rb2:=1;
for i:=2 to n do 
begin
  read(a);
  if a<min then
  begin 
  min:=0;
  min:=a;
  rb1:=i;
  end;
  if a>=max then 
  begin
    max:=0;
    max:=a;
    rb2:=i;
  end;
end;

write(rb1,',',rb2)

  
end.