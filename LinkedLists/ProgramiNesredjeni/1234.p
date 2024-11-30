program jedan;
var
  i,p,po,pu,j,m,n2: longint;
  s,n: string;

begin
  readln(s);
  for i:=1 to length(s) do 
  begin
  if s[i] = '+' then 
  begin
  delete(s,i,i+1);
  insert('plus',s,i+1);
  end;
  if s[i] = '-' then 
  begin
   delete(s,i,i+1);
  insert('minus',s,i+1);
  end;
  if s[i] = '*' then 
  begin
  delete(s,i,i+1);
  insert('puta',s,i+1);
  end;
  if s[i] = '/' then 
  begin
  delete(s,i,i+1);
  insert('podeljeno',s,i+1);
  end;
  if s[i] = '=' then 
  begin
   delete(s,i,i+1);
  insert('je jednako',s,i+1);
  end;
  end;
  writeln(s);
end.
