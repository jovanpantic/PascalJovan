program najvecinizili1ili0;
var
  n,a,max,i,rbmax,p,b,br: longint;
begin
  read(n);
  read(a);
  br:=a;
  rbmax:=1;
  max:=1;
  b:=1;
  for i:=2 to n do
  begin
    p:=a;
    read(a);
    if a=p then
    begin
      br:=a;
      b:=b+1;
      if b>=max then
      begin
        br:=a;
        max:=b;
        rbmax := i - max + 1;
      end
    end

    else 
    begin
      b:=1;
    end;
  end;
   write(rbmax,',',max,',');
   write(br);
end.