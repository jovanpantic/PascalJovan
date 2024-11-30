program Napraviti;

var
  n,i,n2: longint;
  s, l: string;

begin
  readln(s);  
  n := pos(' ', s);  
  if n > 0 then  
    delete(s, 1, n);  
  
  for i:= length(s) downto 1 do
  begin
    if s[i] = ' ' then 
    begin
      n2 := i;
      break;
    end;
  end;
  delete(s,n2,length(s));
  writeln(s);
end.