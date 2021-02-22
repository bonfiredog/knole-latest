using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DebugFunctions;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            if (DebugFunctionsClass.EavesdropRunning() == "true")
            {
                Console.WriteLine("Eavesdrop Detected.");
            } else
            {
                Console.WriteLine("No Eavesdrop.");
            }

            if (DebugFunctionsClass.MouseAndKeyboardAttached() == "true")
            {
                Console.WriteLine("Keyboard And Mouse Detected.");
            }
            else
            {
                Console.WriteLine("Either no mouse, or no keyboard.");
            }

            if (DebugFunctionsClass.NetworkDetected() == "true")
            {
                Console.WriteLine("Network Detected.");
            }
            else
            {
                Console.WriteLine("No Network Detected.");
            }

            Console.ReadLine();


           


        }
    }
}
