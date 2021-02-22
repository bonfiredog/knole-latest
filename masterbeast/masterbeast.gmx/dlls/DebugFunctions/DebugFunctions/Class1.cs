using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RGiesecke.DllExport;
using System.Runtime.InteropServices;
using System.Net.NetworkInformation;
using System.Management;
using System.Diagnostics;

namespace DebugFunctions
{
    public static class DebugFunctionsClass
    {

        [DllExport("MouseAndKeyboardAttached", CallingConvention = CallingConvention.Cdecl)]
        public static string MouseAndKeyboardAttached()
        {
            string Status = "false";

            ManagementObjectSearcher searcher = new ManagementObjectSearcher("Select Name from Win32_Keyboard");

            foreach (ManagementObject keyboard in searcher.Get())
            {
                Status = "maybe";
            }

            if (Status == "maybe") {
                ManagementObjectSearcher mousesearcher = new ManagementObjectSearcher("Select Name from Win32_PointingDevice");

                  foreach(ManagementObject mouse in mousesearcher.Get())
                {
                    Status = "true";
                }

            }

            if (Status == "maybe") {
                Status = "false";
            }

            return Status;
        }

        [DllExport("NetworkDetected", CallingConvention = CallingConvention.Cdecl)]
        public static string NetworkDetected()
        {
            string Status = "false";
            if (NetworkInterface.GetIsNetworkAvailable() == true)
            {
                Status = "true";
            } else
            {
                Status = "false";
            }

            return Status;
        }

        [DllExport("EavesdropRunning", CallingConvention = CallingConvention.Cdecl)]
        public static string EavesdropRunning()
        {
            string Status = "false";
            string EDProcessName = "Knole Eavesdrop";

            foreach (Process clsProcess in Process.GetProcesses())
            {
                if (clsProcess.ProcessName.Contains(EDProcessName))
                {
                    Status = "true";
                }
            }

            return Status;
        }

    }
}
