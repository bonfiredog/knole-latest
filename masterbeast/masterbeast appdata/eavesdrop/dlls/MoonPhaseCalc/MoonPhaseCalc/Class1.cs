using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace MoonPhaseCalc
{
    public static class MoonCalcs
    {
        public static string GetMoonPhase()
        {
            try { 
            WebClient wc = new WebClient();
            string bint = "null";

            var json = wc.DownloadString("http://api.usno.navy.mil/rstt/oneday?date=today&coords=51.4,-2.1&tz=0");

            dynamic output = JsonConvert.DeserializeObject(json);

            bint = output.closestphase.phase;
        
            return bint;
            }
            catch (Exception e) {
                return "New Moon";
            }
            }
            
        }
    }
