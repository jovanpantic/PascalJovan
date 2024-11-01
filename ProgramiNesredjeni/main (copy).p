program da_li_je_niz_palindrom;

var
  n,i,j: longint;
  a: array[1..1000000] of longint;
  
begin
ne:=1;

read(n);
for i:=1 to n do read(a[i]);
for i:=1 to n do
  begin
  if a[i] = a[n-i+1] then ne:=1
  else ne:=0;
  end;
if ne=1 then write('palindrom je ')
else write('nije palindrom');
  
end.