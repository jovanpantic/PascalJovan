program tri;
(*učitati niz a koji ima broj elemenata delivih sa tri,napraviti niz b koji će biti 1/3 veličine niza a tako što je prvi elemenat niza a jednak sumi prvih elemenatasvake trećine niza a    *)
var
  i,n,k: longint;
  a,b: array[1..1000000] of longint;

begin  
  k:=1;
  read(n);
  while (n mod 3)<>0 do 
  begin
    write('unesi ponovo ');
    read(n);
  end;
  for i := 1 to n do 
  begin 
    read(a[i]);
  end;
  writeln('');
  for i:=1 to round(n/3) do 
  begin 
  b[k]:=a[k]+a[round(1/3*n)+k]+a[round(2/3*n)+k];
  k:=k+1;
  end;
  for i:=1 to k-1 do writeln(b[i]);
end.