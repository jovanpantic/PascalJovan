program jedan;
var s:string[50];
var k:char;
j,i,n:longint;

begin
  readln(s);
  n:=length(s);
  i:=1;
  j:=i+1;
  while j<=n do
  begin
    while ((s[j]<> '(') and (s[j] <> ')')) and (j<=n) do j:=j+1;
    while ((s[i] = '(') or (s[i]  = ')')) and (i<=j) do i:=i+1;
    if j<=n then
      begin
        k:=s[j];
        s[j]:=s[i];
        s[i]:=k;
      end;
  end;
  
  J:=i+1;
  
  while j<=n do
  begin
  while ((s[j]<> '*') and (s[j] <> '/') and (s[j] <> '+') and (s[j] <> '-')) and (j<=n) do j:=j+1;
  while ((s[i] = '*') or (s[i]  = '/') or (s[i] = '+') or (s[i] = '-'))  and (i<=j) do i:=i+1;
  if j<=n then
  begin
    k:=s[j];
    s[j]:=s[i];
    s[i]:=k;
  end;
  end;
  writeln(s);
end.