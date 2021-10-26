
(*Test Suite*)
let v1 = length [0; 1; 0; 1; 0; 0; 0; 0; 1; 1] = 10 && length [] = 0 in
if v1 then
print_string "[length]      Juste\n"
else
print_string "[length]	 faux\n";;


let nth2 p l  = try nth p l with l -> 0 in
let v1 = (if (nth2 5 [1; 2; 3; 4; 5] = 0) then 1 else 0) +
 (if (nth 0 ['a'; 'b'; 'c'] = 'a') then 1 else 0) +
 (if (nth2 (-5) [] = 0) then 1 else 0) in
if v1 = 3 then
	print_string "[nth]         Juste \n"
else begin
	print_string "[nth]   Faux : "; 
	print_int v1 ;
	print_string "/3 \n" end;;


let v1 = (if (is_pos []) then 1 else 0) +
 (if (is_pos [5; 8; 8; 1; 0; 10]) then 1 else 0) +
 (if not( is_pos [5; 8; 8; 1; 0; -1]) then 1 else 0) +
 (if not( is_pos [5; 8; -2; 1; 0; -1]) then 1 else 0) in
if v1 = 4 then
	print_string "[is_pos]      Juste \n"
else begin
	print_string "[is_pos]   Faux : "; 
	print_int v1 ;
	print_string "/4 \n" end;;


let get_max2 l  = try get_max l with l -> 0 in
let v1 = (if (get_max2 [] = 0) then 1 else 0) +
 (if (get_max2 [5; 8; 8; 1; 0; 10] = 10) then 1 else 0) +
 (if ( get_max2 [55; 8; 8; 1; 0; -1] = 55) then 1 else 0) +
 (if ( get_max2 [-5; -8; -2; -1; -12; -1] = -1) then 1 else 0) in
if v1 = 4 then
	print_string "[get_max]     Juste \n"
else begin
	print_string "[get_max]    Faux : "; 
	print_int v1 ;
	print_string "/4 \n" end;;


let init_list2 n x  = try init_list n x with e -> [] in
let v1 = (if (init_list2 5 0 = [0; 0; 0; 0; 0]) then 1 else 0) +
 (if (init_list2 0 'a' = [] ) then 1 else 0) +
 (if ( init_list2 (-5) 1.5 = []) then 1 else 0) +
 (if ( init_list 2 'k' = ['k';'k']) then 1 else 0) +
 (if ( init_list 2 "ka" = ["ka";"ka"]) then 1 else 0)  in
if v1 = 5 then
	print_string "[init_list]   Juste \n"
else begin
	print_string "[init_list] Faux : "; 
	print_int v1 ;
	print_string "/5 \n" end;;

let v1 = 
 (if ( append [1; 2; 3] [4; 5]  = [1;2;3;4;5] ) then 1 else 0) +
 (if ( append [ 'a'; 'b'; 'c'] []  =  [ 'a'; 'b'; 'c']  ) then 1 else 0)  in
if v1 = 2 then
	print_string "[append]      Juste \n"
else begin
	print_string "[append]    Faux : "; 
	print_int v1 ;
	print_string "/5 \n" end;;

let put_list2 n x l  = try put_list n x l with e -> [] in
let v1 = 
 (  if (   put_list2 'x' 3 ['-'; '-'; '-'; '-'; '-'; '-'] = ['-'; '-'; '-'; 'x'; '-'; '-']  ) then 1 else 0) +
 (  if (  put_list2 0 10 [1; 1; 1; 1] = [1; 1; 1; 1]   ) then 1 else 0) +
 (  if (   put_list2 0 (-10) [1; 1; 1; 1] = []  ) then 1 else 0)  in
if v1 = 3 then
	print_string "[put_list]    Juste \n"
else begin
	print_string "[put_list]    Faux : "; 
	print_int v1 ;
	print_string "/3 \n" end;;



let init_board2 (nblines, nbcolumns) x   = try init_board (nblines, nbcolumns) x  with e -> [] in
let v1 = 
 (  if (   init_board (1,2) "KAKA" = [["KAKA"; "KAKA"]]  ) then 1 else 0) +
 (  if (  init_board (2,1)  007 = [[7]; [7]]   ) then 1 else 0) +
 (  if (   init_board2 (2,0)  007 = []  ) then 1 else 0)  in
if v1 = 3 then
	print_string "[init_board]   Juste \n"
else begin
	print_string "[init_board]   Faux : "; 
	print_int v1 ;
	print_string "/3 \n" end;;   


let v1 = 
 (  if (   is_board []  ) then 1 else 0) +
 (  if (  is_board [['*';'-';'*'];['-';'-';'*']] ) then 1 else 0) +
 (  if not(  is_board [['*';'-';'*'];['*';'*']]  ) then 1 else 0) +
 (  if not(  is_board [['*';'*';'-'];['*';'-'];['*';'*']] ) then 1 else 0) +
 (  if not(  is_board [['*';'*'];['-';'-'];['*';'*';'*']]  ) then 1 else 0) in
if v1 = 5 then
	print_string "[is_board]    Juste \n"
else begin
	print_string "[is_board]   Faux : "; 
	print_int v1 ;
	print_string "/5 \n" end;;


let v1 =  let get_cell2 (x, y) board   = try get_cell (x, y) board  with e -> 0 in
 (  if (   get_cell2 (1,0) [[8;9];[5;7];[1;5]] = 5 ) then 1 else 0) +
 (  if (  get_cell2 (1,3) [[8;9];[5;7];[1;5]] = 0) then 1 else 0) +
 (  if (  get_cell2 (0,0) [[8;9];[5;7];[1;5]] = 8 ) then 1 else 0)  in
if v1 = 3 then
	print_string "[get_cell]    Juste \n"
else begin
	print_string "[get_cell]    Faux : "; 
	print_int v1 ;
	print_string "/3 \n" end;;



let v1 = let put_cell2 a (x, y) board   = try put_cell a (x, y) board  with e -> [] in
 (  if (   put_cell2 0 (0,0)  [[8;9];[5;7];[1;5]] = [[0; 9]; [5; 7]; [1; 5]] ) then 1 else 0) +
 (  if (  put_cell2 45(2,1)  [[8;9];[5;7];[1;5]] = [[8; 9]; [5; 7]; [1; 45]]) then 1 else 0) +
 (  if (  put_cell2 96 (5,0) [[8;9];[5;7];[1;5]] = [[8; 9]; [5; 7]; [1; 5]] ) then 1 else 0)  in
if v1 = 3 then
	print_string "[put_cell]    Juste \n"
else begin
	print_string "[put_cell]    Faux : "; 
	print_int v1 ;
	print_string "/3 \n" end;;

