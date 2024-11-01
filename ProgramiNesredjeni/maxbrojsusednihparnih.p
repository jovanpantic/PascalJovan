program maxbrojsusednihparnih;


var
  n,a,max,t,i: longint;
  
begin
  read(n);
  t:=0;
  max:=0;
  for i:=1 to n do 
  begin
    read(a);
    if (a mod 2)=0 then
    begin
      t:=t+1;
      if t>=max then max:=t;
    end
    else t:=0;
  end;
  
  write(max);


end.