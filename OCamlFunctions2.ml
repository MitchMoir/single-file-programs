(* An assignment writing some simple functions in OCaml.
	Function solutions written by Mitch Moir.
*)


(* 1. A function averageThree to return the average of three integers. 
      Example: averageThree (-1) 1 2;; returns 0.66666666666666663 *)
let averageThree : int -> int -> int -> float = fun x y z ->
	(float_of_int (x + y + z) /. 3.);;



(* 2. A function howManyAboveAverage that returns how many of three integer inputs are above its average value.  
      Example: howManyAboveAverage 1 3 3;; returns 2 *)
let howManyAboveAverage : int -> int -> int -> int = fun x y z ->
	let a = ((x + y + z) / 3) in
		let x = if (x > a) then 1 else 0 in
			let y = if (y > a) then 1 else 0 in
				let z = if (z > a) then 1 else 0 in
					x + y + z;;



(* 3. A function howManyWithinThreshold that returns how many of the first three arguments are within the threshold (the fourth argument) of the average of the first three arguments. 
       Example: howManyWithinThreshold 10 1 2 3.5;; returns 2 *)
let howManyWithinThreshold : int -> int -> int -> float -> int = fun x y z t ->
	let a = ((x + y + z) / 3) in
		let x = if (float_of_int x > (float_of_int a -. t) && float_of_int x < (float_of_int a +. t)) then 1 else 0 in
			let y = if (float_of_int y > (float_of_int a -. t) && float_of_int y < (float_of_int a +. t)) then 1 else 0 in
				let z = if (float_of_int z > (float_of_int a -. t) && float_of_int z < (float_of_int a +. t)) then 1 else 0 in
					x + y + z;;



(* 4. A function threeDifferent that returns true if no two of the three arguments are equal, and false otherwise.  
      Example: threeDifferent 1 2 2;; returns false *)	  
let threeDifferent : int -> int -> int -> bool = fun x y z ->
	if (x = y || x = z || y = z) then false else true;;



(* 5. A function sum that uses recursion to compute the sum of all numbers from 1 to n, where n is greater than or equal to 1.
      Example: sum 3;; returns 6 *)
let rec sum : int -> int = fun n ->
	if n = 1 then n else n + sum(n - 1);;



(* 6. A function getBinary that uses recursion to convert an integer n (where n is greater than or equal to 0) to its binary representation.
      Example: getBinary 12;; returns 1100 
               getBinary 7;;  returns 111
               getBinary 42;; returns 101010 
		If n's binary representation is 10010101011
            (n / 2)'s binary representation is 1001010101
            (N % 2)'s binary representation is           1 *)	  
let rec getBinary : int -> int = fun n ->
	if n <= 1 then n else (n mod 2) + (10 * getBinary(n / 2));;



(* 7. A function howManyDigits that uses recursion to count the digits of an integer n (where n is greater than or equal to 1).
      Example: howManyDigits 978;; returns 3 *)
let rec howManyDigits : int -> int = fun n ->
	if n = 0 then n else 1 + howManyDigits(n / 10);;



(* 8. A function orderTriple that takes a triple, and returns a version in increasing order.
      Example: orderTriple (2, 1, 3);; returns (1, 2, 3) *)
let orderTriple : int * int * int -> int * int * int = fun (x, y, z) ->
	if (x < y && y < z) then (x, y, z) 
	else if (y < x && x < z) then (y, x, z) 
	else if (y < z && z < x) then (y, z, x) 
	else if (z < x && x < y) then (z, x, y)
	else if (z < y && y < x) then (z, y, x) 
	else (x, z, y);;