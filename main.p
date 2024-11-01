program dva;

type
  cvor=record
  broj:integer;
  pokazivac:^cvor;
end;

var
  head,tail,tek,head1,tail1,tek1:^cvor;
  n,b,i,k:integer;

begin
  k:=0;
  write('Unesi broj čvorova: ');
  read(n);

  write('Unesi prvi čvor: ');
  read(b);
  New(tek);
  tek^.broj:=b;
  head:=tek;
  tail:=tek;
  
  For i:= 1 to (n-1) do
  begin
    New(tek);
    write('Unesi čvor: ');
    read(b);
    tek^.broj:=b;
    tail^.pokazivac:=tek;
    tail:=tek;
  end;
  tek:=head;
  
  while tek <> nil do
  begin
    if (tek^.broj mod 2) = 0 then 
    begin
        k:=k+1;
        if k=1 then
          begin
          New(tek1);
          tek1^.broj:=tek^.broj;
          head1:=tek1;
          tail1:=tek1;
          end
        else
        begin
          New(tek1);
          tek1^.broj:=tek^.broj;
          tail1^.pokazivac:=tek1;
          tail1:=tek1;
        end;
     end;
    tek:=tek^.pokazivac;
  end;
  
  tek:=head;
  write('Originalna linked lista: ');
  while tek <> nil do 
  begin
    write(' ');
    write(tek^.broj);
    tek:=tek^.pokazivac;
  end;

  writeln();
  
  tek1:=head1;
  write('Nova linked lista: ');
  while tek1 <> nil do 
  begin
    write(' ');
    write(tek1^.broj);
    tek1:=tek1^.pokazivac;
  end;
  
end.

