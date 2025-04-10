import java.util.Scanner;

public class Methods {
    
    //Create Method withou returning any value (without object)
    public static void getRequirements()
    {
       System.out.println("Developer: Brennan O'Halloran");
       System.out.println("Program determines total number of characters in line of text, \nas well as number of tomes specific character is used.");
       System.out.println("Program displays character\'s ASCII value.");

       System.out.println("\nReferences:\n"
                +"ASCII Background: https://en.wikipedia.org/wiki/ASCII\n"
                +"ASCII Character Table: https://www.ascii-code.com/\n"
                +"Lookup Tables: https://www.lookuptables.com/");
       
       System.out.println();
      
    }

    public  static void characterInfo()
    {
        String str = "";
        char ch = ' ';
        int len = 0;
        int num = 0;
        Scanner sc = new Scanner(System.in);


        System.out.print("Please enter a line of text: ");
        str = sc.nextLine();
        len = str.length();

        System.out.print("Please enter a character to check: ");

        ch = sc.next().charAt(0);

        for(int i = 0; i < len; i++)
        {
            if(ch == str.charAt(i))
            {
                ++num;
            }
        }

        System.out.println("\nNumber of characters in line of text: " + len);
        System.out.println("The character " + ch + " appears " + num + " time(s) in the line of text.");
        System.out.println("ASCII value: " + (int)ch);
        sc.close();

    }

    

}

  