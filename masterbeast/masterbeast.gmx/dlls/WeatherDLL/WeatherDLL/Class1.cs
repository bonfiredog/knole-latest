using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace WeatherDLL
{

    public static class Reader
    {
        //Load Variables
        public static string TodayMidnightWindS = "null";
        public static string TodayMidnightWindD = "null";
        public static string TodayMidnightTemp = "null";
        public static string TodayMidnightWT = "null";

        public static string Today3amWindS = "null";
        public static string Today3amWindD = "null";
        public static string Today3amTemp = "null";
        public static string Today3amWT = "null";

        public static string Today6amWindS = "null";
        public static string Today6amWindD = "null";
        public static string Today6amTemp = "null";
        public static string Today6amWT = "null";

        public static string Today9amWindS = "null";
        public static string Today9amWindD = "null";
        public static string Today9amTemp = "null";
        public static string Today9amWT = "null";

        public static string TodayMiddayWindS = "null";
        public static string TodayMiddayWindD = "null";
        public static string TodayMiddayTemp = "null";
        public static string TodayMiddayWT = "null";

        public static string Today3pmWindS = "null";
        public static string Today3pmWindD = "null";
        public static string Today3pmTemp = "null";
        public static string Today3pmWT = "null";

        public static string Today6pmWindS = "null";
        public static string Today6pmWindD = "null";
        public static string Today6pmTemp = "null";
        public static string Today6pmWT = "null";

        public static string Today9pmWindS = "null";
        public static string Today9pmWindD = "null";
        public static string Today9pmTemp = "null";
        public static string Today9pmWT = "null";

        public static string TomorrowMidnightWindS = "null";
        public static string TomorrowMidnightWindD = "null";
        public static string TomorrowMidnightTemp = "null";
        public static string TomorrowMidnightWT = "null";
        public static string Tomorrow3amWindS = "null";
        public static string Tomorrow3amWindD = "null";
        public static string Tomorrow3amTemp = "null";
        public static string Tomorrow3amWT = "null";

  

        public static void Run()
        {
            XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=d1c484ae-b5db-4d36-b19f-1c7e158389fa");

            var Today = weatherReader.Descendants("Period").First();
            var Tomorrow = weatherReader.Descendants("Period").Skip(1).First();

            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {

                switch (el.Value)
                {
                    case "0":
                        TodayMidnightWindS = el.Attribute("S").Value;
                        TodayMidnightWindD = el.Attribute("D").Value;
                        TodayMidnightTemp = el.Attribute("T").Value;
                        TodayMidnightWT = el.Attribute("W").Value;
                        break;

                    case "180":
                        Today3amWindS = el.Attribute("S").Value;
                        Today3amWindD = el.Attribute("D").Value;
                        Today3amTemp = el.Attribute("T").Value;
                        Today3amWT = el.Attribute("W").Value;
                        break;

                    case "360":
                        Today6amWindS = el.Attribute("S").Value;
                        Today6amWindD = el.Attribute("D").Value;
                        Today6amTemp = el.Attribute("T").Value;
                        Today6amWT = el.Attribute("W").Value;
                        break;

                    case "540":
                        Today9amWindS = el.Attribute("S").Value;
                        Today9amWindD = el.Attribute("D").Value;
                        Today9amTemp = el.Attribute("T").Value;
                        Today9amWT = el.Attribute("W").Value;
                        break;

                    case "720":
                        TodayMiddayWindS = el.Attribute("S").Value;
                        TodayMiddayWindD = el.Attribute("D").Value;
                        TodayMiddayTemp = el.Attribute("T").Value;
                        TodayMiddayWT = el.Attribute("W").Value;
                        break;

                    case "900":
                        Today3pmWindS = el.Attribute("S").Value;
                        Today3pmWindD = el.Attribute("D").Value;
                        Today3pmTemp = el.Attribute("T").Value;
                        Today3pmWT = el.Attribute("W").Value;
                        break;

                    case "1080":
                        Today6pmWindS = el.Attribute("S").Value;
                        Today6pmWindD = el.Attribute("D").Value;
                        Today6pmTemp = el.Attribute("T").Value;
                        Today6pmWT = el.Attribute("W").Value;
                        break;

                    case "1260":
                        Today9pmWindS = el.Attribute("S").Value;
                        Today9pmWindD = el.Attribute("D").Value;
                        Today9pmTemp = el.Attribute("T").Value;
                        Today9pmWT = el.Attribute("W").Value;
                        break;

                    default:
                        break;
                }

            }

            IEnumerable<XElement> TomorrowsReps = Tomorrow.Descendants("Rep");

            foreach (XElement el in TomorrowsReps)
            {
                switch (el.Value)
                {
                    case "0":
                        TomorrowMidnightWindS = el.Attribute("S").Value;
                        TomorrowMidnightWindD = el.Attribute("D").Value;
                        TomorrowMidnightTemp = el.Attribute("T").Value;
                        TomorrowMidnightWT = el.Attribute("W").Value;
                        break;

                    case "180":
                        Tomorrow3amWindS = el.Attribute("S").Value;
                        Tomorrow3amWindD = el.Attribute("D").Value;
                        Tomorrow3amTemp = el.Attribute("T").Value;
                        Tomorrow3amWT = el.Attribute("W").Value;
                        break;

                    default:
                        break;
                }

            }
        }

    }

}


    










