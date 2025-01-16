```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in My_Arr'Range loop
      Put_Line(My_Arr(I)'Image); 
   end loop;
end Example;
```
Uncommon error: Using a composite type's range directly in a loop without proper iteration.  `My_Arr'Range` yields the index range (1..10), not the values.  Iterating directly through the values requires a different approach, such as using `My_Arr'First..My_Arr'Last` and explicit array access.