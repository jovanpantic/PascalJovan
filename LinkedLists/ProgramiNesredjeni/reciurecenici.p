program Napraviti;

var
  n,i,o: longint;
  s,l: string;

begin
n:=0;
read(s);
l:=s[1];
o:=length(s);
for i:=2 to o do if s[i-1]<>s[i] then l:=concat(l,s[i]);
writeln(l);
for i:=1 to length(l) do 
begin
if l[i] = ' ' then 
begin 
n:=n+1;
end;
end;
writeln(n+1);
end.