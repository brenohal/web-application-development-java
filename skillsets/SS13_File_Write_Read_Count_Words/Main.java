import java.io.File;

class Main
{
    public static void main(String[] args)
    {
        //call statuc void methods (i.e., no object, non-value returning)
        Methods.getRequirements();
       
        File myFile = Methods.fileWrite();
        if(myFile != null)
        {
            System.out.println("\nFile written to: " + myFile.getAbsolutePath());

        }


        Methods.fileRead(myFile);
    }
}