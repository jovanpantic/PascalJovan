program jedan;

var 
a:array [1..100] of longint;
j,i,n,k,p,br,pro:longint;

begin

k:=0;
read(n);
p:=0;
br:=0;

for i:=1 to n do 
begin
read(a[i]);
p:=p+1;
br:=br+a[i];
end;

i:=1;
j:=n;
pro:=round(br/p);

while i<>j do 
begin
if (a[i]+a[j]) < pro then i:=i+1;
if (a[i]+a[j]) > pro then j:=j-1;
if (a[i]+a[j]) = pro then 
begin;
k:=1;
break;
end;
end;
if k = 1 then writeln('Postoji broj jednak proseku');
writeln(pro);

end.