program rombodzvrzdica;

var
  n, i, j,k: integer;

begin
 read(n);
 for i:=1 to n do
 begin
  for j:=2 to (2*n)-i do write(' ');
  for k:=1 to n do write('*');
  writeln('');
 end;
  
  end.
    
