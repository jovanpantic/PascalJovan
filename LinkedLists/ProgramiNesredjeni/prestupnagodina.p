program prestupnagodina;

var
  n:longint;
  

begin
 read(n);
 if (n mod 4)=0 then
 begin
    if (n mod 100)<>0 then
    begin
      write('da');
    end
    else
    begin
      if (n mod 400)=0 then write('da')
      else write('ne');
    end;
  end
else write('ne');
end.
    
