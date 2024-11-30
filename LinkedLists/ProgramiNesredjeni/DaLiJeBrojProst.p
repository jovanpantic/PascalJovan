program DaLiJeBrojProst;

(*Program koji proverava da li je unet broj prost ili složen*)

var
n, i, t : integer;

begin

t:=0;

write('Unesi broj:');
read(n);

for i:=1 to n do
  if (n mod i)=0 then t:=t+1;

if t=2 then write('Broj ', n, ' je prost.')
else write('Broj ', n, ' je složen.');

end.