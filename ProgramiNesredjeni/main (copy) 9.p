program tri;

(* Učitati niz a koji ima n elemenata.
Napraviti novi niz b tako što se uzimaju jedan po jedan član niza a, i svaki taj član se pomnoži sa prosekom svih članova niza a.
Ispisati nizove a i b. *)

var
  p:real;
  i,n,z,br: longint;
  a: array[1..1000000] of longint;
  b:array[1..10000]of real;
begin  
  read(n);
  z:=0;
  br:=0;
  
  for i:=1 to n do 
  begin
  read(a[i]);
  z:=z+a[i];
  br:=br+1;
  end;
  
  p:=(z/br);
  for i:= 1 to n do b[i]:=p*a[i];
  for i:= 1 to n do writeln(b[i]);
end.