using System;

public class CSConColor
    {
        static void Main(string[] args)
        {
            Console.BackgroundColor = ConsoleColor.Green;
            Console.ForegroundColor = ConsoleColor.Black;
            Console.WriteLine("************************");
            Console.WriteLine("*Black text over Green.*");
            Console.WriteLine("************************");
            Console.BackgroundColor = ConsoleColor.Blue;
            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.WriteLine("************************");
            Console.WriteLine("*Yellow text over Blue.*");
            Console.WriteLine("************************");

            Console.ReadLine();
        }
    }

