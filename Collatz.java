/*
* A recursive implementation of the Collatz conjecture.
	@author Mitch Moir
*/

import java.util.Scanner;

public class Collatz {
	
	public static int collatz(int number) {
		if (number % 2 == 0) {
			number /= 2;
			if (number != 1) {
				System.out.println(number);
				collatz(number);
			}
			else {
				System.out.println(number);
			}
		}
		else {
			number = 3 * number + 1;
			if (number != 1) {
				System.out.println(number);
				collatz(number);
			}
			else {
				System.out.println(number);
			}
		}
		
		return number;
	}

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		System.out.println("Enter a number: ");
		int num = in.nextInt();
		collatz(num);
	}
}