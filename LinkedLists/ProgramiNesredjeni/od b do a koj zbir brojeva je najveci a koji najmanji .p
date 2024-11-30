program Zabrojeveodadbodstampatinajvecizbircifara;

var
  a, b, x, y, z, max, min, i: integer;

begin
  
  readln(a);
  readln(b);

  
  z := 0;
  x := a;
  while x >= 1 do
  begin
    y := x mod 10;
    x := x div 10;
    z := z + y;
  end;
  max := z;
  min := z;

  
  for i := (a + 1) to b do
  begin
    z := 0;
    x := i;

   
    while x >= 1 do
    begin
      y := x mod 10;
      x := x div 10;
      z := z + y;
    end;

   
    if z > max then
      max := z;
    if z < min then
      min := z;

   
   
  end;

  
  writeln('najmanji ', min);
  writeln('najveći ', max);
end.
