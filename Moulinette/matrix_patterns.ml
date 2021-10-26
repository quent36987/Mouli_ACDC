
(*TEST SUITE*)
let mat_cross2 a b c    = try mat_cross a b c  with e -> [] in
let v1 = 
 (  if (   mat_cross2 3 '*' '-'= [['-'; '*'; '-']; ['*'; '*'; '*']; ['-'; '*'; '-']]  ) then 1 else 0) +
 (  if ( mat_cross2 1 '*' '-' = []   ) then 1 else 0) +
 (  if ( mat_cross 5 '_' '-' = [['-'; '-'; '_'; '-'; '-']; ['-'; '-'; '_'; '-'; '-'];
 ['_'; '_'; '_'; '_'; '_']; ['-'; '-'; '_'; '-'; '-'];
 ['-'; '-'; '_'; '-'; '-']]   ) then 1 else 0) in
if v1 = 3 then
	print_string "\n\n[mat_cross]    Juste \n"
else begin
	print_string "\n\n[mat_cross]    Faux : "; 
	print_int v1 ;
	print_string "/3 \n" end;; 

let mat_cross_diag2 a b c    = try mat_cross_diag a b c  with e -> [] in
let v1 = 
 (  if (   mat_cross_diag2 3 '*' '-'= [['*'; '-'; '*']; ['-'; '*'; '-']; ['*'; '-'; '*']]  ) then 1 else 0) +
 (  if ( mat_cross_diag2 1 '*' '-' = []   ) then 1 else 0) +
 (  if ( mat_cross_diag2 5 '*' '-' = [['*'; '-'; '-'; '-'; '*']; ['-'; '*'; '-'; '*'; '-'];
 ['-'; '-'; '*'; '-'; '-']; ['-'; '*'; '-'; '*'; '-'];
 ['*'; '-'; '-'; '-'; '*']]   ) then 1 else 0) in
if v1 = 3 then
	print_string "[mat_cross_diag] Juste \n"
else begin
	print_string "[mat_cross_diag] Faux : "; 
	print_int v1 ;
	print_string "/3 \n" end;; 

let mat_square2 a b c    = try mat_square a b c  with e -> [] in
let v1 = 
 (  if (   mat_square2 2 '*' '.'= [['*'; '.']; ['.'; '*']]  ) then 1 else 0) +
 (  if ( mat_square2 1 '*' '.' = []   ) then 1 else 0) +
 (  if ( mat_square2 5 '*' '.' = [['*'; '.'; '*'; '.'; '*']; ['.'; '*'; '.'; '*'; '.'];
 ['*'; '.'; '*'; '.'; '*']; ['.'; '*'; '.'; '*'; '.'];
 ['*'; '.'; '*'; '.'; '*']]   ) then 1 else 0) in
if v1 = 3 then
	print_string "[mat_square]    Juste \n"
else begin
	print_string "[mat_square]    Faux : "; 
	print_int v1 ;
	print_string "/3 \n" end;; 


let mat_pattern_batch2 a b     = try mat_pattern_batch a b   with e -> [] in
let v1 = 
 (  if (   mat_pattern_batch2  [(1,2,'a');(4,1,'b')] (init_board (5,5) '*') =  [['*'; '*'; '*'; '*'; '*']; ['*'; '*'; 'a'; '*'; '*'];
 ['*'; '*'; '*'; '*'; '*']; ['*'; '*'; '*'; '*'; '*'];
 ['*'; 'b'; '*'; '*'; '*']] ) then 1 else 0)  in
if v1 = 1 then
	print_string "[mat_pattern_batch2]  Juste \n"
else begin
	print_string "[mat_pattern_batch2]  Faux : "; 
	print_int v1 ;
	print_string "/1 \n" end;; 


