program tri;
(* Učitati niz a koji ima n elemenata. Napraviti novi niz b koji će da bude obrnut. Ispisati nizove a i b. *)

var
  i,n: longint;
  a,b: array[1..1000000] of longint;
  
begin  
  read(n);
  for i:=1 to n do read(a[i]);
  for i:= 1 to n do b[i]:=a[1+n-i];
  for i:= 1 to n do writeln(b[i]);
end.