program tri;
(* Učitati niz a koji ima n elemenata. Napraviti novi niz b čiji će prvi elemenat da bude prvi elemenat niza a, a drugi elemenat poslednji elemenat niza a. Treći elemenat će da bude drugi elemenat niza a, a četvrti elemenat treba da bude pretposlednji elemenat niza a. I tako dalje, naizmenično uzimajući sa početka i sa kraja niza a. Ispisati nizove a i b. *)

var
  i,n,l,m: longint;
  a,b: array[1..1000000] of longint;
  
begin  
  read(n);
  l:=1;
  m:=0;
  for i:=1 to n do read(a[i]);
  
  for i:=1 to n do 
  begin
    if (i mod 2)=0 then 
    begin
      l:=l+1;
      b[i]:=a[n-l+2];
    end
      else 
    begin
      m:=m+1;
      b[i]:=a[m];
    end;
  end;

  writeln;
  for i:=1 to n do writeln(b[i]);
  
end.