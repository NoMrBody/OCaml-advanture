(* find the sum of list elements *)
let sum_list lst = 
  List.fold_left (fun acc x -> acc + x) 0 lst

(* compute the product of all numbers in list *)
let prod_list lst = 
  List.fold_left (fun acc x -> acc * x) 0 lst

(* find the max element in the list *)
let max_list lst = 
  List.fold_left (fun min_int x -> if x > min_int then x else min_int) min_int lst

(* reverse the list *)
let reverse_list lst = 
  List.fold_left (fun acc x -> x :: acc) [] lst

(* find if element is in the list *)
let find lst el = 
  List.fold_left (fun acc x -> x=el || acc) false lst 

(* concatenate all strings in list *)
let concat lst = 
  List.fold_left (fun acc x -> acc^x) "" lst

(* convert all list elements(integer) into string *)
let convert_to_st lst = 
  List.fold_left (fun acc x -> acc ^ string_of_int x ) "" lst

(* filter list *)
let filter predicate lst = 
  List.fold_left (fun acc x -> if predicate x then acc @ [x] else acc) [] lst
  
(* function that converts list into set *)
let to_set lst = 
  let rec present lst el = match lst with
  | [] -> false
  | h::t -> h = el || present t el
in List.fold_left (fun acc x -> if present acc x then acc else x::acc) [] lst
(* note that the output will be in reversed order, 
   because we are adding elements in the begining of the list *)
(* if you don't want so, you can write acc@[x] after the 'else' *)
