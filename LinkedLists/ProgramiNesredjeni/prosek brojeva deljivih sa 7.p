program  prosekbrojevadeljivihsa7;
var
 k,z,a,i,n:longint;
 p:real;
begin
  write('unesi n ');
  read(n);
  z:=0;
  k:=0;
  for i:=1 to n do 
  begin
    write('unesi a ');
    read(a);
    if (a mod 7)=0 then 
    begin
      z:=z+a;
      k:=k+1;
    end;
  end;
  p:=z/k;
  write(' prosek brojeva deljivih sa 7 je: ',p);
end.