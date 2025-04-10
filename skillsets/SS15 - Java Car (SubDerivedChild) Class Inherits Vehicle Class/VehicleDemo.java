import java.util.Scanner;
class VehicleDemo
{
    public static void main(String[] args)
    {
       
        String mk = "";
        String md = "";
        int yr = 0;
        float sp = 0.0f;
        Scanner sc = new Scanner(System.in);

        System.out.print("\n/////Below are bass class default constructor values://///");

        Vehicle v1 = new Vehicle();

        System.out.println("\nMake = " + v1.getMake());
        System.out.println("Model = " + v1.getModel());
        System.out.println("Year = " + v1.getYear());

        System.out.print("\n/////Below are base class user entered values://///");

        System.out.print("\nMake: ");
        mk = sc.nextLine();

        System.out.print("Model: ");
        md = sc.nextLine();

        System.out.print("Year: ");
        yr = sc.nextInt();

        Vehicle v2 = new Vehicle(mk, md, yr);
        System.out.println("\nMake = " + v2.getMake());
        System.out.println("Model = " + v2.getModel());
        System.out.println("Year = " + v2.getYear());


        System.out.print("\n/////Below are derived class user-entered values://///");

        System.out.print("\nMake: ");
        mk = sc.next(); 

        System.out.print("Model: ");
        md = sc.next();

        System.out.print("Year: ");
        yr = sc.nextInt();
        
        System.out.print("Speed: ");
        sp = sc.nextFloat();

        Car c2 = new Car(mk, md, yr, sp);  
        System.out.println("\nMake = " + c2.getMake());
        System.out.println("Model = " + c2.getModel());
        System.out.println("Year = " + c2.getYear());
        System.out.println("Speed = " + c2.getSpeed());

        System.out.print("\nOr...");
        c2.print();




    }
}