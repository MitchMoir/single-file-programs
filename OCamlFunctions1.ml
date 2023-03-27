(* An assignment writing some simple functions in OCaml.
	Function solutions written by Mitch Moir.
*)


(* 1. A function that returns the boolean complement of its argument.  
      Example: opp (5 = 6);; returns true *)	  
let opposite : bool -> bool = fun x -> if x = true then false else true;;



(* 2. A function divisibleByFive that returns true if a number is divisible by 5 without a remainder.
      Example: divisibleByFive 10;; returns true *)
let divisibleByFive : int -> bool = fun x -> if x mod 5 = 0 then true else false;;



(* 3. A function middle that returns the second greatest of three arguments.
      Example: middle 4 5 6;; returns 5 *)	  
let middle : 'a -> 'a -> 'a -> 'a = fun x y z -> if ((x>y && x<z)  || (x<y && x>z)) then x
  else if ((y>x && y<z) || (y<x && y>z)) then y else z;;



(* 4. A function nor that computes the NOR gate of two boolean arguments.
      Output is "true" if both inputs are "false."  Otherwise, output is "false." 
      Example: nor (4=5) (0=1);; returns true *)
let nor : bool -> bool -> bool = fun x y -> if (x = false && y = false) then true else false;;



(* 5. A function triangleArea that computers the area of a triangle given its base and height. 
      Example: computeTriangleArea 2 3;; returns 3. *)
let computeTriangleArea : int -> int -> float = fun x y -> 0.5 *. (float_of_int x)  *. (float_of_int y);;



(* 6. A function ceilingFloat that calculates the ceiling of a float, but returns it as an int rather than a float. 
      Example: ceilingFloat 17.1;; returns 18 *)
let ceilingDecimal : float -> int = fun x -> (int_of_float x) + 1;;



(* 7. A function letterGrade that returns the appropriate letter grade for a numerical integer grade.

		Letter Grade	Numerical Grade x
		A				93 <= x <= 100
		A-				90 <= x < 93
		B+				87 <= x < 90
		B				83 <= x < 87
		B-				80 <= x < 83
		C+				77 <= x < 80
		C				73 <= x < 77
		C-				70 <= x < 73
		D+				67 <= x < 70
		D				63 <= x < 67
		D-				60 <= x < 63
		F				< 60

      Example: letterGrade 82;; returns B- *)
let letterGrade : int -> string = fun x ->
	if (x>= 93 && x<= 100) then "A"
	else if (x>= 90 && x<93) then "A-"
	else if (x>= 87 && x<90) then "B+"
	else if (x>= 83 && x<87) then "B"
	else if (x>= 80 && x<83) then "B-"
	else if (x>= 77 && x<80) then "C+"
	else if (x>= 73 && x<77) then "C"
	else if (x>= 70 && x<73) then "C-"
	else if (x>= 67 && x<70) then "D+"
	else if (x>= 63 && x<67) then "D"
	else if (x>= 60 && x<63) then "D-"
	else "F";;



(* 8. A function findDays that returns the number of days in a month. 
      The function takes in as input an integer representing a month, and outputs the
      number of days. Assume that February has 28 days.
      For example, findDays 8;; returns 31
  
      The function returns -1 for any error cases.
      Example: findDays 14;; returns -1 *)
let findDays : int -> int = fun month ->
	if (month = 1 || month = 3 || month = 5 || month = 7 || month = 8 || month = 10 || month = 12) then 31
	else if (month = 4 || month = 6 || month = 9 || month = 11) then 30
	else if (month = 2) then 28
	else -1;;;;