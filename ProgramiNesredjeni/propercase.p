program Napraviti;

var
  i: longint;
  s: string;

begin
read(s);
s:=lowercase(s);
s[1]:=upcase(s[1]);
for i:= 2 to length(s) do if s[i]=' ' then s[i+1]:=upcase(s[i+1]);
writeln(s);
end.