using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Speech.Recognition;
using RGiesecke.DllExport;
using System.Runtime.InteropServices;

namespace TestSpeechDLL
{
    public class RecogClass
    {
        
        [DllExport("StartSpeechRecog", CallingConvention = CallingConvention.Cdecl)]
        public static string StartSpeechRecog()
        {
          
            /*
            SpeechRecognitionEngine testRecog = new SpeechRecognitionEngine();
            Choices testChoices = new Choices();
            testChoices.Add("Test One");
            testChoices.Add("Test Two");
            testChoices.Add("Test Three");
            Grammar testGrammar = new Grammar(testChoices);

            testRecog.SetInputToDefaultAudioDevice();
            testRecog.LoadGrammar(testGrammar);
            testRecog.SpeechRecognized += TestRecog_SpeechRecognized;
            */
            return "nowt";
        }
        /*
        private static void TestRecog_SpeechRecognized(object sender, SpeechRecognizedEventArgs e)
        {
            var CurrentSpeechReturned = e.Result.Text;
        }
        */
    }
}
