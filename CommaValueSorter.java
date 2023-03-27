/* This program is designed to read in comma separated values from a user chosen text file,
 * sort them, and write them back to the file.
 * 
 * @author Mitch Moir
 * @version 3/25/2023
 */


import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Scanner;

public class CommaValueSorter{

	public static void main(String[] args) throws FileNotFoundException {			
			
		//Using a HashSet to prevent duplicate values
		HashSet<String> set = new HashSet<>();
			
			
		//Handle user input
		Scanner in = new Scanner(System.in);
		System.out.print("Enter the file's path without quotation marks: ");
		String path = in.nextLine();
			
			
		//Create and use Scanner object to read file
		Scanner sc = new Scanner(new File(path));
		while(sc.hasNext()) {
			sc.useDelimiter(",");
			set.add(sc.next().trim());
		}
			
			
		//Convert HashSet to ArrayList for easy sorting of values
		ArrayList<String> al = new ArrayList<>(set);
		Collections.sort(al, String.CASE_INSENSITIVE_ORDER);
			
			
		//Write sorted data to a file with exception handling
		try {
			FileWriter writer = new FileWriter(path);
			for(String s : al) {
				s.trim();
				writer.write(s + ", ");
			}
			writer.close();
			System.out.println("Wrote to file.");
		}
		catch (IOException e) {
			System.out.println("Error writing to file.");
		}
		
			
		//Close input Scanner to prevent resource leak
		in.close();
		
	} 
}
