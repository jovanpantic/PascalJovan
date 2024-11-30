program Napraviti;

var
  n,i: longint;
  s,l: string;

begin
read(s);
l:=s[1];
n:=length(s);
for i:=2 to n do if s[i-1]<>s[i] then l:=concat(l,s[i]);
writeln(l);
end.
