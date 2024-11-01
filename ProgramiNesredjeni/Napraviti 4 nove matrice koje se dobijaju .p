program Napraviti;

var
  v,k,n,m,iz1,iz2: longint;
  a,b,c,d,e: array[1..1000,1..1000] of longint;

begin

random;
read(m);
read(n);
for v := 1 to m do
begin
  for k := 1 to n do
  begin
  a[v,k] := round(Random * 98 + 10);
   end;
end;
'if (m mod 2)<>0 then  iz1:=m-((m-1)mod 2);'
'if (n mod 2)<>0 then iz2:=n-((n-1)mod 2);'
  for v := 1 to round(m/2) do
  begin
    for k := 1 to round(n/2) do
    begin
    b[v,k] := a[v,k];
     end;
  end; 
  for v := round(m/2+1) to m do
  begin
    for k := 1 to round(n/2) do
    begin
    d[v,k] := a[v,k];
     end;
  end;
  for v := round(m/2+1) to m do
  begin
    for k := round(n/2+1) to n do
    begin
    c[v,k] := a[v,k];
     end;
  end;
  for v := 1 to round(m/2) do
  begin
    for k := round(n/2+1) to n do
    begin
    e[v,k] := a[v,k];
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
  for v:= 1 to m do
  begin
    writeln('');
    for k:=1 to n do
    begin
      write(c[v,k]);
      write('  ');
    end;
  end;
    writeln('');
  for v:= 1 to m do
  begin
    writeln('');
    for k:=1 to n do
    begin
      write(d[v,k]);
      write('  ');
    end;
  end;
  for v:= 1 to m do
  begin
    writeln('');
    for k:=1 to n do
    begin
      write(e[v,k]);
      write('  ');
    end;
  end;
end.
