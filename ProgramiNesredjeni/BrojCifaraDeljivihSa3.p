program BrojCifaraDeljivihSa3;

(* Program ispisuje broj cifara datog broja koje su deljive sa 3 (bez ostatka) *)

var
  br,c,b : Longint;

begin
  
br:= 0;

write('Unesi broj: ');
read(b);

write('Broj cifara broja ', b);


while b>0 do
  begin
    c:= b mod 10;  
    if c mod 3 = 0 then
      begin
      br:=br+1;  
      end;
    b:=b div 10;
  end;

write(' deljivih sa 3 je ', br);

end.