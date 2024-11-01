program kolikoimamin;

var
  m, v, a, n, b, i: Longint;

begin
  read(n);
  read(a);
  read(b);

  if a > b then 
    begin 
      m := b;
      v := a;
    end
  else 
    begin
      m := a;
      v := b;
    end;

  for i := 3 to n do 
    begin
      read(a);
      if a < v then
      begin  
        if a > m then
          begin
            v := m;
            m := a;
          end
        else v := a;
      end;
    end;

write(m, v);
  
end.