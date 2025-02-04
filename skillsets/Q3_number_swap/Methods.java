import java.util.Scanner;

public class Methods {
    
    //Create Method withou returning any value (without object)
    public static void getRequirements()
    {
       System.out.println("Developer: Brennan O'Halloran");
       System.out.println("Program Requirements");
       System.out.println("1. Program swaps two use-entered floating-point values");
       System.out.println("2. Create at least two user-defined methods: getRequirements() and numberSwap().");
       System.out.println("3. Must perform data validation: numbers must be floats.");
       System.out.println("4. Print numbers before/after swapping.\n");
       System.out.println();

    }

    public  static void numberswap()
    {
        Scanner sc = new Scanner(System.in);
        float num1 = 0.0f;
        float num2 = 0.0f;
        float temp = 0.0f;

        System.out.println("Enter the first number: ");
        while(!sc.hasNextFloat())
        {
            System.out.println("Invalid input!\n");
            sc.next();
            System.out.print("Please try again. Enter number 1: ");
        }
        num1 = sc.nextFloat();

        System.out.print("\nEnter number 2: ");
        while(!sc.hasNextFloat())
        {
            System.out.println("Invalid input!\n");
            sc.next();
            System.out.print("Please try again. Enter number 2: ");
        }
        num2 = sc.nextFloat();

        System.out.println("\nBefore swap: ");
        System.out.println("number 1 = " + num1);
        System.out.println("number 2 = "+ num2);

        //Temp hold of number1
        temp = num1;

        //Put value of num2 into num1
        num1 = num2;

        //Put value of temp(contains num1) into num2
        num2 = temp;

        System.out.println("\n After swap:");
        System.out.println("Number 1 = " + num1);
        System.out.println("Number 2 = " + num2);

        sc.close(); //closes scanner
         



    }

    

}

  