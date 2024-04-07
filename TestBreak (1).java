public class TestBreak {
  public static void main(String[] args) {
    
    //declare and initialize variables 
    int sum = 0;    //accumulator variable must have intiatial value(seed)
    int number = 0; //1. intialize CV

    //loop
    while (number < 20) {
      
      //3. update CV
      number++;
      
      
      sum += number; //sum = sum + number
      
      
      if (sum >= 100) 
        break;
    }

    System.out.println("The number is " + number);
    
    System.out.println("The sum is " + sum);
    
    
  }//end of main
  
}//end of class
