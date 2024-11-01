program  brojsavrsenv2;

var
  j,i,c: longint;

begin

  writeln;
  writeln('Radim >>>');
  writeln;
  
  for j:=1 to 50000000 do
  begin
    c:=1;
    write('.');
    for i:= 2 to (j-1) do if (j mod i)=0 then c:=c+i;
    if c=j then write('Savršen: ', j);
  end;

  writeln('Završio.');
  
end.
