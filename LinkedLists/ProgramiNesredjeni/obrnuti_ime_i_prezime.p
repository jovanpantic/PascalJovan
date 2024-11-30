program Napraviti;

var
  n,i,o: longint;
  s,l,m: string;

begin
read(s);
for i:=1 to length(s) do
begin
if s[i] = ' ' then begin
n:=i; 
l:=copy(s,1,n);
break;
end;
end;
m:=s[n+1];
for i:= n+2 to length(s) do m:=concat(m,s[i]);
s:=concat(m,' ',l);
writeln(s);
end.