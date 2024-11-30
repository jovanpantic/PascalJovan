program tri;
(*učitati niz a koji ima broj elemenata delivih sa tri,napraviti niz b koji će biti 1/3 veličine niza a tako što je prvi elemenat niza a jednak sumi prvih elemenatasvake trećine niza a    *)
var
  j,i,n,l,k: longint;
  a,b: array[1..1000000] of longint;

begin  
  read(n);
  k:=n
  for i:=1 to n do read(a[i]);
  writeln('');
  for i:=1 to k do 
  begin
    l:=0;
    for j:=1 to n do if a[i]=a[j] then 
    begin
      l:=l+1;
    end;
    writeln(a[i],'-',l);
    for c:= 1 to n do 
    begin
    if a[c]=a[i]
    
    
    end;
  
  
end.