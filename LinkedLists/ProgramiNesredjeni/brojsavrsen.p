program  brojsavrsen;

var
  n,i,c,p: longint;






begin
  read(n);
  c:=0;
  for i:=1 to n do if (n mod i)=0 then c:=c+i;

  p:=(n-c)+n;
  if p=0 then write('savršen')
  else write('nije savršen');


end.