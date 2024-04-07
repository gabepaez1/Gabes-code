public class TestContinue {
  public static void main(String[] args) {
    
    //declare and initialize
    int sum = 0;//accumulator variable
    int number = 0;//1. initialize CV
    
    //use loop to calculate sum
    while (number < 20) {
      
      //3. update CV
      number++;
      
      //is number equal to 10 or 11
      if (number == 10 || number == 11)
      
        continue;
      
      //calculate sum 
      sum += number;
      
      //Testing
      System.out.println("Number is: " + number + " and sum is: " + sum);
    }

    System.out.println("The sum is " + sum);
  }
}
