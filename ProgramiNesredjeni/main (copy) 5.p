program tri;
(* Učitati niz a koji ima n elemenata. Napraviti novi niz b tako što se uzme jedan član niza a, i taj član se ponovi a puta u nizu b. Dakle, ako je član niza a bio 3, onda treba upisati broj 3 u niz b 3 puta. Ispisati nizove a i b. *)

var
  i,n,k,l,j: longint;
  a,b: array[1..1000000] of longint;
  
begin  
  read(n);
  l:=0;
  
 for i:=1 to n do 
 begin
   k:=0;
   read(a[i]);
   k:=k+a[i];
   for j:=1 to k do
   begin
     l:=l+1;
     b[l]:=a[i];
   end;
 end;
 for i:=1 to l do writeln(b[i]);
end.