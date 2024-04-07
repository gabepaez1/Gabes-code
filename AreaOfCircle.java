import java.util.Scanner;

public class AreaOfCircle {
    
    public static void main(String[] args){
        
        //declare variables
        double radius, area;
        
        //create Scanner object
        Scanner scnr = new Scanner(System.in);
        
        //prompt user for radius
        System.out.print("Enter the radius: ");
        
        //read and store radius
        radius = scnr.nextDouble();
        
        //calculate area of circle
        area = radius * radius * 3.14159;
        
        //print area
        System.out.print("Area of the circle is: " + area);
        
    }//end of main
}