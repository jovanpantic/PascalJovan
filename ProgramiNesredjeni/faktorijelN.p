program faktorijelN;

var
 c,i,n:longint;

begin
read(n);
c:=1;
for i:=1 to n do 
begin 
  c:=i*c;
end;
write(c);
  
  



end.