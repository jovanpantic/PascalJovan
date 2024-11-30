program AddToEndOfListWithProcedures;

type
  PNode = ^TNode;
  TNode = record
    Data: Integer;
    Next: PNode;
  end;

var
  Head, Tail: PNode;

{ Procedura za kreiranje novog čvora }
procedure CreateNode(var NewNode: PNode; Value: Integer);
begin
  NewNode := New(PNode);
  NewNode^.Data := Value;
  NewNode^.Next := nil;
end;

{ Procedura za dodavanje čvora na kraj liste }
procedure AddToEnd(var Head, Tail: PNode; Value: Integer);
var
  NewNode: PNode;
begin
  CreateNode(NewNode, Value);

  if Head = nil then
  begin
    { Ako je lista prazna, novi čvor postaje i glava i rep liste }
    Head := NewNode;
    Tail := NewNode;
  end
  else
  begin
    { Ako lista nije prazna, dodajemo novi čvor na kraj }
    Tail^.Next := NewNode;
    Tail := NewNode;
  end;
end;

{ Procedura za ispis liste }
procedure PrintList(Head: PNode);
begin
  while Head <> nil do
  begin
    WriteLn(Head^.Data);
    Head := Head^.Next;
  end;
end;

begin
  { Inicijalizacija prazne liste }
  Head := nil;
  Tail := nil;

  { Dodajemo broj 20 na kraj liste }
  AddToEnd(Head, Tail, 20);

  { Dodajemo još jedan broj za testiranje, npr. 30 }
  AddToEnd(Head, Tail, 30);

  { Ispisujemo listu }
  PrintList(Head);
end.
