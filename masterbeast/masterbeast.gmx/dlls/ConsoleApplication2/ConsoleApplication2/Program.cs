using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Execute;

namespace ConsoleApplication2
{
    class Program
    {
        static void Main(string[] args)
        {
            ExecuteClass.Execute(@"C:\Users\Rob\AppData\Roaming\masterbeast\eavesdrop\app\Knole Eavedrop\bin\Release\Knole Eavesdrop.exe");
            Console.WriteLine("Opened Eavesdrop.");
            Console.ReadLine();
        }
    }
}
