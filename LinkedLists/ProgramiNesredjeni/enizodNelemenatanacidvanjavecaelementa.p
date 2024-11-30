program DatjenizodNelemenatanacidvanjavecaelementa;
var
n,i,a,b,v,m:integer;

begin
  read(n);
  read(a);
  read(b);
  if a>b then
  begin
    v:=a;
    m:=b;
  end
  else
  begin
    v:=b;
    m:=a;
  end;
  for i:=3 to n do 
  begin
    read(a);
    if a>m then
    begin
      if a>v then
      begin
        m:=v;
        v:=a;
      end
      else m:=a;
    end;
  end;
writeln(m,',',v);
    
end.