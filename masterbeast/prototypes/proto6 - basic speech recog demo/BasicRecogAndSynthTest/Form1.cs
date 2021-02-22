using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Speech.Synthesis;
using System.Speech.Recognition;
using System.Threading;

namespace BasicRecogAndSynthTest
{
    public partial class Form1 : Form
    {

        //This handles the form that we have created in the [Design] window.
        public Form1()
        {
            InitializeComponent();
        }

        //This creates the various handlers. An instance that synthesises speech, one for recognition and one to prompt the synthesiser.
        SpeechSynthesizer sSynth = new SpeechSynthesizer();
        PromptBuilder pBuilder = new PromptBuilder();
        SpeechRecognitionEngine sRecognise = new SpeechRecognitionEngine();
        string DetectedLevel = "0";

        //Nothing happens when the form loads.
        private void Form1_Load(object sender, EventArgs e)
        {

        }

        //When Button 1 is clicked, any previously-loaded speech for the synthesiser is cleared, before the text that is in the text box is appended and then spoken.
        private void button1_Click(object sender, EventArgs e)
        {
            pBuilder.ClearContent();
            pBuilder.AppendText(textBox1.Text);
            sSynth.Speak(pBuilder);
        }

        //When Button 2 is clicked, it is disabled and the 'Stop' button is enabled. 
        private void button2_Click(object sender, EventArgs e)
        {
            button2.Enabled = false;
            button3.Enabled = true;

            //A new set of choices is created, with which we will build a grammar.
            Choices sList = new Choices();
            //Several strings are added to an array.
            sList.Add(new string[] {"I am the dark god of Tuesday", "I wallow in the pit of always never Friday", "exit"});
            //The grammar is built using the choices.
            Grammar gr = new Grammar(new GrammarBuilder(sList));
            //We put this in an exception handler; if there are any errors, it skips over this code, and the button is reset.
            try
            {
                //This tries to pause the recogniser so that it can update.
                sRecognise.RequestRecognizerUpdate();
                //This loads the grammar.
                sRecognise.LoadGrammar(gr);
                //This handles the audio level changing.
                sRecognise.AudioLevelUpdated += new EventHandler<AudioLevelUpdatedEventArgs>(SRecognise_AudioLevelUpdated);
                //This handles speech being recognised.
                sRecognise.SpeechRecognized += SRecognise_SpeechRecognized;
                //This sets the listening microphone to the default device.
                sRecognise.SetInputToDefaultAudioDevice();
                //This creates a continuous listening mode.
                sRecognise.RecognizeAsync(RecognizeMode.Multiple);
            }
            catch
            {
                return;
            }

        }

        void SRecognise_AudioLevelUpdated(object sender, AudioLevelUpdatedEventArgs e)
        {
            
            DetectedLevel = e.AudioLevel.ToString();
        }

        //This handles what happens when speech is recognised. If it hears "exit", it quits the application. Anything else, it adds the result to the text box.
        private void SRecognise_SpeechRecognized(object sender, SpeechRecognizedEventArgs e)//remember, e is the object that calls this event (sRecognise)
        {
            if (e.Result.Text == "exit")
            {
                Application.Exit();
            } else
            {
                
                textBox1.Text = textBox1.Text + Environment.NewLine + "Detected at audio level " + DetectedLevel + ": " + e.Result.Text.ToString();
                
            }

        }

        //When the 'Stop' button is pressed, it is disabled, start is enabled and the recognising is stopped.
        private void button3_Click(object sender, EventArgs e)
        {
            sRecognise.RecognizeAsyncStop();
            button2.Enabled = true;
            button3.Enabled = false;
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
