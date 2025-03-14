using System;

public class CSConAdd2NumColor
    {
        static void Main(string[] args)
        {
            int a, b, c;
            Console.BackgroundColor = ConsoleColor.Green;
            Console.ForegroundColor = ConsoleColor.Black;
            Console.WriteLine("+++++++++++++++++++++++++++++++++++++++");
            Console.Write(" Enter the first number to be added:  ");
            a = Convert.ToInt32(Console.ReadLine());
            Console.Write(" Enter the second number to be added: ");
            b = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("+++++++++++++++++++++++++++++++++++++++");
            Console.BackgroundColor = ConsoleColor.Blue;
            Console.ForegroundColor = ConsoleColor.Yellow;
            c = a + b;
            Console.WriteLine("+++++++++++++++++++++++++++++++++++++++");
            Console.WriteLine("      The sum of two numbers is:     " + c);
            Console.WriteLine("+++++++++++++++++++++++++++++++++++++++");
            Console.ReadLine();

        }
    }
