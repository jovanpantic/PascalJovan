program nizdecimalnihbrojeva;

var
  n,i: longint;
  a,d:double;
  
  
  

  
begin
  read(n);
  read(d);
  read(a);
  if d<a then
  begin
    write(a);
    write(d);
  end
  else write(a);
  for i:=2 to n do 
  begin
    read(a);
    if d<a then
    begin
      write(a);
      write(d);
    end
    else write(a);
  end;
    
  
end.