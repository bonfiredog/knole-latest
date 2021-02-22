using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RGiesecke.DllExport;
using System.Runtime.InteropServices;
using System.Diagnostics;

namespace Execute
{
    public class ExecuteClass
    {
        [DllExport("Execute", CallingConvention = CallingConvention.Cdecl)]
        public static string Execute(string ExecutePath)
        {
            Process.Start(ExecutePath);     
            return "true";
        }
    }
}
