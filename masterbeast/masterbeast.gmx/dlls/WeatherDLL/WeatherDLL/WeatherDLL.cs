using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using Newtonsoft.Json;
using System.Xml.Linq;
using RGiesecke.DllExport;
using System.Runtime.InteropServices;

namespace WeatherDLL
{

    public static class Reader
    {

        //Getter Functions

        [DllExport("ReturnTodayMidnightWindS", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnTodayMidnightWindS()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
                var Today = weatherReader.Descendants("Period").First();
                string TodayMidnightWindS = "null";
                IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

                foreach (XElement el in TodaysReps)
                {
                    if (el.Value == "0")
                    {
                        TodayMidnightWindS = el.Attribute("S").Value;
                    }
                }
                return TodayMidnightWindS;
            }
            catch (Exception e)
            {
                return "10";
            }
        }

        [DllExport("ReturnTodayMidnightWindD", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnTodayMidnightWindD()
        {
            try
            {
            XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string TodayMidnightWindD = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "0")
                {
                    TodayMidnightWindD = el.Attribute("D").Value;
                }
            }
            return TodayMidnightWindD;
            }
            catch (Exception e)
            {
                return "SW";
            }
        }

        [DllExport("ReturnTodayMidnightWT", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnTodayMidnightWT()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string TodayMidnightWT = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "0")
                {
                    TodayMidnightWT = el.Attribute("W").Value;
                }
            }
            return TodayMidnightWT;
            }
            catch (Exception e)
            {
                return "1";
            }
        }


        [DllExport("ReturnTodayMidnightTemp", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnTodayMidnightTemp()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string TodayMidnightTemp = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "0")
                {
                    TodayMidnightTemp = el.Attribute("T").Value;
                }
            }
            return TodayMidnightTemp;
        }
            catch (Exception e)
            {
                return "10";
            }
        }

        [DllExport("ReturnTodayMidnightHumidity", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnTodayMidnightHumidity()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string TodayMidnightHumidity = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "0")
                {
                    TodayMidnightHumidity = el.Attribute("H").Value;
                }
            }
            return TodayMidnightHumidity;
        }
            catch (Exception e)
            {
                return "50";
            }
        }



        //---------------------------------------------------


        [DllExport("ReturnToday3amWindS", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday3amWindS()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today3amWindS = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "180")
                {
                    Today3amWindS = el.Attribute("S").Value;
                }
            }
            return Today3amWindS;
            }
            catch (Exception e)
            {
                return "10";
            }
        }

        [DllExport("ReturnToday3amWindD", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday3amWindD()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today3amWindD = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "180")
                {
                    Today3amWindD = el.Attribute("D").Value;
                }
            }
            return Today3amWindD;
            }
            catch (Exception e)
            {
                return "SW";
            }
        }

        [DllExport("ReturnToday3amWT", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday3amWT()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today3amWT = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "180")
                {
                    Today3amWT = el.Attribute("W").Value;
                }
            }
            return Today3amWT;
        }
            catch (Exception e)
            {
                return "1";
            }
        }

        [DllExport("ReturnToday3amTemp", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday3amTemp()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today3amTemp = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "180")
                {
                    Today3amTemp = el.Attribute("T").Value;
                }
            }
            return Today3amTemp;
        }
            catch (Exception e)
            {
                return "10";
            }
        }

        [DllExport("ReturnToday3amTemp", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday3amHumidity()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today3amHumidity = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "180")
                {
                    Today3amHumidity = el.Attribute("H").Value;
                }
            }
            return Today3amHumidity;
            }
            catch (Exception e)
            {
                return "50";
            }
        }


        //---------------------------------------------


        [DllExport("ReturnToday6amWindS", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday6amWindS()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today6amWindS = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "360")
                {
                    Today6amWindS = el.Attribute("S").Value;
                }
            }
            return Today6amWindS;
            }
            catch (Exception e)
            {
                return "10";
            }
        }

        [DllExport("ReturnToday6amWindD", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday6amWindD()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today6amWindD = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "360")
                {
                    Today6amWindD = el.Attribute("D").Value;
                }
            }
            return Today6amWindD;
        }
            catch (Exception e)
            {
                return "SW";
            }
        }


        [DllExport("ReturnToday6amWT", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday6amWT()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today6amWT = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "360")
                {
                    Today6amWT = el.Attribute("W").Value;
                }
            }
            return Today6amWT;
        }
            catch (Exception e)
            {
                return "1";
            }
        }

        [DllExport("ReturnToday6amTemp", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday6amTemp()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today6amTemp = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "360")
                {
                    Today6amTemp = el.Attribute("T").Value;
                }
            }
            return Today6amTemp;
        }
            catch (Exception e)
            {
                return "10";
            }
        }

        [DllExport("ReturnToday6amTemp", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday6amHumidity()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today6amHumidity = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "360")
                {
                    Today6amHumidity = el.Attribute("H").Value;
                }
            }
            return Today6amHumidity;
            }
            catch (Exception e)
            {
                return "50";
            }
        }

        //-------------------------------------------------------


        [DllExport("ReturnToday9amWindS", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday9amWindS()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today9amWindS = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "540")
                {
                    Today9amWindS = el.Attribute("S").Value;
                }
            }
            return Today9amWindS;
            }
            catch (Exception e)
            {
                return "10";
            }
        }

        [DllExport("ReturnToday9amWindD", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday9amWindD()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today9amWindD = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "540")
                {
                    Today9amWindD = el.Attribute("D").Value;
                }
            }
            return Today9amWindD;
            }
            catch (Exception e)
            {
                return "SW";
            }
        }


        [DllExport("ReturnToday9amWT", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday9amWT()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today9amWT = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "540")
                {
                    Today9amWT = el.Attribute("W").Value;
                }
            }
            return Today9amWT;
        }
            catch (Exception e)
            {
                return "1";
            }
        }

        [DllExport("ReturnToday9amTemp", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday9amTemp()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today9amTemp = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "540")
                {
                    Today9amTemp = el.Attribute("T").Value;
                }
            }
            return Today9amTemp;
        }
            catch (Exception e)
            {
                return "10";
            }
        }

        [DllExport("ReturnToday9amHumidity", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday9amHumidity()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today9amHumidity = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "540")
                {
                    Today9amHumidity = el.Attribute("H").Value;
                }
            }
            return Today9amHumidity;
            }
            catch (Exception e)
            {
                return "50";
            }
        }


        //--------------------------------------------------------


        [DllExport("ReturnTodayMiddayWindS", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnTodayMiddayWindS()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string TodayMiddayWindS = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "720")
                {
                    TodayMiddayWindS = el.Attribute("S").Value;
                }
            }
            return TodayMiddayWindS;
            }
            catch (Exception e)
            {
                return "10";
            }
        }

        [DllExport("ReturnTodayMiddayWindD", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnTodayMiddayWindD()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string TodayMiddayWindD = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "720")
                {
                    TodayMiddayWindD = el.Attribute("D").Value;
                }
            }
            return TodayMiddayWindD;
            }
            catch (Exception e)
            {
                return "SW";
            }
        }


        [DllExport("ReturnTodayMiddayWT", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnTodayMiddayWT()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string TodayMiddayWT = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "720")
                {
                    TodayMiddayWT = el.Attribute("W").Value;
                }
            }
            return TodayMiddayWT;
        }
            catch (Exception e)
            {
                return "1";
            }
        }

        [DllExport("ReturnTodayMiddayTemp", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnTodayMiddayTemp()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string TodayMiddayTemp = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "720")
                {
                    TodayMiddayTemp = el.Attribute("T").Value;
                }
            }
            return TodayMiddayTemp;
        }
            catch (Exception e)
            {
                return "10";
            }
        }

        [DllExport("ReturnTodayMiddayHumidity", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnTodayMiddayHumidity()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string TodayMiddayHumidity = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "720")
                {
                    TodayMiddayHumidity = el.Attribute("H").Value;
                }
            }
            return TodayMiddayHumidity;
            }
            catch (Exception e)
            {
                return "50";
            }
        }

        //------------------------------------------


        [DllExport("ReturnToday3pmWindS", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday3pmWindS()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today3pmWindS = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "900")
                {
                    Today3pmWindS = el.Attribute("S").Value;
                }
            }
            return Today3pmWindS;
            }
            catch (Exception e)
            {
                return "10";
            }
        }

        [DllExport("ReturnToday3pmWindD", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday3pmWindD()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today3pmWindD = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "900")
                {
                    Today3pmWindD = el.Attribute("D").Value;
                }
            }
            return Today3pmWindD;
            }
            catch (Exception e)
            {
                return "SW";
            }
        }


        [DllExport("ReturnToday3pmWT", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday3pmWT()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today3pmWT = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "900")
                {
                    Today3pmWT = el.Attribute("W").Value;
                }
            }
            return Today3pmWT;
        }
            catch (Exception e)
            {
                return "1";
            }
        }

        [DllExport("ReturnToday3pmTemp", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday3pmTemp()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today3pmTemp = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "900")
                {
                    Today3pmTemp = el.Attribute("T").Value;
                }
            }
            return Today3pmTemp;
        }
            catch (Exception e)
            {
                return "10";
            }
        }

        [DllExport("ReturnToday3pmHumidity", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday3pmHumidity()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today3pmHumidity = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "900")
                {
                    Today3pmHumidity = el.Attribute("H").Value;
                }
            }
            return Today3pmHumidity;
            }
            catch (Exception e)
            {
                return "50";
            }
        }


        //------------------------------


        [DllExport("ReturnToday6pmWindS", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday6pmWindS()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today6pmWindS = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "1080")
                {
                    Today6pmWindS = el.Attribute("S").Value;
                }
            }
            return Today6pmWindS;
            }
            catch (Exception e)
            {
                return "10";
            }
        }

        [DllExport("ReturnToday6pmWindD", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday6pmWindD()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today6pmWindD = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "1080")
                {
                    Today6pmWindD = el.Attribute("D").Value;
                }
            }
            return Today6pmWindD;
            }
            catch (Exception e)
            {
                return "SW";
            }
        }


        [DllExport("ReturnToday6pmWT", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday6pmWT()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today6pmWT = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "1080")
                {
                    Today6pmWT = el.Attribute("W").Value;
                }
            }
            return Today6pmWT;
        }
            catch (Exception e)
            {
                return "1";
            }
        }

        [DllExport("ReturnToday6pmTemp", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday6pmTemp()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today6pmTemp = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "1080")
                {
                    Today6pmTemp = el.Attribute("T").Value;
                }
            }
            return Today6pmTemp;
        }
            catch (Exception e)
            {
                return "10";
            }
        }

        [DllExport("ReturnToday6pmHumidity", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday6pmHumidity()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today6pmHumidity = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "1080")
                {
                    Today6pmHumidity = el.Attribute("H").Value;
                }
            }
            return Today6pmHumidity;
            }
            catch (Exception e)
            {
                return "50";
            }
        }

        //---------------------------


        [DllExport("ReturnToday9pmWindS", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday9pmWindS()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today9pmWindS = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "1260")
                {
                    Today9pmWindS = el.Attribute("S").Value;
                }
            }
            return Today9pmWindS;
            }
            catch (Exception e)
            {
                return "10";
            }
        }

        [DllExport("ReturnToday9pmWindD", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday9pmWindD()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today9pmWindD = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "1260")
                {
                    Today9pmWindD = el.Attribute("D").Value;
                }
            }
            return Today9pmWindD;
            }
            catch (Exception e)
            {
                return "SW";
            }
        }


        [DllExport("ReturnToday9pmWT", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday9pmWT()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today9pmWT = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "1260")
                {
                    Today9pmWT = el.Attribute("W").Value;
                }
            }
            return Today9pmWT;
        }
            catch (Exception e)
            {
                return "1";
            }
        }

        [DllExport("ReturnToday9pmTemp", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday9pmTemp()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today9pmTemp = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "1260")
                {
                    Today9pmTemp = el.Attribute("T").Value;
                }
            }
            return Today9pmTemp;
        }
            catch (Exception e)
            {
                return "10";
            }
        }


        [DllExport("ReturnToday9pmHumidity", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnToday9pmHumidity()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Today = weatherReader.Descendants("Period").First();
            string Today9pmHumidity = "null";
            IEnumerable<XElement> TodaysReps = Today.Descendants("Rep");

            foreach (XElement el in TodaysReps)
            {
                if (el.Value == "1260")
                {
                    Today9pmHumidity = el.Attribute("H").Value;
                }
            }
            return Today9pmHumidity;
            }
            catch (Exception e)
            {
                return "50";
            }
        }


        //--------------------------------------


        [DllExport("ReturnTomorrowMidnightWindS", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnTomorrowMidnightWindS()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Tomorrow = weatherReader.Descendants("Period").Skip(1).First();
            string TomorrowMidnightWindS = "null";
            IEnumerable<XElement> TomorrowsReps = Tomorrow.Descendants("Rep");

            foreach (XElement el in TomorrowsReps)
            {
                if (el.Value == "0")
                {
                    TomorrowMidnightWindS = el.Attribute("S").Value;
                }
            }
            return TomorrowMidnightWindS;
            }
            catch (Exception e)
            {
                return "10";
            }
        }

        [DllExport("ReturnTomorrowMidnightWindD", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnTomorrowMidnightWindD()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Tomorrow = weatherReader.Descendants("Period").Skip(1).First();
            string TomorrowMidnightWindD = "null";
            IEnumerable<XElement> TomorrowsReps = Tomorrow.Descendants("Rep");

            foreach (XElement el in TomorrowsReps)
            {
                if (el.Value == "0")
                {
                    TomorrowMidnightWindD = el.Attribute("D").Value;
                }
            }
            return TomorrowMidnightWindD;
            }
            catch (Exception e)
            {
                return "SW";
            }
        }


        [DllExport("ReturnTomorrowMidnightWT", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnTomorrowMidnightWT()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Tomorrow = weatherReader.Descendants("Period").Skip(1).First();
            string TomorrowMidnightWT = "null";
            IEnumerable<XElement> TomorrowsReps = Tomorrow.Descendants("Rep");

            foreach (XElement el in TomorrowsReps)
            {
                if (el.Value == "0")
                {
                    TomorrowMidnightWT = el.Attribute("W").Value;
                }
            }
            return TomorrowMidnightWT;
        }
            catch (Exception e)
            {
                return "1";
            }
        }

        [DllExport("ReturnTomorrowMidnightTemp", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnTomorrowMidnightTemp()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Tomorrow = weatherReader.Descendants("Period").Skip(1).First();
            string TomorrowMidnightTemp = "null";
            IEnumerable<XElement> TomorrowsReps = Tomorrow.Descendants("Rep");

            foreach (XElement el in TomorrowsReps)
            {
                if (el.Value == "0")
                {
                    TomorrowMidnightTemp = el.Attribute("T").Value;
                }
            }
            return TomorrowMidnightTemp;
        }
            catch (Exception e)
            {
                return "10";
            }
        }

        [DllExport("ReturnTomorrowMidnightHumidity", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnTomorrowMidnightHumidity()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Tomorrow = weatherReader.Descendants("Period").Skip(1).First();
            string TomorrowMidnightHumidity = "null";
            IEnumerable<XElement> TomorrowsReps = Tomorrow.Descendants("Rep");

            foreach (XElement el in TomorrowsReps)
            {
                if (el.Value == "0")
                {
                    TomorrowMidnightHumidity = el.Attribute("H").Value;
                }
            }
            return TomorrowMidnightHumidity;
            }
            catch (Exception e)
            {
                return "50";
            }
        }


        //--------------------------------------------


        [DllExport("ReturnTomorrow3amWindS", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnTomorrow3amWindS()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Tomorrow = weatherReader.Descendants("Period").Skip(1).First();
            string Tomorrow3amWindS = "null";
            IEnumerable<XElement> TomorrowsReps = Tomorrow.Descendants("Rep");

            foreach (XElement el in TomorrowsReps)
            {
                if (el.Value == "180")
                {
                    Tomorrow3amWindS = el.Attribute("S").Value;
                }
            }
            return Tomorrow3amWindS;
            }
            catch (Exception e)
            {
                return "10";
            }
        }

        [DllExport("ReturnTomorrow3amWindD", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnTomorrow3amWindD()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Tomorrow = weatherReader.Descendants("Period").Skip(1).First();
            string Tomorrow3amWindD = "null";
            IEnumerable<XElement> TomorrowsReps = Tomorrow.Descendants("Rep");

            foreach (XElement el in TomorrowsReps)
            {
                if (el.Value == "180")
                {
                    Tomorrow3amWindD = el.Attribute("D").Value;
                }
            }
            return Tomorrow3amWindD;
            }
            catch (Exception e)
            {
                return "SW";
            }
        }


        [DllExport("ReturnTomorrow3amWT", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnTomorrow3amWT()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Tomorrow = weatherReader.Descendants("Period").Skip(1).First();
            string Tomorrow3amWT = "null";
            IEnumerable<XElement> TomorrowsReps = Tomorrow.Descendants("Rep");

            foreach (XElement el in TomorrowsReps)
            {
                if (el.Value == "180")
                {
                    Tomorrow3amWT = el.Attribute("W").Value;
                }
            }
            return Tomorrow3amWT;
        }
            catch (Exception e)
            {
                return "1";
            }
        }

        [DllExport("ReturnTomorrow3amTemp", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnTomorrow3amTemp()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Tomorrow = weatherReader.Descendants("Period").Skip(1).First();
            string Tomorrow3amTemp = "null";
            IEnumerable<XElement> TomorrowsReps = Tomorrow.Descendants("Rep");

            foreach (XElement el in TomorrowsReps)
            {
                if (el.Value == "180")
                {
                    Tomorrow3amTemp = el.Attribute("T").Value;
                }
            }
            return Tomorrow3amTemp;
        }
            catch (Exception e)
            {
                return "10";
            }
        }

        [DllExport("ReturnTomorrow3amHumidity", CallingConvention = CallingConvention.Cdecl)]
        public static string ReturnTomorrow3amHumidity()
        {
            try
            {
                XDocument weatherReader = XDocument.Load("http://datapoint.metoffice.gov.uk/public/data/val/wxfcs/all/xml/351016?res=3hourly&key=a0bb8abd-2bf2-493b-86ed-5e118b010277");
            var Tomorrow = weatherReader.Descendants("Period").Skip(1).First();
            string Tomorrow3amHumidity = "null";
            IEnumerable<XElement> TomorrowsReps = Tomorrow.Descendants("Rep");

            foreach (XElement el in TomorrowsReps)
            {
                if (el.Value == "180")
                {
                    Tomorrow3amHumidity = el.Attribute("H").Value;
                }
            }
            return Tomorrow3amHumidity;
            }
            catch (Exception e)
            {
                return "50";
            }
        }

        [DllExport("GetTodaySunrise", CallingConvention = CallingConvention.Cdecl)]
        public static string GetTodaySunrise()
        {
            string TodaySunrise = "null";
            WebClient wc = new WebClient();

            var json = wc.DownloadString("http://api.sunrise-sunset.org/json?lat=51.435084&lng=-2.1vi82525&date=today&formatted=1");

            dynamic output = JsonConvert.DeserializeObject(json);

            TodaySunrise = output.results.sunrise;

            return TodaySunrise;

        }
       
    }

}


    










