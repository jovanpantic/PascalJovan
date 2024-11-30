program project1;
type
  pslog=^slog;
  slog=record
     broj:integer;
     sled:pslog;
     end;
var poc, pom, tek, prvi :pslog;
  br, elem, vidi:integer;
procedure add_beg(var poc:pslog; br:integer);
var novi:pslog;
begin
   new(novi);
   novi^.broj:=br;
   novi^.sled:=poc;
   poc:=novi;
end;
procedure del_beg(var poc:pslog);
var brisi:pslog;
begin
     brisi:=poc;
     poc:=poc^.sled;
     dispose(brisi);
end;
procedure add_end(var poc:pslog; br:integer);
var tek, novi:pslog;
begin
     new(novi);
     novi^.broj:=br;
     novi^.sled:=nil;
     if poc=nil then poc:=novi
     else begin
          tek:=poc;
          while tek^.sled<>nil do tek:=tek^.sled;
          tek^.sled:=novi;
     end;
end;
procedure del_end(var poc:pslog);
var tek, brisi:pslog;
begin
     if poc^.sled=nil then begin
          dispose(poc);
          poc:=nil;
     end
     else
          if poc<>nil then begin
               tek:=poc;
               while (tek^.sled)^.sled<>nil do
                     tek:=tek^.sled;
               brisi:=tek^.sled;
               tek^.sled:=nil;
               dispose(brisi);
     end;
end;

procedure ispisi(poc:pslog);
var tek:pslog;
begin
     writeln('Lista:');
     tek:=poc;
     while tek <> nil do
           begin
                writeln(tek^.broj);
                tek:=tek^.sled;
           end;
end;
procedure napravi_stek(var poc:pslog);
begin
     poc:=nil;
end;
procedure push(var poc:pslog; broj:integer);
begin
     add_beg(poc, broj);
end;
function pop(var poc:pslog):integer;
begin
     pop:=poc^.broj;
     del_beg(poc);
end;
function peek(poc:pslog):integer;
begin
     peek:=poc^.broj;
end;
function count(poc:pslog):integer;
var broj:integer;
begin
     broj:=0;
     while poc <> nil do
           begin
                broj:=broj+1;
                poc:=poc^.sled;
           end;
     count:=broj;
end;
begin
     napravi_stek(prvi);
     readln(); 
end.

