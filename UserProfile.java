import java.util.Scanner;

public class UserProfile {
    
    public static void main(String[]args){
        
        /*purpose
        
                1. prompt user for name age and gpa
                2. read and store each input
                3. print output
        */
        
        //declare variable
        int age;
        double gpa;
        String name;
        
        //create scanner object
        Scanner scnr = new Scanner(System.in);
        
        //prompt user for full name 
        System.out.print("Enter your full name: ");
        
        //read full name and store
        name = scnr.nextLine();
        
        //prompt for age
        System.out.print("Enter your age: ")
        
        //read in age
        age = scnr.nextInt();
        
        //prompt for GPA
        System.out.print("Enter your GPA: ")
        
        //read in GPA
        gpa = scnr.nextDouble();
        
        //read out name with GPA
        System.out.print(name + " has a " + gpa + " GPA")
    }
}