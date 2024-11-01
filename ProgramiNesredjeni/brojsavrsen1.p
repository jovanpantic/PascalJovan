program  brojsavrsen;

var
  n,i,c: longint;
  





begin
  read(n);
  c:=0;
  for i:=1 to n do if (n mod i)=0 then c:=c+i;
  
  if n=(c-n) then write('savršen')
  else write('nije savršen');


end.