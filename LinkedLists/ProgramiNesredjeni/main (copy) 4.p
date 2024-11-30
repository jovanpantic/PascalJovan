program tri;
var
  i,n,k,l,nov: longint;
  a: array[1..1000000] of longint;
begin  
  read(n);
  k:=0;
  l:=1;
  nov:=n;
  while k<>2 do 
  begin
    if (nov div 10)<> 0 then
    begin 
      nov:= nov mod 10;
      l:=l+1;
    end
    else   
    begin
      k:=l;
      if k<>2 then 
      begin
        l:=1;
        writeln('unesi dvocifren!!!');
        read(n);
        nov:=n;
      end;
    end;
  end;
  a[1]:=(n mod 10);
  a[2]:=(n div 10);
  for i:= 3 to n do a[i]:=a[i-1]+a[i-2];
  for i:=1 to n do writeln(a[i]);
end.