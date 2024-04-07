import java.util.Scanner; 

public class MyFavoriteSong { 

    public static void main(String[] args) { 
    
    //print prior to function call 
    System.out.printin("This is BEFORE the Call Statement!!!");
    
    //function call statement for printsong() 
    printSong(); //how to call a void method 
    
    //print inside of main() 
    System.out.printIn("Back inside of main() !");
    
    
    }//end of main  
    
    //Function Definition: printSong () 
    //Purpose: print lyrics for favorite song using a user defined method 
    //Return-type: void method 
    //Parameter-list: empty
    
    public static void printSong( ){

        //print two lines of favorite song 
        System.out .printin("I believe the children are our future"); 
        System.out .printin("Teach them well and let them lead the way."); 
        
        }//end of printsong()

}//end of class