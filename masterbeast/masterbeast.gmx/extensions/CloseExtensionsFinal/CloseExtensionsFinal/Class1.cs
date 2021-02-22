using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RGiesecke.DllExport;
using System.Runtime.InteropServices;
using System.Diagnostics;

namespace CloseExtensionsFinal
{
    public class ClassCEFinal
    {
        [DllExport("CloseExtensionsFinal", CallingConvention = CallingConvention.Cdecl)]
        public static string CloseExtensionsFinal()
        {
            Process[] ProcessArray = Process.GetProcesses();
            foreach (Process ParaProcess in ProcessArray)
            {
                string ProcessName = ParaProcess.ProcessName;

                ProcessName = ProcessName.ToLower();
                if (ProcessName == "facedetection")
                {
                    ParaProcess.Kill();
                } else if (ProcessName == "knole eavesdrop")
                {
                    ParaProcess.Kill();
                }
            }


            return "closed";
        }
    }
}
