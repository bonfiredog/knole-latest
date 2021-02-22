using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Diagnostics;
using RGiesecke.DllExport;
using System.Runtime.InteropServices;

namespace CloseEavesdrop
{
    public class CloseClass
    {
        [DllExport("CloseEavesdropAndPareidolia", CallingConvention = CallingConvention.Cdecl)]
        public static string CloseEavesdropAndPareidolia()
        {
            foreach (var EDInstance in Process.GetProcessesByName("Knole Eavesdrop"))
            {
                EDInstance.Kill();
            }

            foreach (var PDInstance in Process.GetProcessesByName("Knole Pareidolia"))
            {
                PDInstance.Kill();
            }
            return "closed";
        }
    }
}
