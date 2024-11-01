program dva;

var
  n,i: longint;
  a,b: array[1..1000000] of longint;
  
begin

  read(n);
  for i:= 1 to n do read(a[i]);
  writeln('');
  
  for i:=1 to n do 
  begin
  if (i mod 4)=0 then 
    begin
    b[i]:=a[i] mod 10;
    writeln(b[i]);
    end;
  end;

end.