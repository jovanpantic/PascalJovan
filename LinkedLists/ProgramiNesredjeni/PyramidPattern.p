program PyramidPattern;

var
  n, i, j: integer;

begin
  // User Input
  write('Enter the number of rows: ');
  readln(n);

  // Outer Loop
  for i := 1 to n  do
  begin
    // Print spaces
    for j := 2 to n - i  do
      write(' ');

    // Print asterisks
    for j := 0 to 2 * i do
      write('*');

    // Move to the next line
    writeln;
  end;
end.
    
