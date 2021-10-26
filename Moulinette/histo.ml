
(*TEST SUITE*)
let add_occ2 i hist   = try add_occ i hist  with e -> [] in
let v1 = 
 (  if (   add_occ2 (-1) [0; 0; 2; 5; 0; 1; 1; 0] = []  ) then 1 else 0) +
 (  if (  add_occ2 10 [0; 0; 2; 5; 0; 1; 1; 0] = []   ) then 1 else 0) +
 (  if (   add_occ2 0 [0; 0; 2; 5; 0; 1; 1; 0] = [1; 0; 2; 5; 0; 1; 1; 0]  ) then 1 else 0) +
 (  if (   add_occ2 5 [0; 0; 2; 5; 0; 1; 1; 0] = [0; 0; 2; 5; 0; 2; 1; 0]  ) then 1 else 0) +
 (  if (   add_occ2 2 [] = []  ) then 1 else 0) in
if v1 = 5 then
	print_string "\n\n[init_board]   Juste \n"
else begin
	print_string "\n\n[init_board]   Faux : "; 
	print_int v1 ;
	print_string "/5 \n" end;;



let get_hist2 hist   = try get_hist hist  with e -> [] in
let v1 = 
 (  if (   get_hist2 [1; 5; 0; 9; 4; 4; 3] = [1; 1; 0; 1; 2; 1; 0; 0; 0; 1]  ) then 1 else 0) +
 (  if (  get_hist2 [10; 5; 8; 8; 1; 0] = [1; 1; 0; 0; 0; 1; 0; 0; 2; 0; 1]   ) then 1 else 0)  in
if v1 = 2 then
	print_string "[get_hist]     Juste \n"
else begin
	print_string "[get_hist]     Faux : "; 
	print_int v1 ;
	print_string "/2 \n" end;; 

let get_sorted2 hist   = try get_sorted hist  with e -> [] in
let v1 = 
 (  if (   get_sorted2 [1; 1; 0; 1; 2; 1; 0; 0; 0; 1] = [0; 1; 3; 4; 4; 5; 9]  ) then 1 else 0) +
 (  if (  get_sorted2 [1; 1; 0; 0; 0; 1; 0; 0; 2; 0; 1] = [0; 1; 5; 8; 8; 10]   ) then 1 else 0)  in
if v1 = 2 then
	print_string "[get_sorted]   Juste \n"
else begin
	print_string "[get_sorted]   Faux : "; 
	print_int v1 ;
	print_string "/2 \n" end;; 


let hist_sort2 hist   = try hist_sort hist  with e -> [] in
let v1 = 
 (  if (   hist_sort2 [1; 5; 0; 9; 4; 4; 3] = [0; 1; 3; 4; 4; 5; 9]  ) then 1 else 0) +
 (  if (  hist_sort2 [10; 5; 8; 8; 1; 0] = [0; 1; 5; 8; 8; 10]   ) then 1 else 0)  in
if v1 = 2 then
	print_string "[hist_sort]    Juste \n"
else begin
	print_string "[hist_sort]    Faux : "; 
	print_int v1 ;
	print_string "/2 \n" end;; 

