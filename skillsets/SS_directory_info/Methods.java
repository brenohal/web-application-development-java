import java.io.File;
import java.util.Scanner;

public class Methods {
    
    //Create Method withou returning any value (without object)
    public static void getRequirements()
    {
       System.out.println("Developer: Brennan O'Halloran");
       System.out.println("Program is used to display file information when given a specific direectory path.");
       System.out.println("Program will display the name, path, size (in bytes and KB), and last modified date of each file in the directory.");
       System.out.println();

    }

    public  static void directoryInfo()
    {
        String myDir = "";
        Scanner sc = new Scanner(System.in);

        System.out.print("Please enter your directory path: ");
        myDir = sc.nextLine();

        File directoryPath = new File(myDir);

        try {

            File[] files = directoryPath.listFiles();

            for (int i = 0; i < files.length; i++) {
                
                System.out.println("Name: " + files[i].getName());
                System.out.println("Path: " + files[i].getAbsolutePath());
                System.out.println("Size (Bytes): " + files[i].length());
                System.out.println("Size (KB): " + files[i].length()/1024);
                System.out.println("Size (MB): " + files[i].length()/1024/1024);
                System.out.println();
                
            }
        }

        catch (Exception e)
        {
            System.err.println(e.getMessage());
        }
    }

    

}

  