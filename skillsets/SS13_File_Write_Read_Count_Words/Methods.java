import java.io.File;
import java.io.IOException;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.FileReader;
import java.io.BufferedReader;
import java.util.Scanner;

public class Methods {
    
    //Create Method withou returning any value (without object)
    public static void getRequirements()
    {
       System.out.println("Developer: Brennan O'Halloran");
       System.out.println("Program Requirements:");
       System.out.println("Program captures user input, writes to and reads from same file, and counts number of words in the file.");
       System.out.println("HintL use hasNext() method to read number of words (tokens) in the file.");

       System.out.println();
      
    }

    public static File fileWrite()
    {
        Scanner sc = new Scanner(System.in);
        File file = new File("C:\\myWebProject\\tomcat\\webapps\\lis4368\\skillsets\\SS13_File_Write_Read_Count_Words\\filecountwords.txt");

        try(PrintWriter writer = new PrintWriter(file))
        {
            System.out.println("Write text to file (type 'exit' to quit): ");
            String input;

            while (!(input = sc.nextLine()).equalsIgnoreCase("exit"))
            {
                writer.println(input);
            }
        }
        catch (IOException e)
        {
            System.err.println("Error writing to file: " + e.getMessage());
            file = null;
        }
        finally
        {
            sc.close();
        }
        return file;

    }

    public static void fileRead(File myFile)
    {
        BufferedReader br = null;
        Scanner sc = null;

        try
        {
            FileReader fr = new FileReader(myFile);
            br = new BufferedReader(fr);
            sc = new Scanner(myFile);

            System.out.println("\nReading from file: " + myFile.getAbsolutePath());

            String line;
            while((line = br.readLine()) != null)
            {
                System.out.println(line);
            }
            int count= 0;
            while(sc.hasNext())
            {
                sc.next();
                count++;
            }
            
            System.out.println("\nNumber of tokens: " + count);

        }
        catch (FileNotFoundException e)
        {
            System.err.println("File not found!");

        }
        catch (IOException e)
        {
            System.out.println("Error reading file.");

        }
        finally
        {
            if (br != null || sc != null)
            {
                try
                {
                    br.close();     
                    sc.close();
                }
                catch (IOException e)
                {
                    System.err.println("Error closing file: " + e.getMessage());
                }
            }
        }

    }


   

}

  