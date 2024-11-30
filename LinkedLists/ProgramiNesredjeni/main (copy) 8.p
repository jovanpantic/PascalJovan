program tri;

(*Učitati niz a koji ima n elemenata.
Napraviti novi niz b tako što se uzimaju jedan po jedan član niza a, i svaki taj član se oduzme od sume svih članova niza a.
Ispisati nizove a i b. *)

var
  i,n,s: longint;
  a,b: array[1..1000000] of longint;
  
begin  
  read(n);
  s:=0;
  
  for i:=1 to n do 
  begin
  read(a[i]);
  s:=a[i]+s;
  end;
  
  for i:= 1 to n do b[i]:=s-a[i];
  for i:= 1 to n do writeln(b[i]);
end.