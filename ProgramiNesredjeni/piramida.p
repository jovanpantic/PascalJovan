program PyramidPattern;

var
  n, i, j: integer;

begin
  // User Input
  write('Enter the number of rows: ');
  readln(n);

  // Outer Loop
  for i := 0 to n - 1 do
  begin
    // Print spaces
    for j := 0 to n - i - 2 do
      write(' ');

    // Print asterisks
    for j := 0 to 2 * i do
      write('*');

    // Move to the next line
    writeln;
  end;
end.
