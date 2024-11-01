program prviiposlednjimax;

var
  max, a, n, rb1, rb2, i: Longint;

begin
read(n);
read(a);
max:=a;
rb1:=1;
rb2:=1;
for i:=2 to n do 
begin
  read(a);
  if max<a then
  begin 
    max:=a;
    rb1:=i;
  end;
  if max<=a then 
  begin
    max:=a;
    rb2:=i;
  end;
end;

write(rb1,',',rb2)

  
end.