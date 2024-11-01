program cetvorocifrenibrojevikojiimajumanjeod6delioca;

var
  i,j,x,b:longint;

begin
  for i:=1000 to 9999 do
  begin
     b:=0;
     x:=i;
     for j:=1 to x do 
     begin
        if (x mod j)=0 then
        begin
        b:=b+1;
        end;
      end;
    if b<6 then write(x);
  end;

end.
