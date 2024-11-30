program prvogminiposlednjegmax;
var
n,a,min,max,rb1,rb2,i:integer;

begin
  read(n);
  read(a);
  min:=a;
  max:=a;
  rb1:=1;
  rb2:=1;
  for i:=2 to n do 
  begin
    read(a);
    if a>=max then
    begin
      max:=a;
      rb1:=i;
    end;
    if a<min then
    begin
      min:=a;
      rb2:=i;
    end;
  end;
write('pozicija najmanjeg je: ', rb1 ,' a pozicija najvećeg je: ', rb2);
writeln(' najmanji broj je: ', min ,' najveći broj je: ', max);
    
end.