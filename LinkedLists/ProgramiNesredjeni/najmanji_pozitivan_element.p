program najmanji_pozitivan_element;

var
  t, a, n, i: Longint;

begin
  read(n);

  t := -1;

  for i := 1 to n do
  begin
    read(a);
    if (a >= 0) and ((t=-1) or (a<t)) then
      t := a;
  end;

if t = -1 then write('0')
else write(t);

end.