import java.util.Scanner;

class checksum  
{  

  public static void main(String args[]) {

    final int max_int = 255;  // The maximum size for the input
    int count = 10;           // The number of integers to read from stdin
    int sum = 0;              // Note that the "sum" might exceed max_int
    int checksum = 0;         // The value of the 6th input integer
    int quotient;             // The result of evaluating the assignment:  quotient   = sum / (max_int + 1);
    int remainder;            // The result of evaluating the assignment:  remainder  = sum % (max_int + 1 );
    int complement;       	  // The result of evaluating the assignment: complement = max_int - sum;

    //System.out.println("Enter in 10 non negative integers: ");
    
    Scanner stdin = new Scanner(System.in);  
    
    while(count > 0)	//While loop to keep iterating until count is 0
    {
    	
    	int num = stdin.nextInt();		//reads the user input and stores it in value
    	if(num >= 0 && num <= max_int) //Validates if the input is within the range
    	{	
    		if(count == 5) 			//Determines if its the 6th input and stores it in checksum.
    		{
    			checksum = num;		//Pulls the 6th input and stores it in checksum
    			num = 0;				//resets the input to zero.
    			//System.out.print(num);
    		}
    		sum += num;			//Adds the value to the sum
    		count--;				//Decreases the count value each iteration until it is at 0
    					
    	}
    }
    
    quotient = sum/(max_int + 1);
    remainder = sum%(max_int + 1);
    sum = quotient + remainder;
    complement = max_int - sum;
    
    //Testing
    //System.out.println("Total: " + sum);			
    //System.out.println("Checksum: " + checksum);	
    //System.out.println("Complement: " + complement);
    //System.out.println("Remainder: " + remainder);
    //System.out.println("Quotient" + quotient);
    
    System.out.printf("Stored Checksum: %d, Computed Checksum: %d\n", checksum, complement);
    if (checksum != complement) 
    	{
    		System.err.printf("Error Detected!\n");  
    	}
  	}
      
   }

