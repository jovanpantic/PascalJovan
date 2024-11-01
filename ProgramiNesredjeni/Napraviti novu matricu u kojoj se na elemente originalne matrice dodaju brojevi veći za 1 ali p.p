program Napraviti;

var
  v,k,n,m,br,i: longint;
  a,b: array[1..1000,1..1000] of longint;

begin

random;
br:=0;
read(m);
read(n);
for v := 1 to m do
begin
  for k := 1 to n do
  begin
  a[v,k] := round(Random * 98 + 10);
  b[v,k] := a[v,k];
   end;
end;
  for v := 1 to m do
  begin
    for k := 1 to n do
    begin
    br:=br+1;
    if (k mod 2) = 0 then i:=0-br
    else i:=br;
    b[v,k] := round(a[v,k]+i);
     end;
  end; 
  for v:= 1 to m do
  begin
    writeln('');
    for k:=1 to n do
    begin
      write(a[v,k]);
      write('  ');
    end;
  end;
    writeln('');
  for v:= 1 to m do
  begin
    writeln('');
    for k:=1 to n do
    begin
      write(b[v,k]);
      write('  ');
    end;
  end;
end.