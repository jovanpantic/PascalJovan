program iz_niza_n_izbaciti_element_sa_pozicije_k;

(* Program koji proverava koliko puta se u nekom array-u menja znak *)

var
  k,n,i: longint;
  a: array[1..1000000] of longint;

begin
 read(n);
 read(k);
 for i:=1 to n do 
 begin
  read(a[i]);
  if i=k then a[i]:=0;
 end;
 for i:=1 to n do 
 begin
  if a[i]<>0 then writeln(a[i]);
 end;
end.
    
