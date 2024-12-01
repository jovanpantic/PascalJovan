program prvi;
var
  a: array[1..100] of longint;
  i, j, n, temp: longint;

begin
  read(n);
  
  for i := 1 to n do
    read(a[i]);
  
  i := 1;

  for j := 1 to n do
  begin
    if a[j] mod 4 = 0 then
    begin
      temp := a[i];
      a[i] := a[j];
      a[j] := temp;
      i := i + 1; 
    end;
  end;

  for i := 1 to n do
    writeln(a[i]);
end.
